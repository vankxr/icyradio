-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Thu Mar  6 16:08:28 2025
-- Host        : node4-dev running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top icyradio_axi_qspi_mm_0_0 -prefix
--               icyradio_axi_qspi_mm_0_0_ icyradio_axi_qspi_mm_0_0_sim_netlist.vhdl
-- Design      : icyradio_axi_qspi_mm_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_qspi_mm_0_0_axi_qspi_mm is
  port (
    s_axi_lite_rvalid_reg_0 : out STD_LOGIC;
    s_axi_full_arready_reg_0 : out STD_LOGIC;
    s_axi_full_rvalid_reg_0 : out STD_LOGIC;
    s_axi_lite_awready : out STD_LOGIC;
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_full_wready : out STD_LOGIC;
    s_axi_full_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_full_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_full_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    spi_io0_o : out STD_LOGIC;
    spi_io1_o : out STD_LOGIC;
    spi_io3_o : out STD_LOGIC;
    spi_io2_o : out STD_LOGIC;
    spi_io2_t : out STD_LOGIC;
    spi_io1_t : out STD_LOGIC;
    spi_io0_t : out STD_LOGIC;
    s_axi_lite_arready : out STD_LOGIC;
    \spi_ss_o_reg[0]_0\ : out STD_LOGIC;
    s_axi_full_awready : out STD_LOGIC;
    s_axi_lite_bvalid : out STD_LOGIC;
    irq : out STD_LOGIC;
    s_axi_full_bvalid : out STD_LOGIC;
    s_axi_full_rlast : out STD_LOGIC;
    spi_sck_o : out STD_LOGIC;
    s_axi_lite_arvalid : in STD_LOGIC;
    s_axi_lite_rready : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_full_arvalid : in STD_LOGIC;
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_full_rready : in STD_LOGIC;
    s_axi_full_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    aclk : in STD_LOGIC;
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 27 downto 0 );
    s_axi_lite_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_full_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_full_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_full_awvalid : in STD_LOGIC;
    s_axi_full_wlast : in STD_LOGIC;
    s_axi_full_wvalid : in STD_LOGIC;
    s_axi_full_araddr : in STD_LOGIC_VECTOR ( 23 downto 0 );
    spi_io0_i : in STD_LOGIC;
    spi_io1_i : in STD_LOGIC;
    spi_io2_i : in STD_LOGIC;
    spi_io3_i : in STD_LOGIC;
    s_axi_lite_bready : in STD_LOGIC;
    s_axi_lite_awvalid : in STD_LOGIC;
    s_axi_lite_wvalid : in STD_LOGIC;
    s_axi_full_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_full_bready : in STD_LOGIC
  );
end icyradio_axi_qspi_mm_0_0_axi_qspi_mm;

architecture STRUCTURE of icyradio_axi_qspi_mm_0_0_axi_qspi_mm is
  signal \FSM_onehot_spi_fsm_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_spi_fsm_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_spi_fsm_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_spi_fsm_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_spi_fsm_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_spi_fsm_state_reg_n_0_[2]\ : STD_LOGIC;
  signal data10 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data5 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal irq_enabled : STD_LOGIC;
  signal \irq_enabled_reg_n_0_[0]\ : STD_LOGIC;
  signal \irq_enabled_reg_n_0_[1]\ : STD_LOGIC;
  signal \irq_enabled_reg_n_0_[2]\ : STD_LOGIC;
  signal \irq_enabled_reg_n_0_[3]\ : STD_LOGIC;
  signal \irq_enabled_reg_n_0_[4]\ : STD_LOGIC;
  signal \irq_enabled_reg_n_0_[5]\ : STD_LOGIC;
  signal \irq_enabled_reg_n_0_[6]\ : STD_LOGIC;
  signal \irq_pend[0]_i_1_n_0\ : STD_LOGIC;
  signal \irq_pend[1]_i_1_n_0\ : STD_LOGIC;
  signal \irq_pend[2]_i_1_n_0\ : STD_LOGIC;
  signal \irq_pend[2]_i_2_n_0\ : STD_LOGIC;
  signal \irq_pend_reg_n_0_[0]\ : STD_LOGIC;
  signal \irq_pend_reg_n_0_[1]\ : STD_LOGIC;
  signal \irq_pend_reg_n_0_[2]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal p_2_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_4_in : STD_LOGIC_VECTOR ( 26 downto 8 );
  signal p_5_in : STD_LOGIC;
  signal s_axi_full_araddr_q0 : STD_LOGIC_VECTOR ( 23 downto 1 );
  signal \s_axi_full_araddr_q[0]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_araddr_q[10]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_araddr_q[11]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_araddr_q[12]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_araddr_q[13]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_araddr_q[14]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_araddr_q[15]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_araddr_q[16]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_araddr_q[17]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_araddr_q[18]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_araddr_q[19]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_araddr_q[1]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_araddr_q[20]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_araddr_q[21]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_araddr_q[22]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_araddr_q[23]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_araddr_q[23]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_full_araddr_q[23]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_full_araddr_q[2]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_araddr_q[3]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_araddr_q[4]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_araddr_q[5]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_araddr_q[6]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_araddr_q[7]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_araddr_q[8]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_araddr_q[9]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_araddr_q_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_full_araddr_q_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \s_axi_full_araddr_q_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \s_axi_full_araddr_q_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \s_axi_full_araddr_q_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_full_araddr_q_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \s_axi_full_araddr_q_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \s_axi_full_araddr_q_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \s_axi_full_araddr_q_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_full_araddr_q_reg[20]_i_2_n_1\ : STD_LOGIC;
  signal \s_axi_full_araddr_q_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \s_axi_full_araddr_q_reg[20]_i_2_n_3\ : STD_LOGIC;
  signal \s_axi_full_araddr_q_reg[23]_i_4_n_2\ : STD_LOGIC;
  signal \s_axi_full_araddr_q_reg[23]_i_4_n_3\ : STD_LOGIC;
  signal \s_axi_full_araddr_q_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_full_araddr_q_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \s_axi_full_araddr_q_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \s_axi_full_araddr_q_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \s_axi_full_araddr_q_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_full_araddr_q_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \s_axi_full_araddr_q_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \s_axi_full_araddr_q_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \s_axi_full_araddr_q_reg_n_0_[0]\ : STD_LOGIC;
  signal \s_axi_full_araddr_q_reg_n_0_[10]\ : STD_LOGIC;
  signal \s_axi_full_araddr_q_reg_n_0_[11]\ : STD_LOGIC;
  signal \s_axi_full_araddr_q_reg_n_0_[12]\ : STD_LOGIC;
  signal \s_axi_full_araddr_q_reg_n_0_[13]\ : STD_LOGIC;
  signal \s_axi_full_araddr_q_reg_n_0_[14]\ : STD_LOGIC;
  signal \s_axi_full_araddr_q_reg_n_0_[15]\ : STD_LOGIC;
  signal \s_axi_full_araddr_q_reg_n_0_[16]\ : STD_LOGIC;
  signal \s_axi_full_araddr_q_reg_n_0_[17]\ : STD_LOGIC;
  signal \s_axi_full_araddr_q_reg_n_0_[18]\ : STD_LOGIC;
  signal \s_axi_full_araddr_q_reg_n_0_[19]\ : STD_LOGIC;
  signal \s_axi_full_araddr_q_reg_n_0_[1]\ : STD_LOGIC;
  signal \s_axi_full_araddr_q_reg_n_0_[20]\ : STD_LOGIC;
  signal \s_axi_full_araddr_q_reg_n_0_[21]\ : STD_LOGIC;
  signal \s_axi_full_araddr_q_reg_n_0_[22]\ : STD_LOGIC;
  signal \s_axi_full_araddr_q_reg_n_0_[23]\ : STD_LOGIC;
  signal \s_axi_full_araddr_q_reg_n_0_[2]\ : STD_LOGIC;
  signal \s_axi_full_araddr_q_reg_n_0_[3]\ : STD_LOGIC;
  signal \s_axi_full_araddr_q_reg_n_0_[4]\ : STD_LOGIC;
  signal \s_axi_full_araddr_q_reg_n_0_[5]\ : STD_LOGIC;
  signal \s_axi_full_araddr_q_reg_n_0_[6]\ : STD_LOGIC;
  signal \s_axi_full_araddr_q_reg_n_0_[7]\ : STD_LOGIC;
  signal \s_axi_full_araddr_q_reg_n_0_[8]\ : STD_LOGIC;
  signal \s_axi_full_araddr_q_reg_n_0_[9]\ : STD_LOGIC;
  signal \s_axi_full_arlen_q[0]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_arlen_q[1]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_arlen_q[2]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_arlen_q[3]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_arlen_q[4]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_arlen_q[5]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_arlen_q[5]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_full_arlen_q[6]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_arlen_q[7]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_arlen_q[7]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_full_arlen_q[7]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_full_arlen_q__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s_axi_full_arready_i_1_n_0 : STD_LOGIC;
  signal s_axi_full_arready_i_2_n_0 : STD_LOGIC;
  signal s_axi_full_arready_i_3_n_0 : STD_LOGIC;
  signal \^s_axi_full_arready_reg_0\ : STD_LOGIC;
  signal s_axi_full_arsize_q : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \s_axi_full_arsize_q[0]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_arsize_q[1]_i_1_n_0\ : STD_LOGIC;
  signal \^s_axi_full_awready\ : STD_LOGIC;
  signal s_axi_full_awready0 : STD_LOGIC;
  signal s_axi_full_awready_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_full_bvalid\ : STD_LOGIC;
  signal s_axi_full_bvalid037_out : STD_LOGIC;
  signal s_axi_full_bvalid_i_1_n_0 : STD_LOGIC;
  signal \s_axi_full_rdata[0]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[10]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[11]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[12]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[13]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[14]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[15]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[15]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[16]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[17]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[18]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[19]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[1]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[20]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[21]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[22]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[23]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[23]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[24]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[25]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[26]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[27]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[28]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[29]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[2]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[30]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[31]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[31]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[32]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[33]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[34]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[35]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[36]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[37]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[38]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[39]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[39]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[3]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[40]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[41]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[42]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[43]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[44]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[45]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[46]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[47]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[47]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[48]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[49]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[4]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[50]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[51]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[52]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[53]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[54]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[55]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[55]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[56]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[57]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[58]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[59]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[5]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[60]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[61]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[62]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[63]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[63]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[63]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[6]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[7]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[8]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_rdata[9]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_full_rid[3]_i_1_n_0\ : STD_LOGIC;
  signal \^s_axi_full_rlast\ : STD_LOGIC;
  signal s_axi_full_rlast_i_1_n_0 : STD_LOGIC;
  signal s_axi_full_rlast_i_2_n_0 : STD_LOGIC;
  signal s_axi_full_rlast_i_3_n_0 : STD_LOGIC;
  signal s_axi_full_rlast_i_4_n_0 : STD_LOGIC;
  signal s_axi_full_rvalid_i_1_n_0 : STD_LOGIC;
  signal s_axi_full_rvalid_i_2_n_0 : STD_LOGIC;
  signal s_axi_full_rvalid_i_3_n_0 : STD_LOGIC;
  signal \^s_axi_full_rvalid_reg_0\ : STD_LOGIC;
  signal \^s_axi_full_wready\ : STD_LOGIC;
  signal \s_axi_full_write_busy__0\ : STD_LOGIC;
  signal s_axi_full_write_busy_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_lite_awready\ : STD_LOGIC;
  signal s_axi_lite_awready0 : STD_LOGIC;
  signal s_axi_lite_awready_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_lite_bvalid\ : STD_LOGIC;
  signal s_axi_lite_bvalid_i_1_n_0 : STD_LOGIC;
  signal s_axi_lite_rd_en : STD_LOGIC;
  signal \s_axi_lite_rdata[0]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[0]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[0]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[0]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[10]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[10]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[11]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[11]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[12]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[12]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[13]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[13]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[14]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[14]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[15]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[15]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[16]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[16]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[16]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[16]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[17]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[17]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[17]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[18]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[18]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[18]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[19]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[19]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[19]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[1]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[1]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[1]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[1]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[20]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[20]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[20]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[21]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[21]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[21]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[22]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[22]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[22]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[23]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[23]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[23]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[23]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[23]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[24]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[24]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[24]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[25]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[25]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[25]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[26]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[26]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[26]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[27]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[27]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[28]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[28]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[28]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[29]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[29]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[29]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[2]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[2]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[2]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[2]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[30]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[30]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[30]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[31]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[31]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[31]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[31]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[3]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[3]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[3]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[4]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[4]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[4]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[5]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[5]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[5]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[6]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[6]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[6]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[6]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[6]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[6]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[7]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[7]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[7]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[8]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[8]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[9]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[9]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata_reg[17]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata_reg[22]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal s_axi_lite_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_lite_rvalid_reg_0\ : STD_LOGIC;
  signal spi_cpol : STD_LOGIC;
  signal spi_dir_i_1_n_0 : STD_LOGIC;
  signal spi_dir_i_2_n_0 : STD_LOGIC;
  signal spi_dir_reg_n_0 : STD_LOGIC;
  signal spi_en_i_1_n_0 : STD_LOGIC;
  signal spi_en_i_2_n_0 : STD_LOGIC;
  signal spi_en_reg_n_0 : STD_LOGIC;
  signal spi_fsm_state : STD_LOGIC;
  signal \spi_fsm_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \spi_fsm_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \spi_fsm_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \spi_fsm_state_reg_n_0_[1]\ : STD_LOGIC;
  signal spi_idle_q : STD_LOGIC;
  signal \^spi_io1_o\ : STD_LOGIC;
  signal \^spi_io2_o\ : STD_LOGIC;
  signal \^spi_io3_o\ : STD_LOGIC;
  signal spi_io_mode : STD_LOGIC;
  signal \spi_io_mode[0]_i_1_n_0\ : STD_LOGIC;
  signal \spi_io_mode[0]_i_2_n_0\ : STD_LOGIC;
  signal \spi_io_mode[0]_i_3_n_0\ : STD_LOGIC;
  signal \spi_io_mode[0]_i_4_n_0\ : STD_LOGIC;
  signal \spi_io_mode[0]_i_5_n_0\ : STD_LOGIC;
  signal \spi_io_mode[1]_i_10_n_0\ : STD_LOGIC;
  signal \spi_io_mode[1]_i_1_n_0\ : STD_LOGIC;
  signal \spi_io_mode[1]_i_2_n_0\ : STD_LOGIC;
  signal \spi_io_mode[1]_i_3_n_0\ : STD_LOGIC;
  signal \spi_io_mode[1]_i_5_n_0\ : STD_LOGIC;
  signal \spi_io_mode[1]_i_6_n_0\ : STD_LOGIC;
  signal \spi_io_mode[1]_i_7_n_0\ : STD_LOGIC;
  signal \spi_io_mode[1]_i_8_n_0\ : STD_LOGIC;
  signal \spi_io_mode[1]_i_9_n_0\ : STD_LOGIC;
  signal \spi_io_mode_q[0]_i_1_n_0\ : STD_LOGIC;
  signal \spi_io_mode_q[1]_i_1_n_0\ : STD_LOGIC;
  signal \spi_io_mode_q[1]_i_2_n_0\ : STD_LOGIC;
  signal \spi_io_mode_q[1]_i_3_n_0\ : STD_LOGIC;
  signal \spi_io_mode_q_reg_n_0_[0]\ : STD_LOGIC;
  signal \spi_io_mode_q_reg_n_0_[1]\ : STD_LOGIC;
  signal \spi_io_mode_reg_n_0_[0]\ : STD_LOGIC;
  signal \spi_io_mode_reg_n_0_[1]\ : STD_LOGIC;
  signal spi_io_o : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \spi_io_o[0]_i_10_n_0\ : STD_LOGIC;
  signal \spi_io_o[0]_i_11_n_0\ : STD_LOGIC;
  signal \spi_io_o[0]_i_12_n_0\ : STD_LOGIC;
  signal \spi_io_o[0]_i_13_n_0\ : STD_LOGIC;
  signal \spi_io_o[0]_i_14_n_0\ : STD_LOGIC;
  signal \spi_io_o[0]_i_2_n_0\ : STD_LOGIC;
  signal \spi_io_o[0]_i_4_n_0\ : STD_LOGIC;
  signal \spi_io_o[0]_i_5_n_0\ : STD_LOGIC;
  signal \spi_io_o[0]_i_6_n_0\ : STD_LOGIC;
  signal \spi_io_o[0]_i_7_n_0\ : STD_LOGIC;
  signal \spi_io_o[0]_i_8_n_0\ : STD_LOGIC;
  signal \spi_io_o[0]_i_9_n_0\ : STD_LOGIC;
  signal \spi_io_o[1]_i_1_n_0\ : STD_LOGIC;
  signal \spi_io_o[1]_i_3_n_0\ : STD_LOGIC;
  signal \spi_io_o[1]_i_4_n_0\ : STD_LOGIC;
  signal \spi_io_o[2]_i_1_n_0\ : STD_LOGIC;
  signal \spi_io_o[3]_i_1_n_0\ : STD_LOGIC;
  signal spi_io_t : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal spi_lsb_first_i_1_n_0 : STD_LOGIC;
  signal spi_lsb_first_reg_n_0 : STD_LOGIC;
  signal spi_mmio_addr_io_mode : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \spi_mmio_addr_rem[0]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_addr_rem[0]_i_2_n_0\ : STD_LOGIC;
  signal \spi_mmio_addr_rem[1]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_addr_rem[1]_i_2_n_0\ : STD_LOGIC;
  signal \spi_mmio_addr_rem_reg_n_0_[0]\ : STD_LOGIC;
  signal \spi_mmio_addr_rem_reg_n_0_[1]\ : STD_LOGIC;
  signal spi_mmio_addr_size : STD_LOGIC;
  signal spi_mmio_cont_rd_req_cnt0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \spi_mmio_cont_rd_req_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt[10]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt[11]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt[12]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt[13]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt[14]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt[15]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt[16]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt[17]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt[18]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt[19]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt[20]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt[21]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt[22]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt[23]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt[24]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt[25]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt[26]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt[27]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt[28]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt[29]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt[30]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt[31]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt[31]_i_2_n_0\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt[31]_i_3_n_0\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt[8]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt[9]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt__0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal spi_mmio_cont_rd_req_cnt_buf : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[0]\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[10]\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[11]\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[12]\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[13]\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[14]\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[15]\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[16]\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[17]\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[18]\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[19]\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[1]\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[20]\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[21]\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[22]\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[23]\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[24]\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[25]\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[26]\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[27]\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[28]\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[29]\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[2]\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[30]\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[31]\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[3]\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[4]\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[5]\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[6]\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[7]\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[8]\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[9]\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt_reg[20]_i_2_n_1\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt_reg[20]_i_2_n_3\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt_reg[28]_i_2_n_1\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt_reg[28]_i_2_n_2\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt_reg[28]_i_2_n_3\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt_reg[31]_i_4_n_2\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt_reg[31]_i_4_n_3\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \spi_mmio_cont_rd_req_cnt_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal spi_mmio_cont_read_en_i_1_n_0 : STD_LOGIC;
  signal spi_mmio_cont_read_ready_i_1_n_0 : STD_LOGIC;
  signal spi_mmio_cont_read_ready_i_2_n_0 : STD_LOGIC;
  signal spi_mmio_cs_high_wait : STD_LOGIC;
  signal \spi_mmio_cs_high_wait[7]_i_2_n_0\ : STD_LOGIC;
  signal \spi_mmio_cs_high_wait_reg_n_0_[0]\ : STD_LOGIC;
  signal \spi_mmio_cs_high_wait_reg_n_0_[1]\ : STD_LOGIC;
  signal \spi_mmio_cs_high_wait_reg_n_0_[2]\ : STD_LOGIC;
  signal \spi_mmio_cs_high_wait_reg_n_0_[3]\ : STD_LOGIC;
  signal \spi_mmio_cs_high_wait_reg_n_0_[4]\ : STD_LOGIC;
  signal \spi_mmio_cs_high_wait_reg_n_0_[5]\ : STD_LOGIC;
  signal \spi_mmio_cs_high_wait_reg_n_0_[6]\ : STD_LOGIC;
  signal \spi_mmio_cs_high_wait_reg_n_0_[7]\ : STD_LOGIC;
  signal spi_mmio_cs_low_wait : STD_LOGIC;
  signal \spi_mmio_cs_low_wait_reg_n_0_[0]\ : STD_LOGIC;
  signal \spi_mmio_cs_low_wait_reg_n_0_[1]\ : STD_LOGIC;
  signal \spi_mmio_cs_low_wait_reg_n_0_[2]\ : STD_LOGIC;
  signal \spi_mmio_cs_low_wait_reg_n_0_[3]\ : STD_LOGIC;
  signal \spi_mmio_cs_low_wait_reg_n_0_[4]\ : STD_LOGIC;
  signal \spi_mmio_cs_low_wait_reg_n_0_[5]\ : STD_LOGIC;
  signal \spi_mmio_cs_low_wait_reg_n_0_[6]\ : STD_LOGIC;
  signal \spi_mmio_cs_low_wait_reg_n_0_[7]\ : STD_LOGIC;
  signal \spi_mmio_cs_mask[0]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_cs_mask[0]_i_2_n_0\ : STD_LOGIC;
  signal \spi_mmio_cs_mask[0]_i_3_n_0\ : STD_LOGIC;
  signal \spi_mmio_cs_mask_reg_n_0_[0]\ : STD_LOGIC;
  signal spi_mmio_cs_wait_rem : STD_LOGIC;
  signal spi_mmio_cs_wait_rem1_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \spi_mmio_cs_wait_rem[1]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_cs_wait_rem[1]_i_2_n_0\ : STD_LOGIC;
  signal \spi_mmio_cs_wait_rem[2]_i_2_n_0\ : STD_LOGIC;
  signal \spi_mmio_cs_wait_rem[3]_i_2_n_0\ : STD_LOGIC;
  signal \spi_mmio_cs_wait_rem[4]_i_2_n_0\ : STD_LOGIC;
  signal \spi_mmio_cs_wait_rem[5]_i_2_n_0\ : STD_LOGIC;
  signal \spi_mmio_cs_wait_rem[7]_i_10_n_0\ : STD_LOGIC;
  signal \spi_mmio_cs_wait_rem[7]_i_11_n_0\ : STD_LOGIC;
  signal \spi_mmio_cs_wait_rem[7]_i_12_n_0\ : STD_LOGIC;
  signal \spi_mmio_cs_wait_rem[7]_i_13_n_0\ : STD_LOGIC;
  signal \spi_mmio_cs_wait_rem[7]_i_14_n_0\ : STD_LOGIC;
  signal \spi_mmio_cs_wait_rem[7]_i_15_n_0\ : STD_LOGIC;
  signal \spi_mmio_cs_wait_rem[7]_i_16_n_0\ : STD_LOGIC;
  signal \spi_mmio_cs_wait_rem[7]_i_17_n_0\ : STD_LOGIC;
  signal \spi_mmio_cs_wait_rem[7]_i_18_n_0\ : STD_LOGIC;
  signal \spi_mmio_cs_wait_rem[7]_i_3_n_0\ : STD_LOGIC;
  signal \spi_mmio_cs_wait_rem[7]_i_4_n_0\ : STD_LOGIC;
  signal \spi_mmio_cs_wait_rem[7]_i_5_n_0\ : STD_LOGIC;
  signal \spi_mmio_cs_wait_rem[7]_i_6_n_0\ : STD_LOGIC;
  signal \spi_mmio_cs_wait_rem[7]_i_7_n_0\ : STD_LOGIC;
  signal \spi_mmio_cs_wait_rem[7]_i_8_n_0\ : STD_LOGIC;
  signal \spi_mmio_cs_wait_rem[7]_i_9_n_0\ : STD_LOGIC;
  signal \spi_mmio_data_io_mode_reg_n_0_[0]\ : STD_LOGIC;
  signal \spi_mmio_data_io_mode_reg_n_0_[1]\ : STD_LOGIC;
  signal spi_mmio_dummy_io_mode : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \spi_mmio_dummy_rem[0]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_dummy_rem[1]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_dummy_rem[1]_i_2_n_0\ : STD_LOGIC;
  signal \spi_mmio_dummy_rem[1]_i_3_n_0\ : STD_LOGIC;
  signal \spi_mmio_dummy_rem_reg_n_0_[0]\ : STD_LOGIC;
  signal \spi_mmio_dummy_rem_reg_n_0_[1]\ : STD_LOGIC;
  signal spi_mmio_en : STD_LOGIC;
  signal spi_mmio_en_i_1_n_0 : STD_LOGIC;
  signal spi_mmio_en_req_i_1_n_0 : STD_LOGIC;
  signal spi_mmio_en_req_reg_n_0 : STD_LOGIC;
  signal spi_mmio_fsm_state : STD_LOGIC;
  signal \spi_mmio_fsm_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_fsm_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \spi_mmio_fsm_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \spi_mmio_fsm_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_fsm_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \spi_mmio_fsm_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \spi_mmio_fsm_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \spi_mmio_fsm_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_fsm_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \spi_mmio_fsm_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \spi_mmio_fsm_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \spi_mmio_fsm_state[3]_i_10_n_0\ : STD_LOGIC;
  signal \spi_mmio_fsm_state[3]_i_11_n_0\ : STD_LOGIC;
  signal \spi_mmio_fsm_state[3]_i_12_n_0\ : STD_LOGIC;
  signal \spi_mmio_fsm_state[3]_i_13_n_0\ : STD_LOGIC;
  signal \spi_mmio_fsm_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \spi_mmio_fsm_state[3]_i_3_n_0\ : STD_LOGIC;
  signal \spi_mmio_fsm_state[3]_i_4_n_0\ : STD_LOGIC;
  signal \spi_mmio_fsm_state[3]_i_5_n_0\ : STD_LOGIC;
  signal \spi_mmio_fsm_state[3]_i_6_n_0\ : STD_LOGIC;
  signal \spi_mmio_fsm_state[3]_i_7_n_0\ : STD_LOGIC;
  signal \spi_mmio_fsm_state[3]_i_8_n_0\ : STD_LOGIC;
  signal \spi_mmio_fsm_state[3]_i_9_n_0\ : STD_LOGIC;
  signal \spi_mmio_fsm_state_next[0]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_fsm_state_next[1]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_fsm_state_next[3]_i_10_n_0\ : STD_LOGIC;
  signal \spi_mmio_fsm_state_next[3]_i_11_n_0\ : STD_LOGIC;
  signal \spi_mmio_fsm_state_next[3]_i_12_n_0\ : STD_LOGIC;
  signal \spi_mmio_fsm_state_next[3]_i_13_n_0\ : STD_LOGIC;
  signal \spi_mmio_fsm_state_next[3]_i_14_n_0\ : STD_LOGIC;
  signal \spi_mmio_fsm_state_next[3]_i_15_n_0\ : STD_LOGIC;
  signal \spi_mmio_fsm_state_next[3]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_fsm_state_next[3]_i_2_n_0\ : STD_LOGIC;
  signal \spi_mmio_fsm_state_next[3]_i_3_n_0\ : STD_LOGIC;
  signal \spi_mmio_fsm_state_next[3]_i_4_n_0\ : STD_LOGIC;
  signal \spi_mmio_fsm_state_next[3]_i_6_n_0\ : STD_LOGIC;
  signal \spi_mmio_fsm_state_next[3]_i_8_n_0\ : STD_LOGIC;
  signal \spi_mmio_fsm_state_next[3]_i_9_n_0\ : STD_LOGIC;
  signal \spi_mmio_fsm_state_next_reg[3]_i_5_n_0\ : STD_LOGIC;
  signal \spi_mmio_fsm_state_next_reg[3]_i_5_n_1\ : STD_LOGIC;
  signal \spi_mmio_fsm_state_next_reg[3]_i_5_n_2\ : STD_LOGIC;
  signal \spi_mmio_fsm_state_next_reg[3]_i_5_n_3\ : STD_LOGIC;
  signal \spi_mmio_fsm_state_next_reg[3]_i_7_n_0\ : STD_LOGIC;
  signal \spi_mmio_fsm_state_next_reg[3]_i_7_n_1\ : STD_LOGIC;
  signal \spi_mmio_fsm_state_next_reg[3]_i_7_n_2\ : STD_LOGIC;
  signal \spi_mmio_fsm_state_next_reg[3]_i_7_n_3\ : STD_LOGIC;
  signal \spi_mmio_fsm_state_next_reg_n_0_[0]\ : STD_LOGIC;
  signal \spi_mmio_fsm_state_next_reg_n_0_[1]\ : STD_LOGIC;
  signal \spi_mmio_fsm_state_next_reg_n_0_[2]\ : STD_LOGIC;
  signal \spi_mmio_fsm_state_next_reg_n_0_[3]\ : STD_LOGIC;
  signal \spi_mmio_fsm_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \spi_mmio_fsm_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \spi_mmio_fsm_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \spi_mmio_fsm_state_reg_n_0_[3]\ : STD_LOGIC;
  signal spi_mmio_mode_bits : STD_LOGIC;
  signal spi_mmio_mode_bits_en_i_1_n_0 : STD_LOGIC;
  signal spi_mmio_mode_bits_en_i_2_n_0 : STD_LOGIC;
  signal \spi_mmio_mode_bits_reg_n_0_[0]\ : STD_LOGIC;
  signal \spi_mmio_mode_bits_reg_n_0_[1]\ : STD_LOGIC;
  signal \spi_mmio_mode_bits_reg_n_0_[2]\ : STD_LOGIC;
  signal \spi_mmio_mode_bits_reg_n_0_[3]\ : STD_LOGIC;
  signal \spi_mmio_mode_bits_reg_n_0_[4]\ : STD_LOGIC;
  signal \spi_mmio_mode_bits_reg_n_0_[5]\ : STD_LOGIC;
  signal \spi_mmio_mode_bits_reg_n_0_[6]\ : STD_LOGIC;
  signal \spi_mmio_mode_bits_reg_n_0_[7]\ : STD_LOGIC;
  signal spi_mmio_rd_instr : STD_LOGIC;
  signal \spi_mmio_rd_instr[7]_i_2_n_0\ : STD_LOGIC;
  signal spi_mmio_rd_instr_io_mode : STD_LOGIC;
  signal \spi_mmio_rd_instr_io_mode[1]_i_2_n_0\ : STD_LOGIC;
  signal \spi_mmio_rd_instr_io_mode_reg_n_0_[0]\ : STD_LOGIC;
  signal \spi_mmio_rd_instr_io_mode_reg_n_0_[1]\ : STD_LOGIC;
  signal \spi_mmio_rd_instr_reg_n_0_[0]\ : STD_LOGIC;
  signal \spi_mmio_rd_instr_reg_n_0_[1]\ : STD_LOGIC;
  signal \spi_mmio_rd_instr_reg_n_0_[2]\ : STD_LOGIC;
  signal \spi_mmio_rd_instr_reg_n_0_[3]\ : STD_LOGIC;
  signal \spi_mmio_rd_instr_reg_n_0_[4]\ : STD_LOGIC;
  signal \spi_mmio_rd_instr_reg_n_0_[5]\ : STD_LOGIC;
  signal \spi_mmio_rd_instr_reg_n_0_[6]\ : STD_LOGIC;
  signal \spi_mmio_rd_instr_reg_n_0_[7]\ : STD_LOGIC;
  signal spi_mmio_rd_req_cnt0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \spi_mmio_rd_req_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_rd_req_cnt[10]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_rd_req_cnt[11]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_rd_req_cnt[12]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_rd_req_cnt[13]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_rd_req_cnt[14]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_rd_req_cnt[15]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_rd_req_cnt[16]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_rd_req_cnt[17]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_rd_req_cnt[18]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_rd_req_cnt[19]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_rd_req_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_rd_req_cnt[20]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_rd_req_cnt[21]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_rd_req_cnt[22]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_rd_req_cnt[23]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_rd_req_cnt[24]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_rd_req_cnt[25]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_rd_req_cnt[26]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_rd_req_cnt[27]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_rd_req_cnt[28]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_rd_req_cnt[29]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_rd_req_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_rd_req_cnt[30]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_rd_req_cnt[31]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_rd_req_cnt[31]_i_2_n_0\ : STD_LOGIC;
  signal \spi_mmio_rd_req_cnt[31]_i_3_n_0\ : STD_LOGIC;
  signal \spi_mmio_rd_req_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_rd_req_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_rd_req_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_rd_req_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_rd_req_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_rd_req_cnt[8]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_rd_req_cnt[9]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mmio_rd_req_cnt__0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \spi_mmio_rd_req_cnt_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \spi_mmio_rd_req_cnt_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \spi_mmio_rd_req_cnt_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \spi_mmio_rd_req_cnt_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \spi_mmio_rd_req_cnt_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \spi_mmio_rd_req_cnt_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \spi_mmio_rd_req_cnt_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \spi_mmio_rd_req_cnt_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \spi_mmio_rd_req_cnt_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \spi_mmio_rd_req_cnt_reg[20]_i_2_n_1\ : STD_LOGIC;
  signal \spi_mmio_rd_req_cnt_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \spi_mmio_rd_req_cnt_reg[20]_i_2_n_3\ : STD_LOGIC;
  signal \spi_mmio_rd_req_cnt_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \spi_mmio_rd_req_cnt_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \spi_mmio_rd_req_cnt_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \spi_mmio_rd_req_cnt_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \spi_mmio_rd_req_cnt_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \spi_mmio_rd_req_cnt_reg[28]_i_2_n_1\ : STD_LOGIC;
  signal \spi_mmio_rd_req_cnt_reg[28]_i_2_n_2\ : STD_LOGIC;
  signal \spi_mmio_rd_req_cnt_reg[28]_i_2_n_3\ : STD_LOGIC;
  signal \spi_mmio_rd_req_cnt_reg[31]_i_4_n_2\ : STD_LOGIC;
  signal \spi_mmio_rd_req_cnt_reg[31]_i_4_n_3\ : STD_LOGIC;
  signal \spi_mmio_rd_req_cnt_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \spi_mmio_rd_req_cnt_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \spi_mmio_rd_req_cnt_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \spi_mmio_rd_req_cnt_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \spi_mmio_rd_req_cnt_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \spi_mmio_rd_req_cnt_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \spi_mmio_rd_req_cnt_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \spi_mmio_rd_req_cnt_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \spi_mode[0]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mode[1]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mode[1]_i_2_n_0\ : STD_LOGIC;
  signal \spi_mode_reg_n_0_[0]\ : STD_LOGIC;
  signal spi_rd_req_ack : STD_LOGIC;
  signal spi_rd_req_ack_i_2_n_0 : STD_LOGIC;
  signal spi_rd_req_ack_i_3_n_0 : STD_LOGIC;
  signal spi_rd_req_ack_i_4_n_0 : STD_LOGIC;
  signal spi_rd_req_ack_reg_n_0 : STD_LOGIC;
  signal spi_rd_req_i_1_n_0 : STD_LOGIC;
  signal spi_rd_req_i_2_n_0 : STD_LOGIC;
  signal spi_rd_req_i_3_n_0 : STD_LOGIC;
  signal spi_rd_req_i_4_n_0 : STD_LOGIC;
  signal spi_rd_req_i_5_n_0 : STD_LOGIC;
  signal spi_rd_req_i_6_n_0 : STD_LOGIC;
  signal spi_rd_req_i_7_n_0 : STD_LOGIC;
  signal spi_rd_req_reg_n_0 : STD_LOGIC;
  signal \spi_sck_div_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \spi_sck_div_cnt[7]_i_3_n_0\ : STD_LOGIC;
  signal spi_sck_div_cnt_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal spi_sck_div_en_i_1_n_0 : STD_LOGIC;
  signal spi_sck_div_en_reg_n_0 : STD_LOGIC;
  signal spi_sck_div_h : STD_LOGIC;
  signal \spi_sck_div_h_reg_n_0_[0]\ : STD_LOGIC;
  signal \spi_sck_div_h_reg_n_0_[1]\ : STD_LOGIC;
  signal \spi_sck_div_h_reg_n_0_[2]\ : STD_LOGIC;
  signal \spi_sck_div_h_reg_n_0_[3]\ : STD_LOGIC;
  signal \spi_sck_div_h_reg_n_0_[4]\ : STD_LOGIC;
  signal \spi_sck_div_h_reg_n_0_[5]\ : STD_LOGIC;
  signal \spi_sck_div_h_reg_n_0_[6]\ : STD_LOGIC;
  signal \spi_sck_div_h_reg_n_0_[7]\ : STD_LOGIC;
  signal spi_sck_div_l : STD_LOGIC;
  signal \spi_sck_div_l[7]_i_2_n_0\ : STD_LOGIC;
  signal \spi_sck_div_l_reg_n_0_[0]\ : STD_LOGIC;
  signal \spi_sck_div_l_reg_n_0_[1]\ : STD_LOGIC;
  signal \spi_sck_div_l_reg_n_0_[2]\ : STD_LOGIC;
  signal \spi_sck_div_l_reg_n_0_[3]\ : STD_LOGIC;
  signal \spi_sck_div_l_reg_n_0_[4]\ : STD_LOGIC;
  signal \spi_sck_div_l_reg_n_0_[5]\ : STD_LOGIC;
  signal \spi_sck_div_l_reg_n_0_[6]\ : STD_LOGIC;
  signal \spi_sck_div_l_reg_n_0_[7]\ : STD_LOGIC;
  signal spi_sck_int : STD_LOGIC;
  signal spi_sck_int_i_1_n_0 : STD_LOGIC;
  signal \^spi_sck_o\ : STD_LOGIC;
  signal spi_sck_o_i_1_n_0 : STD_LOGIC;
  signal spi_sck_o_i_2_n_0 : STD_LOGIC;
  signal spi_sck_o_i_3_n_0 : STD_LOGIC;
  signal spi_sck_o_i_4_n_0 : STD_LOGIC;
  signal spi_sck_o_i_5_n_0 : STD_LOGIC;
  signal spi_sck_o_i_6_n_0 : STD_LOGIC;
  signal spi_sck_o_i_7_n_0 : STD_LOGIC;
  signal spi_sck_o_i_8_n_0 : STD_LOGIC;
  signal spi_sck_o_i_9_n_0 : STD_LOGIC;
  signal \spi_sr[0]_i_1_n_0\ : STD_LOGIC;
  signal \spi_sr[0]_i_2_n_0\ : STD_LOGIC;
  signal \spi_sr[0]_i_3_n_0\ : STD_LOGIC;
  signal \spi_sr[1]_i_1_n_0\ : STD_LOGIC;
  signal \spi_sr[1]_i_2_n_0\ : STD_LOGIC;
  signal \spi_sr[1]_i_3_n_0\ : STD_LOGIC;
  signal \spi_sr[2]_i_1_n_0\ : STD_LOGIC;
  signal \spi_sr[2]_i_3_n_0\ : STD_LOGIC;
  signal \spi_sr[2]_i_4_n_0\ : STD_LOGIC;
  signal \spi_sr[2]_i_5_n_0\ : STD_LOGIC;
  signal \spi_sr[3]_i_1_n_0\ : STD_LOGIC;
  signal \spi_sr[3]_i_3_n_0\ : STD_LOGIC;
  signal \spi_sr[3]_i_4_n_0\ : STD_LOGIC;
  signal \spi_sr[3]_i_5_n_0\ : STD_LOGIC;
  signal \spi_sr[4]_i_1_n_0\ : STD_LOGIC;
  signal \spi_sr[4]_i_3_n_0\ : STD_LOGIC;
  signal \spi_sr[4]_i_4_n_0\ : STD_LOGIC;
  signal \spi_sr[4]_i_5_n_0\ : STD_LOGIC;
  signal \spi_sr[5]_i_1_n_0\ : STD_LOGIC;
  signal \spi_sr[5]_i_3_n_0\ : STD_LOGIC;
  signal \spi_sr[5]_i_4_n_0\ : STD_LOGIC;
  signal \spi_sr[5]_i_5_n_0\ : STD_LOGIC;
  signal \spi_sr[6]_i_1_n_0\ : STD_LOGIC;
  signal \spi_sr[6]_i_3_n_0\ : STD_LOGIC;
  signal \spi_sr[6]_i_4_n_0\ : STD_LOGIC;
  signal \spi_sr[6]_i_5_n_0\ : STD_LOGIC;
  signal \spi_sr[7]_i_1_n_0\ : STD_LOGIC;
  signal \spi_sr[7]_i_3_n_0\ : STD_LOGIC;
  signal \spi_sr[7]_i_4_n_0\ : STD_LOGIC;
  signal \spi_sr[7]_i_5_n_0\ : STD_LOGIC;
  signal spi_sr_bit_cnt : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \spi_sr_bit_cnt[2]_i_2_n_0\ : STD_LOGIC;
  signal \spi_sr_bit_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \spi_sr_bit_cnt[3]_i_3_n_0\ : STD_LOGIC;
  signal \spi_sr_bit_cnt[3]_i_4_n_0\ : STD_LOGIC;
  signal \spi_sr_bit_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \spi_sr_bit_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \spi_sr_bit_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \spi_sr_bit_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal spi_sr_eot : STD_LOGIC;
  signal spi_sr_eot_i_1_n_0 : STD_LOGIC;
  signal spi_sr_in_buf : STD_LOGIC;
  signal spi_sr_in_buf0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \spi_sr_in_buf[0]_i_2_n_0\ : STD_LOGIC;
  signal \spi_sr_in_buf[1]_i_2_n_0\ : STD_LOGIC;
  signal \spi_sr_in_buf[7]_i_3_n_0\ : STD_LOGIC;
  signal spi_sr_in_buf_ready : STD_LOGIC;
  signal spi_sr_in_buf_ready_i_10_n_0 : STD_LOGIC;
  signal spi_sr_in_buf_ready_i_11_n_0 : STD_LOGIC;
  signal spi_sr_in_buf_ready_i_12_n_0 : STD_LOGIC;
  signal spi_sr_in_buf_ready_i_1_n_0 : STD_LOGIC;
  signal spi_sr_in_buf_ready_i_2_n_0 : STD_LOGIC;
  signal spi_sr_in_buf_ready_i_3_n_0 : STD_LOGIC;
  signal spi_sr_in_buf_ready_i_5_n_0 : STD_LOGIC;
  signal spi_sr_in_buf_ready_i_6_n_0 : STD_LOGIC;
  signal spi_sr_in_buf_ready_i_7_n_0 : STD_LOGIC;
  signal spi_sr_in_buf_ready_i_8_n_0 : STD_LOGIC;
  signal spi_sr_in_buf_ready_i_9_n_0 : STD_LOGIC;
  signal spi_sr_in_buf_ready_reg_n_0 : STD_LOGIC;
  signal spi_sr_in_buf_valid_i_1_n_0 : STD_LOGIC;
  signal spi_sr_in_buf_valid_q : STD_LOGIC;
  signal spi_sr_in_buf_valid_reg_n_0 : STD_LOGIC;
  signal spi_sr_out_buf : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \spi_sr_out_buf[0]_i_2_n_0\ : STD_LOGIC;
  signal \spi_sr_out_buf[0]_i_3_n_0\ : STD_LOGIC;
  signal \spi_sr_out_buf[1]_i_2_n_0\ : STD_LOGIC;
  signal \spi_sr_out_buf[1]_i_3_n_0\ : STD_LOGIC;
  signal \spi_sr_out_buf[2]_i_2_n_0\ : STD_LOGIC;
  signal \spi_sr_out_buf[2]_i_3_n_0\ : STD_LOGIC;
  signal \spi_sr_out_buf[3]_i_2_n_0\ : STD_LOGIC;
  signal \spi_sr_out_buf[3]_i_3_n_0\ : STD_LOGIC;
  signal \spi_sr_out_buf[4]_i_2_n_0\ : STD_LOGIC;
  signal \spi_sr_out_buf[4]_i_3_n_0\ : STD_LOGIC;
  signal \spi_sr_out_buf[5]_i_2_n_0\ : STD_LOGIC;
  signal \spi_sr_out_buf[5]_i_3_n_0\ : STD_LOGIC;
  signal \spi_sr_out_buf[6]_i_2_n_0\ : STD_LOGIC;
  signal \spi_sr_out_buf[6]_i_3_n_0\ : STD_LOGIC;
  signal \spi_sr_out_buf[7]_i_10_n_0\ : STD_LOGIC;
  signal \spi_sr_out_buf[7]_i_11_n_0\ : STD_LOGIC;
  signal \spi_sr_out_buf[7]_i_12_n_0\ : STD_LOGIC;
  signal \spi_sr_out_buf[7]_i_1_n_0\ : STD_LOGIC;
  signal \spi_sr_out_buf[7]_i_3_n_0\ : STD_LOGIC;
  signal \spi_sr_out_buf[7]_i_4_n_0\ : STD_LOGIC;
  signal \spi_sr_out_buf[7]_i_5_n_0\ : STD_LOGIC;
  signal \spi_sr_out_buf[7]_i_6_n_0\ : STD_LOGIC;
  signal \spi_sr_out_buf[7]_i_7_n_0\ : STD_LOGIC;
  signal \spi_sr_out_buf[7]_i_8_n_0\ : STD_LOGIC;
  signal \spi_sr_out_buf[7]_i_9_n_0\ : STD_LOGIC;
  signal spi_sr_out_buf_ready_i_1_n_0 : STD_LOGIC;
  signal spi_sr_out_buf_ready_reg_n_0 : STD_LOGIC;
  signal \spi_sr_out_buf_reg_n_0_[0]\ : STD_LOGIC;
  signal \spi_sr_out_buf_reg_n_0_[1]\ : STD_LOGIC;
  signal \spi_sr_out_buf_reg_n_0_[2]\ : STD_LOGIC;
  signal \spi_sr_out_buf_reg_n_0_[3]\ : STD_LOGIC;
  signal \spi_sr_out_buf_reg_n_0_[4]\ : STD_LOGIC;
  signal \spi_sr_out_buf_reg_n_0_[5]\ : STD_LOGIC;
  signal \spi_sr_out_buf_reg_n_0_[6]\ : STD_LOGIC;
  signal \spi_sr_out_buf_reg_n_0_[7]\ : STD_LOGIC;
  signal spi_sr_out_buf_valid : STD_LOGIC;
  signal spi_sr_out_buf_valid_i_1_n_0 : STD_LOGIC;
  signal spi_sr_out_buf_valid_i_2_n_0 : STD_LOGIC;
  signal \spi_sr_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \spi_sr_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \spi_sr_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \spi_sr_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \spi_sr_reg[6]_i_2_n_0\ : STD_LOGIC;
  signal \spi_sr_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \spi_sr_reg_n_0_[0]\ : STD_LOGIC;
  signal \spi_sr_reg_n_0_[1]\ : STD_LOGIC;
  signal \spi_sr_reg_n_0_[2]\ : STD_LOGIC;
  signal \spi_sr_reg_n_0_[3]\ : STD_LOGIC;
  signal \spi_sr_reg_n_0_[4]\ : STD_LOGIC;
  signal \spi_sr_reg_n_0_[5]\ : STD_LOGIC;
  signal \spi_sr_reg_n_0_[6]\ : STD_LOGIC;
  signal \spi_ss_o[0]_i_1_n_0\ : STD_LOGIC;
  signal \spi_ss_o[0]_i_2_n_0\ : STD_LOGIC;
  signal \spi_ss_o[0]_i_3_n_0\ : STD_LOGIC;
  signal \^spi_ss_o_reg[0]_0\ : STD_LOGIC;
  signal \NLW_s_axi_full_araddr_q_reg[23]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_s_axi_full_araddr_q_reg[23]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_spi_mmio_cont_rd_req_cnt_reg[31]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_spi_mmio_cont_rd_req_cnt_reg[31]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_spi_mmio_fsm_state_next_reg[3]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_spi_mmio_fsm_state_next_reg[3]_i_7_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_spi_mmio_rd_req_cnt_reg[31]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_spi_mmio_rd_req_cnt_reg[31]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_spi_fsm_state[2]_i_2\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \FSM_onehot_spi_fsm_state[2]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_onehot_spi_fsm_state[2]_i_4\ : label is "soft_lutpair7";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_spi_fsm_state_reg[0]\ : label is "SPI_FSM_STATE_WAIT_XFER_REQ:001,SPI_FSM_STATE_WAIT_SCK_SYNC:010,SPI_FSM_STATE_ACTIVE:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_spi_fsm_state_reg[1]\ : label is "SPI_FSM_STATE_WAIT_XFER_REQ:001,SPI_FSM_STATE_WAIT_SCK_SYNC:010,SPI_FSM_STATE_ACTIVE:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_spi_fsm_state_reg[2]\ : label is "SPI_FSM_STATE_WAIT_XFER_REQ:001,SPI_FSM_STATE_WAIT_SCK_SYNC:010,SPI_FSM_STATE_ACTIVE:100,";
  attribute SOFT_HLUTNM of \s_axi_full_araddr_q[10]_i_1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \s_axi_full_araddr_q[11]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \s_axi_full_araddr_q[12]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \s_axi_full_araddr_q[13]_i_1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \s_axi_full_araddr_q[14]_i_1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \s_axi_full_araddr_q[15]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \s_axi_full_araddr_q[16]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \s_axi_full_araddr_q[17]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \s_axi_full_araddr_q[18]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \s_axi_full_araddr_q[19]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \s_axi_full_araddr_q[1]_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \s_axi_full_araddr_q[20]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \s_axi_full_araddr_q[21]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \s_axi_full_araddr_q[22]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \s_axi_full_araddr_q[23]_i_2\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \s_axi_full_araddr_q[23]_i_3\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \s_axi_full_araddr_q[2]_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \s_axi_full_araddr_q[3]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \s_axi_full_araddr_q[4]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \s_axi_full_araddr_q[5]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \s_axi_full_araddr_q[6]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \s_axi_full_araddr_q[7]_i_1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \s_axi_full_araddr_q[8]_i_1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \s_axi_full_araddr_q[9]_i_1\ : label is "soft_lutpair100";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \s_axi_full_araddr_q_reg[12]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \s_axi_full_araddr_q_reg[16]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \s_axi_full_araddr_q_reg[20]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \s_axi_full_araddr_q_reg[23]_i_4\ : label is 35;
  attribute ADDER_THRESHOLD of \s_axi_full_araddr_q_reg[4]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \s_axi_full_araddr_q_reg[8]_i_2\ : label is 35;
  attribute SOFT_HLUTNM of \s_axi_full_arlen_q[0]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \s_axi_full_arlen_q[1]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \s_axi_full_arlen_q[4]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \s_axi_full_arlen_q[7]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of s_axi_full_arready_i_2 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of s_axi_full_arready_i_3 : label is "soft_lutpair80";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s_axi_full_arready_reg : label is "xilinx.com:interface:aximm:1.0 s_axi_full ARREADY";
  attribute SOFT_HLUTNM of \s_axi_full_arsize_q[0]_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \s_axi_full_arsize_q[1]_i_1\ : label is "soft_lutpair106";
  attribute X_INTERFACE_INFO of s_axi_full_awready_reg : label is "xilinx.com:interface:aximm:1.0 s_axi_full AWREADY";
  attribute X_INTERFACE_INFO of \s_axi_full_bid_reg[0]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full BID";
  attribute X_INTERFACE_INFO of \s_axi_full_bid_reg[1]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full BID";
  attribute X_INTERFACE_INFO of \s_axi_full_bid_reg[2]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full BID";
  attribute X_INTERFACE_INFO of \s_axi_full_bid_reg[3]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full BID";
  attribute SOFT_HLUTNM of s_axi_full_bvalid_i_1 : label is "soft_lutpair25";
  attribute X_INTERFACE_INFO of s_axi_full_bvalid_reg : label is "xilinx.com:interface:aximm:1.0 s_axi_full BVALID";
  attribute SOFT_HLUTNM of \s_axi_full_rdata[0]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \s_axi_full_rdata[10]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \s_axi_full_rdata[11]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \s_axi_full_rdata[12]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \s_axi_full_rdata[13]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \s_axi_full_rdata[14]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \s_axi_full_rdata[15]_i_2\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \s_axi_full_rdata[16]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \s_axi_full_rdata[17]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \s_axi_full_rdata[18]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \s_axi_full_rdata[19]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \s_axi_full_rdata[1]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \s_axi_full_rdata[20]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \s_axi_full_rdata[21]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \s_axi_full_rdata[22]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \s_axi_full_rdata[23]_i_2\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \s_axi_full_rdata[24]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \s_axi_full_rdata[25]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \s_axi_full_rdata[26]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \s_axi_full_rdata[27]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \s_axi_full_rdata[28]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \s_axi_full_rdata[29]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \s_axi_full_rdata[2]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \s_axi_full_rdata[30]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \s_axi_full_rdata[31]_i_2\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \s_axi_full_rdata[32]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \s_axi_full_rdata[33]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \s_axi_full_rdata[34]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \s_axi_full_rdata[35]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \s_axi_full_rdata[36]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \s_axi_full_rdata[37]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \s_axi_full_rdata[38]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \s_axi_full_rdata[39]_i_2\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \s_axi_full_rdata[3]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \s_axi_full_rdata[40]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \s_axi_full_rdata[41]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \s_axi_full_rdata[42]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \s_axi_full_rdata[43]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \s_axi_full_rdata[44]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \s_axi_full_rdata[45]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \s_axi_full_rdata[46]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \s_axi_full_rdata[47]_i_2\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \s_axi_full_rdata[48]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \s_axi_full_rdata[49]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \s_axi_full_rdata[4]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \s_axi_full_rdata[50]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \s_axi_full_rdata[51]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \s_axi_full_rdata[52]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \s_axi_full_rdata[53]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \s_axi_full_rdata[54]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \s_axi_full_rdata[55]_i_2\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \s_axi_full_rdata[56]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \s_axi_full_rdata[57]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \s_axi_full_rdata[58]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \s_axi_full_rdata[59]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \s_axi_full_rdata[5]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \s_axi_full_rdata[60]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \s_axi_full_rdata[61]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \s_axi_full_rdata[62]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \s_axi_full_rdata[63]_i_2\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \s_axi_full_rdata[6]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \s_axi_full_rdata[7]_i_2\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \s_axi_full_rdata[8]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \s_axi_full_rdata[9]_i_1\ : label is "soft_lutpair36";
  attribute X_INTERFACE_INFO of \s_axi_full_rdata_reg[0]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full RDATA";
  attribute X_INTERFACE_INFO of \s_axi_full_rdata_reg[10]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full RDATA";
  attribute X_INTERFACE_INFO of \s_axi_full_rdata_reg[11]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full RDATA";
  attribute X_INTERFACE_INFO of \s_axi_full_rdata_reg[12]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full RDATA";
  attribute X_INTERFACE_INFO of \s_axi_full_rdata_reg[13]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full RDATA";
  attribute X_INTERFACE_INFO of \s_axi_full_rdata_reg[14]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full RDATA";
  attribute X_INTERFACE_INFO of \s_axi_full_rdata_reg[15]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full RDATA";
  attribute X_INTERFACE_INFO of \s_axi_full_rdata_reg[16]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full RDATA";
  attribute X_INTERFACE_INFO of \s_axi_full_rdata_reg[17]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full RDATA";
  attribute X_INTERFACE_INFO of \s_axi_full_rdata_reg[18]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full RDATA";
  attribute X_INTERFACE_INFO of \s_axi_full_rdata_reg[19]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full RDATA";
  attribute X_INTERFACE_INFO of \s_axi_full_rdata_reg[1]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full RDATA";
  attribute X_INTERFACE_INFO of \s_axi_full_rdata_reg[20]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full RDATA";
  attribute X_INTERFACE_INFO of \s_axi_full_rdata_reg[21]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full RDATA";
  attribute X_INTERFACE_INFO of \s_axi_full_rdata_reg[22]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full RDATA";
  attribute X_INTERFACE_INFO of \s_axi_full_rdata_reg[23]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full RDATA";
  attribute X_INTERFACE_INFO of \s_axi_full_rdata_reg[24]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full RDATA";
  attribute X_INTERFACE_INFO of \s_axi_full_rdata_reg[25]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full RDATA";
  attribute X_INTERFACE_INFO of \s_axi_full_rdata_reg[26]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full RDATA";
  attribute X_INTERFACE_INFO of \s_axi_full_rdata_reg[27]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full RDATA";
  attribute X_INTERFACE_INFO of \s_axi_full_rdata_reg[28]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full RDATA";
  attribute X_INTERFACE_INFO of \s_axi_full_rdata_reg[29]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full RDATA";
  attribute X_INTERFACE_INFO of \s_axi_full_rdata_reg[2]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full RDATA";
  attribute X_INTERFACE_INFO of \s_axi_full_rdata_reg[30]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full RDATA";
  attribute X_INTERFACE_INFO of \s_axi_full_rdata_reg[31]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full RDATA";
  attribute X_INTERFACE_INFO of \s_axi_full_rdata_reg[32]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full RDATA";
  attribute X_INTERFACE_INFO of \s_axi_full_rdata_reg[33]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full RDATA";
  attribute X_INTERFACE_INFO of \s_axi_full_rdata_reg[34]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full RDATA";
  attribute X_INTERFACE_INFO of \s_axi_full_rdata_reg[35]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full RDATA";
  attribute X_INTERFACE_INFO of \s_axi_full_rdata_reg[36]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full RDATA";
  attribute X_INTERFACE_INFO of \s_axi_full_rdata_reg[37]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full RDATA";
  attribute X_INTERFACE_INFO of \s_axi_full_rdata_reg[38]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full RDATA";
  attribute X_INTERFACE_INFO of \s_axi_full_rdata_reg[39]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full RDATA";
  attribute X_INTERFACE_INFO of \s_axi_full_rdata_reg[3]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full RDATA";
  attribute X_INTERFACE_INFO of \s_axi_full_rdata_reg[40]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full RDATA";
  attribute X_INTERFACE_INFO of \s_axi_full_rdata_reg[41]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full RDATA";
  attribute X_INTERFACE_INFO of \s_axi_full_rdata_reg[42]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full RDATA";
  attribute X_INTERFACE_INFO of \s_axi_full_rdata_reg[43]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full RDATA";
  attribute X_INTERFACE_INFO of \s_axi_full_rdata_reg[44]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full RDATA";
  attribute X_INTERFACE_INFO of \s_axi_full_rdata_reg[45]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full RDATA";
  attribute X_INTERFACE_INFO of \s_axi_full_rdata_reg[46]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full RDATA";
  attribute X_INTERFACE_INFO of \s_axi_full_rdata_reg[47]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full RDATA";
  attribute X_INTERFACE_INFO of \s_axi_full_rdata_reg[48]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full RDATA";
  attribute X_INTERFACE_INFO of \s_axi_full_rdata_reg[49]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full RDATA";
  attribute X_INTERFACE_INFO of \s_axi_full_rdata_reg[4]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full RDATA";
  attribute X_INTERFACE_INFO of \s_axi_full_rdata_reg[50]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full RDATA";
  attribute X_INTERFACE_INFO of \s_axi_full_rdata_reg[51]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full RDATA";
  attribute X_INTERFACE_INFO of \s_axi_full_rdata_reg[52]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full RDATA";
  attribute X_INTERFACE_INFO of \s_axi_full_rdata_reg[53]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full RDATA";
  attribute X_INTERFACE_INFO of \s_axi_full_rdata_reg[54]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full RDATA";
  attribute X_INTERFACE_INFO of \s_axi_full_rdata_reg[55]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full RDATA";
  attribute X_INTERFACE_INFO of \s_axi_full_rdata_reg[56]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full RDATA";
  attribute X_INTERFACE_INFO of \s_axi_full_rdata_reg[57]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full RDATA";
  attribute X_INTERFACE_INFO of \s_axi_full_rdata_reg[58]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full RDATA";
  attribute X_INTERFACE_INFO of \s_axi_full_rdata_reg[59]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full RDATA";
  attribute X_INTERFACE_INFO of \s_axi_full_rdata_reg[5]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full RDATA";
  attribute X_INTERFACE_INFO of \s_axi_full_rdata_reg[60]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full RDATA";
  attribute X_INTERFACE_INFO of \s_axi_full_rdata_reg[61]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full RDATA";
  attribute X_INTERFACE_INFO of \s_axi_full_rdata_reg[62]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full RDATA";
  attribute X_INTERFACE_INFO of \s_axi_full_rdata_reg[63]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full RDATA";
  attribute X_INTERFACE_INFO of \s_axi_full_rdata_reg[6]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full RDATA";
  attribute X_INTERFACE_INFO of \s_axi_full_rdata_reg[7]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full RDATA";
  attribute X_INTERFACE_INFO of \s_axi_full_rdata_reg[8]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full RDATA";
  attribute X_INTERFACE_INFO of \s_axi_full_rdata_reg[9]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full RDATA";
  attribute X_INTERFACE_INFO of \s_axi_full_rid_reg[0]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full RID";
  attribute X_INTERFACE_INFO of \s_axi_full_rid_reg[1]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full RID";
  attribute X_INTERFACE_INFO of \s_axi_full_rid_reg[2]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full RID";
  attribute X_INTERFACE_INFO of \s_axi_full_rid_reg[3]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_full RID";
  attribute SOFT_HLUTNM of s_axi_full_rlast_i_1 : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of s_axi_full_rlast_i_4 : label is "soft_lutpair20";
  attribute X_INTERFACE_INFO of s_axi_full_rlast_reg : label is "xilinx.com:interface:aximm:1.0 s_axi_full RLAST";
  attribute SOFT_HLUTNM of s_axi_full_rvalid_i_1 : label is "soft_lutpair86";
  attribute X_INTERFACE_INFO of s_axi_full_rvalid_reg : label is "xilinx.com:interface:aximm:1.0 s_axi_full RVALID";
  attribute X_INTERFACE_INFO of s_axi_full_wready_reg : label is "xilinx.com:interface:aximm:1.0 s_axi_full WREADY";
  attribute SOFT_HLUTNM of s_axi_full_write_busy_i_2 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of s_axi_lite_arready_INST_0 : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of s_axi_lite_awready_i_2 : label is "soft_lutpair15";
  attribute X_INTERFACE_INFO of s_axi_lite_awready_reg : label is "xilinx.com:interface:aximm:1.0 s_axi_lite AWREADY";
  attribute SOFT_HLUTNM of s_axi_lite_bvalid_i_1 : label is "soft_lutpair15";
  attribute X_INTERFACE_INFO of s_axi_lite_bvalid_reg : label is "xilinx.com:interface:aximm:1.0 s_axi_lite BVALID";
  attribute SOFT_HLUTNM of \s_axi_lite_rdata[16]_i_3\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \s_axi_lite_rdata[17]_i_4\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \s_axi_lite_rdata[1]_i_2\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \s_axi_lite_rdata[22]_i_4\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \s_axi_lite_rdata[23]_i_4\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \s_axi_lite_rdata[23]_i_5\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \s_axi_lite_rdata[24]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \s_axi_lite_rdata[24]_i_3\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \s_axi_lite_rdata[25]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \s_axi_lite_rdata[25]_i_3\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \s_axi_lite_rdata[26]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \s_axi_lite_rdata[26]_i_3\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \s_axi_lite_rdata[2]_i_2\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \s_axi_lite_rdata[30]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \s_axi_lite_rdata[31]_i_5\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \s_axi_lite_rdata[6]_i_2\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \s_axi_lite_rdata[6]_i_4\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \s_axi_lite_rdata[6]_i_7\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \s_axi_lite_rdata[7]_i_1\ : label is "soft_lutpair8";
  attribute X_INTERFACE_INFO of \s_axi_lite_rdata_reg[0]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA";
  attribute X_INTERFACE_INFO of \s_axi_lite_rdata_reg[10]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA";
  attribute X_INTERFACE_INFO of \s_axi_lite_rdata_reg[11]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA";
  attribute X_INTERFACE_INFO of \s_axi_lite_rdata_reg[12]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA";
  attribute X_INTERFACE_INFO of \s_axi_lite_rdata_reg[13]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA";
  attribute X_INTERFACE_INFO of \s_axi_lite_rdata_reg[14]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA";
  attribute X_INTERFACE_INFO of \s_axi_lite_rdata_reg[15]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA";
  attribute X_INTERFACE_INFO of \s_axi_lite_rdata_reg[16]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA";
  attribute X_INTERFACE_INFO of \s_axi_lite_rdata_reg[17]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA";
  attribute X_INTERFACE_INFO of \s_axi_lite_rdata_reg[18]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA";
  attribute X_INTERFACE_INFO of \s_axi_lite_rdata_reg[19]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA";
  attribute X_INTERFACE_INFO of \s_axi_lite_rdata_reg[1]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA";
  attribute X_INTERFACE_INFO of \s_axi_lite_rdata_reg[20]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA";
  attribute X_INTERFACE_INFO of \s_axi_lite_rdata_reg[21]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA";
  attribute X_INTERFACE_INFO of \s_axi_lite_rdata_reg[22]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA";
  attribute X_INTERFACE_INFO of \s_axi_lite_rdata_reg[23]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA";
  attribute X_INTERFACE_INFO of \s_axi_lite_rdata_reg[24]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA";
  attribute X_INTERFACE_INFO of \s_axi_lite_rdata_reg[25]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA";
  attribute X_INTERFACE_INFO of \s_axi_lite_rdata_reg[26]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA";
  attribute X_INTERFACE_INFO of \s_axi_lite_rdata_reg[27]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA";
  attribute X_INTERFACE_INFO of \s_axi_lite_rdata_reg[28]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA";
  attribute X_INTERFACE_INFO of \s_axi_lite_rdata_reg[29]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA";
  attribute X_INTERFACE_INFO of \s_axi_lite_rdata_reg[2]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA";
  attribute X_INTERFACE_INFO of \s_axi_lite_rdata_reg[30]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA";
  attribute X_INTERFACE_INFO of \s_axi_lite_rdata_reg[31]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA";
  attribute X_INTERFACE_INFO of \s_axi_lite_rdata_reg[3]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA";
  attribute X_INTERFACE_INFO of \s_axi_lite_rdata_reg[4]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA";
  attribute X_INTERFACE_INFO of \s_axi_lite_rdata_reg[5]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA";
  attribute X_INTERFACE_INFO of \s_axi_lite_rdata_reg[6]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA";
  attribute X_INTERFACE_INFO of \s_axi_lite_rdata_reg[7]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA";
  attribute X_INTERFACE_INFO of \s_axi_lite_rdata_reg[8]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA";
  attribute X_INTERFACE_INFO of \s_axi_lite_rdata_reg[9]\ : label is "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA";
  attribute SOFT_HLUTNM of s_axi_lite_rvalid_i_1 : label is "soft_lutpair105";
  attribute X_INTERFACE_INFO of s_axi_lite_rvalid_reg : label is "xilinx.com:interface:aximm:1.0 s_axi_lite RVALID";
  attribute SOFT_HLUTNM of spi_dir_i_2 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of spi_en_i_1 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of spi_en_i_2 : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \spi_fsm_state[0]_i_1\ : label is "soft_lutpair140";
  attribute SOFT_HLUTNM of \spi_fsm_state[1]_i_1\ : label is "soft_lutpair140";
  attribute SOFT_HLUTNM of \spi_io_mode[1]_i_6\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \spi_io_mode[1]_i_9\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \spi_io_mode_q[1]_i_2\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \spi_io_o[0]_i_11\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \spi_io_o[0]_i_7\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \spi_io_o[1]_i_4\ : label is "soft_lutpair1";
  attribute X_INTERFACE_INFO of \spi_io_o_reg[0]\ : label is "xilinx.com:interface:spi_rtl:1.0 spi IO0_O";
  attribute X_INTERFACE_INFO of \spi_io_o_reg[1]\ : label is "xilinx.com:interface:spi_rtl:1.0 spi IO0_O";
  attribute X_INTERFACE_INFO of \spi_io_o_reg[2]\ : label is "xilinx.com:interface:spi_rtl:1.0 spi IO0_O";
  attribute X_INTERFACE_INFO of \spi_io_o_reg[3]\ : label is "xilinx.com:interface:spi_rtl:1.0 spi IO0_O";
  attribute X_INTERFACE_INFO of \spi_io_t_reg[0]\ : label is "xilinx.com:interface:spi_rtl:1.0 spi IO0_T";
  attribute X_INTERFACE_INFO of \spi_io_t_reg[1]\ : label is "xilinx.com:interface:spi_rtl:1.0 spi IO0_T";
  attribute X_INTERFACE_INFO of \spi_io_t_reg[2]\ : label is "xilinx.com:interface:spi_rtl:1.0 spi IO0_T";
  attribute SOFT_HLUTNM of \spi_mmio_addr_rem[0]_i_2\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \spi_mmio_cont_rd_req_cnt[0]_i_1\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \spi_mmio_cont_rd_req_cnt[10]_i_1\ : label is "soft_lutpair128";
  attribute SOFT_HLUTNM of \spi_mmio_cont_rd_req_cnt[11]_i_1\ : label is "soft_lutpair128";
  attribute SOFT_HLUTNM of \spi_mmio_cont_rd_req_cnt[12]_i_1\ : label is "soft_lutpair129";
  attribute SOFT_HLUTNM of \spi_mmio_cont_rd_req_cnt[13]_i_1\ : label is "soft_lutpair129";
  attribute SOFT_HLUTNM of \spi_mmio_cont_rd_req_cnt[14]_i_1\ : label is "soft_lutpair130";
  attribute SOFT_HLUTNM of \spi_mmio_cont_rd_req_cnt[15]_i_1\ : label is "soft_lutpair130";
  attribute SOFT_HLUTNM of \spi_mmio_cont_rd_req_cnt[16]_i_1\ : label is "soft_lutpair131";
  attribute SOFT_HLUTNM of \spi_mmio_cont_rd_req_cnt[17]_i_1\ : label is "soft_lutpair131";
  attribute SOFT_HLUTNM of \spi_mmio_cont_rd_req_cnt[18]_i_1\ : label is "soft_lutpair132";
  attribute SOFT_HLUTNM of \spi_mmio_cont_rd_req_cnt[19]_i_1\ : label is "soft_lutpair132";
  attribute SOFT_HLUTNM of \spi_mmio_cont_rd_req_cnt[1]_i_1\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \spi_mmio_cont_rd_req_cnt[20]_i_1\ : label is "soft_lutpair133";
  attribute SOFT_HLUTNM of \spi_mmio_cont_rd_req_cnt[21]_i_1\ : label is "soft_lutpair133";
  attribute SOFT_HLUTNM of \spi_mmio_cont_rd_req_cnt[22]_i_1\ : label is "soft_lutpair134";
  attribute SOFT_HLUTNM of \spi_mmio_cont_rd_req_cnt[23]_i_1\ : label is "soft_lutpair134";
  attribute SOFT_HLUTNM of \spi_mmio_cont_rd_req_cnt[24]_i_1\ : label is "soft_lutpair135";
  attribute SOFT_HLUTNM of \spi_mmio_cont_rd_req_cnt[25]_i_1\ : label is "soft_lutpair135";
  attribute SOFT_HLUTNM of \spi_mmio_cont_rd_req_cnt[26]_i_1\ : label is "soft_lutpair136";
  attribute SOFT_HLUTNM of \spi_mmio_cont_rd_req_cnt[27]_i_1\ : label is "soft_lutpair136";
  attribute SOFT_HLUTNM of \spi_mmio_cont_rd_req_cnt[28]_i_1\ : label is "soft_lutpair137";
  attribute SOFT_HLUTNM of \spi_mmio_cont_rd_req_cnt[29]_i_1\ : label is "soft_lutpair137";
  attribute SOFT_HLUTNM of \spi_mmio_cont_rd_req_cnt[2]_i_1\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \spi_mmio_cont_rd_req_cnt[30]_i_1\ : label is "soft_lutpair138";
  attribute SOFT_HLUTNM of \spi_mmio_cont_rd_req_cnt[31]_i_2\ : label is "soft_lutpair138";
  attribute SOFT_HLUTNM of \spi_mmio_cont_rd_req_cnt[3]_i_1\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \spi_mmio_cont_rd_req_cnt[4]_i_1\ : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \spi_mmio_cont_rd_req_cnt[5]_i_1\ : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \spi_mmio_cont_rd_req_cnt[6]_i_1\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \spi_mmio_cont_rd_req_cnt[7]_i_1\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \spi_mmio_cont_rd_req_cnt[8]_i_1\ : label is "soft_lutpair127";
  attribute SOFT_HLUTNM of \spi_mmio_cont_rd_req_cnt[9]_i_1\ : label is "soft_lutpair127";
  attribute SOFT_HLUTNM of \spi_mmio_cont_rd_req_cnt_buf[0]_i_1\ : label is "soft_lutpair155";
  attribute SOFT_HLUTNM of \spi_mmio_cont_rd_req_cnt_buf[10]_i_1\ : label is "soft_lutpair150";
  attribute SOFT_HLUTNM of \spi_mmio_cont_rd_req_cnt_buf[11]_i_1\ : label is "soft_lutpair150";
  attribute SOFT_HLUTNM of \spi_mmio_cont_rd_req_cnt_buf[12]_i_1\ : label is "soft_lutpair149";
  attribute SOFT_HLUTNM of \spi_mmio_cont_rd_req_cnt_buf[13]_i_1\ : label is "soft_lutpair149";
  attribute SOFT_HLUTNM of \spi_mmio_cont_rd_req_cnt_buf[14]_i_1\ : label is "soft_lutpair148";
  attribute SOFT_HLUTNM of \spi_mmio_cont_rd_req_cnt_buf[15]_i_1\ : label is "soft_lutpair148";
  attribute SOFT_HLUTNM of \spi_mmio_cont_rd_req_cnt_buf[16]_i_1\ : label is "soft_lutpair147";
  attribute SOFT_HLUTNM of \spi_mmio_cont_rd_req_cnt_buf[17]_i_1\ : label is "soft_lutpair147";
  attribute SOFT_HLUTNM of \spi_mmio_cont_rd_req_cnt_buf[18]_i_1\ : label is "soft_lutpair146";
  attribute SOFT_HLUTNM of \spi_mmio_cont_rd_req_cnt_buf[19]_i_1\ : label is "soft_lutpair146";
  attribute SOFT_HLUTNM of \spi_mmio_cont_rd_req_cnt_buf[1]_i_1\ : label is "soft_lutpair155";
  attribute SOFT_HLUTNM of \spi_mmio_cont_rd_req_cnt_buf[20]_i_1\ : label is "soft_lutpair145";
  attribute SOFT_HLUTNM of \spi_mmio_cont_rd_req_cnt_buf[21]_i_1\ : label is "soft_lutpair145";
  attribute SOFT_HLUTNM of \spi_mmio_cont_rd_req_cnt_buf[22]_i_1\ : label is "soft_lutpair144";
  attribute SOFT_HLUTNM of \spi_mmio_cont_rd_req_cnt_buf[23]_i_1\ : label is "soft_lutpair144";
  attribute SOFT_HLUTNM of \spi_mmio_cont_rd_req_cnt_buf[24]_i_1\ : label is "soft_lutpair143";
  attribute SOFT_HLUTNM of \spi_mmio_cont_rd_req_cnt_buf[25]_i_1\ : label is "soft_lutpair143";
  attribute SOFT_HLUTNM of \spi_mmio_cont_rd_req_cnt_buf[26]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \spi_mmio_cont_rd_req_cnt_buf[27]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \spi_mmio_cont_rd_req_cnt_buf[28]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \spi_mmio_cont_rd_req_cnt_buf[29]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \spi_mmio_cont_rd_req_cnt_buf[2]_i_1\ : label is "soft_lutpair154";
  attribute SOFT_HLUTNM of \spi_mmio_cont_rd_req_cnt_buf[30]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \spi_mmio_cont_rd_req_cnt_buf[31]_i_2\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \spi_mmio_cont_rd_req_cnt_buf[3]_i_1\ : label is "soft_lutpair154";
  attribute SOFT_HLUTNM of \spi_mmio_cont_rd_req_cnt_buf[4]_i_1\ : label is "soft_lutpair153";
  attribute SOFT_HLUTNM of \spi_mmio_cont_rd_req_cnt_buf[5]_i_1\ : label is "soft_lutpair153";
  attribute SOFT_HLUTNM of \spi_mmio_cont_rd_req_cnt_buf[6]_i_1\ : label is "soft_lutpair152";
  attribute SOFT_HLUTNM of \spi_mmio_cont_rd_req_cnt_buf[7]_i_1\ : label is "soft_lutpair152";
  attribute SOFT_HLUTNM of \spi_mmio_cont_rd_req_cnt_buf[8]_i_1\ : label is "soft_lutpair151";
  attribute SOFT_HLUTNM of \spi_mmio_cont_rd_req_cnt_buf[9]_i_1\ : label is "soft_lutpair151";
  attribute ADDER_THRESHOLD of \spi_mmio_cont_rd_req_cnt_reg[12]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \spi_mmio_cont_rd_req_cnt_reg[16]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \spi_mmio_cont_rd_req_cnt_reg[20]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \spi_mmio_cont_rd_req_cnt_reg[24]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \spi_mmio_cont_rd_req_cnt_reg[28]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \spi_mmio_cont_rd_req_cnt_reg[31]_i_4\ : label is 35;
  attribute ADDER_THRESHOLD of \spi_mmio_cont_rd_req_cnt_reg[4]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \spi_mmio_cont_rd_req_cnt_reg[8]_i_2\ : label is 35;
  attribute SOFT_HLUTNM of \spi_mmio_cs_high_wait[7]_i_2\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \spi_mmio_cs_mask[0]_i_2\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \spi_mmio_cs_mask[0]_i_3\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \spi_mmio_cs_wait_rem[0]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \spi_mmio_cs_wait_rem[1]_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \spi_mmio_cs_wait_rem[5]_i_2\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \spi_mmio_cs_wait_rem[7]_i_10\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \spi_mmio_cs_wait_rem[7]_i_3\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \spi_mmio_cs_wait_rem[7]_i_4\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \spi_mmio_cs_wait_rem[7]_i_6\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \spi_mmio_cs_wait_rem[7]_i_7\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \spi_mmio_cs_wait_rem[7]_i_9\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \spi_mmio_dummy_rem[1]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of spi_mmio_en_req_i_1 : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \spi_mmio_fsm_state[0]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \spi_mmio_fsm_state[1]_i_3\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \spi_mmio_fsm_state[2]_i_2\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \spi_mmio_fsm_state[2]_i_3\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \spi_mmio_fsm_state[3]_i_10\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \spi_mmio_fsm_state[3]_i_11\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \spi_mmio_fsm_state[3]_i_2\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \spi_mmio_fsm_state[3]_i_3\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \spi_mmio_fsm_state[3]_i_4\ : label is "soft_lutpair139";
  attribute SOFT_HLUTNM of \spi_mmio_fsm_state[3]_i_5\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \spi_mmio_fsm_state[3]_i_7\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \spi_mmio_fsm_state[3]_i_8\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \spi_mmio_fsm_state_next[1]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \spi_mmio_fsm_state_next[3]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \spi_mmio_fsm_state_next[3]_i_6\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of spi_mmio_mode_bits_en_i_2 : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \spi_mmio_rd_instr[7]_i_2\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \spi_mmio_rd_instr_io_mode[1]_i_2\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \spi_mmio_rd_req_cnt[0]_i_1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \spi_mmio_rd_req_cnt[10]_i_1\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \spi_mmio_rd_req_cnt[11]_i_1\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \spi_mmio_rd_req_cnt[12]_i_1\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \spi_mmio_rd_req_cnt[13]_i_1\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \spi_mmio_rd_req_cnt[14]_i_1\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \spi_mmio_rd_req_cnt[15]_i_1\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \spi_mmio_rd_req_cnt[16]_i_1\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \spi_mmio_rd_req_cnt[17]_i_1\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \spi_mmio_rd_req_cnt[18]_i_1\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \spi_mmio_rd_req_cnt[19]_i_1\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \spi_mmio_rd_req_cnt[1]_i_1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \spi_mmio_rd_req_cnt[20]_i_1\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \spi_mmio_rd_req_cnt[21]_i_1\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \spi_mmio_rd_req_cnt[22]_i_1\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \spi_mmio_rd_req_cnt[23]_i_1\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \spi_mmio_rd_req_cnt[24]_i_1\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \spi_mmio_rd_req_cnt[25]_i_1\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \spi_mmio_rd_req_cnt[26]_i_1\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \spi_mmio_rd_req_cnt[27]_i_1\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \spi_mmio_rd_req_cnt[28]_i_1\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \spi_mmio_rd_req_cnt[29]_i_1\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \spi_mmio_rd_req_cnt[2]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \spi_mmio_rd_req_cnt[30]_i_1\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \spi_mmio_rd_req_cnt[31]_i_2\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \spi_mmio_rd_req_cnt[3]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \spi_mmio_rd_req_cnt[4]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \spi_mmio_rd_req_cnt[5]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \spi_mmio_rd_req_cnt[6]_i_1\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \spi_mmio_rd_req_cnt[7]_i_1\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \spi_mmio_rd_req_cnt[8]_i_1\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \spi_mmio_rd_req_cnt[9]_i_1\ : label is "soft_lutpair111";
  attribute ADDER_THRESHOLD of \spi_mmio_rd_req_cnt_reg[12]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \spi_mmio_rd_req_cnt_reg[16]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \spi_mmio_rd_req_cnt_reg[20]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \spi_mmio_rd_req_cnt_reg[24]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \spi_mmio_rd_req_cnt_reg[28]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \spi_mmio_rd_req_cnt_reg[31]_i_4\ : label is 35;
  attribute ADDER_THRESHOLD of \spi_mmio_rd_req_cnt_reg[4]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \spi_mmio_rd_req_cnt_reg[8]_i_2\ : label is 35;
  attribute SOFT_HLUTNM of \spi_mode[1]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of spi_rd_req_ack_i_2 : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of spi_rd_req_ack_i_3 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of spi_rd_req_ack_i_4 : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of spi_rd_req_i_3 : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of spi_rd_req_i_6 : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of spi_rd_req_i_7 : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \spi_sck_div_cnt[0]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \spi_sck_div_cnt[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \spi_sck_div_cnt[3]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \spi_sck_div_cnt[4]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \spi_sck_div_cnt[6]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \spi_sck_div_cnt[7]_i_2\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of spi_sck_div_en_i_1 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \spi_sck_div_l[7]_i_2\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of spi_sck_int_i_1 : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of spi_sck_o_i_2 : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of spi_sck_o_i_4 : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of spi_sck_o_i_8 : label is "soft_lutpair5";
  attribute X_INTERFACE_INFO of spi_sck_o_reg : label is "xilinx.com:interface:spi_rtl:1.0 spi SCK_O";
  attribute SOFT_HLUTNM of \spi_sr[1]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \spi_sr[2]_i_3\ : label is "soft_lutpair142";
  attribute SOFT_HLUTNM of \spi_sr[3]_i_3\ : label is "soft_lutpair142";
  attribute SOFT_HLUTNM of \spi_sr[4]_i_3\ : label is "soft_lutpair141";
  attribute SOFT_HLUTNM of \spi_sr[5]_i_3\ : label is "soft_lutpair141";
  attribute SOFT_HLUTNM of \spi_sr[6]_i_3\ : label is "soft_lutpair139";
  attribute SOFT_HLUTNM of \spi_sr_bit_cnt[0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \spi_sr_bit_cnt[1]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \spi_sr_bit_cnt[2]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \spi_sr_bit_cnt[3]_i_3\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \spi_sr_in_buf[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \spi_sr_in_buf[7]_i_3\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of spi_sr_in_buf_ready_i_12 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of spi_sr_in_buf_ready_i_6 : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of spi_sr_in_buf_ready_i_7 : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of spi_sr_in_buf_ready_i_8 : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of spi_sr_in_buf_ready_i_9 : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \spi_sr_out_buf[7]_i_10\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \spi_sr_out_buf[7]_i_11\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \spi_sr_out_buf[7]_i_12\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \spi_sr_out_buf[7]_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \spi_sr_out_buf[7]_i_5\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \spi_sr_out_buf[7]_i_8\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of spi_sr_out_buf_valid_i_2 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \spi_ss_o[0]_i_2\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \spi_ss_o[0]_i_3\ : label is "soft_lutpair58";
  attribute X_INTERFACE_INFO of \spi_ss_o_reg[0]\ : label is "xilinx.com:interface:spi_rtl:1.0 spi SS_O";
begin
  s_axi_full_arready_reg_0 <= \^s_axi_full_arready_reg_0\;
  s_axi_full_awready <= \^s_axi_full_awready\;
  s_axi_full_bvalid <= \^s_axi_full_bvalid\;
  s_axi_full_rlast <= \^s_axi_full_rlast\;
  s_axi_full_rvalid_reg_0 <= \^s_axi_full_rvalid_reg_0\;
  s_axi_full_wready <= \^s_axi_full_wready\;
  s_axi_lite_awready <= \^s_axi_lite_awready\;
  s_axi_lite_bvalid <= \^s_axi_lite_bvalid\;
  s_axi_lite_rvalid_reg_0 <= \^s_axi_lite_rvalid_reg_0\;
  spi_io1_o <= \^spi_io1_o\;
  spi_io2_o <= \^spi_io2_o\;
  spi_io3_o <= \^spi_io3_o\;
  spi_sck_o <= \^spi_sck_o\;
  \spi_ss_o_reg[0]_0\ <= \^spi_ss_o_reg[0]_0\;
\FSM_onehot_spi_fsm_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF4040FF40"
    )
        port map (
      I0 => \FSM_onehot_spi_fsm_state[2]_i_2_n_0\,
      I1 => \spi_io_o[0]_i_7_n_0\,
      I2 => \FSM_onehot_spi_fsm_state_reg_n_0_[2]\,
      I3 => \FSM_onehot_spi_fsm_state_reg_n_0_[1]\,
      I4 => \FSM_onehot_spi_fsm_state[2]_i_3_n_0\,
      I5 => \FSM_onehot_spi_fsm_state[2]_i_4_n_0\,
      O => spi_fsm_state
    );
\FSM_onehot_spi_fsm_state[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \spi_io_o[0]_i_4_n_0\,
      I1 => \spi_mode_reg_n_0_[0]\,
      I2 => \spi_io_o[0]_i_5_n_0\,
      O => \FSM_onehot_spi_fsm_state[2]_i_2_n_0\
    );
\FSM_onehot_spi_fsm_state[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BD"
    )
        port map (
      I0 => \spi_io_o[0]_i_5_n_0\,
      I1 => \spi_mode_reg_n_0_[0]\,
      I2 => \spi_io_o[0]_i_4_n_0\,
      O => \FSM_onehot_spi_fsm_state[2]_i_3_n_0\
    );
\FSM_onehot_spi_fsm_state[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA08"
    )
        port map (
      I0 => \FSM_onehot_spi_fsm_state_reg_n_0_[0]\,
      I1 => spi_rd_req_reg_n_0,
      I2 => spi_rd_req_ack_reg_n_0,
      I3 => spi_sr_out_buf_valid,
      O => \FSM_onehot_spi_fsm_state[2]_i_4_n_0\
    );
\FSM_onehot_spi_fsm_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => spi_fsm_state,
      D => \FSM_onehot_spi_fsm_state_reg_n_0_[2]\,
      Q => \FSM_onehot_spi_fsm_state_reg_n_0_[0]\,
      S => p_5_in
    );
\FSM_onehot_spi_fsm_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => spi_fsm_state,
      D => \FSM_onehot_spi_fsm_state_reg_n_0_[0]\,
      Q => \FSM_onehot_spi_fsm_state_reg_n_0_[1]\,
      R => p_5_in
    );
\FSM_onehot_spi_fsm_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => spi_fsm_state,
      D => \FSM_onehot_spi_fsm_state_reg_n_0_[1]\,
      Q => \FSM_onehot_spi_fsm_state_reg_n_0_[2]\,
      R => p_5_in
    );
irq_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \irq_enabled_reg_n_0_[2]\,
      I1 => \irq_pend_reg_n_0_[2]\,
      I2 => \irq_pend_reg_n_0_[0]\,
      I3 => \irq_enabled_reg_n_0_[0]\,
      I4 => \irq_pend_reg_n_0_[1]\,
      I5 => \irq_enabled_reg_n_0_[1]\,
      O => irq
    );
\irq_enabled[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400000"
    )
        port map (
      I0 => s_axi_lite_awaddr(0),
      I1 => s_axi_lite_wstrb(0),
      I2 => s_axi_lite_awaddr(1),
      I3 => s_axi_lite_awaddr(3),
      I4 => \^s_axi_lite_awready\,
      I5 => s_axi_lite_awaddr(2),
      O => irq_enabled
    );
\irq_enabled_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => irq_enabled,
      D => s_axi_lite_wdata(0),
      Q => \irq_enabled_reg_n_0_[0]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\irq_enabled_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => irq_enabled,
      D => s_axi_lite_wdata(1),
      Q => \irq_enabled_reg_n_0_[1]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\irq_enabled_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => irq_enabled,
      D => s_axi_lite_wdata(2),
      Q => \irq_enabled_reg_n_0_[2]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\irq_enabled_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => irq_enabled,
      D => s_axi_lite_wdata(3),
      Q => \irq_enabled_reg_n_0_[3]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\irq_enabled_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => irq_enabled,
      D => s_axi_lite_wdata(4),
      Q => \irq_enabled_reg_n_0_[4]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\irq_enabled_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => irq_enabled,
      D => s_axi_lite_wdata(5),
      Q => \irq_enabled_reg_n_0_[5]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\irq_enabled_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => irq_enabled,
      D => s_axi_lite_wdata(6),
      Q => \irq_enabled_reg_n_0_[6]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\irq_pend[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77770300"
    )
        port map (
      I0 => s_axi_lite_wdata(0),
      I1 => \irq_pend[2]_i_2_n_0\,
      I2 => spi_idle_q,
      I3 => \FSM_onehot_spi_fsm_state_reg_n_0_[0]\,
      I4 => \irq_pend_reg_n_0_[0]\,
      O => \irq_pend[0]_i_1_n_0\
    );
\irq_pend[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77770300"
    )
        port map (
      I0 => s_axi_lite_wdata(1),
      I1 => \irq_pend[2]_i_2_n_0\,
      I2 => spi_sr_in_buf_valid_q,
      I3 => spi_sr_in_buf_valid_reg_n_0,
      I4 => \irq_pend_reg_n_0_[1]\,
      O => \irq_pend[1]_i_1_n_0\
    );
\irq_pend[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FFFF0000F300"
    )
        port map (
      I0 => s_axi_lite_wdata(2),
      I1 => spi_en_reg_n_0,
      I2 => spi_sr_out_buf_ready_reg_n_0,
      I3 => spi_sr_out_buf_valid,
      I4 => \irq_pend[2]_i_2_n_0\,
      I5 => \irq_pend_reg_n_0_[2]\,
      O => \irq_pend[2]_i_1_n_0\
    );
\irq_pend[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000800000"
    )
        port map (
      I0 => s_axi_lite_awaddr(0),
      I1 => s_axi_lite_wstrb(0),
      I2 => s_axi_lite_awaddr(1),
      I3 => s_axi_lite_awaddr(3),
      I4 => \^s_axi_lite_awready\,
      I5 => s_axi_lite_awaddr(2),
      O => \irq_pend[2]_i_2_n_0\
    );
\irq_pend_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \irq_pend[0]_i_1_n_0\,
      Q => \irq_pend_reg_n_0_[0]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\irq_pend_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \irq_pend[1]_i_1_n_0\,
      Q => \irq_pend_reg_n_0_[1]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\irq_pend_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \irq_pend[2]_i_1_n_0\,
      Q => \irq_pend_reg_n_0_[2]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_araddr_q[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3A"
    )
        port map (
      I0 => s_axi_full_araddr(0),
      I1 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      I2 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      O => \s_axi_full_araddr_q[0]_i_1_n_0\
    );
\s_axi_full_araddr_q[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_full_araddr_q0(10),
      I1 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I2 => s_axi_full_araddr(10),
      O => \s_axi_full_araddr_q[10]_i_1_n_0\
    );
\s_axi_full_araddr_q[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_full_araddr_q0(11),
      I1 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I2 => s_axi_full_araddr(11),
      O => \s_axi_full_araddr_q[11]_i_1_n_0\
    );
\s_axi_full_araddr_q[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_full_araddr_q0(12),
      I1 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I2 => s_axi_full_araddr(12),
      O => \s_axi_full_araddr_q[12]_i_1_n_0\
    );
\s_axi_full_araddr_q[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_full_araddr_q0(13),
      I1 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I2 => s_axi_full_araddr(13),
      O => \s_axi_full_araddr_q[13]_i_1_n_0\
    );
\s_axi_full_araddr_q[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_full_araddr_q0(14),
      I1 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I2 => s_axi_full_araddr(14),
      O => \s_axi_full_araddr_q[14]_i_1_n_0\
    );
\s_axi_full_araddr_q[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_full_araddr_q0(15),
      I1 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I2 => s_axi_full_araddr(15),
      O => \s_axi_full_araddr_q[15]_i_1_n_0\
    );
\s_axi_full_araddr_q[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_full_araddr_q0(16),
      I1 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I2 => s_axi_full_araddr(16),
      O => \s_axi_full_araddr_q[16]_i_1_n_0\
    );
\s_axi_full_araddr_q[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_full_araddr_q0(17),
      I1 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I2 => s_axi_full_araddr(17),
      O => \s_axi_full_araddr_q[17]_i_1_n_0\
    );
\s_axi_full_araddr_q[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_full_araddr_q0(18),
      I1 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I2 => s_axi_full_araddr(18),
      O => \s_axi_full_araddr_q[18]_i_1_n_0\
    );
\s_axi_full_araddr_q[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_full_araddr_q0(19),
      I1 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I2 => s_axi_full_araddr(19),
      O => \s_axi_full_araddr_q[19]_i_1_n_0\
    );
\s_axi_full_araddr_q[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_full_araddr_q0(1),
      I1 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I2 => s_axi_full_araddr(1),
      O => \s_axi_full_araddr_q[1]_i_1_n_0\
    );
\s_axi_full_araddr_q[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_full_araddr_q0(20),
      I1 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I2 => s_axi_full_araddr(20),
      O => \s_axi_full_araddr_q[20]_i_1_n_0\
    );
\s_axi_full_araddr_q[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_full_araddr_q0(21),
      I1 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I2 => s_axi_full_araddr(21),
      O => \s_axi_full_araddr_q[21]_i_1_n_0\
    );
\s_axi_full_araddr_q[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_full_araddr_q0(22),
      I1 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I2 => s_axi_full_araddr(22),
      O => \s_axi_full_araddr_q[22]_i_1_n_0\
    );
\s_axi_full_araddr_q[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABABBBBAAAAAAAA"
    )
        port map (
      I0 => \s_axi_full_rid[3]_i_1_n_0\,
      I1 => \^s_axi_full_rvalid_reg_0\,
      I2 => spi_sr_in_buf_valid_reg_n_0,
      I3 => spi_sr_in_buf_ready_reg_n_0,
      I4 => spi_mmio_en,
      I5 => \s_axi_full_araddr_q[23]_i_3_n_0\,
      O => \s_axi_full_araddr_q[23]_i_1_n_0\
    );
\s_axi_full_araddr_q[23]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_full_araddr_q0(23),
      I1 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I2 => s_axi_full_araddr(23),
      O => \s_axi_full_araddr_q[23]_i_2_n_0\
    );
\s_axi_full_araddr_q[23]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \spi_mmio_fsm_state_reg_n_0_[0]\,
      I1 => \spi_mmio_fsm_state_reg_n_0_[2]\,
      I2 => \spi_mmio_fsm_state_reg_n_0_[3]\,
      I3 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      O => \s_axi_full_araddr_q[23]_i_3_n_0\
    );
\s_axi_full_araddr_q[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_full_araddr_q0(2),
      I1 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I2 => s_axi_full_araddr(2),
      O => \s_axi_full_araddr_q[2]_i_1_n_0\
    );
\s_axi_full_araddr_q[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_full_araddr_q0(3),
      I1 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I2 => s_axi_full_araddr(3),
      O => \s_axi_full_araddr_q[3]_i_1_n_0\
    );
\s_axi_full_araddr_q[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_full_araddr_q0(4),
      I1 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I2 => s_axi_full_araddr(4),
      O => \s_axi_full_araddr_q[4]_i_1_n_0\
    );
\s_axi_full_araddr_q[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_full_araddr_q0(5),
      I1 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I2 => s_axi_full_araddr(5),
      O => \s_axi_full_araddr_q[5]_i_1_n_0\
    );
\s_axi_full_araddr_q[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_full_araddr_q0(6),
      I1 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I2 => s_axi_full_araddr(6),
      O => \s_axi_full_araddr_q[6]_i_1_n_0\
    );
\s_axi_full_araddr_q[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_full_araddr_q0(7),
      I1 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I2 => s_axi_full_araddr(7),
      O => \s_axi_full_araddr_q[7]_i_1_n_0\
    );
\s_axi_full_araddr_q[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_full_araddr_q0(8),
      I1 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I2 => s_axi_full_araddr(8),
      O => \s_axi_full_araddr_q[8]_i_1_n_0\
    );
\s_axi_full_araddr_q[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_full_araddr_q0(9),
      I1 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I2 => s_axi_full_araddr(9),
      O => \s_axi_full_araddr_q[9]_i_1_n_0\
    );
\s_axi_full_araddr_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_araddr_q[23]_i_1_n_0\,
      D => \s_axi_full_araddr_q[0]_i_1_n_0\,
      Q => \s_axi_full_araddr_q_reg_n_0_[0]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_araddr_q_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_araddr_q[23]_i_1_n_0\,
      D => \s_axi_full_araddr_q[10]_i_1_n_0\,
      Q => \s_axi_full_araddr_q_reg_n_0_[10]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_araddr_q_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_araddr_q[23]_i_1_n_0\,
      D => \s_axi_full_araddr_q[11]_i_1_n_0\,
      Q => \s_axi_full_araddr_q_reg_n_0_[11]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_araddr_q_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_araddr_q[23]_i_1_n_0\,
      D => \s_axi_full_araddr_q[12]_i_1_n_0\,
      Q => \s_axi_full_araddr_q_reg_n_0_[12]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_araddr_q_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_axi_full_araddr_q_reg[8]_i_2_n_0\,
      CO(3) => \s_axi_full_araddr_q_reg[12]_i_2_n_0\,
      CO(2) => \s_axi_full_araddr_q_reg[12]_i_2_n_1\,
      CO(1) => \s_axi_full_araddr_q_reg[12]_i_2_n_2\,
      CO(0) => \s_axi_full_araddr_q_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => s_axi_full_araddr_q0(12 downto 9),
      S(3) => \s_axi_full_araddr_q_reg_n_0_[12]\,
      S(2) => \s_axi_full_araddr_q_reg_n_0_[11]\,
      S(1) => \s_axi_full_araddr_q_reg_n_0_[10]\,
      S(0) => \s_axi_full_araddr_q_reg_n_0_[9]\
    );
\s_axi_full_araddr_q_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_araddr_q[23]_i_1_n_0\,
      D => \s_axi_full_araddr_q[13]_i_1_n_0\,
      Q => \s_axi_full_araddr_q_reg_n_0_[13]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_araddr_q_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_araddr_q[23]_i_1_n_0\,
      D => \s_axi_full_araddr_q[14]_i_1_n_0\,
      Q => \s_axi_full_araddr_q_reg_n_0_[14]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_araddr_q_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_araddr_q[23]_i_1_n_0\,
      D => \s_axi_full_araddr_q[15]_i_1_n_0\,
      Q => \s_axi_full_araddr_q_reg_n_0_[15]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_araddr_q_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_araddr_q[23]_i_1_n_0\,
      D => \s_axi_full_araddr_q[16]_i_1_n_0\,
      Q => \s_axi_full_araddr_q_reg_n_0_[16]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_araddr_q_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_axi_full_araddr_q_reg[12]_i_2_n_0\,
      CO(3) => \s_axi_full_araddr_q_reg[16]_i_2_n_0\,
      CO(2) => \s_axi_full_araddr_q_reg[16]_i_2_n_1\,
      CO(1) => \s_axi_full_araddr_q_reg[16]_i_2_n_2\,
      CO(0) => \s_axi_full_araddr_q_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => s_axi_full_araddr_q0(16 downto 13),
      S(3) => \s_axi_full_araddr_q_reg_n_0_[16]\,
      S(2) => \s_axi_full_araddr_q_reg_n_0_[15]\,
      S(1) => \s_axi_full_araddr_q_reg_n_0_[14]\,
      S(0) => \s_axi_full_araddr_q_reg_n_0_[13]\
    );
\s_axi_full_araddr_q_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_araddr_q[23]_i_1_n_0\,
      D => \s_axi_full_araddr_q[17]_i_1_n_0\,
      Q => \s_axi_full_araddr_q_reg_n_0_[17]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_araddr_q_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_araddr_q[23]_i_1_n_0\,
      D => \s_axi_full_araddr_q[18]_i_1_n_0\,
      Q => \s_axi_full_araddr_q_reg_n_0_[18]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_araddr_q_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_araddr_q[23]_i_1_n_0\,
      D => \s_axi_full_araddr_q[19]_i_1_n_0\,
      Q => \s_axi_full_araddr_q_reg_n_0_[19]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_araddr_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_araddr_q[23]_i_1_n_0\,
      D => \s_axi_full_araddr_q[1]_i_1_n_0\,
      Q => \s_axi_full_araddr_q_reg_n_0_[1]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_araddr_q_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_araddr_q[23]_i_1_n_0\,
      D => \s_axi_full_araddr_q[20]_i_1_n_0\,
      Q => \s_axi_full_araddr_q_reg_n_0_[20]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_araddr_q_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_axi_full_araddr_q_reg[16]_i_2_n_0\,
      CO(3) => \s_axi_full_araddr_q_reg[20]_i_2_n_0\,
      CO(2) => \s_axi_full_araddr_q_reg[20]_i_2_n_1\,
      CO(1) => \s_axi_full_araddr_q_reg[20]_i_2_n_2\,
      CO(0) => \s_axi_full_araddr_q_reg[20]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => s_axi_full_araddr_q0(20 downto 17),
      S(3) => \s_axi_full_araddr_q_reg_n_0_[20]\,
      S(2) => \s_axi_full_araddr_q_reg_n_0_[19]\,
      S(1) => \s_axi_full_araddr_q_reg_n_0_[18]\,
      S(0) => \s_axi_full_araddr_q_reg_n_0_[17]\
    );
\s_axi_full_araddr_q_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_araddr_q[23]_i_1_n_0\,
      D => \s_axi_full_araddr_q[21]_i_1_n_0\,
      Q => \s_axi_full_araddr_q_reg_n_0_[21]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_araddr_q_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_araddr_q[23]_i_1_n_0\,
      D => \s_axi_full_araddr_q[22]_i_1_n_0\,
      Q => \s_axi_full_araddr_q_reg_n_0_[22]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_araddr_q_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_araddr_q[23]_i_1_n_0\,
      D => \s_axi_full_araddr_q[23]_i_2_n_0\,
      Q => \s_axi_full_araddr_q_reg_n_0_[23]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_araddr_q_reg[23]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_axi_full_araddr_q_reg[20]_i_2_n_0\,
      CO(3 downto 2) => \NLW_s_axi_full_araddr_q_reg[23]_i_4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \s_axi_full_araddr_q_reg[23]_i_4_n_2\,
      CO(0) => \s_axi_full_araddr_q_reg[23]_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_s_axi_full_araddr_q_reg[23]_i_4_O_UNCONNECTED\(3),
      O(2 downto 0) => s_axi_full_araddr_q0(23 downto 21),
      S(3) => '0',
      S(2) => \s_axi_full_araddr_q_reg_n_0_[23]\,
      S(1) => \s_axi_full_araddr_q_reg_n_0_[22]\,
      S(0) => \s_axi_full_araddr_q_reg_n_0_[21]\
    );
\s_axi_full_araddr_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_araddr_q[23]_i_1_n_0\,
      D => \s_axi_full_araddr_q[2]_i_1_n_0\,
      Q => \s_axi_full_araddr_q_reg_n_0_[2]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_araddr_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_araddr_q[23]_i_1_n_0\,
      D => \s_axi_full_araddr_q[3]_i_1_n_0\,
      Q => \s_axi_full_araddr_q_reg_n_0_[3]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_araddr_q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_araddr_q[23]_i_1_n_0\,
      D => \s_axi_full_araddr_q[4]_i_1_n_0\,
      Q => \s_axi_full_araddr_q_reg_n_0_[4]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_araddr_q_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \s_axi_full_araddr_q_reg[4]_i_2_n_0\,
      CO(2) => \s_axi_full_araddr_q_reg[4]_i_2_n_1\,
      CO(1) => \s_axi_full_araddr_q_reg[4]_i_2_n_2\,
      CO(0) => \s_axi_full_araddr_q_reg[4]_i_2_n_3\,
      CYINIT => \s_axi_full_araddr_q_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => s_axi_full_araddr_q0(4 downto 1),
      S(3) => \s_axi_full_araddr_q_reg_n_0_[4]\,
      S(2) => \s_axi_full_araddr_q_reg_n_0_[3]\,
      S(1) => \s_axi_full_araddr_q_reg_n_0_[2]\,
      S(0) => \s_axi_full_araddr_q_reg_n_0_[1]\
    );
\s_axi_full_araddr_q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_araddr_q[23]_i_1_n_0\,
      D => \s_axi_full_araddr_q[5]_i_1_n_0\,
      Q => \s_axi_full_araddr_q_reg_n_0_[5]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_araddr_q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_araddr_q[23]_i_1_n_0\,
      D => \s_axi_full_araddr_q[6]_i_1_n_0\,
      Q => \s_axi_full_araddr_q_reg_n_0_[6]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_araddr_q_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_araddr_q[23]_i_1_n_0\,
      D => \s_axi_full_araddr_q[7]_i_1_n_0\,
      Q => \s_axi_full_araddr_q_reg_n_0_[7]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_araddr_q_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_araddr_q[23]_i_1_n_0\,
      D => \s_axi_full_araddr_q[8]_i_1_n_0\,
      Q => \s_axi_full_araddr_q_reg_n_0_[8]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_araddr_q_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_axi_full_araddr_q_reg[4]_i_2_n_0\,
      CO(3) => \s_axi_full_araddr_q_reg[8]_i_2_n_0\,
      CO(2) => \s_axi_full_araddr_q_reg[8]_i_2_n_1\,
      CO(1) => \s_axi_full_araddr_q_reg[8]_i_2_n_2\,
      CO(0) => \s_axi_full_araddr_q_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => s_axi_full_araddr_q0(8 downto 5),
      S(3) => \s_axi_full_araddr_q_reg_n_0_[8]\,
      S(2) => \s_axi_full_araddr_q_reg_n_0_[7]\,
      S(1) => \s_axi_full_araddr_q_reg_n_0_[6]\,
      S(0) => \s_axi_full_araddr_q_reg_n_0_[5]\
    );
\s_axi_full_araddr_q_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_araddr_q[23]_i_1_n_0\,
      D => \s_axi_full_araddr_q[9]_i_1_n_0\,
      Q => \s_axi_full_araddr_q_reg_n_0_[9]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_arlen_q[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \s_axi_full_arlen_q__0\(0),
      I1 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I2 => s_axi_full_arlen(0),
      O => \s_axi_full_arlen_q[0]_i_1_n_0\
    );
\s_axi_full_arlen_q[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9F90"
    )
        port map (
      I0 => \s_axi_full_arlen_q__0\(1),
      I1 => \s_axi_full_arlen_q__0\(0),
      I2 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I3 => s_axi_full_arlen(1),
      O => \s_axi_full_arlen_q[1]_i_1_n_0\
    );
\s_axi_full_arlen_q[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E1FFE100"
    )
        port map (
      I0 => \s_axi_full_arlen_q__0\(1),
      I1 => \s_axi_full_arlen_q__0\(0),
      I2 => \s_axi_full_arlen_q__0\(2),
      I3 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I4 => s_axi_full_arlen(2),
      O => \s_axi_full_arlen_q[2]_i_1_n_0\
    );
\s_axi_full_arlen_q[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE01FFFFFE010000"
    )
        port map (
      I0 => \s_axi_full_arlen_q__0\(2),
      I1 => \s_axi_full_arlen_q__0\(0),
      I2 => \s_axi_full_arlen_q__0\(1),
      I3 => \s_axi_full_arlen_q__0\(3),
      I4 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I5 => s_axi_full_arlen(3),
      O => \s_axi_full_arlen_q[3]_i_1_n_0\
    );
\s_axi_full_arlen_q[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6F60"
    )
        port map (
      I0 => \s_axi_full_arlen_q__0\(4),
      I1 => \s_axi_full_arlen_q[5]_i_2_n_0\,
      I2 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I3 => s_axi_full_arlen(4),
      O => \s_axi_full_arlen_q[4]_i_1_n_0\
    );
\s_axi_full_arlen_q[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B4FFB400"
    )
        port map (
      I0 => \s_axi_full_arlen_q__0\(4),
      I1 => \s_axi_full_arlen_q[5]_i_2_n_0\,
      I2 => \s_axi_full_arlen_q__0\(5),
      I3 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I4 => s_axi_full_arlen(5),
      O => \s_axi_full_arlen_q[5]_i_1_n_0\
    );
\s_axi_full_arlen_q[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \s_axi_full_arlen_q__0\(3),
      I1 => \s_axi_full_arlen_q__0\(1),
      I2 => \s_axi_full_arlen_q__0\(0),
      I3 => \s_axi_full_arlen_q__0\(2),
      O => \s_axi_full_arlen_q[5]_i_2_n_0\
    );
\s_axi_full_arlen_q[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9F90"
    )
        port map (
      I0 => \s_axi_full_arlen_q[7]_i_3_n_0\,
      I1 => \s_axi_full_arlen_q__0\(6),
      I2 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I3 => s_axi_full_arlen(6),
      O => \s_axi_full_arlen_q[6]_i_1_n_0\
    );
\s_axi_full_arlen_q[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEEEEEA"
    )
        port map (
      I0 => \s_axi_full_rid[3]_i_1_n_0\,
      I1 => s_axi_full_rvalid_i_2_n_0,
      I2 => \s_axi_full_arlen_q__0\(7),
      I3 => \s_axi_full_arlen_q[7]_i_3_n_0\,
      I4 => \s_axi_full_arlen_q__0\(6),
      O => \s_axi_full_arlen_q[7]_i_1_n_0\
    );
\s_axi_full_arlen_q[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E1FFE100"
    )
        port map (
      I0 => \s_axi_full_arlen_q__0\(6),
      I1 => \s_axi_full_arlen_q[7]_i_3_n_0\,
      I2 => \s_axi_full_arlen_q__0\(7),
      I3 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I4 => s_axi_full_arlen(7),
      O => \s_axi_full_arlen_q[7]_i_2_n_0\
    );
\s_axi_full_arlen_q[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \s_axi_full_arlen_q__0\(5),
      I1 => \s_axi_full_arlen_q__0\(3),
      I2 => \s_axi_full_arlen_q__0\(1),
      I3 => \s_axi_full_arlen_q__0\(0),
      I4 => \s_axi_full_arlen_q__0\(2),
      I5 => \s_axi_full_arlen_q__0\(4),
      O => \s_axi_full_arlen_q[7]_i_3_n_0\
    );
\s_axi_full_arlen_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_arlen_q[7]_i_1_n_0\,
      D => \s_axi_full_arlen_q[0]_i_1_n_0\,
      Q => \s_axi_full_arlen_q__0\(0),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_arlen_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_arlen_q[7]_i_1_n_0\,
      D => \s_axi_full_arlen_q[1]_i_1_n_0\,
      Q => \s_axi_full_arlen_q__0\(1),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_arlen_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_arlen_q[7]_i_1_n_0\,
      D => \s_axi_full_arlen_q[2]_i_1_n_0\,
      Q => \s_axi_full_arlen_q__0\(2),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_arlen_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_arlen_q[7]_i_1_n_0\,
      D => \s_axi_full_arlen_q[3]_i_1_n_0\,
      Q => \s_axi_full_arlen_q__0\(3),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_arlen_q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_arlen_q[7]_i_1_n_0\,
      D => \s_axi_full_arlen_q[4]_i_1_n_0\,
      Q => \s_axi_full_arlen_q__0\(4),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_arlen_q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_arlen_q[7]_i_1_n_0\,
      D => \s_axi_full_arlen_q[5]_i_1_n_0\,
      Q => \s_axi_full_arlen_q__0\(5),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_arlen_q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_arlen_q[7]_i_1_n_0\,
      D => \s_axi_full_arlen_q[6]_i_1_n_0\,
      Q => \s_axi_full_arlen_q__0\(6),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_arlen_q_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_arlen_q[7]_i_1_n_0\,
      D => \s_axi_full_arlen_q[7]_i_2_n_0\,
      Q => \s_axi_full_arlen_q__0\(7),
      R => s_axi_lite_awready_i_1_n_0
    );
s_axi_full_arready_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AFF8A00"
    )
        port map (
      I0 => s_axi_full_arready_i_2_n_0,
      I1 => s_axi_full_rready,
      I2 => \^s_axi_full_rvalid_reg_0\,
      I3 => s_axi_full_arready_i_3_n_0,
      I4 => \^s_axi_full_arready_reg_0\,
      O => s_axi_full_arready_i_1_n_0
    );
s_axi_full_arready_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"70007777"
    )
        port map (
      I0 => \^s_axi_full_arready_reg_0\,
      I1 => s_axi_full_arvalid,
      I2 => spi_mmio_en_req_reg_n_0,
      I3 => spi_en_reg_n_0,
      I4 => spi_mmio_en,
      O => s_axi_full_arready_i_2_n_0
    );
s_axi_full_arready_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \spi_mmio_fsm_state_reg_n_0_[2]\,
      I1 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I2 => \spi_mmio_fsm_state_reg_n_0_[0]\,
      I3 => \spi_mmio_fsm_state_reg_n_0_[3]\,
      O => s_axi_full_arready_i_3_n_0
    );
s_axi_full_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axi_full_arready_i_1_n_0,
      Q => \^s_axi_full_arready_reg_0\,
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_arsize_q[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_axi_full_arsize(2),
      I1 => s_axi_full_arsize(0),
      O => \s_axi_full_arsize_q[0]_i_1_n_0\
    );
\s_axi_full_arsize_q[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_axi_full_arsize(2),
      I1 => s_axi_full_arsize(1),
      O => \s_axi_full_arsize_q[1]_i_1_n_0\
    );
\s_axi_full_arsize_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_rid[3]_i_1_n_0\,
      D => \s_axi_full_arsize_q[0]_i_1_n_0\,
      Q => s_axi_full_arsize_q(0),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_arsize_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_rid[3]_i_1_n_0\,
      D => \s_axi_full_arsize_q[1]_i_1_n_0\,
      Q => s_axi_full_arsize_q(1),
      R => s_axi_lite_awready_i_1_n_0
    );
s_axi_full_awready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0444"
    )
        port map (
      I0 => \s_axi_full_write_busy__0\,
      I1 => aresetn,
      I2 => \^s_axi_full_awready\,
      I3 => s_axi_full_awvalid,
      O => s_axi_full_awready_i_1_n_0
    );
s_axi_full_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axi_full_awready_i_1_n_0,
      Q => \^s_axi_full_awready\,
      R => '0'
    );
\s_axi_full_bid[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s_axi_full_awready\,
      I1 => s_axi_full_awvalid,
      O => s_axi_full_awready0
    );
\s_axi_full_bid_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_full_awready0,
      D => s_axi_full_awid(0),
      Q => s_axi_full_bid(0),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_bid_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_full_awready0,
      D => s_axi_full_awid(1),
      Q => s_axi_full_bid(1),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_bid_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_full_awready0,
      D => s_axi_full_awid(2),
      Q => s_axi_full_bid(2),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_bid_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_full_awready0,
      D => s_axi_full_awid(3),
      Q => s_axi_full_bid(3),
      R => s_axi_lite_awready_i_1_n_0
    );
s_axi_full_bvalid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F2222222"
    )
        port map (
      I0 => \^s_axi_full_bvalid\,
      I1 => s_axi_full_bready,
      I2 => \^s_axi_full_wready\,
      I3 => s_axi_full_wvalid,
      I4 => s_axi_full_wlast,
      O => s_axi_full_bvalid_i_1_n_0
    );
s_axi_full_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axi_full_bvalid_i_1_n_0,
      Q => \^s_axi_full_bvalid\,
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_rdata[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      I1 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      I2 => \s_axi_full_rdata[31]_i_3_n_0\,
      I3 => data5(0),
      O => \s_axi_full_rdata[0]_i_1_n_0\
    );
\s_axi_full_rdata[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      I1 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      I2 => \s_axi_full_rdata[31]_i_3_n_0\,
      I3 => data5(2),
      O => \s_axi_full_rdata[10]_i_1_n_0\
    );
\s_axi_full_rdata[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      I1 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      I2 => \s_axi_full_rdata[31]_i_3_n_0\,
      I3 => data5(3),
      O => \s_axi_full_rdata[11]_i_1_n_0\
    );
\s_axi_full_rdata[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      I1 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      I2 => \s_axi_full_rdata[31]_i_3_n_0\,
      I3 => data5(4),
      O => \s_axi_full_rdata[12]_i_1_n_0\
    );
\s_axi_full_rdata[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      I1 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      I2 => \s_axi_full_rdata[31]_i_3_n_0\,
      I3 => data5(5),
      O => \s_axi_full_rdata[13]_i_1_n_0\
    );
\s_axi_full_rdata[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      I1 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      I2 => \s_axi_full_rdata[31]_i_3_n_0\,
      I3 => data5(6),
      O => \s_axi_full_rdata[14]_i_1_n_0\
    );
\s_axi_full_rdata[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF020202"
    )
        port map (
      I0 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      I1 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      I2 => \s_axi_full_rdata[31]_i_3_n_0\,
      I3 => s_axi_full_rready,
      I4 => \^s_axi_full_rvalid_reg_0\,
      O => \s_axi_full_rdata[15]_i_1_n_0\
    );
\s_axi_full_rdata[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      I1 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      I2 => \s_axi_full_rdata[31]_i_3_n_0\,
      I3 => data5(7),
      O => \s_axi_full_rdata[15]_i_2_n_0\
    );
\s_axi_full_rdata[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      I1 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      I2 => \s_axi_full_rdata[31]_i_3_n_0\,
      I3 => data5(0),
      O => \s_axi_full_rdata[16]_i_1_n_0\
    );
\s_axi_full_rdata[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      I1 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      I2 => \s_axi_full_rdata[31]_i_3_n_0\,
      I3 => data5(1),
      O => \s_axi_full_rdata[17]_i_1_n_0\
    );
\s_axi_full_rdata[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      I1 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      I2 => \s_axi_full_rdata[31]_i_3_n_0\,
      I3 => data5(2),
      O => \s_axi_full_rdata[18]_i_1_n_0\
    );
\s_axi_full_rdata[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      I1 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      I2 => \s_axi_full_rdata[31]_i_3_n_0\,
      I3 => data5(3),
      O => \s_axi_full_rdata[19]_i_1_n_0\
    );
\s_axi_full_rdata[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      I1 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      I2 => \s_axi_full_rdata[31]_i_3_n_0\,
      I3 => data5(1),
      O => \s_axi_full_rdata[1]_i_1_n_0\
    );
\s_axi_full_rdata[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      I1 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      I2 => \s_axi_full_rdata[31]_i_3_n_0\,
      I3 => data5(4),
      O => \s_axi_full_rdata[20]_i_1_n_0\
    );
\s_axi_full_rdata[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      I1 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      I2 => \s_axi_full_rdata[31]_i_3_n_0\,
      I3 => data5(5),
      O => \s_axi_full_rdata[21]_i_1_n_0\
    );
\s_axi_full_rdata[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      I1 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      I2 => \s_axi_full_rdata[31]_i_3_n_0\,
      I3 => data5(6),
      O => \s_axi_full_rdata[22]_i_1_n_0\
    );
\s_axi_full_rdata[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF020202"
    )
        port map (
      I0 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      I1 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      I2 => \s_axi_full_rdata[31]_i_3_n_0\,
      I3 => s_axi_full_rready,
      I4 => \^s_axi_full_rvalid_reg_0\,
      O => \s_axi_full_rdata[23]_i_1_n_0\
    );
\s_axi_full_rdata[23]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      I1 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      I2 => \s_axi_full_rdata[31]_i_3_n_0\,
      I3 => data5(7),
      O => \s_axi_full_rdata[23]_i_2_n_0\
    );
\s_axi_full_rdata[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      I1 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      I2 => \s_axi_full_rdata[31]_i_3_n_0\,
      I3 => data5(0),
      O => \s_axi_full_rdata[24]_i_1_n_0\
    );
\s_axi_full_rdata[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      I1 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      I2 => \s_axi_full_rdata[31]_i_3_n_0\,
      I3 => data5(1),
      O => \s_axi_full_rdata[25]_i_1_n_0\
    );
\s_axi_full_rdata[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      I1 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      I2 => \s_axi_full_rdata[31]_i_3_n_0\,
      I3 => data5(2),
      O => \s_axi_full_rdata[26]_i_1_n_0\
    );
\s_axi_full_rdata[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      I1 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      I2 => \s_axi_full_rdata[31]_i_3_n_0\,
      I3 => data5(3),
      O => \s_axi_full_rdata[27]_i_1_n_0\
    );
\s_axi_full_rdata[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      I1 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      I2 => \s_axi_full_rdata[31]_i_3_n_0\,
      I3 => data5(4),
      O => \s_axi_full_rdata[28]_i_1_n_0\
    );
\s_axi_full_rdata[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      I1 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      I2 => \s_axi_full_rdata[31]_i_3_n_0\,
      I3 => data5(5),
      O => \s_axi_full_rdata[29]_i_1_n_0\
    );
\s_axi_full_rdata[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      I1 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      I2 => \s_axi_full_rdata[31]_i_3_n_0\,
      I3 => data5(2),
      O => \s_axi_full_rdata[2]_i_1_n_0\
    );
\s_axi_full_rdata[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      I1 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      I2 => \s_axi_full_rdata[31]_i_3_n_0\,
      I3 => data5(6),
      O => \s_axi_full_rdata[30]_i_1_n_0\
    );
\s_axi_full_rdata[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF080808"
    )
        port map (
      I0 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      I1 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      I2 => \s_axi_full_rdata[31]_i_3_n_0\,
      I3 => s_axi_full_rready,
      I4 => \^s_axi_full_rvalid_reg_0\,
      O => \s_axi_full_rdata[31]_i_1_n_0\
    );
\s_axi_full_rdata[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      I1 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      I2 => \s_axi_full_rdata[31]_i_3_n_0\,
      I3 => data5(7),
      O => \s_axi_full_rdata[31]_i_2_n_0\
    );
\s_axi_full_rdata[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBFFFFFFFFF"
    )
        port map (
      I0 => \s_axi_full_araddr_q_reg_n_0_[2]\,
      I1 => \s_axi_full_araddr_q[23]_i_3_n_0\,
      I2 => spi_mmio_en,
      I3 => \^s_axi_full_rvalid_reg_0\,
      I4 => spi_sr_in_buf_ready_reg_n_0,
      I5 => spi_sr_in_buf_valid_reg_n_0,
      O => \s_axi_full_rdata[31]_i_3_n_0\
    );
\s_axi_full_rdata[32]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \s_axi_full_rdata[63]_i_3_n_0\,
      I1 => data5(0),
      I2 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      I3 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      O => \s_axi_full_rdata[32]_i_1_n_0\
    );
\s_axi_full_rdata[33]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \s_axi_full_rdata[63]_i_3_n_0\,
      I1 => data5(1),
      I2 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      I3 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      O => \s_axi_full_rdata[33]_i_1_n_0\
    );
\s_axi_full_rdata[34]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \s_axi_full_rdata[63]_i_3_n_0\,
      I1 => data5(2),
      I2 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      I3 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      O => \s_axi_full_rdata[34]_i_1_n_0\
    );
\s_axi_full_rdata[35]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \s_axi_full_rdata[63]_i_3_n_0\,
      I1 => data5(3),
      I2 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      I3 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      O => \s_axi_full_rdata[35]_i_1_n_0\
    );
\s_axi_full_rdata[36]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \s_axi_full_rdata[63]_i_3_n_0\,
      I1 => data5(4),
      I2 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      I3 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      O => \s_axi_full_rdata[36]_i_1_n_0\
    );
\s_axi_full_rdata[37]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \s_axi_full_rdata[63]_i_3_n_0\,
      I1 => data5(5),
      I2 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      I3 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      O => \s_axi_full_rdata[37]_i_1_n_0\
    );
\s_axi_full_rdata[38]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \s_axi_full_rdata[63]_i_3_n_0\,
      I1 => data5(6),
      I2 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      I3 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      O => \s_axi_full_rdata[38]_i_1_n_0\
    );
\s_axi_full_rdata[39]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"888F8888"
    )
        port map (
      I0 => s_axi_full_rready,
      I1 => \^s_axi_full_rvalid_reg_0\,
      I2 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      I3 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      I4 => \s_axi_full_rdata[63]_i_3_n_0\,
      O => \s_axi_full_rdata[39]_i_1_n_0\
    );
\s_axi_full_rdata[39]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \s_axi_full_rdata[63]_i_3_n_0\,
      I1 => data5(7),
      I2 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      I3 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      O => \s_axi_full_rdata[39]_i_2_n_0\
    );
\s_axi_full_rdata[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      I1 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      I2 => \s_axi_full_rdata[31]_i_3_n_0\,
      I3 => data5(3),
      O => \s_axi_full_rdata[3]_i_1_n_0\
    );
\s_axi_full_rdata[40]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \s_axi_full_rdata[63]_i_3_n_0\,
      I1 => data5(0),
      I2 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      I3 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      O => \s_axi_full_rdata[40]_i_1_n_0\
    );
\s_axi_full_rdata[41]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \s_axi_full_rdata[63]_i_3_n_0\,
      I1 => data5(1),
      I2 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      I3 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      O => \s_axi_full_rdata[41]_i_1_n_0\
    );
\s_axi_full_rdata[42]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \s_axi_full_rdata[63]_i_3_n_0\,
      I1 => data5(2),
      I2 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      I3 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      O => \s_axi_full_rdata[42]_i_1_n_0\
    );
\s_axi_full_rdata[43]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \s_axi_full_rdata[63]_i_3_n_0\,
      I1 => data5(3),
      I2 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      I3 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      O => \s_axi_full_rdata[43]_i_1_n_0\
    );
\s_axi_full_rdata[44]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \s_axi_full_rdata[63]_i_3_n_0\,
      I1 => data5(4),
      I2 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      I3 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      O => \s_axi_full_rdata[44]_i_1_n_0\
    );
\s_axi_full_rdata[45]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \s_axi_full_rdata[63]_i_3_n_0\,
      I1 => data5(5),
      I2 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      I3 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      O => \s_axi_full_rdata[45]_i_1_n_0\
    );
\s_axi_full_rdata[46]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \s_axi_full_rdata[63]_i_3_n_0\,
      I1 => data5(6),
      I2 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      I3 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      O => \s_axi_full_rdata[46]_i_1_n_0\
    );
\s_axi_full_rdata[47]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F888888"
    )
        port map (
      I0 => s_axi_full_rready,
      I1 => \^s_axi_full_rvalid_reg_0\,
      I2 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      I3 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      I4 => \s_axi_full_rdata[63]_i_3_n_0\,
      O => \s_axi_full_rdata[47]_i_1_n_0\
    );
\s_axi_full_rdata[47]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \s_axi_full_rdata[63]_i_3_n_0\,
      I1 => data5(7),
      I2 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      I3 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      O => \s_axi_full_rdata[47]_i_2_n_0\
    );
\s_axi_full_rdata[48]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \s_axi_full_rdata[63]_i_3_n_0\,
      I1 => data5(0),
      I2 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      I3 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      O => \s_axi_full_rdata[48]_i_1_n_0\
    );
\s_axi_full_rdata[49]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \s_axi_full_rdata[63]_i_3_n_0\,
      I1 => data5(1),
      I2 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      I3 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      O => \s_axi_full_rdata[49]_i_1_n_0\
    );
\s_axi_full_rdata[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      I1 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      I2 => \s_axi_full_rdata[31]_i_3_n_0\,
      I3 => data5(4),
      O => \s_axi_full_rdata[4]_i_1_n_0\
    );
\s_axi_full_rdata[50]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \s_axi_full_rdata[63]_i_3_n_0\,
      I1 => data5(2),
      I2 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      I3 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      O => \s_axi_full_rdata[50]_i_1_n_0\
    );
\s_axi_full_rdata[51]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \s_axi_full_rdata[63]_i_3_n_0\,
      I1 => data5(3),
      I2 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      I3 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      O => \s_axi_full_rdata[51]_i_1_n_0\
    );
\s_axi_full_rdata[52]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \s_axi_full_rdata[63]_i_3_n_0\,
      I1 => data5(4),
      I2 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      I3 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      O => \s_axi_full_rdata[52]_i_1_n_0\
    );
\s_axi_full_rdata[53]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \s_axi_full_rdata[63]_i_3_n_0\,
      I1 => data5(5),
      I2 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      I3 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      O => \s_axi_full_rdata[53]_i_1_n_0\
    );
\s_axi_full_rdata[54]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \s_axi_full_rdata[63]_i_3_n_0\,
      I1 => data5(6),
      I2 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      I3 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      O => \s_axi_full_rdata[54]_i_1_n_0\
    );
\s_axi_full_rdata[55]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F888888"
    )
        port map (
      I0 => s_axi_full_rready,
      I1 => \^s_axi_full_rvalid_reg_0\,
      I2 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      I3 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      I4 => \s_axi_full_rdata[63]_i_3_n_0\,
      O => \s_axi_full_rdata[55]_i_1_n_0\
    );
\s_axi_full_rdata[55]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \s_axi_full_rdata[63]_i_3_n_0\,
      I1 => data5(7),
      I2 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      I3 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      O => \s_axi_full_rdata[55]_i_2_n_0\
    );
\s_axi_full_rdata[56]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \s_axi_full_rdata[63]_i_3_n_0\,
      I1 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      I2 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      I3 => data5(0),
      O => \s_axi_full_rdata[56]_i_1_n_0\
    );
\s_axi_full_rdata[57]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \s_axi_full_rdata[63]_i_3_n_0\,
      I1 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      I2 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      I3 => data5(1),
      O => \s_axi_full_rdata[57]_i_1_n_0\
    );
\s_axi_full_rdata[58]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \s_axi_full_rdata[63]_i_3_n_0\,
      I1 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      I2 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      I3 => data5(2),
      O => \s_axi_full_rdata[58]_i_1_n_0\
    );
\s_axi_full_rdata[59]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \s_axi_full_rdata[63]_i_3_n_0\,
      I1 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      I2 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      I3 => data5(3),
      O => \s_axi_full_rdata[59]_i_1_n_0\
    );
\s_axi_full_rdata[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      I1 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      I2 => \s_axi_full_rdata[31]_i_3_n_0\,
      I3 => data5(5),
      O => \s_axi_full_rdata[5]_i_1_n_0\
    );
\s_axi_full_rdata[60]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \s_axi_full_rdata[63]_i_3_n_0\,
      I1 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      I2 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      I3 => data5(4),
      O => \s_axi_full_rdata[60]_i_1_n_0\
    );
\s_axi_full_rdata[61]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \s_axi_full_rdata[63]_i_3_n_0\,
      I1 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      I2 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      I3 => data5(5),
      O => \s_axi_full_rdata[61]_i_1_n_0\
    );
\s_axi_full_rdata[62]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \s_axi_full_rdata[63]_i_3_n_0\,
      I1 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      I2 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      I3 => data5(6),
      O => \s_axi_full_rdata[62]_i_1_n_0\
    );
\s_axi_full_rdata[63]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8888888"
    )
        port map (
      I0 => s_axi_full_rready,
      I1 => \^s_axi_full_rvalid_reg_0\,
      I2 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      I3 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      I4 => \s_axi_full_rdata[63]_i_3_n_0\,
      O => \s_axi_full_rdata[63]_i_1_n_0\
    );
\s_axi_full_rdata[63]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \s_axi_full_rdata[63]_i_3_n_0\,
      I1 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      I2 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      I3 => data5(7),
      O => \s_axi_full_rdata[63]_i_2_n_0\
    );
\s_axi_full_rdata[63]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => \s_axi_full_araddr_q_reg_n_0_[2]\,
      I1 => \s_axi_full_araddr_q[23]_i_3_n_0\,
      I2 => spi_mmio_en,
      I3 => \^s_axi_full_rvalid_reg_0\,
      I4 => spi_sr_in_buf_ready_reg_n_0,
      I5 => spi_sr_in_buf_valid_reg_n_0,
      O => \s_axi_full_rdata[63]_i_3_n_0\
    );
\s_axi_full_rdata[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      I1 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      I2 => \s_axi_full_rdata[31]_i_3_n_0\,
      I3 => data5(6),
      O => \s_axi_full_rdata[6]_i_1_n_0\
    );
\s_axi_full_rdata[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF010101"
    )
        port map (
      I0 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      I1 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      I2 => \s_axi_full_rdata[31]_i_3_n_0\,
      I3 => s_axi_full_rready,
      I4 => \^s_axi_full_rvalid_reg_0\,
      O => \s_axi_full_rdata[7]_i_1_n_0\
    );
\s_axi_full_rdata[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      I1 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      I2 => \s_axi_full_rdata[31]_i_3_n_0\,
      I3 => data5(7),
      O => \s_axi_full_rdata[7]_i_2_n_0\
    );
\s_axi_full_rdata[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      I1 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      I2 => \s_axi_full_rdata[31]_i_3_n_0\,
      I3 => data5(0),
      O => \s_axi_full_rdata[8]_i_1_n_0\
    );
\s_axi_full_rdata[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      I1 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      I2 => \s_axi_full_rdata[31]_i_3_n_0\,
      I3 => data5(1),
      O => \s_axi_full_rdata[9]_i_1_n_0\
    );
\s_axi_full_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_rdata[7]_i_1_n_0\,
      D => \s_axi_full_rdata[0]_i_1_n_0\,
      Q => s_axi_full_rdata(0),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_rdata[15]_i_1_n_0\,
      D => \s_axi_full_rdata[10]_i_1_n_0\,
      Q => s_axi_full_rdata(10),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_rdata[15]_i_1_n_0\,
      D => \s_axi_full_rdata[11]_i_1_n_0\,
      Q => s_axi_full_rdata(11),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_rdata[15]_i_1_n_0\,
      D => \s_axi_full_rdata[12]_i_1_n_0\,
      Q => s_axi_full_rdata(12),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_rdata[15]_i_1_n_0\,
      D => \s_axi_full_rdata[13]_i_1_n_0\,
      Q => s_axi_full_rdata(13),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_rdata[15]_i_1_n_0\,
      D => \s_axi_full_rdata[14]_i_1_n_0\,
      Q => s_axi_full_rdata(14),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_rdata[15]_i_1_n_0\,
      D => \s_axi_full_rdata[15]_i_2_n_0\,
      Q => s_axi_full_rdata(15),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_rdata[23]_i_1_n_0\,
      D => \s_axi_full_rdata[16]_i_1_n_0\,
      Q => s_axi_full_rdata(16),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_rdata[23]_i_1_n_0\,
      D => \s_axi_full_rdata[17]_i_1_n_0\,
      Q => s_axi_full_rdata(17),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_rdata[23]_i_1_n_0\,
      D => \s_axi_full_rdata[18]_i_1_n_0\,
      Q => s_axi_full_rdata(18),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_rdata[23]_i_1_n_0\,
      D => \s_axi_full_rdata[19]_i_1_n_0\,
      Q => s_axi_full_rdata(19),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_rdata[7]_i_1_n_0\,
      D => \s_axi_full_rdata[1]_i_1_n_0\,
      Q => s_axi_full_rdata(1),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_rdata[23]_i_1_n_0\,
      D => \s_axi_full_rdata[20]_i_1_n_0\,
      Q => s_axi_full_rdata(20),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_rdata[23]_i_1_n_0\,
      D => \s_axi_full_rdata[21]_i_1_n_0\,
      Q => s_axi_full_rdata(21),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_rdata[23]_i_1_n_0\,
      D => \s_axi_full_rdata[22]_i_1_n_0\,
      Q => s_axi_full_rdata(22),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_rdata[23]_i_1_n_0\,
      D => \s_axi_full_rdata[23]_i_2_n_0\,
      Q => s_axi_full_rdata(23),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_rdata[31]_i_1_n_0\,
      D => \s_axi_full_rdata[24]_i_1_n_0\,
      Q => s_axi_full_rdata(24),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_rdata[31]_i_1_n_0\,
      D => \s_axi_full_rdata[25]_i_1_n_0\,
      Q => s_axi_full_rdata(25),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_rdata[31]_i_1_n_0\,
      D => \s_axi_full_rdata[26]_i_1_n_0\,
      Q => s_axi_full_rdata(26),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_rdata[31]_i_1_n_0\,
      D => \s_axi_full_rdata[27]_i_1_n_0\,
      Q => s_axi_full_rdata(27),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_rdata[31]_i_1_n_0\,
      D => \s_axi_full_rdata[28]_i_1_n_0\,
      Q => s_axi_full_rdata(28),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_rdata[31]_i_1_n_0\,
      D => \s_axi_full_rdata[29]_i_1_n_0\,
      Q => s_axi_full_rdata(29),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_rdata[7]_i_1_n_0\,
      D => \s_axi_full_rdata[2]_i_1_n_0\,
      Q => s_axi_full_rdata(2),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_rdata[31]_i_1_n_0\,
      D => \s_axi_full_rdata[30]_i_1_n_0\,
      Q => s_axi_full_rdata(30),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_rdata[31]_i_1_n_0\,
      D => \s_axi_full_rdata[31]_i_2_n_0\,
      Q => s_axi_full_rdata(31),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_rdata_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_rdata[39]_i_1_n_0\,
      D => \s_axi_full_rdata[32]_i_1_n_0\,
      Q => s_axi_full_rdata(32),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_rdata_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_rdata[39]_i_1_n_0\,
      D => \s_axi_full_rdata[33]_i_1_n_0\,
      Q => s_axi_full_rdata(33),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_rdata_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_rdata[39]_i_1_n_0\,
      D => \s_axi_full_rdata[34]_i_1_n_0\,
      Q => s_axi_full_rdata(34),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_rdata_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_rdata[39]_i_1_n_0\,
      D => \s_axi_full_rdata[35]_i_1_n_0\,
      Q => s_axi_full_rdata(35),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_rdata_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_rdata[39]_i_1_n_0\,
      D => \s_axi_full_rdata[36]_i_1_n_0\,
      Q => s_axi_full_rdata(36),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_rdata_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_rdata[39]_i_1_n_0\,
      D => \s_axi_full_rdata[37]_i_1_n_0\,
      Q => s_axi_full_rdata(37),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_rdata_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_rdata[39]_i_1_n_0\,
      D => \s_axi_full_rdata[38]_i_1_n_0\,
      Q => s_axi_full_rdata(38),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_rdata_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_rdata[39]_i_1_n_0\,
      D => \s_axi_full_rdata[39]_i_2_n_0\,
      Q => s_axi_full_rdata(39),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_rdata[7]_i_1_n_0\,
      D => \s_axi_full_rdata[3]_i_1_n_0\,
      Q => s_axi_full_rdata(3),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_rdata_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_rdata[47]_i_1_n_0\,
      D => \s_axi_full_rdata[40]_i_1_n_0\,
      Q => s_axi_full_rdata(40),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_rdata_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_rdata[47]_i_1_n_0\,
      D => \s_axi_full_rdata[41]_i_1_n_0\,
      Q => s_axi_full_rdata(41),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_rdata_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_rdata[47]_i_1_n_0\,
      D => \s_axi_full_rdata[42]_i_1_n_0\,
      Q => s_axi_full_rdata(42),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_rdata_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_rdata[47]_i_1_n_0\,
      D => \s_axi_full_rdata[43]_i_1_n_0\,
      Q => s_axi_full_rdata(43),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_rdata_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_rdata[47]_i_1_n_0\,
      D => \s_axi_full_rdata[44]_i_1_n_0\,
      Q => s_axi_full_rdata(44),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_rdata_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_rdata[47]_i_1_n_0\,
      D => \s_axi_full_rdata[45]_i_1_n_0\,
      Q => s_axi_full_rdata(45),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_rdata_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_rdata[47]_i_1_n_0\,
      D => \s_axi_full_rdata[46]_i_1_n_0\,
      Q => s_axi_full_rdata(46),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_rdata_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_rdata[47]_i_1_n_0\,
      D => \s_axi_full_rdata[47]_i_2_n_0\,
      Q => s_axi_full_rdata(47),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_rdata_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_rdata[55]_i_1_n_0\,
      D => \s_axi_full_rdata[48]_i_1_n_0\,
      Q => s_axi_full_rdata(48),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_rdata_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_rdata[55]_i_1_n_0\,
      D => \s_axi_full_rdata[49]_i_1_n_0\,
      Q => s_axi_full_rdata(49),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_rdata[7]_i_1_n_0\,
      D => \s_axi_full_rdata[4]_i_1_n_0\,
      Q => s_axi_full_rdata(4),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_rdata_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_rdata[55]_i_1_n_0\,
      D => \s_axi_full_rdata[50]_i_1_n_0\,
      Q => s_axi_full_rdata(50),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_rdata_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_rdata[55]_i_1_n_0\,
      D => \s_axi_full_rdata[51]_i_1_n_0\,
      Q => s_axi_full_rdata(51),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_rdata_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_rdata[55]_i_1_n_0\,
      D => \s_axi_full_rdata[52]_i_1_n_0\,
      Q => s_axi_full_rdata(52),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_rdata_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_rdata[55]_i_1_n_0\,
      D => \s_axi_full_rdata[53]_i_1_n_0\,
      Q => s_axi_full_rdata(53),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_rdata_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_rdata[55]_i_1_n_0\,
      D => \s_axi_full_rdata[54]_i_1_n_0\,
      Q => s_axi_full_rdata(54),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_rdata_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_rdata[55]_i_1_n_0\,
      D => \s_axi_full_rdata[55]_i_2_n_0\,
      Q => s_axi_full_rdata(55),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_rdata_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_rdata[63]_i_1_n_0\,
      D => \s_axi_full_rdata[56]_i_1_n_0\,
      Q => s_axi_full_rdata(56),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_rdata_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_rdata[63]_i_1_n_0\,
      D => \s_axi_full_rdata[57]_i_1_n_0\,
      Q => s_axi_full_rdata(57),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_rdata_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_rdata[63]_i_1_n_0\,
      D => \s_axi_full_rdata[58]_i_1_n_0\,
      Q => s_axi_full_rdata(58),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_rdata_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_rdata[63]_i_1_n_0\,
      D => \s_axi_full_rdata[59]_i_1_n_0\,
      Q => s_axi_full_rdata(59),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_rdata[7]_i_1_n_0\,
      D => \s_axi_full_rdata[5]_i_1_n_0\,
      Q => s_axi_full_rdata(5),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_rdata_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_rdata[63]_i_1_n_0\,
      D => \s_axi_full_rdata[60]_i_1_n_0\,
      Q => s_axi_full_rdata(60),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_rdata_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_rdata[63]_i_1_n_0\,
      D => \s_axi_full_rdata[61]_i_1_n_0\,
      Q => s_axi_full_rdata(61),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_rdata_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_rdata[63]_i_1_n_0\,
      D => \s_axi_full_rdata[62]_i_1_n_0\,
      Q => s_axi_full_rdata(62),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_rdata_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_rdata[63]_i_1_n_0\,
      D => \s_axi_full_rdata[63]_i_2_n_0\,
      Q => s_axi_full_rdata(63),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_rdata[7]_i_1_n_0\,
      D => \s_axi_full_rdata[6]_i_1_n_0\,
      Q => s_axi_full_rdata(6),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_rdata[7]_i_1_n_0\,
      D => \s_axi_full_rdata[7]_i_2_n_0\,
      Q => s_axi_full_rdata(7),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_rdata[15]_i_1_n_0\,
      D => \s_axi_full_rdata[8]_i_1_n_0\,
      Q => s_axi_full_rdata(8),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_rdata[15]_i_1_n_0\,
      D => \s_axi_full_rdata[9]_i_1_n_0\,
      Q => s_axi_full_rdata(9),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_rid[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \spi_mmio_fsm_state_reg_n_0_[0]\,
      I1 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I2 => \spi_mmio_fsm_state_reg_n_0_[3]\,
      I3 => \spi_mmio_fsm_state_reg_n_0_[2]\,
      I4 => s_axi_full_arvalid,
      I5 => \^s_axi_full_arready_reg_0\,
      O => \s_axi_full_rid[3]_i_1_n_0\
    );
\s_axi_full_rid_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_rid[3]_i_1_n_0\,
      D => s_axi_full_arid(0),
      Q => s_axi_full_rid(0),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_rid_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_rid[3]_i_1_n_0\,
      D => s_axi_full_arid(1),
      Q => s_axi_full_rid(1),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_rid_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_rid[3]_i_1_n_0\,
      D => s_axi_full_arid(2),
      Q => s_axi_full_rid(2),
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_full_rid_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_full_rid[3]_i_1_n_0\,
      D => s_axi_full_arid(3),
      Q => s_axi_full_rid(3),
      R => s_axi_lite_awready_i_1_n_0
    );
s_axi_full_rlast_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F7F0"
    )
        port map (
      I0 => s_axi_full_rready,
      I1 => \^s_axi_full_rvalid_reg_0\,
      I2 => s_axi_full_rlast_i_2_n_0,
      I3 => \^s_axi_full_rlast\,
      O => s_axi_full_rlast_i_1_n_0
    );
s_axi_full_rlast_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004550000"
    )
        port map (
      I0 => \^s_axi_full_rvalid_reg_0\,
      I1 => spi_sr_in_buf_valid_reg_n_0,
      I2 => spi_sr_in_buf_ready_reg_n_0,
      I3 => spi_mmio_en,
      I4 => \s_axi_full_araddr_q[23]_i_3_n_0\,
      I5 => s_axi_full_rlast_i_3_n_0,
      O => s_axi_full_rlast_i_2_n_0
    );
s_axi_full_rlast_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFAFAFBFBFAAAA"
    )
        port map (
      I0 => s_axi_full_rlast_i_4_n_0,
      I1 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      I2 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      I3 => \s_axi_full_araddr_q_reg_n_0_[2]\,
      I4 => s_axi_full_arsize_q(1),
      I5 => s_axi_full_arsize_q(0),
      O => s_axi_full_rlast_i_3_n_0
    );
s_axi_full_rlast_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \s_axi_full_arlen_q__0\(7),
      I1 => \s_axi_full_arlen_q[7]_i_3_n_0\,
      I2 => \s_axi_full_arlen_q__0\(6),
      O => s_axi_full_rlast_i_4_n_0
    );
s_axi_full_rlast_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axi_full_rlast_i_1_n_0,
      Q => \^s_axi_full_rlast\,
      R => s_axi_lite_awready_i_1_n_0
    );
s_axi_full_rvalid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => s_axi_full_rready,
      I1 => \^s_axi_full_rvalid_reg_0\,
      I2 => s_axi_full_rvalid_i_2_n_0,
      O => s_axi_full_rvalid_i_1_n_0
    );
s_axi_full_rvalid_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000202222"
    )
        port map (
      I0 => \s_axi_full_araddr_q[23]_i_3_n_0\,
      I1 => \^s_axi_full_rvalid_reg_0\,
      I2 => spi_sr_in_buf_valid_reg_n_0,
      I3 => spi_sr_in_buf_ready_reg_n_0,
      I4 => spi_mmio_en,
      I5 => s_axi_full_rvalid_i_3_n_0,
      O => s_axi_full_rvalid_i_2_n_0
    );
s_axi_full_rvalid_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08EECCEE"
    )
        port map (
      I0 => s_axi_full_arsize_q(0),
      I1 => s_axi_full_arsize_q(1),
      I2 => \s_axi_full_araddr_q_reg_n_0_[2]\,
      I3 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      I4 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      O => s_axi_full_rvalid_i_3_n_0
    );
s_axi_full_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axi_full_rvalid_i_1_n_0,
      Q => \^s_axi_full_rvalid_reg_0\,
      R => s_axi_lite_awready_i_1_n_0
    );
s_axi_full_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_axi_full_write_busy__0\,
      Q => \^s_axi_full_wready\,
      R => s_axi_lite_awready_i_1_n_0
    );
s_axi_full_write_busy_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF00BF00BF000000"
    )
        port map (
      I0 => s_axi_full_bvalid037_out,
      I1 => s_axi_full_bready,
      I2 => \^s_axi_full_bvalid\,
      I3 => aresetn,
      I4 => s_axi_full_awready0,
      I5 => \s_axi_full_write_busy__0\,
      O => s_axi_full_write_busy_i_1_n_0
    );
s_axi_full_write_busy_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s_axi_full_wlast,
      I1 => s_axi_full_wvalid,
      I2 => \^s_axi_full_wready\,
      O => s_axi_full_bvalid037_out
    );
s_axi_full_write_busy_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axi_full_write_busy_i_1_n_0,
      Q => \s_axi_full_write_busy__0\,
      R => '0'
    );
s_axi_lite_arready_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^s_axi_lite_rvalid_reg_0\,
      O => s_axi_lite_arready
    );
s_axi_lite_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => s_axi_lite_awready_i_1_n_0
    );
s_axi_lite_awready_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00D00000"
    )
        port map (
      I0 => \^s_axi_lite_bvalid\,
      I1 => s_axi_lite_bready,
      I2 => s_axi_lite_awvalid,
      I3 => \^s_axi_lite_awready\,
      I4 => s_axi_lite_wvalid,
      O => s_axi_lite_awready0
    );
s_axi_lite_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axi_lite_awready0,
      Q => \^s_axi_lite_awready\,
      R => s_axi_lite_awready_i_1_n_0
    );
s_axi_lite_bvalid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DC"
    )
        port map (
      I0 => s_axi_lite_bready,
      I1 => \^s_axi_lite_awready\,
      I2 => \^s_axi_lite_bvalid\,
      O => s_axi_lite_bvalid_i_1_n_0
    );
s_axi_lite_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axi_lite_bvalid_i_1_n_0,
      Q => \^s_axi_lite_bvalid\,
      R => s_axi_lite_awready_i_1_n_0
    );
\s_axi_lite_rdata[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \irq_pend_reg_n_0_[0]\,
      I1 => \irq_enabled_reg_n_0_[0]\,
      I2 => s_axi_lite_araddr(1),
      I3 => spi_sck_div_en_reg_n_0,
      I4 => s_axi_lite_araddr(0),
      O => \s_axi_lite_rdata[0]_i_4_n_0\
    );
\s_axi_lite_rdata[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spi_sr_reg_n_0_[0]\,
      I1 => data5(0),
      I2 => s_axi_lite_araddr(1),
      I3 => \spi_sr_out_buf_reg_n_0_[0]\,
      I4 => s_axi_lite_araddr(0),
      I5 => \spi_sck_div_l_reg_n_0_[0]\,
      O => \s_axi_lite_rdata[0]_i_5_n_0\
    );
\s_axi_lite_rdata[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data10(0),
      I1 => \spi_mmio_rd_instr_io_mode_reg_n_0_[0]\,
      I2 => s_axi_lite_araddr(1),
      I3 => \spi_mmio_rd_instr_reg_n_0_[0]\,
      I4 => s_axi_lite_araddr(0),
      I5 => \^spi_ss_o_reg[0]_0\,
      O => \s_axi_lite_rdata[0]_i_6_n_0\
    );
\s_axi_lite_rdata[0]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[0]\,
      I1 => s_axi_lite_araddr(1),
      I2 => \spi_mmio_rd_req_cnt__0\(0),
      I3 => s_axi_lite_araddr(0),
      I4 => \spi_mmio_cs_mask_reg_n_0_[0]\,
      O => \s_axi_lite_rdata[0]_i_7_n_0\
    );
\s_axi_lite_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF20000000"
    )
        port map (
      I0 => \spi_mmio_rd_req_cnt__0\(10),
      I1 => s_axi_lite_araddr(1),
      I2 => s_axi_lite_araddr(0),
      I3 => s_axi_lite_araddr(2),
      I4 => s_axi_lite_araddr(3),
      I5 => \s_axi_lite_rdata[10]_i_2_n_0\,
      O => \s_axi_lite_rdata[10]_i_1_n_0\
    );
\s_axi_lite_rdata[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C00200000002000"
    )
        port map (
      I0 => \spi_mmio_addr_rem_reg_n_0_[0]\,
      I1 => s_axi_lite_araddr(1),
      I2 => s_axi_lite_araddr(0),
      I3 => s_axi_lite_araddr(3),
      I4 => s_axi_lite_araddr(2),
      I5 => \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[10]\,
      O => \s_axi_lite_rdata[10]_i_2_n_0\
    );
\s_axi_lite_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF20000000"
    )
        port map (
      I0 => \spi_mmio_rd_req_cnt__0\(11),
      I1 => s_axi_lite_araddr(1),
      I2 => s_axi_lite_araddr(0),
      I3 => s_axi_lite_araddr(2),
      I4 => s_axi_lite_araddr(3),
      I5 => \s_axi_lite_rdata[11]_i_2_n_0\,
      O => \s_axi_lite_rdata[11]_i_1_n_0\
    );
\s_axi_lite_rdata[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C00200000002000"
    )
        port map (
      I0 => \spi_mmio_addr_rem_reg_n_0_[1]\,
      I1 => s_axi_lite_araddr(1),
      I2 => s_axi_lite_araddr(0),
      I3 => s_axi_lite_araddr(3),
      I4 => s_axi_lite_araddr(2),
      I5 => \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[11]\,
      O => \s_axi_lite_rdata[11]_i_2_n_0\
    );
\s_axi_lite_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000062664044"
    )
        port map (
      I0 => s_axi_lite_araddr(1),
      I1 => s_axi_lite_araddr(0),
      I2 => \spi_mmio_rd_req_cnt__0\(12),
      I3 => s_axi_lite_araddr(2),
      I4 => \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[12]\,
      I5 => \s_axi_lite_rdata[12]_i_2_n_0\,
      O => \s_axi_lite_rdata[12]_i_1_n_0\
    );
\s_axi_lite_rdata[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFDFDD00FFDFFF"
    )
        port map (
      I0 => s_axi_lite_araddr(0),
      I1 => s_axi_lite_araddr(1),
      I2 => p_4_in(12),
      I3 => s_axi_lite_araddr(3),
      I4 => s_axi_lite_araddr(2),
      I5 => spi_mmio_en_req_reg_n_0,
      O => \s_axi_lite_rdata[12]_i_2_n_0\
    );
\s_axi_lite_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000062664044"
    )
        port map (
      I0 => s_axi_lite_araddr(1),
      I1 => s_axi_lite_araddr(0),
      I2 => \spi_mmio_rd_req_cnt__0\(13),
      I3 => s_axi_lite_araddr(2),
      I4 => \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[13]\,
      I5 => \s_axi_lite_rdata[13]_i_2_n_0\,
      O => \s_axi_lite_rdata[13]_i_1_n_0\
    );
\s_axi_lite_rdata[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFDFDD00FFDFFF"
    )
        port map (
      I0 => s_axi_lite_araddr(0),
      I1 => s_axi_lite_araddr(1),
      I2 => p_4_in(13),
      I3 => s_axi_lite_araddr(3),
      I4 => s_axi_lite_araddr(2),
      I5 => spi_mmio_en,
      O => \s_axi_lite_rdata[13]_i_2_n_0\
    );
\s_axi_lite_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF20000000"
    )
        port map (
      I0 => \spi_mmio_rd_req_cnt__0\(14),
      I1 => s_axi_lite_araddr(1),
      I2 => s_axi_lite_araddr(0),
      I3 => s_axi_lite_araddr(2),
      I4 => s_axi_lite_araddr(3),
      I5 => \s_axi_lite_rdata[14]_i_2_n_0\,
      O => \s_axi_lite_rdata[14]_i_1_n_0\
    );
\s_axi_lite_rdata[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C00200000002000"
    )
        port map (
      I0 => \spi_mmio_dummy_rem_reg_n_0_[0]\,
      I1 => s_axi_lite_araddr(1),
      I2 => s_axi_lite_araddr(0),
      I3 => s_axi_lite_araddr(3),
      I4 => s_axi_lite_araddr(2),
      I5 => \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[14]\,
      O => \s_axi_lite_rdata[14]_i_2_n_0\
    );
\s_axi_lite_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF20000000"
    )
        port map (
      I0 => \spi_mmio_rd_req_cnt__0\(15),
      I1 => s_axi_lite_araddr(1),
      I2 => s_axi_lite_araddr(0),
      I3 => s_axi_lite_araddr(2),
      I4 => s_axi_lite_araddr(3),
      I5 => \s_axi_lite_rdata[15]_i_2_n_0\,
      O => \s_axi_lite_rdata[15]_i_1_n_0\
    );
\s_axi_lite_rdata[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C00200000002000"
    )
        port map (
      I0 => \spi_mmio_dummy_rem_reg_n_0_[1]\,
      I1 => s_axi_lite_araddr(1),
      I2 => s_axi_lite_araddr(0),
      I3 => s_axi_lite_araddr(3),
      I4 => s_axi_lite_araddr(2),
      I5 => \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[15]\,
      O => \s_axi_lite_rdata[15]_i_2_n_0\
    );
\s_axi_lite_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAEAEFFAE"
    )
        port map (
      I0 => \s_axi_lite_rdata[16]_i_2_n_0\,
      I1 => \spi_mmio_mode_bits_reg_n_0_[0]\,
      I2 => \s_axi_lite_rdata[16]_i_3_n_0\,
      I3 => \spi_mmio_cs_high_wait_reg_n_0_[0]\,
      I4 => \s_axi_lite_rdata[23]_i_4_n_0\,
      I5 => \s_axi_lite_rdata[16]_i_4_n_0\,
      O => \s_axi_lite_rdata[16]_i_1_n_0\
    );
\s_axi_lite_rdata[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2C00000020000000"
    )
        port map (
      I0 => \spi_mmio_rd_req_cnt__0\(16),
      I1 => s_axi_lite_araddr(1),
      I2 => s_axi_lite_araddr(0),
      I3 => s_axi_lite_araddr(3),
      I4 => s_axi_lite_araddr(2),
      I5 => \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[16]\,
      O => \s_axi_lite_rdata[16]_i_2_n_0\
    );
\s_axi_lite_rdata[16]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FDFF"
    )
        port map (
      I0 => s_axi_lite_araddr(3),
      I1 => s_axi_lite_araddr(2),
      I2 => s_axi_lite_araddr(1),
      I3 => s_axi_lite_araddr(0),
      O => \s_axi_lite_rdata[16]_i_3_n_0\
    );
\s_axi_lite_rdata[16]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100111101000101"
    )
        port map (
      I0 => s_axi_lite_araddr(3),
      I1 => s_axi_lite_araddr(1),
      I2 => s_axi_lite_araddr(2),
      I3 => spi_sr_out_buf_valid,
      I4 => s_axi_lite_araddr(0),
      I5 => \spi_sck_div_h_reg_n_0_[0]\,
      O => \s_axi_lite_rdata[16]_i_4_n_0\
    );
\s_axi_lite_rdata[17]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02300200"
    )
        port map (
      I0 => \spi_sck_div_h_reg_n_0_[1]\,
      I1 => s_axi_lite_araddr(1),
      I2 => s_axi_lite_araddr(0),
      I3 => s_axi_lite_araddr(2),
      I4 => spi_sr_in_buf_valid_reg_n_0,
      O => \s_axi_lite_rdata[17]_i_2_n_0\
    );
\s_axi_lite_rdata[17]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3808FFFF38080000"
    )
        port map (
      I0 => \spi_mmio_rd_req_cnt__0\(17),
      I1 => s_axi_lite_araddr(0),
      I2 => s_axi_lite_araddr(1),
      I3 => \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[17]\,
      I4 => s_axi_lite_araddr(2),
      I5 => \s_axi_lite_rdata[17]_i_4_n_0\,
      O => \s_axi_lite_rdata[17]_i_3_n_0\
    );
\s_axi_lite_rdata[17]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => \spi_mmio_cs_high_wait_reg_n_0_[1]\,
      I1 => s_axi_lite_araddr(1),
      I2 => s_axi_lite_araddr(0),
      I3 => \spi_mmio_mode_bits_reg_n_0_[1]\,
      O => \s_axi_lite_rdata[17]_i_4_n_0\
    );
\s_axi_lite_rdata[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEFE"
    )
        port map (
      I0 => \s_axi_lite_rdata[18]_i_2_n_0\,
      I1 => \s_axi_lite_rdata[18]_i_3_n_0\,
      I2 => \spi_sck_div_h_reg_n_0_[2]\,
      I3 => \s_axi_lite_rdata[23]_i_5_n_0\,
      O => \s_axi_lite_rdata[18]_i_1_n_0\
    );
\s_axi_lite_rdata[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A080000000800"
    )
        port map (
      I0 => s_axi_lite_araddr(3),
      I1 => \spi_mmio_mode_bits_reg_n_0_[2]\,
      I2 => s_axi_lite_araddr(2),
      I3 => s_axi_lite_araddr(0),
      I4 => s_axi_lite_araddr(1),
      I5 => \spi_mmio_cs_high_wait_reg_n_0_[2]\,
      O => \s_axi_lite_rdata[18]_i_2_n_0\
    );
\s_axi_lite_rdata[18]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0088800000008000"
    )
        port map (
      I0 => s_axi_lite_araddr(3),
      I1 => s_axi_lite_araddr(2),
      I2 => \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[18]\,
      I3 => s_axi_lite_araddr(1),
      I4 => s_axi_lite_araddr(0),
      I5 => \spi_mmio_rd_req_cnt__0\(18),
      O => \s_axi_lite_rdata[18]_i_3_n_0\
    );
\s_axi_lite_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAEAAAAA"
    )
        port map (
      I0 => \s_axi_lite_rdata[19]_i_2_n_0\,
      I1 => \s_axi_lite_rdata[31]_i_5_n_0\,
      I2 => \spi_mmio_mode_bits_reg_n_0_[3]\,
      I3 => s_axi_lite_araddr(2),
      I4 => s_axi_lite_araddr(3),
      I5 => \s_axi_lite_rdata[19]_i_3_n_0\,
      O => \s_axi_lite_rdata[19]_i_1_n_0\
    );
\s_axi_lite_rdata[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000C00080800000"
    )
        port map (
      I0 => \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[19]\,
      I1 => s_axi_lite_araddr(2),
      I2 => s_axi_lite_araddr(3),
      I3 => \spi_mmio_rd_req_cnt__0\(19),
      I4 => s_axi_lite_araddr(1),
      I5 => s_axi_lite_araddr(0),
      O => \s_axi_lite_rdata[19]_i_2_n_0\
    );
\s_axi_lite_rdata[19]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0030020000000200"
    )
        port map (
      I0 => \spi_sck_div_h_reg_n_0_[3]\,
      I1 => s_axi_lite_araddr(0),
      I2 => s_axi_lite_araddr(1),
      I3 => s_axi_lite_araddr(2),
      I4 => s_axi_lite_araddr(3),
      I5 => \spi_mmio_cs_high_wait_reg_n_0_[3]\,
      O => \s_axi_lite_rdata[19]_i_3_n_0\
    );
\s_axi_lite_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_axi_lite_rdata[1]_i_2_n_0\,
      I1 => \s_axi_lite_rdata[1]_i_3_n_0\,
      I2 => s_axi_lite_araddr(3),
      I3 => \s_axi_lite_rdata[1]_i_4_n_0\,
      I4 => s_axi_lite_araddr(2),
      I5 => \s_axi_lite_rdata[1]_i_5_n_0\,
      O => \s_axi_lite_rdata[1]_i_1_n_0\
    );
\s_axi_lite_rdata[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => \spi_mmio_rd_req_cnt__0\(1),
      I1 => s_axi_lite_araddr(0),
      I2 => s_axi_lite_araddr(1),
      I3 => \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[1]\,
      O => \s_axi_lite_rdata[1]_i_2_n_0\
    );
\s_axi_lite_rdata[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => data10(1),
      I1 => \spi_mmio_rd_instr_io_mode_reg_n_0_[1]\,
      I2 => s_axi_lite_araddr(1),
      I3 => s_axi_lite_araddr(0),
      I4 => \spi_mmio_rd_instr_reg_n_0_[1]\,
      O => \s_axi_lite_rdata[1]_i_3_n_0\
    );
\s_axi_lite_rdata[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spi_sr_reg_n_0_[1]\,
      I1 => data5(1),
      I2 => s_axi_lite_araddr(1),
      I3 => \spi_sr_out_buf_reg_n_0_[1]\,
      I4 => s_axi_lite_araddr(0),
      I5 => \spi_sck_div_l_reg_n_0_[1]\,
      O => \s_axi_lite_rdata[1]_i_4_n_0\
    );
\s_axi_lite_rdata[1]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \irq_pend_reg_n_0_[1]\,
      I1 => \irq_enabled_reg_n_0_[1]\,
      I2 => s_axi_lite_araddr(1),
      I3 => spi_en_reg_n_0,
      I4 => s_axi_lite_araddr(0),
      O => \s_axi_lite_rdata[1]_i_5_n_0\
    );
\s_axi_lite_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAEAAAAA"
    )
        port map (
      I0 => \s_axi_lite_rdata[20]_i_2_n_0\,
      I1 => \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[20]\,
      I2 => \s_axi_lite_rdata[30]_i_2_n_0\,
      I3 => s_axi_lite_araddr(0),
      I4 => s_axi_lite_araddr(1),
      I5 => \s_axi_lite_rdata[20]_i_3_n_0\,
      O => \s_axi_lite_rdata[20]_i_1_n_0\
    );
\s_axi_lite_rdata[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA0C0A0C00000000"
    )
        port map (
      I0 => \spi_mmio_mode_bits_reg_n_0_[4]\,
      I1 => \FSM_onehot_spi_fsm_state_reg_n_0_[0]\,
      I2 => s_axi_lite_araddr(2),
      I3 => s_axi_lite_araddr(3),
      I4 => \spi_mmio_rd_req_cnt__0\(20),
      I5 => \s_axi_lite_rdata[31]_i_5_n_0\,
      O => \s_axi_lite_rdata[20]_i_2_n_0\
    );
\s_axi_lite_rdata[20]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000038000000080"
    )
        port map (
      I0 => \spi_mmio_cs_high_wait_reg_n_0_[4]\,
      I1 => s_axi_lite_araddr(3),
      I2 => s_axi_lite_araddr(1),
      I3 => s_axi_lite_araddr(2),
      I4 => s_axi_lite_araddr(0),
      I5 => \spi_sck_div_h_reg_n_0_[4]\,
      O => \s_axi_lite_rdata[20]_i_3_n_0\
    );
\s_axi_lite_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAEAAAAA"
    )
        port map (
      I0 => \s_axi_lite_rdata[21]_i_2_n_0\,
      I1 => \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[21]\,
      I2 => \s_axi_lite_rdata[30]_i_2_n_0\,
      I3 => s_axi_lite_araddr(0),
      I4 => s_axi_lite_araddr(1),
      I5 => \s_axi_lite_rdata[21]_i_3_n_0\,
      O => \s_axi_lite_rdata[21]_i_1_n_0\
    );
\s_axi_lite_rdata[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA0C0A0C00000000"
    )
        port map (
      I0 => \spi_mmio_mode_bits_reg_n_0_[5]\,
      I1 => spi_dir_reg_n_0,
      I2 => s_axi_lite_araddr(2),
      I3 => s_axi_lite_araddr(3),
      I4 => \spi_mmio_rd_req_cnt__0\(21),
      I5 => \s_axi_lite_rdata[31]_i_5_n_0\,
      O => \s_axi_lite_rdata[21]_i_2_n_0\
    );
\s_axi_lite_rdata[21]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000038000000080"
    )
        port map (
      I0 => \spi_mmio_cs_high_wait_reg_n_0_[5]\,
      I1 => s_axi_lite_araddr(3),
      I2 => s_axi_lite_araddr(1),
      I3 => s_axi_lite_araddr(2),
      I4 => s_axi_lite_araddr(0),
      I5 => \spi_sck_div_h_reg_n_0_[5]\,
      O => \s_axi_lite_rdata[21]_i_3_n_0\
    );
\s_axi_lite_rdata[22]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00380008"
    )
        port map (
      I0 => \spi_fsm_state_reg_n_0_[0]\,
      I1 => s_axi_lite_araddr(0),
      I2 => s_axi_lite_araddr(2),
      I3 => s_axi_lite_araddr(1),
      I4 => \spi_sck_div_h_reg_n_0_[6]\,
      O => \s_axi_lite_rdata[22]_i_2_n_0\
    );
\s_axi_lite_rdata[22]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0A800080"
    )
        port map (
      I0 => s_axi_lite_araddr(2),
      I1 => \spi_mmio_rd_req_cnt__0\(22),
      I2 => s_axi_lite_araddr(0),
      I3 => s_axi_lite_araddr(1),
      I4 => \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[22]\,
      I5 => \s_axi_lite_rdata[22]_i_4_n_0\,
      O => \s_axi_lite_rdata[22]_i_3_n_0\
    );
\s_axi_lite_rdata[22]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00380008"
    )
        port map (
      I0 => \spi_mmio_cs_high_wait_reg_n_0_[6]\,
      I1 => s_axi_lite_araddr(1),
      I2 => s_axi_lite_araddr(0),
      I3 => s_axi_lite_araddr(2),
      I4 => \spi_mmio_mode_bits_reg_n_0_[6]\,
      O => \s_axi_lite_rdata[22]_i_4_n_0\
    );
\s_axi_lite_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEFEEEFEFFFFEEFE"
    )
        port map (
      I0 => \s_axi_lite_rdata[23]_i_2_n_0\,
      I1 => \s_axi_lite_rdata[23]_i_3_n_0\,
      I2 => \spi_mmio_cs_high_wait_reg_n_0_[7]\,
      I3 => \s_axi_lite_rdata[23]_i_4_n_0\,
      I4 => \spi_sck_div_h_reg_n_0_[7]\,
      I5 => \s_axi_lite_rdata[23]_i_5_n_0\,
      O => \s_axi_lite_rdata[23]_i_1_n_0\
    );
\s_axi_lite_rdata[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080003000000"
    )
        port map (
      I0 => \spi_mmio_rd_req_cnt__0\(23),
      I1 => s_axi_lite_araddr(3),
      I2 => s_axi_lite_araddr(1),
      I3 => s_axi_lite_araddr(0),
      I4 => \spi_fsm_state_reg_n_0_[1]\,
      I5 => s_axi_lite_araddr(2),
      O => \s_axi_lite_rdata[23]_i_2_n_0\
    );
\s_axi_lite_rdata[23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000300080800000"
    )
        port map (
      I0 => \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[23]\,
      I1 => s_axi_lite_araddr(2),
      I2 => s_axi_lite_araddr(3),
      I3 => \spi_mmio_mode_bits_reg_n_0_[7]\,
      I4 => s_axi_lite_araddr(1),
      I5 => s_axi_lite_araddr(0),
      O => \s_axi_lite_rdata[23]_i_3_n_0\
    );
\s_axi_lite_rdata[23]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBFF"
    )
        port map (
      I0 => s_axi_lite_araddr(0),
      I1 => s_axi_lite_araddr(1),
      I2 => s_axi_lite_araddr(2),
      I3 => s_axi_lite_araddr(3),
      O => \s_axi_lite_rdata[23]_i_4_n_0\
    );
\s_axi_lite_rdata[23]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => s_axi_lite_araddr(3),
      I1 => s_axi_lite_araddr(1),
      I2 => s_axi_lite_araddr(2),
      I3 => s_axi_lite_araddr(0),
      O => \s_axi_lite_rdata[23]_i_5_n_0\
    );
\s_axi_lite_rdata[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \s_axi_lite_rdata[24]_i_2_n_0\,
      I1 => s_axi_lite_araddr(2),
      I2 => \s_axi_lite_rdata[24]_i_3_n_0\,
      I3 => s_axi_lite_araddr(3),
      O => \s_axi_lite_rdata[24]_i_1_n_0\
    );
\s_axi_lite_rdata[24]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \spi_mmio_fsm_state_reg_n_0_[0]\,
      I1 => \spi_mmio_cs_low_wait_reg_n_0_[0]\,
      I2 => s_axi_lite_araddr(1),
      I3 => p_4_in(24),
      I4 => s_axi_lite_araddr(0),
      O => \s_axi_lite_rdata[24]_i_2_n_0\
    );
\s_axi_lite_rdata[24]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => \spi_mmio_rd_req_cnt__0\(24),
      I1 => s_axi_lite_araddr(0),
      I2 => s_axi_lite_araddr(1),
      I3 => \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[24]\,
      O => \s_axi_lite_rdata[24]_i_3_n_0\
    );
\s_axi_lite_rdata[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => s_axi_lite_araddr(3),
      I1 => \s_axi_lite_rdata[25]_i_2_n_0\,
      I2 => s_axi_lite_araddr(2),
      I3 => \s_axi_lite_rdata[25]_i_3_n_0\,
      O => \s_axi_lite_rdata[25]_i_1_n_0\
    );
\s_axi_lite_rdata[25]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"530F53FF"
    )
        port map (
      I0 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I1 => \spi_mmio_cs_low_wait_reg_n_0_[1]\,
      I2 => s_axi_lite_araddr(0),
      I3 => s_axi_lite_araddr(1),
      I4 => p_4_in(25),
      O => \s_axi_lite_rdata[25]_i_2_n_0\
    );
\s_axi_lite_rdata[25]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C7F7"
    )
        port map (
      I0 => \spi_mmio_rd_req_cnt__0\(25),
      I1 => s_axi_lite_araddr(0),
      I2 => s_axi_lite_araddr(1),
      I3 => \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[25]\,
      O => \s_axi_lite_rdata[25]_i_3_n_0\
    );
\s_axi_lite_rdata[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => s_axi_lite_araddr(3),
      I1 => \s_axi_lite_rdata[26]_i_2_n_0\,
      I2 => s_axi_lite_araddr(2),
      I3 => \s_axi_lite_rdata[26]_i_3_n_0\,
      O => \s_axi_lite_rdata[26]_i_1_n_0\
    );
\s_axi_lite_rdata[26]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"530F53FF"
    )
        port map (
      I0 => \spi_mmio_fsm_state_reg_n_0_[2]\,
      I1 => \spi_mmio_cs_low_wait_reg_n_0_[2]\,
      I2 => s_axi_lite_araddr(0),
      I3 => s_axi_lite_araddr(1),
      I4 => p_4_in(26),
      O => \s_axi_lite_rdata[26]_i_2_n_0\
    );
\s_axi_lite_rdata[26]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C7F7"
    )
        port map (
      I0 => \spi_mmio_rd_req_cnt__0\(26),
      I1 => s_axi_lite_araddr(0),
      I2 => s_axi_lite_araddr(1),
      I3 => \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[26]\,
      O => \s_axi_lite_rdata[26]_i_3_n_0\
    );
\s_axi_lite_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00C0A000"
    )
        port map (
      I0 => \spi_mmio_rd_req_cnt__0\(27),
      I1 => \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[27]\,
      I2 => \s_axi_lite_rdata[30]_i_2_n_0\,
      I3 => s_axi_lite_araddr(0),
      I4 => s_axi_lite_araddr(1),
      I5 => \s_axi_lite_rdata[27]_i_2_n_0\,
      O => \s_axi_lite_rdata[27]_i_1_n_0\
    );
\s_axi_lite_rdata[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4040400000400000"
    )
        port map (
      I0 => s_axi_lite_araddr(2),
      I1 => s_axi_lite_araddr(1),
      I2 => s_axi_lite_araddr(3),
      I3 => s_axi_lite_araddr(0),
      I4 => \spi_mmio_cs_low_wait_reg_n_0_[3]\,
      I5 => \spi_mmio_fsm_state_reg_n_0_[3]\,
      O => \s_axi_lite_rdata[27]_i_2_n_0\
    );
\s_axi_lite_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEAAAAAAA"
    )
        port map (
      I0 => \s_axi_lite_rdata[28]_i_2_n_0\,
      I1 => s_axi_lite_araddr(3),
      I2 => s_axi_lite_araddr(2),
      I3 => \s_axi_lite_rdata[31]_i_5_n_0\,
      I4 => \spi_mmio_rd_req_cnt__0\(28),
      I5 => \s_axi_lite_rdata[28]_i_3_n_0\,
      O => \s_axi_lite_rdata[28]_i_1_n_0\
    );
\s_axi_lite_rdata[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C00002000000020"
    )
        port map (
      I0 => \spi_io_mode_q_reg_n_0_[0]\,
      I1 => s_axi_lite_araddr(1),
      I2 => s_axi_lite_araddr(0),
      I3 => s_axi_lite_araddr(3),
      I4 => s_axi_lite_araddr(2),
      I5 => \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[28]\,
      O => \s_axi_lite_rdata[28]_i_2_n_0\
    );
\s_axi_lite_rdata[28]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4040400000004000"
    )
        port map (
      I0 => s_axi_lite_araddr(2),
      I1 => s_axi_lite_araddr(1),
      I2 => s_axi_lite_araddr(3),
      I3 => \spi_mmio_cs_low_wait_reg_n_0_[4]\,
      I4 => s_axi_lite_araddr(0),
      I5 => \spi_mmio_fsm_state_next_reg_n_0_[0]\,
      O => \s_axi_lite_rdata[28]_i_3_n_0\
    );
\s_axi_lite_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEAAAAAAA"
    )
        port map (
      I0 => \s_axi_lite_rdata[29]_i_2_n_0\,
      I1 => s_axi_lite_araddr(3),
      I2 => s_axi_lite_araddr(2),
      I3 => \s_axi_lite_rdata[31]_i_5_n_0\,
      I4 => \spi_mmio_rd_req_cnt__0\(29),
      I5 => \s_axi_lite_rdata[29]_i_3_n_0\,
      O => \s_axi_lite_rdata[29]_i_1_n_0\
    );
\s_axi_lite_rdata[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C00002000000020"
    )
        port map (
      I0 => \spi_io_mode_q_reg_n_0_[1]\,
      I1 => s_axi_lite_araddr(1),
      I2 => s_axi_lite_araddr(0),
      I3 => s_axi_lite_araddr(3),
      I4 => s_axi_lite_araddr(2),
      I5 => \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[29]\,
      O => \s_axi_lite_rdata[29]_i_2_n_0\
    );
\s_axi_lite_rdata[29]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4040400000004000"
    )
        port map (
      I0 => s_axi_lite_araddr(2),
      I1 => s_axi_lite_araddr(1),
      I2 => s_axi_lite_araddr(3),
      I3 => \spi_mmio_cs_low_wait_reg_n_0_[5]\,
      I4 => s_axi_lite_araddr(0),
      I5 => \spi_mmio_fsm_state_next_reg_n_0_[1]\,
      O => \s_axi_lite_rdata[29]_i_3_n_0\
    );
\s_axi_lite_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_axi_lite_rdata[2]_i_2_n_0\,
      I1 => \s_axi_lite_rdata[2]_i_3_n_0\,
      I2 => s_axi_lite_araddr(3),
      I3 => \s_axi_lite_rdata[2]_i_4_n_0\,
      I4 => s_axi_lite_araddr(2),
      I5 => \s_axi_lite_rdata[2]_i_5_n_0\,
      O => \s_axi_lite_rdata[2]_i_1_n_0\
    );
\s_axi_lite_rdata[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => \spi_mmio_rd_req_cnt__0\(2),
      I1 => s_axi_lite_araddr(0),
      I2 => s_axi_lite_araddr(1),
      I3 => \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[2]\,
      O => \s_axi_lite_rdata[2]_i_2_n_0\
    );
\s_axi_lite_rdata[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => data10(2),
      I1 => spi_mmio_addr_io_mode(0),
      I2 => s_axi_lite_araddr(1),
      I3 => s_axi_lite_araddr(0),
      I4 => \spi_mmio_rd_instr_reg_n_0_[2]\,
      O => \s_axi_lite_rdata[2]_i_3_n_0\
    );
\s_axi_lite_rdata[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spi_sr_reg_n_0_[2]\,
      I1 => data5(2),
      I2 => s_axi_lite_araddr(1),
      I3 => \spi_sr_out_buf_reg_n_0_[2]\,
      I4 => s_axi_lite_araddr(0),
      I5 => \spi_sck_div_l_reg_n_0_[2]\,
      O => \s_axi_lite_rdata[2]_i_4_n_0\
    );
\s_axi_lite_rdata[2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \irq_pend_reg_n_0_[2]\,
      I1 => \irq_enabled_reg_n_0_[2]\,
      I2 => s_axi_lite_araddr(1),
      I3 => s_axi_lite_araddr(0),
      I4 => \spi_mode_reg_n_0_[0]\,
      O => \s_axi_lite_rdata[2]_i_5_n_0\
    );
\s_axi_lite_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00C0A000"
    )
        port map (
      I0 => \spi_mmio_rd_req_cnt__0\(30),
      I1 => \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[30]\,
      I2 => \s_axi_lite_rdata[30]_i_2_n_0\,
      I3 => s_axi_lite_araddr(0),
      I4 => s_axi_lite_araddr(1),
      I5 => \s_axi_lite_rdata[30]_i_3_n_0\,
      O => \s_axi_lite_rdata[30]_i_1_n_0\
    );
\s_axi_lite_rdata[30]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_lite_araddr(2),
      I1 => s_axi_lite_araddr(3),
      O => \s_axi_lite_rdata[30]_i_2_n_0\
    );
\s_axi_lite_rdata[30]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4040400000400000"
    )
        port map (
      I0 => s_axi_lite_araddr(2),
      I1 => s_axi_lite_araddr(1),
      I2 => s_axi_lite_araddr(3),
      I3 => s_axi_lite_araddr(0),
      I4 => \spi_mmio_cs_low_wait_reg_n_0_[6]\,
      I5 => \spi_mmio_fsm_state_next_reg_n_0_[2]\,
      O => \s_axi_lite_rdata[30]_i_3_n_0\
    );
\s_axi_lite_rdata[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D0FF"
    )
        port map (
      I0 => s_axi_lite_arvalid,
      I1 => \^s_axi_lite_rvalid_reg_0\,
      I2 => s_axi_lite_rready,
      I3 => aresetn,
      O => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\s_axi_lite_rdata[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_lite_arvalid,
      I1 => \^s_axi_lite_rvalid_reg_0\,
      O => s_axi_lite_rd_en
    );
\s_axi_lite_rdata[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEAAAAAAA"
    )
        port map (
      I0 => \s_axi_lite_rdata[31]_i_4_n_0\,
      I1 => s_axi_lite_araddr(3),
      I2 => s_axi_lite_araddr(2),
      I3 => \s_axi_lite_rdata[31]_i_5_n_0\,
      I4 => \spi_mmio_rd_req_cnt__0\(31),
      I5 => \s_axi_lite_rdata[31]_i_6_n_0\,
      O => \s_axi_lite_rdata[31]_i_3_n_0\
    );
\s_axi_lite_rdata[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C08000000080000"
    )
        port map (
      I0 => spi_sr_in_buf_valid_reg_n_0,
      I1 => s_axi_lite_araddr(1),
      I2 => s_axi_lite_araddr(0),
      I3 => s_axi_lite_araddr(3),
      I4 => s_axi_lite_araddr(2),
      I5 => \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[31]\,
      O => \s_axi_lite_rdata[31]_i_4_n_0\
    );
\s_axi_lite_rdata[31]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_lite_araddr(0),
      I1 => s_axi_lite_araddr(1),
      O => \s_axi_lite_rdata[31]_i_5_n_0\
    );
\s_axi_lite_rdata[31]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2000000000000"
    )
        port map (
      I0 => \spi_mmio_cs_low_wait_reg_n_0_[7]\,
      I1 => s_axi_lite_araddr(0),
      I2 => \spi_mmio_fsm_state_next_reg_n_0_[3]\,
      I3 => s_axi_lite_araddr(2),
      I4 => s_axi_lite_araddr(1),
      I5 => s_axi_lite_araddr(3),
      O => \s_axi_lite_rdata[31]_i_6_n_0\
    );
\s_axi_lite_rdata[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BB8888B888B888"
    )
        port map (
      I0 => \s_axi_lite_rdata[3]_i_4_n_0\,
      I1 => s_axi_lite_araddr(2),
      I2 => \irq_enabled_reg_n_0_[3]\,
      I3 => s_axi_lite_araddr(1),
      I4 => spi_cpol,
      I5 => s_axi_lite_araddr(0),
      O => \s_axi_lite_rdata[3]_i_2_n_0\
    );
\s_axi_lite_rdata[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3808FFFF38080000"
    )
        port map (
      I0 => \spi_mmio_rd_req_cnt__0\(3),
      I1 => s_axi_lite_araddr(0),
      I2 => s_axi_lite_araddr(1),
      I3 => \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[3]\,
      I4 => s_axi_lite_araddr(2),
      I5 => \s_axi_lite_rdata[3]_i_5_n_0\,
      O => \s_axi_lite_rdata[3]_i_3_n_0\
    );
\s_axi_lite_rdata[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spi_sr_reg_n_0_[3]\,
      I1 => data5(3),
      I2 => s_axi_lite_araddr(1),
      I3 => \spi_sr_out_buf_reg_n_0_[3]\,
      I4 => s_axi_lite_araddr(0),
      I5 => \spi_sck_div_l_reg_n_0_[3]\,
      O => \s_axi_lite_rdata[3]_i_4_n_0\
    );
\s_axi_lite_rdata[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => data10(3),
      I1 => spi_mmio_addr_io_mode(1),
      I2 => s_axi_lite_araddr(1),
      I3 => s_axi_lite_araddr(0),
      I4 => \spi_mmio_rd_instr_reg_n_0_[3]\,
      O => \s_axi_lite_rdata[3]_i_5_n_0\
    );
\s_axi_lite_rdata[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BBB8888888B888"
    )
        port map (
      I0 => \s_axi_lite_rdata[4]_i_4_n_0\,
      I1 => s_axi_lite_araddr(2),
      I2 => \irq_enabled_reg_n_0_[4]\,
      I3 => s_axi_lite_araddr(1),
      I4 => s_axi_lite_araddr(0),
      I5 => \spi_io_mode_reg_n_0_[0]\,
      O => \s_axi_lite_rdata[4]_i_2_n_0\
    );
\s_axi_lite_rdata[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3808FFFF38080000"
    )
        port map (
      I0 => \spi_mmio_rd_req_cnt__0\(4),
      I1 => s_axi_lite_araddr(0),
      I2 => s_axi_lite_araddr(1),
      I3 => \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[4]\,
      I4 => s_axi_lite_araddr(2),
      I5 => \s_axi_lite_rdata[4]_i_5_n_0\,
      O => \s_axi_lite_rdata[4]_i_3_n_0\
    );
\s_axi_lite_rdata[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spi_sr_reg_n_0_[4]\,
      I1 => data5(4),
      I2 => s_axi_lite_araddr(1),
      I3 => \spi_sr_out_buf_reg_n_0_[4]\,
      I4 => s_axi_lite_araddr(0),
      I5 => \spi_sck_div_l_reg_n_0_[4]\,
      O => \s_axi_lite_rdata[4]_i_4_n_0\
    );
\s_axi_lite_rdata[4]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => data10(4),
      I1 => spi_mmio_dummy_io_mode(0),
      I2 => s_axi_lite_araddr(1),
      I3 => s_axi_lite_araddr(0),
      I4 => \spi_mmio_rd_instr_reg_n_0_[4]\,
      O => \s_axi_lite_rdata[4]_i_5_n_0\
    );
\s_axi_lite_rdata[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0AFACA0A0A0ACA0"
    )
        port map (
      I0 => \s_axi_lite_rdata[5]_i_4_n_0\,
      I1 => \spi_io_mode_reg_n_0_[1]\,
      I2 => s_axi_lite_araddr(2),
      I3 => s_axi_lite_araddr(0),
      I4 => s_axi_lite_araddr(1),
      I5 => \irq_enabled_reg_n_0_[5]\,
      O => \s_axi_lite_rdata[5]_i_2_n_0\
    );
\s_axi_lite_rdata[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3808FFFF38080000"
    )
        port map (
      I0 => \spi_mmio_rd_req_cnt__0\(5),
      I1 => s_axi_lite_araddr(0),
      I2 => s_axi_lite_araddr(1),
      I3 => \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[5]\,
      I4 => s_axi_lite_araddr(2),
      I5 => \s_axi_lite_rdata[5]_i_5_n_0\,
      O => \s_axi_lite_rdata[5]_i_3_n_0\
    );
\s_axi_lite_rdata[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spi_sr_reg_n_0_[5]\,
      I1 => data5(5),
      I2 => s_axi_lite_araddr(1),
      I3 => \spi_sr_out_buf_reg_n_0_[5]\,
      I4 => s_axi_lite_araddr(0),
      I5 => \spi_sck_div_l_reg_n_0_[5]\,
      O => \s_axi_lite_rdata[5]_i_4_n_0\
    );
\s_axi_lite_rdata[5]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => data10(5),
      I1 => spi_mmio_dummy_io_mode(1),
      I2 => s_axi_lite_araddr(1),
      I3 => s_axi_lite_araddr(0),
      I4 => \spi_mmio_rd_instr_reg_n_0_[5]\,
      O => \s_axi_lite_rdata[5]_i_5_n_0\
    );
\s_axi_lite_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF4F44"
    )
        port map (
      I0 => \s_axi_lite_rdata[6]_i_2_n_0\,
      I1 => \s_axi_lite_rdata[6]_i_3_n_0\,
      I2 => \s_axi_lite_rdata[6]_i_4_n_0\,
      I3 => \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[6]\,
      I4 => \s_axi_lite_rdata[6]_i_5_n_0\,
      I5 => \s_axi_lite_rdata[6]_i_6_n_0\,
      O => \s_axi_lite_rdata[6]_i_1_n_0\
    );
\s_axi_lite_rdata[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => s_axi_lite_araddr(3),
      I1 => s_axi_lite_araddr(2),
      O => \s_axi_lite_rdata[6]_i_2_n_0\
    );
\s_axi_lite_rdata[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spi_sr_reg_n_0_[6]\,
      I1 => data5(6),
      I2 => s_axi_lite_araddr(1),
      I3 => \spi_sr_out_buf_reg_n_0_[6]\,
      I4 => s_axi_lite_araddr(0),
      I5 => \spi_sck_div_l_reg_n_0_[6]\,
      O => \s_axi_lite_rdata[6]_i_3_n_0\
    );
\s_axi_lite_rdata[6]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => s_axi_lite_araddr(1),
      I1 => s_axi_lite_araddr(0),
      I2 => s_axi_lite_araddr(3),
      I3 => s_axi_lite_araddr(2),
      O => \s_axi_lite_rdata[6]_i_4_n_0\
    );
\s_axi_lite_rdata[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00008800C0000000"
    )
        port map (
      I0 => \spi_mmio_rd_req_cnt__0\(6),
      I1 => s_axi_lite_araddr(0),
      I2 => data10(6),
      I3 => s_axi_lite_araddr(3),
      I4 => s_axi_lite_araddr(1),
      I5 => s_axi_lite_araddr(2),
      O => \s_axi_lite_rdata[6]_i_5_n_0\
    );
\s_axi_lite_rdata[6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4540FFFF45404540"
    )
        port map (
      I0 => \s_axi_lite_rdata[6]_i_7_n_0\,
      I1 => \spi_mmio_data_io_mode_reg_n_0_[0]\,
      I2 => s_axi_lite_araddr(3),
      I3 => \irq_enabled_reg_n_0_[6]\,
      I4 => \s_axi_lite_rdata[16]_i_3_n_0\,
      I5 => \spi_mmio_rd_instr_reg_n_0_[6]\,
      O => \s_axi_lite_rdata[6]_i_6_n_0\
    );
\s_axi_lite_rdata[6]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => s_axi_lite_araddr(2),
      I1 => s_axi_lite_araddr(1),
      I2 => s_axi_lite_araddr(0),
      O => \s_axi_lite_rdata[6]_i_7_n_0\
    );
\s_axi_lite_rdata[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDDDFCCC"
    )
        port map (
      I0 => \s_axi_lite_rdata[7]_i_2_n_0\,
      I1 => \s_axi_lite_rdata[7]_i_3_n_0\,
      I2 => \s_axi_lite_rdata[7]_i_4_n_0\,
      I3 => s_axi_lite_araddr(2),
      I4 => s_axi_lite_araddr(3),
      O => \s_axi_lite_rdata[7]_i_1_n_0\
    );
\s_axi_lite_rdata[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1FDF3F3F1FDFFFF"
    )
        port map (
      I0 => \spi_mmio_rd_instr_reg_n_0_[7]\,
      I1 => s_axi_lite_araddr(1),
      I2 => s_axi_lite_araddr(2),
      I3 => data10(7),
      I4 => s_axi_lite_araddr(0),
      I5 => \spi_mmio_data_io_mode_reg_n_0_[1]\,
      O => \s_axi_lite_rdata[7]_i_2_n_0\
    );
\s_axi_lite_rdata[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0088800000008000"
    )
        port map (
      I0 => s_axi_lite_araddr(3),
      I1 => s_axi_lite_araddr(2),
      I2 => \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[7]\,
      I3 => s_axi_lite_araddr(1),
      I4 => s_axi_lite_araddr(0),
      I5 => \spi_mmio_rd_req_cnt__0\(7),
      O => \s_axi_lite_rdata[7]_i_3_n_0\
    );
\s_axi_lite_rdata[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_2_in(0),
      I1 => data5(7),
      I2 => s_axi_lite_araddr(1),
      I3 => \spi_sr_out_buf_reg_n_0_[7]\,
      I4 => s_axi_lite_araddr(0),
      I5 => \spi_sck_div_l_reg_n_0_[7]\,
      O => \s_axi_lite_rdata[7]_i_4_n_0\
    );
\s_axi_lite_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF60204000"
    )
        port map (
      I0 => s_axi_lite_araddr(1),
      I1 => s_axi_lite_araddr(0),
      I2 => \s_axi_lite_rdata[30]_i_2_n_0\,
      I3 => \spi_mmio_rd_req_cnt__0\(8),
      I4 => \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[8]\,
      I5 => \s_axi_lite_rdata[8]_i_2_n_0\,
      O => \s_axi_lite_rdata[8]_i_1_n_0\
    );
\s_axi_lite_rdata[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0AFC00000A0C0000"
    )
        port map (
      I0 => spi_sr_out_buf_valid,
      I1 => spi_lsb_first_reg_n_0,
      I2 => s_axi_lite_araddr(3),
      I3 => s_axi_lite_araddr(2),
      I4 => \s_axi_lite_rdata[31]_i_5_n_0\,
      I5 => p_4_in(8),
      O => \s_axi_lite_rdata[8]_i_2_n_0\
    );
\s_axi_lite_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFA0208000"
    )
        port map (
      I0 => s_axi_lite_araddr(3),
      I1 => s_axi_lite_araddr(2),
      I2 => \s_axi_lite_rdata[31]_i_5_n_0\,
      I3 => \spi_mmio_rd_req_cnt__0\(9),
      I4 => p_4_in(9),
      I5 => \s_axi_lite_rdata[9]_i_2_n_0\,
      O => \s_axi_lite_rdata[9]_i_1_n_0\
    );
\s_axi_lite_rdata[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C20000000200000"
    )
        port map (
      I0 => spi_rd_req_reg_n_0,
      I1 => s_axi_lite_araddr(1),
      I2 => s_axi_lite_araddr(0),
      I3 => s_axi_lite_araddr(3),
      I4 => s_axi_lite_araddr(2),
      I5 => \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[9]\,
      O => \s_axi_lite_rdata[9]_i_2_n_0\
    );
\s_axi_lite_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_lite_rd_en,
      D => \s_axi_lite_rdata_reg[0]_i_1_n_0\,
      Q => s_axi_lite_rdata(0),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\s_axi_lite_rdata_reg[0]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \s_axi_lite_rdata_reg[0]_i_2_n_0\,
      I1 => \s_axi_lite_rdata_reg[0]_i_3_n_0\,
      O => \s_axi_lite_rdata_reg[0]_i_1_n_0\,
      S => s_axi_lite_araddr(3)
    );
\s_axi_lite_rdata_reg[0]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_lite_rdata[0]_i_4_n_0\,
      I1 => \s_axi_lite_rdata[0]_i_5_n_0\,
      O => \s_axi_lite_rdata_reg[0]_i_2_n_0\,
      S => s_axi_lite_araddr(2)
    );
\s_axi_lite_rdata_reg[0]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_lite_rdata[0]_i_6_n_0\,
      I1 => \s_axi_lite_rdata[0]_i_7_n_0\,
      O => \s_axi_lite_rdata_reg[0]_i_3_n_0\,
      S => s_axi_lite_araddr(2)
    );
\s_axi_lite_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_lite_rd_en,
      D => \s_axi_lite_rdata[10]_i_1_n_0\,
      Q => s_axi_lite_rdata(10),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\s_axi_lite_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_lite_rd_en,
      D => \s_axi_lite_rdata[11]_i_1_n_0\,
      Q => s_axi_lite_rdata(11),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\s_axi_lite_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_lite_rd_en,
      D => \s_axi_lite_rdata[12]_i_1_n_0\,
      Q => s_axi_lite_rdata(12),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\s_axi_lite_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_lite_rd_en,
      D => \s_axi_lite_rdata[13]_i_1_n_0\,
      Q => s_axi_lite_rdata(13),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\s_axi_lite_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_lite_rd_en,
      D => \s_axi_lite_rdata[14]_i_1_n_0\,
      Q => s_axi_lite_rdata(14),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\s_axi_lite_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_lite_rd_en,
      D => \s_axi_lite_rdata[15]_i_1_n_0\,
      Q => s_axi_lite_rdata(15),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\s_axi_lite_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_lite_rd_en,
      D => \s_axi_lite_rdata[16]_i_1_n_0\,
      Q => s_axi_lite_rdata(16),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\s_axi_lite_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_lite_rd_en,
      D => \s_axi_lite_rdata_reg[17]_i_1_n_0\,
      Q => s_axi_lite_rdata(17),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\s_axi_lite_rdata_reg[17]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_lite_rdata[17]_i_2_n_0\,
      I1 => \s_axi_lite_rdata[17]_i_3_n_0\,
      O => \s_axi_lite_rdata_reg[17]_i_1_n_0\,
      S => s_axi_lite_araddr(3)
    );
\s_axi_lite_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_lite_rd_en,
      D => \s_axi_lite_rdata[18]_i_1_n_0\,
      Q => s_axi_lite_rdata(18),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\s_axi_lite_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_lite_rd_en,
      D => \s_axi_lite_rdata[19]_i_1_n_0\,
      Q => s_axi_lite_rdata(19),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\s_axi_lite_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_lite_rd_en,
      D => \s_axi_lite_rdata[1]_i_1_n_0\,
      Q => s_axi_lite_rdata(1),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\s_axi_lite_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_lite_rd_en,
      D => \s_axi_lite_rdata[20]_i_1_n_0\,
      Q => s_axi_lite_rdata(20),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\s_axi_lite_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_lite_rd_en,
      D => \s_axi_lite_rdata[21]_i_1_n_0\,
      Q => s_axi_lite_rdata(21),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\s_axi_lite_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_lite_rd_en,
      D => \s_axi_lite_rdata_reg[22]_i_1_n_0\,
      Q => s_axi_lite_rdata(22),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\s_axi_lite_rdata_reg[22]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_lite_rdata[22]_i_2_n_0\,
      I1 => \s_axi_lite_rdata[22]_i_3_n_0\,
      O => \s_axi_lite_rdata_reg[22]_i_1_n_0\,
      S => s_axi_lite_araddr(3)
    );
\s_axi_lite_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_lite_rd_en,
      D => \s_axi_lite_rdata[23]_i_1_n_0\,
      Q => s_axi_lite_rdata(23),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\s_axi_lite_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_lite_rd_en,
      D => \s_axi_lite_rdata[24]_i_1_n_0\,
      Q => s_axi_lite_rdata(24),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\s_axi_lite_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_lite_rd_en,
      D => \s_axi_lite_rdata[25]_i_1_n_0\,
      Q => s_axi_lite_rdata(25),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\s_axi_lite_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_lite_rd_en,
      D => \s_axi_lite_rdata[26]_i_1_n_0\,
      Q => s_axi_lite_rdata(26),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\s_axi_lite_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_lite_rd_en,
      D => \s_axi_lite_rdata[27]_i_1_n_0\,
      Q => s_axi_lite_rdata(27),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\s_axi_lite_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_lite_rd_en,
      D => \s_axi_lite_rdata[28]_i_1_n_0\,
      Q => s_axi_lite_rdata(28),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\s_axi_lite_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_lite_rd_en,
      D => \s_axi_lite_rdata[29]_i_1_n_0\,
      Q => s_axi_lite_rdata(29),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\s_axi_lite_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_lite_rd_en,
      D => \s_axi_lite_rdata[2]_i_1_n_0\,
      Q => s_axi_lite_rdata(2),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\s_axi_lite_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_lite_rd_en,
      D => \s_axi_lite_rdata[30]_i_1_n_0\,
      Q => s_axi_lite_rdata(30),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\s_axi_lite_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_lite_rd_en,
      D => \s_axi_lite_rdata[31]_i_3_n_0\,
      Q => s_axi_lite_rdata(31),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\s_axi_lite_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_lite_rd_en,
      D => \s_axi_lite_rdata_reg[3]_i_1_n_0\,
      Q => s_axi_lite_rdata(3),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\s_axi_lite_rdata_reg[3]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_lite_rdata[3]_i_2_n_0\,
      I1 => \s_axi_lite_rdata[3]_i_3_n_0\,
      O => \s_axi_lite_rdata_reg[3]_i_1_n_0\,
      S => s_axi_lite_araddr(3)
    );
\s_axi_lite_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_lite_rd_en,
      D => \s_axi_lite_rdata_reg[4]_i_1_n_0\,
      Q => s_axi_lite_rdata(4),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\s_axi_lite_rdata_reg[4]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_lite_rdata[4]_i_2_n_0\,
      I1 => \s_axi_lite_rdata[4]_i_3_n_0\,
      O => \s_axi_lite_rdata_reg[4]_i_1_n_0\,
      S => s_axi_lite_araddr(3)
    );
\s_axi_lite_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_lite_rd_en,
      D => \s_axi_lite_rdata_reg[5]_i_1_n_0\,
      Q => s_axi_lite_rdata(5),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\s_axi_lite_rdata_reg[5]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s_axi_lite_rdata[5]_i_2_n_0\,
      I1 => \s_axi_lite_rdata[5]_i_3_n_0\,
      O => \s_axi_lite_rdata_reg[5]_i_1_n_0\,
      S => s_axi_lite_araddr(3)
    );
\s_axi_lite_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_lite_rd_en,
      D => \s_axi_lite_rdata[6]_i_1_n_0\,
      Q => s_axi_lite_rdata(6),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\s_axi_lite_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_lite_rd_en,
      D => \s_axi_lite_rdata[7]_i_1_n_0\,
      Q => s_axi_lite_rdata(7),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\s_axi_lite_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_lite_rd_en,
      D => \s_axi_lite_rdata[8]_i_1_n_0\,
      Q => s_axi_lite_rdata(8),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\s_axi_lite_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_lite_rd_en,
      D => \s_axi_lite_rdata[9]_i_1_n_0\,
      Q => s_axi_lite_rdata(9),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
s_axi_lite_rvalid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => s_axi_lite_rready,
      I1 => \^s_axi_lite_rvalid_reg_0\,
      I2 => s_axi_lite_arvalid,
      O => s_axi_lite_rvalid_i_1_n_0
    );
s_axi_lite_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axi_lite_rvalid_i_1_n_0,
      Q => \^s_axi_lite_rvalid_reg_0\,
      R => s_axi_lite_awready_i_1_n_0
    );
spi_dir_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F0FFF02020200"
    )
        port map (
      I0 => spi_rd_req_reg_n_0,
      I1 => spi_rd_req_ack_reg_n_0,
      I2 => spi_sr_out_buf_valid,
      I3 => spi_dir_i_2_n_0,
      I4 => \FSM_onehot_spi_fsm_state_reg_n_0_[0]\,
      I5 => spi_dir_reg_n_0,
      O => spi_dir_i_1_n_0
    );
spi_dir_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00088000"
    )
        port map (
      I0 => \FSM_onehot_spi_fsm_state_reg_n_0_[2]\,
      I1 => spi_sr_eot,
      I2 => \spi_io_o[0]_i_4_n_0\,
      I3 => \spi_mode_reg_n_0_[0]\,
      I4 => \spi_io_o[0]_i_5_n_0\,
      O => spi_dir_i_2_n_0
    );
spi_dir_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => spi_dir_i_1_n_0,
      Q => spi_dir_reg_n_0,
      R => p_5_in
    );
spi_en_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBF8880"
    )
        port map (
      I0 => s_axi_lite_wdata(1),
      I1 => spi_en_i_2_n_0,
      I2 => spi_sck_div_en_reg_n_0,
      I3 => s_axi_lite_wdata(0),
      I4 => spi_en_reg_n_0,
      O => spi_en_i_1_n_0
    );
spi_en_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => spi_mmio_en,
      I1 => s_axi_lite_wstrb(0),
      I2 => \spi_mode[1]_i_2_n_0\,
      O => spi_en_i_2_n_0
    );
spi_en_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => spi_en_i_1_n_0,
      Q => spi_en_reg_n_0,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_fsm_state[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \spi_fsm_state_reg_n_0_[1]\,
      I1 => \spi_fsm_state_reg_n_0_[0]\,
      O => \spi_fsm_state[0]_i_1_n_0\
    );
\spi_fsm_state[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \spi_fsm_state_reg_n_0_[0]\,
      I1 => \spi_fsm_state_reg_n_0_[1]\,
      O => \spi_fsm_state[1]_i_1_n_0\
    );
\spi_fsm_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_fsm_state,
      D => \spi_fsm_state[0]_i_1_n_0\,
      Q => \spi_fsm_state_reg_n_0_[0]\,
      R => p_5_in
    );
\spi_fsm_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_fsm_state,
      D => \spi_fsm_state[1]_i_1_n_0\,
      Q => \spi_fsm_state_reg_n_0_[1]\,
      R => p_5_in
    );
spi_idle_q_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \FSM_onehot_spi_fsm_state_reg_n_0_[0]\,
      Q => spi_idle_q,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_io_mode[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \spi_io_mode[0]_i_2_n_0\,
      I1 => \spi_mmio_fsm_state_reg_n_0_[3]\,
      I2 => \spi_io_mode[0]_i_3_n_0\,
      I3 => spi_io_mode,
      I4 => \spi_io_mode_reg_n_0_[0]\,
      O => \spi_io_mode[0]_i_1_n_0\
    );
\spi_io_mode[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000004"
    )
        port map (
      I0 => \spi_mmio_fsm_state[3]_i_4_n_0\,
      I1 => \spi_mmio_data_io_mode_reg_n_0_[0]\,
      I2 => \spi_mmio_fsm_state_reg_n_0_[0]\,
      I3 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I4 => \spi_mmio_fsm_state_reg_n_0_[2]\,
      I5 => s_axi_lite_wdata(4),
      O => \spi_io_mode[0]_i_2_n_0\
    );
\spi_io_mode[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E4E4E4E4F000F0FF"
    )
        port map (
      I0 => \spi_io_mode[1]_i_5_n_0\,
      I1 => \spi_mmio_data_io_mode_reg_n_0_[0]\,
      I2 => s_axi_lite_wdata(4),
      I3 => \spi_io_mode[1]_i_6_n_0\,
      I4 => \spi_io_mode[0]_i_4_n_0\,
      I5 => \spi_mmio_fsm_state[3]_i_3_n_0\,
      O => \spi_io_mode[0]_i_3_n_0\
    );
\spi_io_mode[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10BFFFFF10BF0000"
    )
        port map (
      I0 => \spi_mmio_fsm_state[3]_i_4_n_0\,
      I1 => spi_mmio_dummy_io_mode(0),
      I2 => \spi_mmio_fsm_state_reg_n_0_[0]\,
      I3 => s_axi_lite_wdata(4),
      I4 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I5 => \spi_io_mode[0]_i_5_n_0\,
      O => \spi_io_mode[0]_i_4_n_0\
    );
\spi_io_mode[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF00FF00FF4747"
    )
        port map (
      I0 => spi_mmio_addr_io_mode(0),
      I1 => \spi_mmio_fsm_state_reg_n_0_[0]\,
      I2 => \spi_mmio_rd_instr_io_mode_reg_n_0_[0]\,
      I3 => s_axi_lite_wdata(4),
      I4 => spi_sr_out_buf_valid,
      I5 => spi_rd_req_reg_n_0,
      O => \spi_io_mode[0]_i_5_n_0\
    );
\spi_io_mode[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \spi_io_mode[1]_i_2_n_0\,
      I1 => \spi_mmio_fsm_state_reg_n_0_[3]\,
      I2 => \spi_io_mode[1]_i_3_n_0\,
      I3 => spi_io_mode,
      I4 => \spi_io_mode_reg_n_0_[1]\,
      O => \spi_io_mode[1]_i_1_n_0\
    );
\spi_io_mode[1]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABA8ABABABA8A8A8"
    )
        port map (
      I0 => s_axi_lite_wdata(5),
      I1 => spi_rd_req_reg_n_0,
      I2 => spi_sr_out_buf_valid,
      I3 => spi_mmio_addr_io_mode(1),
      I4 => \spi_mmio_fsm_state_reg_n_0_[0]\,
      I5 => \spi_mmio_rd_instr_io_mode_reg_n_0_[1]\,
      O => \spi_io_mode[1]_i_10_n_0\
    );
\spi_io_mode[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000004"
    )
        port map (
      I0 => \spi_mmio_fsm_state[3]_i_4_n_0\,
      I1 => \spi_mmio_data_io_mode_reg_n_0_[1]\,
      I2 => \spi_mmio_fsm_state_reg_n_0_[0]\,
      I3 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I4 => \spi_mmio_fsm_state_reg_n_0_[2]\,
      I5 => s_axi_lite_wdata(5),
      O => \spi_io_mode[1]_i_2_n_0\
    );
\spi_io_mode[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF40EF4FEF40E040"
    )
        port map (
      I0 => \spi_io_mode[1]_i_5_n_0\,
      I1 => \spi_mmio_data_io_mode_reg_n_0_[1]\,
      I2 => \spi_mmio_fsm_state[3]_i_3_n_0\,
      I3 => s_axi_lite_wdata(5),
      I4 => \spi_io_mode[1]_i_6_n_0\,
      I5 => \spi_io_mode[1]_i_7_n_0\,
      O => \spi_io_mode[1]_i_3_n_0\
    );
\spi_io_mode[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEFEEEE"
    )
        port map (
      I0 => spi_en_i_2_n_0,
      I1 => \spi_io_mode[1]_i_8_n_0\,
      I2 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I3 => \spi_mmio_fsm_state_reg_n_0_[0]\,
      I4 => \spi_mmio_addr_rem[0]_i_2_n_0\,
      I5 => \spi_mmio_cont_rd_req_cnt[31]_i_3_n_0\,
      O => spi_io_mode
    );
\spi_io_mode[1]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF8FFFFF"
    )
        port map (
      I0 => \^spi_ss_o_reg[0]_0\,
      I1 => \spi_mmio_cs_mask_reg_n_0_[0]\,
      I2 => \spi_mmio_fsm_state_next_reg[3]_i_5_n_0\,
      I3 => \spi_io_mode[1]_i_9_n_0\,
      I4 => \spi_io_mode[1]_i_6_n_0\,
      O => \spi_io_mode[1]_i_5_n_0\
    );
\spi_io_mode[1]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => \spi_mmio_fsm_state_reg_n_0_[2]\,
      I1 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I2 => \spi_mmio_fsm_state_reg_n_0_[0]\,
      O => \spi_io_mode[1]_i_6_n_0\
    );
\spi_io_mode[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF40FFFFEF400000"
    )
        port map (
      I0 => \spi_mmio_fsm_state[3]_i_4_n_0\,
      I1 => spi_mmio_dummy_io_mode(1),
      I2 => \spi_mmio_fsm_state_reg_n_0_[0]\,
      I3 => s_axi_lite_wdata(5),
      I4 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I5 => \spi_io_mode[1]_i_10_n_0\,
      O => \spi_io_mode[1]_i_7_n_0\
    );
\spi_io_mode[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \spi_mmio_fsm_state_reg_n_0_[3]\,
      I1 => \spi_mmio_fsm_state_reg_n_0_[0]\,
      I2 => \spi_mmio_fsm_state_reg_n_0_[2]\,
      I3 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I4 => spi_rd_req_reg_n_0,
      I5 => spi_sr_out_buf_valid,
      O => \spi_io_mode[1]_i_8_n_0\
    );
\spi_io_mode[1]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => spi_en_reg_n_0,
      I1 => spi_mmio_en_req_reg_n_0,
      I2 => \^s_axi_full_arready_reg_0\,
      I3 => s_axi_full_arvalid,
      O => \spi_io_mode[1]_i_9_n_0\
    );
\spi_io_mode_q[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEFFEF22220020"
    )
        port map (
      I0 => \spi_io_mode_reg_n_0_[0]\,
      I1 => \spi_io_mode_q[1]_i_2_n_0\,
      I2 => \spi_io_mode_q[1]_i_3_n_0\,
      I3 => \FSM_onehot_spi_fsm_state[2]_i_3_n_0\,
      I4 => \FSM_onehot_spi_fsm_state_reg_n_0_[0]\,
      I5 => \spi_io_mode_q_reg_n_0_[0]\,
      O => \spi_io_mode_q[0]_i_1_n_0\
    );
\spi_io_mode_q[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEFFEF22220020"
    )
        port map (
      I0 => \spi_io_mode_reg_n_0_[1]\,
      I1 => \spi_io_mode_q[1]_i_2_n_0\,
      I2 => \spi_io_mode_q[1]_i_3_n_0\,
      I3 => \FSM_onehot_spi_fsm_state[2]_i_3_n_0\,
      I4 => \FSM_onehot_spi_fsm_state_reg_n_0_[0]\,
      I5 => \spi_io_mode_q_reg_n_0_[1]\,
      O => \spi_io_mode_q[1]_i_1_n_0\
    );
\spi_io_mode_q[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => spi_sr_out_buf_valid,
      I1 => spi_rd_req_ack_reg_n_0,
      I2 => spi_rd_req_reg_n_0,
      O => \spi_io_mode_q[1]_i_2_n_0\
    );
\spi_io_mode_q[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_sr_eot,
      I1 => \FSM_onehot_spi_fsm_state_reg_n_0_[2]\,
      O => \spi_io_mode_q[1]_i_3_n_0\
    );
\spi_io_mode_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \spi_io_mode_q[0]_i_1_n_0\,
      Q => \spi_io_mode_q_reg_n_0_[0]\,
      R => p_5_in
    );
\spi_io_mode_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \spi_io_mode_q[1]_i_1_n_0\,
      Q => \spi_io_mode_q_reg_n_0_[1]\,
      R => p_5_in
    );
\spi_io_mode_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \spi_io_mode[0]_i_1_n_0\,
      Q => \spi_io_mode_reg_n_0_[0]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_io_mode_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \spi_io_mode[1]_i_1_n_0\,
      Q => \spi_io_mode_reg_n_0_[1]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_io_o[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => spi_en_reg_n_0,
      O => p_5_in
    );
\spi_io_o[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBFBFFFFFFFFBBFB"
    )
        port map (
      I0 => spi_sck_int,
      I1 => spi_sck_div_en_reg_n_0,
      I2 => \spi_sck_div_l_reg_n_0_[6]\,
      I3 => spi_sck_div_cnt_reg(6),
      I4 => \spi_sck_div_l_reg_n_0_[3]\,
      I5 => spi_sck_div_cnt_reg(3),
      O => \spi_io_o[0]_i_10_n_0\
    );
\spi_io_o[0]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"66F6"
    )
        port map (
      I0 => spi_sck_div_cnt_reg(5),
      I1 => \spi_sck_div_l_reg_n_0_[5]\,
      I2 => \spi_sck_div_l_reg_n_0_[0]\,
      I3 => spi_sck_div_cnt_reg(0),
      O => \spi_io_o[0]_i_11_n_0\
    );
\spi_io_o[0]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \spi_sck_div_h_reg_n_0_[7]\,
      I1 => spi_sck_div_cnt_reg(7),
      I2 => spi_sck_div_cnt_reg(5),
      I3 => \spi_sck_div_h_reg_n_0_[5]\,
      I4 => spi_sck_div_cnt_reg(3),
      I5 => \spi_sck_div_h_reg_n_0_[3]\,
      O => \spi_io_o[0]_i_12_n_0\
    );
\spi_io_o[0]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF6FF6"
    )
        port map (
      I0 => \spi_sck_div_h_reg_n_0_[6]\,
      I1 => spi_sck_div_cnt_reg(6),
      I2 => \spi_sck_div_h_reg_n_0_[1]\,
      I3 => spi_sck_div_cnt_reg(1),
      I4 => \spi_io_o[0]_i_14_n_0\,
      O => \spi_io_o[0]_i_13_n_0\
    );
\spi_io_o[0]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"66F6FFFFFFFFFFFF"
    )
        port map (
      I0 => \spi_sck_div_h_reg_n_0_[4]\,
      I1 => spi_sck_div_cnt_reg(4),
      I2 => spi_sck_div_cnt_reg(2),
      I3 => \spi_sck_div_h_reg_n_0_[2]\,
      I4 => spi_sck_div_en_reg_n_0,
      I5 => spi_sck_int,
      O => \spi_io_o[0]_i_14_n_0\
    );
\spi_io_o[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABFAAAA"
    )
        port map (
      I0 => \FSM_onehot_spi_fsm_state_reg_n_0_[0]\,
      I1 => \spi_io_o[0]_i_4_n_0\,
      I2 => \spi_mode_reg_n_0_[0]\,
      I3 => \spi_io_o[0]_i_5_n_0\,
      I4 => \FSM_onehot_spi_fsm_state_reg_n_0_[2]\,
      O => \spi_io_o[0]_i_2_n_0\
    );
\spi_io_o[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A20000"
    )
        port map (
      I0 => \spi_io_o[0]_i_6_n_0\,
      I1 => spi_lsb_first_reg_n_0,
      I2 => \spi_sr_reg_n_0_[0]\,
      I3 => \spi_io_o[0]_i_7_n_0\,
      I4 => \FSM_onehot_spi_fsm_state_reg_n_0_[2]\,
      O => spi_io_o(0)
    );
\spi_io_o[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \spi_io_o[0]_i_8_n_0\,
      I1 => \spi_io_o[0]_i_9_n_0\,
      I2 => \spi_io_o[0]_i_10_n_0\,
      I3 => \spi_io_o[0]_i_11_n_0\,
      O => \spi_io_o[0]_i_4_n_0\
    );
\spi_io_o[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFEFFFFEFFEEFFE"
    )
        port map (
      I0 => \spi_io_o[0]_i_12_n_0\,
      I1 => \spi_io_o[0]_i_13_n_0\,
      I2 => \spi_sck_div_h_reg_n_0_[0]\,
      I3 => spi_sck_div_cnt_reg(0),
      I4 => spi_sck_div_cnt_reg(2),
      I5 => \spi_sck_div_h_reg_n_0_[2]\,
      O => \spi_io_o[0]_i_5_n_0\
    );
\spi_io_o[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEAEAEAEFEAE"
    )
        port map (
      I0 => spi_lsb_first_reg_n_0,
      I1 => p_2_in(0),
      I2 => \spi_io_mode_q_reg_n_0_[1]\,
      I3 => \spi_sr_reg_n_0_[6]\,
      I4 => \spi_io_mode_q_reg_n_0_[0]\,
      I5 => \spi_sr_reg_n_0_[4]\,
      O => \spi_io_o[0]_i_6_n_0\
    );
\spi_io_o[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \spi_sr_bit_cnt_reg_n_0_[2]\,
      I1 => \spi_sr_bit_cnt_reg_n_0_[3]\,
      I2 => \spi_sr_bit_cnt_reg_n_0_[0]\,
      I3 => \spi_sr_bit_cnt_reg_n_0_[1]\,
      O => \spi_io_o[0]_i_7_n_0\
    );
\spi_io_o[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \spi_sck_div_l_reg_n_0_[7]\,
      I1 => spi_sck_div_cnt_reg(7),
      I2 => spi_sck_div_cnt_reg(2),
      I3 => \spi_sck_div_l_reg_n_0_[2]\,
      I4 => spi_sck_div_cnt_reg(1),
      I5 => \spi_sck_div_l_reg_n_0_[1]\,
      O => \spi_io_o[0]_i_8_n_0\
    );
\spi_io_o[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2FF22FF2FFFF2FF2"
    )
        port map (
      I0 => spi_sck_div_cnt_reg(6),
      I1 => \spi_sck_div_l_reg_n_0_[6]\,
      I2 => spi_sck_div_cnt_reg(4),
      I3 => \spi_sck_div_l_reg_n_0_[4]\,
      I4 => spi_sck_div_cnt_reg(0),
      I5 => \spi_sck_div_l_reg_n_0_[0]\,
      O => \spi_io_o[0]_i_9_n_0\
    );
\spi_io_o[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBF8880"
    )
        port map (
      I0 => spi_io_o(1),
      I1 => \spi_io_o[0]_i_2_n_0\,
      I2 => \spi_io_o[1]_i_3_n_0\,
      I3 => \spi_io_mode_q_reg_n_0_[1]\,
      I4 => \^spi_io1_o\,
      O => \spi_io_o[1]_i_1_n_0\
    );
\spi_io_o[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => p_2_in(0),
      I1 => \spi_io_mode_q_reg_n_0_[0]\,
      I2 => \spi_sr_reg_n_0_[5]\,
      I3 => spi_lsb_first_reg_n_0,
      I4 => \spi_sr_reg_n_0_[1]\,
      I5 => \spi_io_o[1]_i_4_n_0\,
      O => spi_io_o(1)
    );
\spi_io_o[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0001"
    )
        port map (
      I0 => \spi_sr_bit_cnt_reg_n_0_[1]\,
      I1 => \spi_sr_bit_cnt_reg_n_0_[0]\,
      I2 => \spi_sr_bit_cnt_reg_n_0_[3]\,
      I3 => \spi_sr_bit_cnt_reg_n_0_[2]\,
      I4 => spi_lsb_first_reg_n_0,
      I5 => \FSM_onehot_spi_fsm_state_reg_n_0_[0]\,
      O => \spi_io_o[1]_i_3_n_0\
    );
\spi_io_o[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0001FFFF"
    )
        port map (
      I0 => \spi_sr_bit_cnt_reg_n_0_[1]\,
      I1 => \spi_sr_bit_cnt_reg_n_0_[0]\,
      I2 => \spi_sr_bit_cnt_reg_n_0_[3]\,
      I3 => \spi_sr_bit_cnt_reg_n_0_[2]\,
      I4 => \FSM_onehot_spi_fsm_state_reg_n_0_[2]\,
      O => \spi_io_o[1]_i_4_n_0\
    );
\spi_io_o[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBFBFBF88808080"
    )
        port map (
      I0 => spi_io_o(2),
      I1 => \spi_io_o[0]_i_2_n_0\,
      I2 => \spi_io_o[1]_i_3_n_0\,
      I3 => \spi_io_mode_q_reg_n_0_[1]\,
      I4 => \spi_io_mode_q_reg_n_0_[0]\,
      I5 => \^spi_io2_o\,
      O => \spi_io_o[2]_i_1_n_0\
    );
\spi_io_o[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000E200"
    )
        port map (
      I0 => \spi_sr_reg_n_0_[6]\,
      I1 => spi_lsb_first_reg_n_0,
      I2 => \spi_sr_reg_n_0_[2]\,
      I3 => \FSM_onehot_spi_fsm_state_reg_n_0_[2]\,
      I4 => \spi_io_o[0]_i_7_n_0\,
      O => spi_io_o(2)
    );
\spi_io_o[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBFBFBF88808080"
    )
        port map (
      I0 => spi_io_o(3),
      I1 => \spi_io_o[0]_i_2_n_0\,
      I2 => \spi_io_o[1]_i_3_n_0\,
      I3 => \spi_io_mode_q_reg_n_0_[1]\,
      I4 => \spi_io_mode_q_reg_n_0_[0]\,
      I5 => \^spi_io3_o\,
      O => \spi_io_o[3]_i_1_n_0\
    );
\spi_io_o[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000E200"
    )
        port map (
      I0 => p_2_in(0),
      I1 => spi_lsb_first_reg_n_0,
      I2 => \spi_sr_reg_n_0_[3]\,
      I3 => \FSM_onehot_spi_fsm_state_reg_n_0_[2]\,
      I4 => \spi_io_o[0]_i_7_n_0\,
      O => spi_io_o(3)
    );
\spi_io_o_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_io_o[0]_i_2_n_0\,
      D => spi_io_o(0),
      Q => spi_io0_o,
      R => p_5_in
    );
\spi_io_o_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \spi_io_o[1]_i_1_n_0\,
      Q => \^spi_io1_o\,
      R => p_5_in
    );
\spi_io_o_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \spi_io_o[2]_i_1_n_0\,
      Q => \^spi_io2_o\,
      R => p_5_in
    );
\spi_io_o_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \spi_io_o[3]_i_1_n_0\,
      Q => \^spi_io3_o\,
      R => p_5_in
    );
\spi_io_t[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEEEAAAAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_spi_fsm_state_reg_n_0_[0]\,
      I1 => spi_dir_reg_n_0,
      I2 => \spi_io_mode_q_reg_n_0_[1]\,
      I3 => \spi_io_mode_q_reg_n_0_[0]\,
      I4 => \spi_io_o[0]_i_7_n_0\,
      I5 => \FSM_onehot_spi_fsm_state_reg_n_0_[2]\,
      O => spi_io_t(0)
    );
\spi_io_t[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFBAAAA"
    )
        port map (
      I0 => \FSM_onehot_spi_fsm_state_reg_n_0_[0]\,
      I1 => \spi_io_mode_q_reg_n_0_[1]\,
      I2 => \spi_io_o[0]_i_7_n_0\,
      I3 => spi_dir_reg_n_0,
      I4 => \FSM_onehot_spi_fsm_state_reg_n_0_[2]\,
      O => spi_io_t(1)
    );
\spi_io_t[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBFAAAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_spi_fsm_state_reg_n_0_[0]\,
      I1 => \spi_io_mode_q_reg_n_0_[0]\,
      I2 => \spi_io_mode_q_reg_n_0_[1]\,
      I3 => \spi_io_o[0]_i_7_n_0\,
      I4 => spi_dir_reg_n_0,
      I5 => \FSM_onehot_spi_fsm_state_reg_n_0_[2]\,
      O => spi_io_t(2)
    );
\spi_io_t_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \spi_io_o[0]_i_2_n_0\,
      D => spi_io_t(0),
      Q => spi_io0_t,
      S => p_5_in
    );
\spi_io_t_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \spi_io_o[0]_i_2_n_0\,
      D => spi_io_t(1),
      Q => spi_io1_t,
      S => p_5_in
    );
\spi_io_t_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \spi_io_o[0]_i_2_n_0\,
      D => spi_io_t(2),
      Q => spi_io2_t,
      S => p_5_in
    );
spi_lsb_first_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => s_axi_lite_wdata(8),
      I1 => \spi_mode[1]_i_2_n_0\,
      I2 => \FSM_onehot_spi_fsm_state_reg_n_0_[0]\,
      I3 => s_axi_lite_wstrb(1),
      I4 => spi_mmio_en,
      I5 => spi_lsb_first_reg_n_0,
      O => spi_lsb_first_i_1_n_0
    );
spi_lsb_first_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => spi_lsb_first_i_1_n_0,
      Q => spi_lsb_first_reg_n_0,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_addr_io_mode_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_rd_instr_io_mode,
      D => s_axi_lite_wdata(2),
      Q => spi_mmio_addr_io_mode(0),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_addr_io_mode_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_rd_instr_io_mode,
      D => s_axi_lite_wdata(3),
      Q => spi_mmio_addr_io_mode(1),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_addr_rem[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3B0B3B3BC8F8C8C8"
    )
        port map (
      I0 => p_4_in(8),
      I1 => \s_axi_full_rid[3]_i_1_n_0\,
      I2 => \spi_mmio_fsm_state_reg_n_0_[0]\,
      I3 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I4 => \spi_mmio_addr_rem[0]_i_2_n_0\,
      I5 => \spi_mmio_addr_rem_reg_n_0_[0]\,
      O => \spi_mmio_addr_rem[0]_i_1_n_0\
    );
\spi_mmio_addr_rem[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \spi_mmio_fsm_state_reg_n_0_[3]\,
      I1 => \spi_mmio_fsm_state_reg_n_0_[2]\,
      I2 => spi_rd_req_reg_n_0,
      I3 => spi_sr_out_buf_valid,
      O => \spi_mmio_addr_rem[0]_i_2_n_0\
    );
\spi_mmio_addr_rem[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACFF5C00"
    )
        port map (
      I0 => \spi_mmio_addr_rem_reg_n_0_[0]\,
      I1 => p_4_in(9),
      I2 => \spi_mmio_fsm_state_reg_n_0_[0]\,
      I3 => \spi_mmio_addr_rem[1]_i_2_n_0\,
      I4 => \spi_mmio_addr_rem_reg_n_0_[1]\,
      O => \spi_mmio_addr_rem[1]_i_1_n_0\
    );
\spi_mmio_addr_rem[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAEAAAA"
    )
        port map (
      I0 => \s_axi_full_rid[3]_i_1_n_0\,
      I1 => \spi_mmio_fsm_state_reg_n_0_[0]\,
      I2 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I3 => \spi_mmio_fsm_state_reg_n_0_[3]\,
      I4 => \spi_mmio_fsm_state_reg_n_0_[2]\,
      I5 => \spi_mmio_fsm_state[3]_i_4_n_0\,
      O => \spi_mmio_addr_rem[1]_i_2_n_0\
    );
\spi_mmio_addr_rem_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \spi_mmio_addr_rem[0]_i_1_n_0\,
      Q => \spi_mmio_addr_rem_reg_n_0_[0]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_addr_rem_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \spi_mmio_addr_rem[1]_i_1_n_0\,
      Q => \spi_mmio_addr_rem_reg_n_0_[1]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_addr_size[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => \spi_mmio_rd_instr[7]_i_2_n_0\,
      I1 => spi_mmio_en,
      I2 => s_axi_lite_wstrb(1),
      I3 => s_axi_lite_awaddr(2),
      I4 => \^s_axi_lite_awready\,
      O => spi_mmio_addr_size
    );
\spi_mmio_addr_size_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_addr_size,
      D => s_axi_lite_wdata(8),
      Q => p_4_in(8),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_addr_size_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_addr_size,
      D => s_axi_lite_wdata(9),
      Q => p_4_in(9),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cont_rd_req_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \spi_mmio_cont_rd_req_cnt[31]_i_3_n_0\,
      I1 => \spi_mmio_cont_rd_req_cnt__0\(0),
      O => \spi_mmio_cont_rd_req_cnt[0]_i_1_n_0\
    );
\spi_mmio_cont_rd_req_cnt[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_mmio_cont_rd_req_cnt0(10),
      I1 => \spi_mmio_cont_rd_req_cnt[31]_i_3_n_0\,
      O => \spi_mmio_cont_rd_req_cnt[10]_i_1_n_0\
    );
\spi_mmio_cont_rd_req_cnt[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_mmio_cont_rd_req_cnt0(11),
      I1 => \spi_mmio_cont_rd_req_cnt[31]_i_3_n_0\,
      O => \spi_mmio_cont_rd_req_cnt[11]_i_1_n_0\
    );
\spi_mmio_cont_rd_req_cnt[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_mmio_cont_rd_req_cnt0(12),
      I1 => \spi_mmio_cont_rd_req_cnt[31]_i_3_n_0\,
      O => \spi_mmio_cont_rd_req_cnt[12]_i_1_n_0\
    );
\spi_mmio_cont_rd_req_cnt[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_mmio_cont_rd_req_cnt0(13),
      I1 => \spi_mmio_cont_rd_req_cnt[31]_i_3_n_0\,
      O => \spi_mmio_cont_rd_req_cnt[13]_i_1_n_0\
    );
\spi_mmio_cont_rd_req_cnt[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_mmio_cont_rd_req_cnt0(14),
      I1 => \spi_mmio_cont_rd_req_cnt[31]_i_3_n_0\,
      O => \spi_mmio_cont_rd_req_cnt[14]_i_1_n_0\
    );
\spi_mmio_cont_rd_req_cnt[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_mmio_cont_rd_req_cnt0(15),
      I1 => \spi_mmio_cont_rd_req_cnt[31]_i_3_n_0\,
      O => \spi_mmio_cont_rd_req_cnt[15]_i_1_n_0\
    );
\spi_mmio_cont_rd_req_cnt[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_mmio_cont_rd_req_cnt0(16),
      I1 => \spi_mmio_cont_rd_req_cnt[31]_i_3_n_0\,
      O => \spi_mmio_cont_rd_req_cnt[16]_i_1_n_0\
    );
\spi_mmio_cont_rd_req_cnt[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_mmio_cont_rd_req_cnt0(17),
      I1 => \spi_mmio_cont_rd_req_cnt[31]_i_3_n_0\,
      O => \spi_mmio_cont_rd_req_cnt[17]_i_1_n_0\
    );
\spi_mmio_cont_rd_req_cnt[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_mmio_cont_rd_req_cnt0(18),
      I1 => \spi_mmio_cont_rd_req_cnt[31]_i_3_n_0\,
      O => \spi_mmio_cont_rd_req_cnt[18]_i_1_n_0\
    );
\spi_mmio_cont_rd_req_cnt[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_mmio_cont_rd_req_cnt0(19),
      I1 => \spi_mmio_cont_rd_req_cnt[31]_i_3_n_0\,
      O => \spi_mmio_cont_rd_req_cnt[19]_i_1_n_0\
    );
\spi_mmio_cont_rd_req_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_mmio_cont_rd_req_cnt0(1),
      I1 => \spi_mmio_cont_rd_req_cnt[31]_i_3_n_0\,
      O => \spi_mmio_cont_rd_req_cnt[1]_i_1_n_0\
    );
\spi_mmio_cont_rd_req_cnt[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_mmio_cont_rd_req_cnt0(20),
      I1 => \spi_mmio_cont_rd_req_cnt[31]_i_3_n_0\,
      O => \spi_mmio_cont_rd_req_cnt[20]_i_1_n_0\
    );
\spi_mmio_cont_rd_req_cnt[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_mmio_cont_rd_req_cnt0(21),
      I1 => \spi_mmio_cont_rd_req_cnt[31]_i_3_n_0\,
      O => \spi_mmio_cont_rd_req_cnt[21]_i_1_n_0\
    );
\spi_mmio_cont_rd_req_cnt[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_mmio_cont_rd_req_cnt0(22),
      I1 => \spi_mmio_cont_rd_req_cnt[31]_i_3_n_0\,
      O => \spi_mmio_cont_rd_req_cnt[22]_i_1_n_0\
    );
\spi_mmio_cont_rd_req_cnt[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_mmio_cont_rd_req_cnt0(23),
      I1 => \spi_mmio_cont_rd_req_cnt[31]_i_3_n_0\,
      O => \spi_mmio_cont_rd_req_cnt[23]_i_1_n_0\
    );
\spi_mmio_cont_rd_req_cnt[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_mmio_cont_rd_req_cnt0(24),
      I1 => \spi_mmio_cont_rd_req_cnt[31]_i_3_n_0\,
      O => \spi_mmio_cont_rd_req_cnt[24]_i_1_n_0\
    );
\spi_mmio_cont_rd_req_cnt[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_mmio_cont_rd_req_cnt0(25),
      I1 => \spi_mmio_cont_rd_req_cnt[31]_i_3_n_0\,
      O => \spi_mmio_cont_rd_req_cnt[25]_i_1_n_0\
    );
\spi_mmio_cont_rd_req_cnt[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_mmio_cont_rd_req_cnt0(26),
      I1 => \spi_mmio_cont_rd_req_cnt[31]_i_3_n_0\,
      O => \spi_mmio_cont_rd_req_cnt[26]_i_1_n_0\
    );
\spi_mmio_cont_rd_req_cnt[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_mmio_cont_rd_req_cnt0(27),
      I1 => \spi_mmio_cont_rd_req_cnt[31]_i_3_n_0\,
      O => \spi_mmio_cont_rd_req_cnt[27]_i_1_n_0\
    );
\spi_mmio_cont_rd_req_cnt[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_mmio_cont_rd_req_cnt0(28),
      I1 => \spi_mmio_cont_rd_req_cnt[31]_i_3_n_0\,
      O => \spi_mmio_cont_rd_req_cnt[28]_i_1_n_0\
    );
\spi_mmio_cont_rd_req_cnt[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_mmio_cont_rd_req_cnt0(29),
      I1 => \spi_mmio_cont_rd_req_cnt[31]_i_3_n_0\,
      O => \spi_mmio_cont_rd_req_cnt[29]_i_1_n_0\
    );
\spi_mmio_cont_rd_req_cnt[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_mmio_cont_rd_req_cnt0(2),
      I1 => \spi_mmio_cont_rd_req_cnt[31]_i_3_n_0\,
      O => \spi_mmio_cont_rd_req_cnt[2]_i_1_n_0\
    );
\spi_mmio_cont_rd_req_cnt[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_mmio_cont_rd_req_cnt0(30),
      I1 => \spi_mmio_cont_rd_req_cnt[31]_i_3_n_0\,
      O => \spi_mmio_cont_rd_req_cnt[30]_i_1_n_0\
    );
\spi_mmio_cont_rd_req_cnt[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF40000000"
    )
        port map (
      I0 => \^s_axi_lite_rvalid_reg_0\,
      I1 => s_axi_lite_arvalid,
      I2 => s_axi_lite_araddr(3),
      I3 => s_axi_lite_araddr(2),
      I4 => \s_axi_lite_rdata[31]_i_5_n_0\,
      I5 => \spi_mmio_cont_rd_req_cnt[31]_i_3_n_0\,
      O => \spi_mmio_cont_rd_req_cnt[31]_i_1_n_0\
    );
\spi_mmio_cont_rd_req_cnt[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_mmio_cont_rd_req_cnt0(31),
      I1 => \spi_mmio_cont_rd_req_cnt[31]_i_3_n_0\,
      O => \spi_mmio_cont_rd_req_cnt[31]_i_2_n_0\
    );
\spi_mmio_cont_rd_req_cnt[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0888"
    )
        port map (
      I0 => \spi_mmio_rd_req_cnt[31]_i_3_n_0\,
      I1 => \spi_mmio_fsm_state_next_reg[3]_i_5_n_0\,
      I2 => \spi_mmio_cs_mask_reg_n_0_[0]\,
      I3 => \^spi_ss_o_reg[0]_0\,
      O => \spi_mmio_cont_rd_req_cnt[31]_i_3_n_0\
    );
\spi_mmio_cont_rd_req_cnt[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_mmio_cont_rd_req_cnt0(3),
      I1 => \spi_mmio_cont_rd_req_cnt[31]_i_3_n_0\,
      O => \spi_mmio_cont_rd_req_cnt[3]_i_1_n_0\
    );
\spi_mmio_cont_rd_req_cnt[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_mmio_cont_rd_req_cnt0(4),
      I1 => \spi_mmio_cont_rd_req_cnt[31]_i_3_n_0\,
      O => \spi_mmio_cont_rd_req_cnt[4]_i_1_n_0\
    );
\spi_mmio_cont_rd_req_cnt[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_mmio_cont_rd_req_cnt0(5),
      I1 => \spi_mmio_cont_rd_req_cnt[31]_i_3_n_0\,
      O => \spi_mmio_cont_rd_req_cnt[5]_i_1_n_0\
    );
\spi_mmio_cont_rd_req_cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_mmio_cont_rd_req_cnt0(6),
      I1 => \spi_mmio_cont_rd_req_cnt[31]_i_3_n_0\,
      O => \spi_mmio_cont_rd_req_cnt[6]_i_1_n_0\
    );
\spi_mmio_cont_rd_req_cnt[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_mmio_cont_rd_req_cnt0(7),
      I1 => \spi_mmio_cont_rd_req_cnt[31]_i_3_n_0\,
      O => \spi_mmio_cont_rd_req_cnt[7]_i_1_n_0\
    );
\spi_mmio_cont_rd_req_cnt[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_mmio_cont_rd_req_cnt0(8),
      I1 => \spi_mmio_cont_rd_req_cnt[31]_i_3_n_0\,
      O => \spi_mmio_cont_rd_req_cnt[8]_i_1_n_0\
    );
\spi_mmio_cont_rd_req_cnt[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_mmio_cont_rd_req_cnt0(9),
      I1 => \spi_mmio_cont_rd_req_cnt[31]_i_3_n_0\,
      O => \spi_mmio_cont_rd_req_cnt[9]_i_1_n_0\
    );
\spi_mmio_cont_rd_req_cnt_buf[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \spi_mmio_cont_rd_req_cnt__0\(0),
      I1 => s_axi_lite_araddr(1),
      O => p_1_in(0)
    );
\spi_mmio_cont_rd_req_cnt_buf[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \spi_mmio_cont_rd_req_cnt__0\(10),
      I1 => s_axi_lite_araddr(1),
      O => p_1_in(10)
    );
\spi_mmio_cont_rd_req_cnt_buf[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \spi_mmio_cont_rd_req_cnt__0\(11),
      I1 => s_axi_lite_araddr(1),
      O => p_1_in(11)
    );
\spi_mmio_cont_rd_req_cnt_buf[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \spi_mmio_cont_rd_req_cnt__0\(12),
      I1 => s_axi_lite_araddr(1),
      O => p_1_in(12)
    );
\spi_mmio_cont_rd_req_cnt_buf[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \spi_mmio_cont_rd_req_cnt__0\(13),
      I1 => s_axi_lite_araddr(1),
      O => p_1_in(13)
    );
\spi_mmio_cont_rd_req_cnt_buf[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \spi_mmio_cont_rd_req_cnt__0\(14),
      I1 => s_axi_lite_araddr(1),
      O => p_1_in(14)
    );
\spi_mmio_cont_rd_req_cnt_buf[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \spi_mmio_cont_rd_req_cnt__0\(15),
      I1 => s_axi_lite_araddr(1),
      O => p_1_in(15)
    );
\spi_mmio_cont_rd_req_cnt_buf[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \spi_mmio_cont_rd_req_cnt__0\(16),
      I1 => s_axi_lite_araddr(1),
      O => p_1_in(16)
    );
\spi_mmio_cont_rd_req_cnt_buf[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \spi_mmio_cont_rd_req_cnt__0\(17),
      I1 => s_axi_lite_araddr(1),
      O => p_1_in(17)
    );
\spi_mmio_cont_rd_req_cnt_buf[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \spi_mmio_cont_rd_req_cnt__0\(18),
      I1 => s_axi_lite_araddr(1),
      O => p_1_in(18)
    );
\spi_mmio_cont_rd_req_cnt_buf[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \spi_mmio_cont_rd_req_cnt__0\(19),
      I1 => s_axi_lite_araddr(1),
      O => p_1_in(19)
    );
\spi_mmio_cont_rd_req_cnt_buf[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \spi_mmio_cont_rd_req_cnt__0\(1),
      I1 => s_axi_lite_araddr(1),
      O => p_1_in(1)
    );
\spi_mmio_cont_rd_req_cnt_buf[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \spi_mmio_cont_rd_req_cnt__0\(20),
      I1 => s_axi_lite_araddr(1),
      O => p_1_in(20)
    );
\spi_mmio_cont_rd_req_cnt_buf[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \spi_mmio_cont_rd_req_cnt__0\(21),
      I1 => s_axi_lite_araddr(1),
      O => p_1_in(21)
    );
\spi_mmio_cont_rd_req_cnt_buf[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \spi_mmio_cont_rd_req_cnt__0\(22),
      I1 => s_axi_lite_araddr(1),
      O => p_1_in(22)
    );
\spi_mmio_cont_rd_req_cnt_buf[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \spi_mmio_cont_rd_req_cnt__0\(23),
      I1 => s_axi_lite_araddr(1),
      O => p_1_in(23)
    );
\spi_mmio_cont_rd_req_cnt_buf[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \spi_mmio_cont_rd_req_cnt__0\(24),
      I1 => s_axi_lite_araddr(1),
      O => p_1_in(24)
    );
\spi_mmio_cont_rd_req_cnt_buf[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \spi_mmio_cont_rd_req_cnt__0\(25),
      I1 => s_axi_lite_araddr(1),
      O => p_1_in(25)
    );
\spi_mmio_cont_rd_req_cnt_buf[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \spi_mmio_cont_rd_req_cnt__0\(26),
      I1 => s_axi_lite_araddr(1),
      O => p_1_in(26)
    );
\spi_mmio_cont_rd_req_cnt_buf[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \spi_mmio_cont_rd_req_cnt__0\(27),
      I1 => s_axi_lite_araddr(1),
      O => p_1_in(27)
    );
\spi_mmio_cont_rd_req_cnt_buf[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \spi_mmio_cont_rd_req_cnt__0\(28),
      I1 => s_axi_lite_araddr(1),
      O => p_1_in(28)
    );
\spi_mmio_cont_rd_req_cnt_buf[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \spi_mmio_cont_rd_req_cnt__0\(29),
      I1 => s_axi_lite_araddr(1),
      O => p_1_in(29)
    );
\spi_mmio_cont_rd_req_cnt_buf[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \spi_mmio_cont_rd_req_cnt__0\(2),
      I1 => s_axi_lite_araddr(1),
      O => p_1_in(2)
    );
\spi_mmio_cont_rd_req_cnt_buf[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \spi_mmio_cont_rd_req_cnt__0\(30),
      I1 => s_axi_lite_araddr(1),
      O => p_1_in(30)
    );
\spi_mmio_cont_rd_req_cnt_buf[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0600000000000000"
    )
        port map (
      I0 => s_axi_lite_araddr(0),
      I1 => s_axi_lite_araddr(1),
      I2 => \^s_axi_lite_rvalid_reg_0\,
      I3 => s_axi_lite_arvalid,
      I4 => s_axi_lite_araddr(3),
      I5 => s_axi_lite_araddr(2),
      O => spi_mmio_cont_rd_req_cnt_buf
    );
\spi_mmio_cont_rd_req_cnt_buf[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \spi_mmio_cont_rd_req_cnt__0\(31),
      I1 => s_axi_lite_araddr(1),
      O => p_1_in(31)
    );
\spi_mmio_cont_rd_req_cnt_buf[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \spi_mmio_cont_rd_req_cnt__0\(3),
      I1 => s_axi_lite_araddr(1),
      O => p_1_in(3)
    );
\spi_mmio_cont_rd_req_cnt_buf[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \spi_mmio_cont_rd_req_cnt__0\(4),
      I1 => s_axi_lite_araddr(1),
      O => p_1_in(4)
    );
\spi_mmio_cont_rd_req_cnt_buf[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \spi_mmio_cont_rd_req_cnt__0\(5),
      I1 => s_axi_lite_araddr(1),
      O => p_1_in(5)
    );
\spi_mmio_cont_rd_req_cnt_buf[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \spi_mmio_cont_rd_req_cnt__0\(6),
      I1 => s_axi_lite_araddr(1),
      O => p_1_in(6)
    );
\spi_mmio_cont_rd_req_cnt_buf[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \spi_mmio_cont_rd_req_cnt__0\(7),
      I1 => s_axi_lite_araddr(1),
      O => p_1_in(7)
    );
\spi_mmio_cont_rd_req_cnt_buf[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \spi_mmio_cont_rd_req_cnt__0\(8),
      I1 => s_axi_lite_araddr(1),
      O => p_1_in(8)
    );
\spi_mmio_cont_rd_req_cnt_buf[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \spi_mmio_cont_rd_req_cnt__0\(9),
      I1 => s_axi_lite_araddr(1),
      O => p_1_in(9)
    );
\spi_mmio_cont_rd_req_cnt_buf_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_cont_rd_req_cnt_buf,
      D => p_1_in(0),
      Q => \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[0]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cont_rd_req_cnt_buf_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_cont_rd_req_cnt_buf,
      D => p_1_in(10),
      Q => \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[10]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cont_rd_req_cnt_buf_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_cont_rd_req_cnt_buf,
      D => p_1_in(11),
      Q => \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[11]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cont_rd_req_cnt_buf_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_cont_rd_req_cnt_buf,
      D => p_1_in(12),
      Q => \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[12]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cont_rd_req_cnt_buf_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_cont_rd_req_cnt_buf,
      D => p_1_in(13),
      Q => \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[13]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cont_rd_req_cnt_buf_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_cont_rd_req_cnt_buf,
      D => p_1_in(14),
      Q => \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[14]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cont_rd_req_cnt_buf_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_cont_rd_req_cnt_buf,
      D => p_1_in(15),
      Q => \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[15]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cont_rd_req_cnt_buf_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_cont_rd_req_cnt_buf,
      D => p_1_in(16),
      Q => \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[16]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cont_rd_req_cnt_buf_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_cont_rd_req_cnt_buf,
      D => p_1_in(17),
      Q => \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[17]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cont_rd_req_cnt_buf_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_cont_rd_req_cnt_buf,
      D => p_1_in(18),
      Q => \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[18]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cont_rd_req_cnt_buf_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_cont_rd_req_cnt_buf,
      D => p_1_in(19),
      Q => \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[19]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cont_rd_req_cnt_buf_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_cont_rd_req_cnt_buf,
      D => p_1_in(1),
      Q => \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[1]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cont_rd_req_cnt_buf_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_cont_rd_req_cnt_buf,
      D => p_1_in(20),
      Q => \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[20]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cont_rd_req_cnt_buf_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_cont_rd_req_cnt_buf,
      D => p_1_in(21),
      Q => \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[21]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cont_rd_req_cnt_buf_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_cont_rd_req_cnt_buf,
      D => p_1_in(22),
      Q => \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[22]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cont_rd_req_cnt_buf_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_cont_rd_req_cnt_buf,
      D => p_1_in(23),
      Q => \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[23]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cont_rd_req_cnt_buf_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_cont_rd_req_cnt_buf,
      D => p_1_in(24),
      Q => \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[24]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cont_rd_req_cnt_buf_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_cont_rd_req_cnt_buf,
      D => p_1_in(25),
      Q => \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[25]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cont_rd_req_cnt_buf_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_cont_rd_req_cnt_buf,
      D => p_1_in(26),
      Q => \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[26]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cont_rd_req_cnt_buf_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_cont_rd_req_cnt_buf,
      D => p_1_in(27),
      Q => \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[27]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cont_rd_req_cnt_buf_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_cont_rd_req_cnt_buf,
      D => p_1_in(28),
      Q => \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[28]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cont_rd_req_cnt_buf_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_cont_rd_req_cnt_buf,
      D => p_1_in(29),
      Q => \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[29]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cont_rd_req_cnt_buf_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_cont_rd_req_cnt_buf,
      D => p_1_in(2),
      Q => \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[2]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cont_rd_req_cnt_buf_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_cont_rd_req_cnt_buf,
      D => p_1_in(30),
      Q => \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[30]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cont_rd_req_cnt_buf_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_cont_rd_req_cnt_buf,
      D => p_1_in(31),
      Q => \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[31]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cont_rd_req_cnt_buf_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_cont_rd_req_cnt_buf,
      D => p_1_in(3),
      Q => \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[3]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cont_rd_req_cnt_buf_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_cont_rd_req_cnt_buf,
      D => p_1_in(4),
      Q => \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[4]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cont_rd_req_cnt_buf_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_cont_rd_req_cnt_buf,
      D => p_1_in(5),
      Q => \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[5]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cont_rd_req_cnt_buf_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_cont_rd_req_cnt_buf,
      D => p_1_in(6),
      Q => \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[6]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cont_rd_req_cnt_buf_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_cont_rd_req_cnt_buf,
      D => p_1_in(7),
      Q => \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[7]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cont_rd_req_cnt_buf_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_cont_rd_req_cnt_buf,
      D => p_1_in(8),
      Q => \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[8]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cont_rd_req_cnt_buf_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_cont_rd_req_cnt_buf,
      D => p_1_in(9),
      Q => \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[9]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cont_rd_req_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_mmio_cont_rd_req_cnt[31]_i_1_n_0\,
      D => \spi_mmio_cont_rd_req_cnt[0]_i_1_n_0\,
      Q => \spi_mmio_cont_rd_req_cnt__0\(0),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cont_rd_req_cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_mmio_cont_rd_req_cnt[31]_i_1_n_0\,
      D => \spi_mmio_cont_rd_req_cnt[10]_i_1_n_0\,
      Q => \spi_mmio_cont_rd_req_cnt__0\(10),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cont_rd_req_cnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_mmio_cont_rd_req_cnt[31]_i_1_n_0\,
      D => \spi_mmio_cont_rd_req_cnt[11]_i_1_n_0\,
      Q => \spi_mmio_cont_rd_req_cnt__0\(11),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cont_rd_req_cnt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_mmio_cont_rd_req_cnt[31]_i_1_n_0\,
      D => \spi_mmio_cont_rd_req_cnt[12]_i_1_n_0\,
      Q => \spi_mmio_cont_rd_req_cnt__0\(12),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cont_rd_req_cnt_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \spi_mmio_cont_rd_req_cnt_reg[8]_i_2_n_0\,
      CO(3) => \spi_mmio_cont_rd_req_cnt_reg[12]_i_2_n_0\,
      CO(2) => \spi_mmio_cont_rd_req_cnt_reg[12]_i_2_n_1\,
      CO(1) => \spi_mmio_cont_rd_req_cnt_reg[12]_i_2_n_2\,
      CO(0) => \spi_mmio_cont_rd_req_cnt_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => spi_mmio_cont_rd_req_cnt0(12 downto 9),
      S(3 downto 0) => \spi_mmio_cont_rd_req_cnt__0\(12 downto 9)
    );
\spi_mmio_cont_rd_req_cnt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_mmio_cont_rd_req_cnt[31]_i_1_n_0\,
      D => \spi_mmio_cont_rd_req_cnt[13]_i_1_n_0\,
      Q => \spi_mmio_cont_rd_req_cnt__0\(13),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cont_rd_req_cnt_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_mmio_cont_rd_req_cnt[31]_i_1_n_0\,
      D => \spi_mmio_cont_rd_req_cnt[14]_i_1_n_0\,
      Q => \spi_mmio_cont_rd_req_cnt__0\(14),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cont_rd_req_cnt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_mmio_cont_rd_req_cnt[31]_i_1_n_0\,
      D => \spi_mmio_cont_rd_req_cnt[15]_i_1_n_0\,
      Q => \spi_mmio_cont_rd_req_cnt__0\(15),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cont_rd_req_cnt_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_mmio_cont_rd_req_cnt[31]_i_1_n_0\,
      D => \spi_mmio_cont_rd_req_cnt[16]_i_1_n_0\,
      Q => \spi_mmio_cont_rd_req_cnt__0\(16),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cont_rd_req_cnt_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \spi_mmio_cont_rd_req_cnt_reg[12]_i_2_n_0\,
      CO(3) => \spi_mmio_cont_rd_req_cnt_reg[16]_i_2_n_0\,
      CO(2) => \spi_mmio_cont_rd_req_cnt_reg[16]_i_2_n_1\,
      CO(1) => \spi_mmio_cont_rd_req_cnt_reg[16]_i_2_n_2\,
      CO(0) => \spi_mmio_cont_rd_req_cnt_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => spi_mmio_cont_rd_req_cnt0(16 downto 13),
      S(3 downto 0) => \spi_mmio_cont_rd_req_cnt__0\(16 downto 13)
    );
\spi_mmio_cont_rd_req_cnt_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_mmio_cont_rd_req_cnt[31]_i_1_n_0\,
      D => \spi_mmio_cont_rd_req_cnt[17]_i_1_n_0\,
      Q => \spi_mmio_cont_rd_req_cnt__0\(17),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cont_rd_req_cnt_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_mmio_cont_rd_req_cnt[31]_i_1_n_0\,
      D => \spi_mmio_cont_rd_req_cnt[18]_i_1_n_0\,
      Q => \spi_mmio_cont_rd_req_cnt__0\(18),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cont_rd_req_cnt_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_mmio_cont_rd_req_cnt[31]_i_1_n_0\,
      D => \spi_mmio_cont_rd_req_cnt[19]_i_1_n_0\,
      Q => \spi_mmio_cont_rd_req_cnt__0\(19),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cont_rd_req_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_mmio_cont_rd_req_cnt[31]_i_1_n_0\,
      D => \spi_mmio_cont_rd_req_cnt[1]_i_1_n_0\,
      Q => \spi_mmio_cont_rd_req_cnt__0\(1),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cont_rd_req_cnt_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_mmio_cont_rd_req_cnt[31]_i_1_n_0\,
      D => \spi_mmio_cont_rd_req_cnt[20]_i_1_n_0\,
      Q => \spi_mmio_cont_rd_req_cnt__0\(20),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cont_rd_req_cnt_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \spi_mmio_cont_rd_req_cnt_reg[16]_i_2_n_0\,
      CO(3) => \spi_mmio_cont_rd_req_cnt_reg[20]_i_2_n_0\,
      CO(2) => \spi_mmio_cont_rd_req_cnt_reg[20]_i_2_n_1\,
      CO(1) => \spi_mmio_cont_rd_req_cnt_reg[20]_i_2_n_2\,
      CO(0) => \spi_mmio_cont_rd_req_cnt_reg[20]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => spi_mmio_cont_rd_req_cnt0(20 downto 17),
      S(3 downto 0) => \spi_mmio_cont_rd_req_cnt__0\(20 downto 17)
    );
\spi_mmio_cont_rd_req_cnt_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_mmio_cont_rd_req_cnt[31]_i_1_n_0\,
      D => \spi_mmio_cont_rd_req_cnt[21]_i_1_n_0\,
      Q => \spi_mmio_cont_rd_req_cnt__0\(21),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cont_rd_req_cnt_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_mmio_cont_rd_req_cnt[31]_i_1_n_0\,
      D => \spi_mmio_cont_rd_req_cnt[22]_i_1_n_0\,
      Q => \spi_mmio_cont_rd_req_cnt__0\(22),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cont_rd_req_cnt_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_mmio_cont_rd_req_cnt[31]_i_1_n_0\,
      D => \spi_mmio_cont_rd_req_cnt[23]_i_1_n_0\,
      Q => \spi_mmio_cont_rd_req_cnt__0\(23),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cont_rd_req_cnt_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_mmio_cont_rd_req_cnt[31]_i_1_n_0\,
      D => \spi_mmio_cont_rd_req_cnt[24]_i_1_n_0\,
      Q => \spi_mmio_cont_rd_req_cnt__0\(24),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cont_rd_req_cnt_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \spi_mmio_cont_rd_req_cnt_reg[20]_i_2_n_0\,
      CO(3) => \spi_mmio_cont_rd_req_cnt_reg[24]_i_2_n_0\,
      CO(2) => \spi_mmio_cont_rd_req_cnt_reg[24]_i_2_n_1\,
      CO(1) => \spi_mmio_cont_rd_req_cnt_reg[24]_i_2_n_2\,
      CO(0) => \spi_mmio_cont_rd_req_cnt_reg[24]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => spi_mmio_cont_rd_req_cnt0(24 downto 21),
      S(3 downto 0) => \spi_mmio_cont_rd_req_cnt__0\(24 downto 21)
    );
\spi_mmio_cont_rd_req_cnt_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_mmio_cont_rd_req_cnt[31]_i_1_n_0\,
      D => \spi_mmio_cont_rd_req_cnt[25]_i_1_n_0\,
      Q => \spi_mmio_cont_rd_req_cnt__0\(25),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cont_rd_req_cnt_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_mmio_cont_rd_req_cnt[31]_i_1_n_0\,
      D => \spi_mmio_cont_rd_req_cnt[26]_i_1_n_0\,
      Q => \spi_mmio_cont_rd_req_cnt__0\(26),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cont_rd_req_cnt_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_mmio_cont_rd_req_cnt[31]_i_1_n_0\,
      D => \spi_mmio_cont_rd_req_cnt[27]_i_1_n_0\,
      Q => \spi_mmio_cont_rd_req_cnt__0\(27),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cont_rd_req_cnt_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_mmio_cont_rd_req_cnt[31]_i_1_n_0\,
      D => \spi_mmio_cont_rd_req_cnt[28]_i_1_n_0\,
      Q => \spi_mmio_cont_rd_req_cnt__0\(28),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cont_rd_req_cnt_reg[28]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \spi_mmio_cont_rd_req_cnt_reg[24]_i_2_n_0\,
      CO(3) => \spi_mmio_cont_rd_req_cnt_reg[28]_i_2_n_0\,
      CO(2) => \spi_mmio_cont_rd_req_cnt_reg[28]_i_2_n_1\,
      CO(1) => \spi_mmio_cont_rd_req_cnt_reg[28]_i_2_n_2\,
      CO(0) => \spi_mmio_cont_rd_req_cnt_reg[28]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => spi_mmio_cont_rd_req_cnt0(28 downto 25),
      S(3 downto 0) => \spi_mmio_cont_rd_req_cnt__0\(28 downto 25)
    );
\spi_mmio_cont_rd_req_cnt_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_mmio_cont_rd_req_cnt[31]_i_1_n_0\,
      D => \spi_mmio_cont_rd_req_cnt[29]_i_1_n_0\,
      Q => \spi_mmio_cont_rd_req_cnt__0\(29),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cont_rd_req_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_mmio_cont_rd_req_cnt[31]_i_1_n_0\,
      D => \spi_mmio_cont_rd_req_cnt[2]_i_1_n_0\,
      Q => \spi_mmio_cont_rd_req_cnt__0\(2),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cont_rd_req_cnt_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_mmio_cont_rd_req_cnt[31]_i_1_n_0\,
      D => \spi_mmio_cont_rd_req_cnt[30]_i_1_n_0\,
      Q => \spi_mmio_cont_rd_req_cnt__0\(30),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cont_rd_req_cnt_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_mmio_cont_rd_req_cnt[31]_i_1_n_0\,
      D => \spi_mmio_cont_rd_req_cnt[31]_i_2_n_0\,
      Q => \spi_mmio_cont_rd_req_cnt__0\(31),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cont_rd_req_cnt_reg[31]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \spi_mmio_cont_rd_req_cnt_reg[28]_i_2_n_0\,
      CO(3 downto 2) => \NLW_spi_mmio_cont_rd_req_cnt_reg[31]_i_4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \spi_mmio_cont_rd_req_cnt_reg[31]_i_4_n_2\,
      CO(0) => \spi_mmio_cont_rd_req_cnt_reg[31]_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_spi_mmio_cont_rd_req_cnt_reg[31]_i_4_O_UNCONNECTED\(3),
      O(2 downto 0) => spi_mmio_cont_rd_req_cnt0(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => \spi_mmio_cont_rd_req_cnt__0\(31 downto 29)
    );
\spi_mmio_cont_rd_req_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_mmio_cont_rd_req_cnt[31]_i_1_n_0\,
      D => \spi_mmio_cont_rd_req_cnt[3]_i_1_n_0\,
      Q => \spi_mmio_cont_rd_req_cnt__0\(3),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cont_rd_req_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_mmio_cont_rd_req_cnt[31]_i_1_n_0\,
      D => \spi_mmio_cont_rd_req_cnt[4]_i_1_n_0\,
      Q => \spi_mmio_cont_rd_req_cnt__0\(4),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cont_rd_req_cnt_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \spi_mmio_cont_rd_req_cnt_reg[4]_i_2_n_0\,
      CO(2) => \spi_mmio_cont_rd_req_cnt_reg[4]_i_2_n_1\,
      CO(1) => \spi_mmio_cont_rd_req_cnt_reg[4]_i_2_n_2\,
      CO(0) => \spi_mmio_cont_rd_req_cnt_reg[4]_i_2_n_3\,
      CYINIT => \spi_mmio_cont_rd_req_cnt__0\(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => spi_mmio_cont_rd_req_cnt0(4 downto 1),
      S(3 downto 0) => \spi_mmio_cont_rd_req_cnt__0\(4 downto 1)
    );
\spi_mmio_cont_rd_req_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_mmio_cont_rd_req_cnt[31]_i_1_n_0\,
      D => \spi_mmio_cont_rd_req_cnt[5]_i_1_n_0\,
      Q => \spi_mmio_cont_rd_req_cnt__0\(5),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cont_rd_req_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_mmio_cont_rd_req_cnt[31]_i_1_n_0\,
      D => \spi_mmio_cont_rd_req_cnt[6]_i_1_n_0\,
      Q => \spi_mmio_cont_rd_req_cnt__0\(6),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cont_rd_req_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_mmio_cont_rd_req_cnt[31]_i_1_n_0\,
      D => \spi_mmio_cont_rd_req_cnt[7]_i_1_n_0\,
      Q => \spi_mmio_cont_rd_req_cnt__0\(7),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cont_rd_req_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_mmio_cont_rd_req_cnt[31]_i_1_n_0\,
      D => \spi_mmio_cont_rd_req_cnt[8]_i_1_n_0\,
      Q => \spi_mmio_cont_rd_req_cnt__0\(8),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cont_rd_req_cnt_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \spi_mmio_cont_rd_req_cnt_reg[4]_i_2_n_0\,
      CO(3) => \spi_mmio_cont_rd_req_cnt_reg[8]_i_2_n_0\,
      CO(2) => \spi_mmio_cont_rd_req_cnt_reg[8]_i_2_n_1\,
      CO(1) => \spi_mmio_cont_rd_req_cnt_reg[8]_i_2_n_2\,
      CO(0) => \spi_mmio_cont_rd_req_cnt_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => spi_mmio_cont_rd_req_cnt0(8 downto 5),
      S(3 downto 0) => \spi_mmio_cont_rd_req_cnt__0\(8 downto 5)
    );
\spi_mmio_cont_rd_req_cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_mmio_cont_rd_req_cnt[31]_i_1_n_0\,
      D => \spi_mmio_cont_rd_req_cnt[9]_i_1_n_0\,
      Q => \spi_mmio_cont_rd_req_cnt__0\(9),
      R => s_axi_lite_awready_i_1_n_0
    );
spi_mmio_cont_read_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => s_axi_lite_wdata(21),
      I1 => s_axi_lite_awaddr(1),
      I2 => s_axi_lite_awaddr(0),
      I3 => s_axi_lite_awaddr(3),
      I4 => spi_mmio_mode_bits_en_i_2_n_0,
      I5 => p_4_in(25),
      O => spi_mmio_cont_read_en_i_1_n_0
    );
spi_mmio_cont_read_en_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => spi_mmio_cont_read_en_i_1_n_0,
      Q => p_4_in(25),
      R => s_axi_lite_awready_i_1_n_0
    );
spi_mmio_cont_read_ready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888FFFF88880000"
    )
        port map (
      I0 => p_4_in(25),
      I1 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I2 => spi_en_reg_n_0,
      I3 => spi_mmio_en_req_reg_n_0,
      I4 => spi_mmio_cont_read_ready_i_2_n_0,
      I5 => p_4_in(26),
      O => spi_mmio_cont_read_ready_i_1_n_0
    );
spi_mmio_cont_read_ready_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000100011001"
    )
        port map (
      I0 => \spi_mmio_fsm_state_reg_n_0_[0]\,
      I1 => \spi_mmio_fsm_state_reg_n_0_[3]\,
      I2 => \spi_mmio_fsm_state_reg_n_0_[2]\,
      I3 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I4 => spi_sr_out_buf_valid,
      I5 => spi_rd_req_reg_n_0,
      O => spi_mmio_cont_read_ready_i_2_n_0
    );
spi_mmio_cont_read_ready_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => spi_mmio_cont_read_ready_i_1_n_0,
      Q => p_4_in(26),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cs_high_wait[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => s_axi_lite_awaddr(0),
      I1 => s_axi_lite_awaddr(3),
      I2 => s_axi_lite_awaddr(1),
      I3 => s_axi_lite_wstrb(2),
      I4 => \spi_mmio_cs_high_wait[7]_i_2_n_0\,
      O => spi_mmio_cs_high_wait
    );
\spi_mmio_cs_high_wait[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => spi_mmio_en,
      I1 => \^s_axi_lite_awready\,
      I2 => s_axi_lite_awaddr(2),
      O => \spi_mmio_cs_high_wait[7]_i_2_n_0\
    );
\spi_mmio_cs_high_wait_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_cs_high_wait,
      D => s_axi_lite_wdata(12),
      Q => \spi_mmio_cs_high_wait_reg_n_0_[0]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cs_high_wait_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_cs_high_wait,
      D => s_axi_lite_wdata(13),
      Q => \spi_mmio_cs_high_wait_reg_n_0_[1]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cs_high_wait_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_cs_high_wait,
      D => s_axi_lite_wdata(14),
      Q => \spi_mmio_cs_high_wait_reg_n_0_[2]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cs_high_wait_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_cs_high_wait,
      D => s_axi_lite_wdata(15),
      Q => \spi_mmio_cs_high_wait_reg_n_0_[3]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cs_high_wait_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_cs_high_wait,
      D => s_axi_lite_wdata(16),
      Q => \spi_mmio_cs_high_wait_reg_n_0_[4]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cs_high_wait_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_cs_high_wait,
      D => s_axi_lite_wdata(17),
      Q => \spi_mmio_cs_high_wait_reg_n_0_[5]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cs_high_wait_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_cs_high_wait,
      D => s_axi_lite_wdata(18),
      Q => \spi_mmio_cs_high_wait_reg_n_0_[6]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cs_high_wait_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_cs_high_wait,
      D => s_axi_lite_wdata(19),
      Q => \spi_mmio_cs_high_wait_reg_n_0_[7]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cs_low_wait[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => s_axi_lite_awaddr(0),
      I1 => s_axi_lite_awaddr(3),
      I2 => s_axi_lite_awaddr(1),
      I3 => s_axi_lite_wstrb(3),
      I4 => \spi_mmio_cs_high_wait[7]_i_2_n_0\,
      O => spi_mmio_cs_low_wait
    );
\spi_mmio_cs_low_wait_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_cs_low_wait,
      D => s_axi_lite_wdata(20),
      Q => \spi_mmio_cs_low_wait_reg_n_0_[0]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cs_low_wait_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_cs_low_wait,
      D => s_axi_lite_wdata(21),
      Q => \spi_mmio_cs_low_wait_reg_n_0_[1]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cs_low_wait_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_cs_low_wait,
      D => s_axi_lite_wdata(22),
      Q => \spi_mmio_cs_low_wait_reg_n_0_[2]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cs_low_wait_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_cs_low_wait,
      D => s_axi_lite_wdata(23),
      Q => \spi_mmio_cs_low_wait_reg_n_0_[3]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cs_low_wait_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_cs_low_wait,
      D => s_axi_lite_wdata(24),
      Q => \spi_mmio_cs_low_wait_reg_n_0_[4]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cs_low_wait_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_cs_low_wait,
      D => s_axi_lite_wdata(25),
      Q => \spi_mmio_cs_low_wait_reg_n_0_[5]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cs_low_wait_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_cs_low_wait,
      D => s_axi_lite_wdata(26),
      Q => \spi_mmio_cs_low_wait_reg_n_0_[6]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cs_low_wait_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_cs_low_wait,
      D => s_axi_lite_wdata(27),
      Q => \spi_mmio_cs_low_wait_reg_n_0_[7]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cs_mask[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => s_axi_lite_wdata(0),
      I1 => \spi_mmio_cs_mask[0]_i_2_n_0\,
      I2 => \spi_mmio_cs_mask[0]_i_3_n_0\,
      I3 => s_axi_lite_awaddr(0),
      I4 => s_axi_lite_awaddr(3),
      I5 => \spi_mmio_cs_mask_reg_n_0_[0]\,
      O => \spi_mmio_cs_mask[0]_i_1_n_0\
    );
\spi_mmio_cs_mask[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \^s_axi_lite_awready\,
      I1 => s_axi_lite_awaddr(1),
      I2 => s_axi_lite_awaddr(2),
      O => \spi_mmio_cs_mask[0]_i_2_n_0\
    );
\spi_mmio_cs_mask[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_lite_wstrb(0),
      I1 => spi_mmio_en,
      O => \spi_mmio_cs_mask[0]_i_3_n_0\
    );
\spi_mmio_cs_mask_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \spi_mmio_cs_mask[0]_i_1_n_0\,
      Q => \spi_mmio_cs_mask_reg_n_0_[0]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cs_wait_rem[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"111BBB1B"
    )
        port map (
      I0 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I1 => \spi_mmio_cs_high_wait_reg_n_0_[0]\,
      I2 => data10(0),
      I3 => \spi_mmio_fsm_state_reg_n_0_[0]\,
      I4 => \spi_mmio_cs_low_wait_reg_n_0_[0]\,
      O => spi_mmio_cs_wait_rem1_in(0)
    );
\spi_mmio_cs_wait_rem[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE222E2111DDD1D"
    )
        port map (
      I0 => \spi_mmio_cs_high_wait_reg_n_0_[1]\,
      I1 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I2 => data10(1),
      I3 => \spi_mmio_fsm_state_reg_n_0_[0]\,
      I4 => \spi_mmio_cs_low_wait_reg_n_0_[1]\,
      I5 => \spi_mmio_cs_wait_rem[1]_i_2_n_0\,
      O => \spi_mmio_cs_wait_rem[1]_i_1_n_0\
    );
\spi_mmio_cs_wait_rem[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8FF00"
    )
        port map (
      I0 => \spi_mmio_cs_low_wait_reg_n_0_[0]\,
      I1 => \spi_mmio_fsm_state_reg_n_0_[0]\,
      I2 => data10(0),
      I3 => \spi_mmio_cs_high_wait_reg_n_0_[0]\,
      I4 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      O => \spi_mmio_cs_wait_rem[1]_i_2_n_0\
    );
\spi_mmio_cs_wait_rem[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"111DDD1DEEE222E2"
    )
        port map (
      I0 => \spi_mmio_cs_high_wait_reg_n_0_[2]\,
      I1 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I2 => data10(2),
      I3 => \spi_mmio_fsm_state_reg_n_0_[0]\,
      I4 => \spi_mmio_cs_low_wait_reg_n_0_[2]\,
      I5 => \spi_mmio_cs_wait_rem[2]_i_2_n_0\,
      O => spi_mmio_cs_wait_rem1_in(2)
    );
\spi_mmio_cs_wait_rem[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000111DDD1D"
    )
        port map (
      I0 => \spi_mmio_cs_high_wait_reg_n_0_[1]\,
      I1 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I2 => data10(1),
      I3 => \spi_mmio_fsm_state_reg_n_0_[0]\,
      I4 => \spi_mmio_cs_low_wait_reg_n_0_[1]\,
      I5 => \spi_mmio_cs_wait_rem[1]_i_2_n_0\,
      O => \spi_mmio_cs_wait_rem[2]_i_2_n_0\
    );
\spi_mmio_cs_wait_rem[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"111DDD1DEEE222E2"
    )
        port map (
      I0 => \spi_mmio_cs_high_wait_reg_n_0_[3]\,
      I1 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I2 => data10(3),
      I3 => \spi_mmio_fsm_state_reg_n_0_[0]\,
      I4 => \spi_mmio_cs_low_wait_reg_n_0_[3]\,
      I5 => \spi_mmio_cs_wait_rem[3]_i_2_n_0\,
      O => spi_mmio_cs_wait_rem1_in(3)
    );
\spi_mmio_cs_wait_rem[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"020202A2A2A202A2"
    )
        port map (
      I0 => \spi_mmio_cs_wait_rem[2]_i_2_n_0\,
      I1 => \spi_mmio_cs_high_wait_reg_n_0_[2]\,
      I2 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I3 => data10(2),
      I4 => \spi_mmio_fsm_state_reg_n_0_[0]\,
      I5 => \spi_mmio_cs_low_wait_reg_n_0_[2]\,
      O => \spi_mmio_cs_wait_rem[3]_i_2_n_0\
    );
\spi_mmio_cs_wait_rem[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"111DDD1DEEE222E2"
    )
        port map (
      I0 => \spi_mmio_cs_high_wait_reg_n_0_[4]\,
      I1 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I2 => data10(4),
      I3 => \spi_mmio_fsm_state_reg_n_0_[0]\,
      I4 => \spi_mmio_cs_low_wait_reg_n_0_[4]\,
      I5 => \spi_mmio_cs_wait_rem[4]_i_2_n_0\,
      O => spi_mmio_cs_wait_rem1_in(4)
    );
\spi_mmio_cs_wait_rem[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"020202A2A2A202A2"
    )
        port map (
      I0 => \spi_mmio_cs_wait_rem[3]_i_2_n_0\,
      I1 => \spi_mmio_cs_high_wait_reg_n_0_[3]\,
      I2 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I3 => data10(3),
      I4 => \spi_mmio_fsm_state_reg_n_0_[0]\,
      I5 => \spi_mmio_cs_low_wait_reg_n_0_[3]\,
      O => \spi_mmio_cs_wait_rem[4]_i_2_n_0\
    );
\spi_mmio_cs_wait_rem[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"111DDD1DEEE222E2"
    )
        port map (
      I0 => \spi_mmio_cs_high_wait_reg_n_0_[5]\,
      I1 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I2 => data10(5),
      I3 => \spi_mmio_fsm_state_reg_n_0_[0]\,
      I4 => \spi_mmio_cs_low_wait_reg_n_0_[5]\,
      I5 => \spi_mmio_cs_wait_rem[5]_i_2_n_0\,
      O => spi_mmio_cs_wait_rem1_in(5)
    );
\spi_mmio_cs_wait_rem[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \spi_mmio_cs_wait_rem[7]_i_15_n_0\,
      I1 => \spi_mmio_cs_wait_rem[3]_i_2_n_0\,
      I2 => \spi_mmio_cs_wait_rem[7]_i_14_n_0\,
      O => \spi_mmio_cs_wait_rem[5]_i_2_n_0\
    );
\spi_mmio_cs_wait_rem[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"111DDD1DEEE222E2"
    )
        port map (
      I0 => \spi_mmio_cs_high_wait_reg_n_0_[6]\,
      I1 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I2 => data10(6),
      I3 => \spi_mmio_fsm_state_reg_n_0_[0]\,
      I4 => \spi_mmio_cs_low_wait_reg_n_0_[6]\,
      I5 => \spi_mmio_cs_wait_rem[7]_i_10_n_0\,
      O => spi_mmio_cs_wait_rem1_in(6)
    );
\spi_mmio_cs_wait_rem[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A88AAAA8A888A88"
    )
        port map (
      I0 => \spi_mmio_cs_wait_rem[7]_i_3_n_0\,
      I1 => \spi_mmio_cs_wait_rem[7]_i_4_n_0\,
      I2 => \spi_mmio_cs_wait_rem[7]_i_5_n_0\,
      I3 => \spi_mmio_cs_wait_rem[7]_i_6_n_0\,
      I4 => \spi_mmio_cs_wait_rem[7]_i_7_n_0\,
      I5 => \FSM_onehot_spi_fsm_state_reg_n_0_[0]\,
      O => spi_mmio_cs_wait_rem
    );
\spi_mmio_cs_wait_rem[7]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \spi_mmio_cs_wait_rem[7]_i_14_n_0\,
      I1 => \spi_mmio_cs_wait_rem[3]_i_2_n_0\,
      I2 => \spi_mmio_cs_wait_rem[7]_i_15_n_0\,
      I3 => \spi_mmio_cs_wait_rem[7]_i_16_n_0\,
      O => \spi_mmio_cs_wait_rem[7]_i_10_n_0\
    );
\spi_mmio_cs_wait_rem[7]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \spi_mmio_cs_low_wait_reg_n_0_[1]\,
      I1 => \spi_mmio_cs_low_wait_reg_n_0_[4]\,
      I2 => \spi_mmio_cs_low_wait_reg_n_0_[2]\,
      I3 => \spi_mmio_cs_low_wait_reg_n_0_[5]\,
      I4 => \spi_mmio_cs_wait_rem[7]_i_17_n_0\,
      O => \spi_mmio_cs_wait_rem[7]_i_11_n_0\
    );
\spi_mmio_cs_wait_rem[7]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => data10(1),
      I1 => data10(0),
      I2 => data10(3),
      I3 => data10(2),
      O => \spi_mmio_cs_wait_rem[7]_i_12_n_0\
    );
\spi_mmio_cs_wait_rem[7]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \spi_mmio_cs_high_wait_reg_n_0_[6]\,
      I1 => \spi_mmio_cs_high_wait_reg_n_0_[7]\,
      I2 => \spi_mmio_cs_high_wait_reg_n_0_[4]\,
      I3 => \spi_mmio_cs_high_wait_reg_n_0_[5]\,
      I4 => \spi_mmio_cs_wait_rem[7]_i_18_n_0\,
      O => \spi_mmio_cs_wait_rem[7]_i_13_n_0\
    );
\spi_mmio_cs_wait_rem[7]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \spi_mmio_cs_low_wait_reg_n_0_[4]\,
      I1 => \spi_mmio_fsm_state_reg_n_0_[0]\,
      I2 => data10(4),
      I3 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I4 => \spi_mmio_cs_high_wait_reg_n_0_[4]\,
      O => \spi_mmio_cs_wait_rem[7]_i_14_n_0\
    );
\spi_mmio_cs_wait_rem[7]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \spi_mmio_cs_low_wait_reg_n_0_[3]\,
      I1 => \spi_mmio_fsm_state_reg_n_0_[0]\,
      I2 => data10(3),
      I3 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I4 => \spi_mmio_cs_high_wait_reg_n_0_[3]\,
      O => \spi_mmio_cs_wait_rem[7]_i_15_n_0\
    );
\spi_mmio_cs_wait_rem[7]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \spi_mmio_cs_low_wait_reg_n_0_[5]\,
      I1 => \spi_mmio_fsm_state_reg_n_0_[0]\,
      I2 => data10(5),
      I3 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I4 => \spi_mmio_cs_high_wait_reg_n_0_[5]\,
      O => \spi_mmio_cs_wait_rem[7]_i_16_n_0\
    );
\spi_mmio_cs_wait_rem[7]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \spi_mmio_cs_low_wait_reg_n_0_[3]\,
      I1 => \spi_mmio_cs_low_wait_reg_n_0_[0]\,
      I2 => \spi_mmio_cs_low_wait_reg_n_0_[7]\,
      I3 => \spi_mmio_cs_low_wait_reg_n_0_[6]\,
      O => \spi_mmio_cs_wait_rem[7]_i_17_n_0\
    );
\spi_mmio_cs_wait_rem[7]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \spi_mmio_cs_high_wait_reg_n_0_[1]\,
      I1 => \spi_mmio_cs_high_wait_reg_n_0_[0]\,
      I2 => \spi_mmio_cs_high_wait_reg_n_0_[3]\,
      I3 => \spi_mmio_cs_high_wait_reg_n_0_[2]\,
      O => \spi_mmio_cs_wait_rem[7]_i_18_n_0\
    );
\spi_mmio_cs_wait_rem[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \spi_mmio_cs_wait_rem[7]_i_8_n_0\,
      I1 => \spi_mmio_cs_wait_rem[7]_i_9_n_0\,
      I2 => \spi_mmio_cs_wait_rem[7]_i_10_n_0\,
      O => spi_mmio_cs_wait_rem1_in(7)
    );
\spi_mmio_cs_wait_rem[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \spi_mmio_fsm_state_reg_n_0_[3]\,
      I1 => \spi_mmio_fsm_state_reg_n_0_[2]\,
      O => \spi_mmio_cs_wait_rem[7]_i_3_n_0\
    );
\spi_mmio_cs_wait_rem[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \FSM_onehot_spi_fsm_state_reg_n_0_[0]\,
      I1 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I2 => \spi_mmio_fsm_state_reg_n_0_[0]\,
      I3 => \spi_mmio_cs_wait_rem[7]_i_11_n_0\,
      O => \spi_mmio_cs_wait_rem[7]_i_4_n_0\
    );
\spi_mmio_cs_wait_rem[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => data10(6),
      I1 => data10(7),
      I2 => data10(4),
      I3 => data10(5),
      I4 => \spi_mmio_cs_wait_rem[7]_i_12_n_0\,
      O => \spi_mmio_cs_wait_rem[7]_i_5_n_0\
    );
\spi_mmio_cs_wait_rem[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I1 => \spi_mmio_fsm_state_reg_n_0_[0]\,
      O => \spi_mmio_cs_wait_rem[7]_i_6_n_0\
    );
\spi_mmio_cs_wait_rem[7]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \spi_mmio_cs_wait_rem[7]_i_13_n_0\,
      I1 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I2 => \spi_mmio_fsm_state_reg_n_0_[0]\,
      O => \spi_mmio_cs_wait_rem[7]_i_7_n_0\
    );
\spi_mmio_cs_wait_rem[7]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \spi_mmio_cs_low_wait_reg_n_0_[7]\,
      I1 => \spi_mmio_fsm_state_reg_n_0_[0]\,
      I2 => data10(7),
      I3 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I4 => \spi_mmio_cs_high_wait_reg_n_0_[7]\,
      O => \spi_mmio_cs_wait_rem[7]_i_8_n_0\
    );
\spi_mmio_cs_wait_rem[7]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \spi_mmio_cs_low_wait_reg_n_0_[6]\,
      I1 => \spi_mmio_fsm_state_reg_n_0_[0]\,
      I2 => data10(6),
      I3 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I4 => \spi_mmio_cs_high_wait_reg_n_0_[6]\,
      O => \spi_mmio_cs_wait_rem[7]_i_9_n_0\
    );
\spi_mmio_cs_wait_rem_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_cs_wait_rem,
      D => spi_mmio_cs_wait_rem1_in(0),
      Q => data10(0),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cs_wait_rem_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_cs_wait_rem,
      D => \spi_mmio_cs_wait_rem[1]_i_1_n_0\,
      Q => data10(1),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cs_wait_rem_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_cs_wait_rem,
      D => spi_mmio_cs_wait_rem1_in(2),
      Q => data10(2),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cs_wait_rem_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_cs_wait_rem,
      D => spi_mmio_cs_wait_rem1_in(3),
      Q => data10(3),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cs_wait_rem_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_cs_wait_rem,
      D => spi_mmio_cs_wait_rem1_in(4),
      Q => data10(4),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cs_wait_rem_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_cs_wait_rem,
      D => spi_mmio_cs_wait_rem1_in(5),
      Q => data10(5),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cs_wait_rem_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_cs_wait_rem,
      D => spi_mmio_cs_wait_rem1_in(6),
      Q => data10(6),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_cs_wait_rem_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_cs_wait_rem,
      D => spi_mmio_cs_wait_rem1_in(7),
      Q => data10(7),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_data_io_mode_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_rd_instr_io_mode,
      D => s_axi_lite_wdata(6),
      Q => \spi_mmio_data_io_mode_reg_n_0_[0]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_data_io_mode_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_rd_instr_io_mode,
      D => s_axi_lite_wdata(7),
      Q => \spi_mmio_data_io_mode_reg_n_0_[1]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_dummy_io_mode_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_rd_instr_io_mode,
      D => s_axi_lite_wdata(4),
      Q => spi_mmio_dummy_io_mode(0),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_dummy_io_mode_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_rd_instr_io_mode,
      D => s_axi_lite_wdata(5),
      Q => spi_mmio_dummy_io_mode(1),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_dummy_rem[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4FE0"
    )
        port map (
      I0 => \spi_mmio_fsm_state_reg_n_0_[0]\,
      I1 => p_4_in(12),
      I2 => \spi_mmio_dummy_rem[1]_i_2_n_0\,
      I3 => \spi_mmio_dummy_rem_reg_n_0_[0]\,
      O => \spi_mmio_dummy_rem[0]_i_1_n_0\
    );
\spi_mmio_dummy_rem[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FF7400"
    )
        port map (
      I0 => \spi_mmio_dummy_rem_reg_n_0_[0]\,
      I1 => \spi_mmio_fsm_state_reg_n_0_[0]\,
      I2 => p_4_in(13),
      I3 => \spi_mmio_dummy_rem[1]_i_2_n_0\,
      I4 => \spi_mmio_dummy_rem_reg_n_0_[1]\,
      O => \spi_mmio_dummy_rem[1]_i_1_n_0\
    );
\spi_mmio_dummy_rem[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000080000010801"
    )
        port map (
      I0 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I1 => \spi_mmio_fsm_state_reg_n_0_[0]\,
      I2 => \spi_mmio_fsm_state_reg_n_0_[3]\,
      I3 => \spi_mmio_fsm_state_reg_n_0_[2]\,
      I4 => \spi_mmio_fsm_state[3]_i_4_n_0\,
      I5 => \spi_mmio_dummy_rem[1]_i_3_n_0\,
      O => \spi_mmio_dummy_rem[1]_i_2_n_0\
    );
\spi_mmio_dummy_rem[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => s_axi_full_arvalid,
      I1 => \^s_axi_full_arready_reg_0\,
      O => \spi_mmio_dummy_rem[1]_i_3_n_0\
    );
\spi_mmio_dummy_rem_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \spi_mmio_dummy_rem[0]_i_1_n_0\,
      Q => \spi_mmio_dummy_rem_reg_n_0_[0]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_dummy_rem_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \spi_mmio_dummy_rem[1]_i_1_n_0\,
      Q => \spi_mmio_dummy_rem_reg_n_0_[1]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_dummy_size_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_addr_size,
      D => s_axi_lite_wdata(10),
      Q => p_4_in(12),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_dummy_size_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_addr_size,
      D => s_axi_lite_wdata(11),
      Q => p_4_in(13),
      R => s_axi_lite_awready_i_1_n_0
    );
spi_mmio_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF8F00000080"
    )
        port map (
      I0 => spi_en_reg_n_0,
      I1 => spi_mmio_en_req_reg_n_0,
      I2 => \spi_mmio_fsm_state[3]_i_3_n_0\,
      I3 => \spi_mmio_fsm_state_reg_n_0_[0]\,
      I4 => \spi_mmio_fsm_state_reg_n_0_[3]\,
      I5 => spi_mmio_en,
      O => spi_mmio_en_i_1_n_0
    );
spi_mmio_en_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => spi_mmio_en_i_1_n_0,
      Q => spi_mmio_en,
      R => s_axi_lite_awready_i_1_n_0
    );
spi_mmio_en_req_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_lite_wdata(10),
      I1 => s_axi_lite_wstrb(1),
      I2 => \spi_mode[1]_i_2_n_0\,
      I3 => spi_mmio_en_req_reg_n_0,
      O => spi_mmio_en_req_i_1_n_0
    );
spi_mmio_en_req_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => spi_mmio_en_req_i_1_n_0,
      Q => spi_mmio_en_req_reg_n_0,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_fsm_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF44F4F4F4"
    )
        port map (
      I0 => \spi_mmio_fsm_state[0]_i_2_n_0\,
      I1 => \spi_mmio_cs_wait_rem[7]_i_3_n_0\,
      I2 => \spi_mmio_fsm_state[1]_i_4_n_0\,
      I3 => \spi_mmio_fsm_state_reg_n_0_[0]\,
      I4 => p_4_in(24),
      I5 => \spi_mmio_fsm_state[0]_i_3_n_0\,
      O => \spi_mmio_fsm_state[0]_i_1_n_0\
    );
\spi_mmio_fsm_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000DD0DDD0DDD0D"
    )
        port map (
      I0 => \spi_mmio_fsm_state_next_reg_n_0_[0]\,
      I1 => \spi_mmio_fsm_state[2]_i_3_n_0\,
      I2 => p_4_in(26),
      I3 => \spi_mmio_fsm_state[2]_i_2_n_0\,
      I4 => \spi_mmio_fsm_state[1]_i_3_n_0\,
      I5 => \spi_mmio_fsm_state[3]_i_13_n_0\,
      O => \spi_mmio_fsm_state[0]_i_2_n_0\
    );
\spi_mmio_fsm_state[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002022"
    )
        port map (
      I0 => \spi_mmio_fsm_state_reg_n_0_[3]\,
      I1 => \spi_mmio_fsm_state_reg_n_0_[2]\,
      I2 => \^s_axi_full_rvalid_reg_0\,
      I3 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I4 => \spi_mmio_fsm_state_reg_n_0_[0]\,
      O => \spi_mmio_fsm_state[0]_i_3_n_0\
    );
\spi_mmio_fsm_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAFFEAFFEAFFEAEA"
    )
        port map (
      I0 => \spi_mmio_fsm_state[1]_i_2_n_0\,
      I1 => \s_axi_full_rid[3]_i_1_n_0\,
      I2 => \spi_mmio_fsm_state_next[3]_i_3_n_0\,
      I3 => \spi_mmio_fsm_state[1]_i_3_n_0\,
      I4 => \spi_mmio_fsm_state[1]_i_4_n_0\,
      I5 => \spi_mmio_fsm_state[3]_i_7_n_0\,
      O => \spi_mmio_fsm_state[1]_i_1_n_0\
    );
\spi_mmio_fsm_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0AA00200AAA0A200"
    )
        port map (
      I0 => \spi_mmio_cs_wait_rem[7]_i_3_n_0\,
      I1 => \spi_mmio_cs_wait_rem[7]_i_13_n_0\,
      I2 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I3 => \spi_mmio_fsm_state_reg_n_0_[0]\,
      I4 => \spi_mmio_fsm_state_next_reg_n_0_[1]\,
      I5 => \spi_mmio_cs_wait_rem[7]_i_11_n_0\,
      O => \spi_mmio_fsm_state[1]_i_2_n_0\
    );
\spi_mmio_fsm_state[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I1 => \spi_mmio_fsm_state_reg_n_0_[0]\,
      O => \spi_mmio_fsm_state[1]_i_3_n_0\
    );
\spi_mmio_fsm_state[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000F00EF00"
    )
        port map (
      I0 => \spi_mmio_dummy_rem_reg_n_0_[0]\,
      I1 => \spi_mmio_dummy_rem_reg_n_0_[1]\,
      I2 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I3 => \spi_mmio_fsm_state_reg_n_0_[2]\,
      I4 => \spi_mmio_fsm_state_reg_n_0_[0]\,
      I5 => \spi_mmio_fsm_state_reg_n_0_[3]\,
      O => \spi_mmio_fsm_state[1]_i_4_n_0\
    );
\spi_mmio_fsm_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000075"
    )
        port map (
      I0 => \spi_mmio_fsm_state[2]_i_2_n_0\,
      I1 => \spi_mmio_fsm_state[2]_i_3_n_0\,
      I2 => \spi_mmio_fsm_state_next_reg_n_0_[2]\,
      I3 => \spi_mmio_fsm_state_reg_n_0_[3]\,
      I4 => \spi_mmio_fsm_state_reg_n_0_[2]\,
      I5 => \spi_mmio_fsm_state[2]_i_4_n_0\,
      O => \spi_mmio_fsm_state[2]_i_1_n_0\
    );
\spi_mmio_fsm_state[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \spi_mmio_fsm_state_reg_n_0_[0]\,
      I1 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I2 => \spi_mmio_cs_wait_rem[7]_i_11_n_0\,
      O => \spi_mmio_fsm_state[2]_i_2_n_0\
    );
\spi_mmio_fsm_state[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D3"
    )
        port map (
      I0 => \spi_mmio_cs_wait_rem[7]_i_13_n_0\,
      I1 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I2 => \spi_mmio_fsm_state_reg_n_0_[0]\,
      O => \spi_mmio_fsm_state[2]_i_3_n_0\
    );
\spi_mmio_fsm_state[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF10000000"
    )
        port map (
      I0 => \spi_mmio_fsm_state_reg_n_0_[0]\,
      I1 => \spi_mmio_fsm_state_reg_n_0_[2]\,
      I2 => \spi_mmio_fsm_state_reg_n_0_[3]\,
      I3 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I4 => \^s_axi_full_rvalid_reg_0\,
      I5 => \spi_mmio_fsm_state[1]_i_4_n_0\,
      O => \spi_mmio_fsm_state[2]_i_4_n_0\
    );
\spi_mmio_fsm_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBF000000"
    )
        port map (
      I0 => \spi_mmio_fsm_state_reg_n_0_[0]\,
      I1 => \spi_mmio_fsm_state[3]_i_3_n_0\,
      I2 => \spi_mmio_fsm_state[3]_i_4_n_0\,
      I3 => \spi_mmio_fsm_state_reg_n_0_[3]\,
      I4 => \spi_mmio_fsm_state[3]_i_5_n_0\,
      I5 => \spi_mmio_fsm_state[3]_i_6_n_0\,
      O => spi_mmio_fsm_state
    );
\spi_mmio_fsm_state[3]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0455"
    )
        port map (
      I0 => \^s_axi_full_rvalid_reg_0\,
      I1 => spi_sr_in_buf_valid_reg_n_0,
      I2 => spi_sr_in_buf_ready_reg_n_0,
      I3 => spi_mmio_en,
      O => \spi_mmio_fsm_state[3]_i_10_n_0\
    );
\spi_mmio_fsm_state[3]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8808FFFF"
    )
        port map (
      I0 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I1 => \spi_mmio_fsm_state_reg_n_0_[0]\,
      I2 => \spi_mmio_dummy_rem_reg_n_0_[0]\,
      I3 => \spi_mmio_dummy_rem_reg_n_0_[1]\,
      I4 => \spi_mmio_addr_rem[0]_i_2_n_0\,
      O => \spi_mmio_fsm_state[3]_i_11_n_0\
    );
\spi_mmio_fsm_state[3]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888AA0A8888000A"
    )
        port map (
      I0 => \spi_mmio_cs_wait_rem[7]_i_3_n_0\,
      I1 => \FSM_onehot_spi_fsm_state_reg_n_0_[0]\,
      I2 => s_axi_full_arready_i_2_n_0,
      I3 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I4 => \spi_mmio_fsm_state_reg_n_0_[0]\,
      I5 => \spi_mmio_cs_wait_rem[7]_i_5_n_0\,
      O => \spi_mmio_fsm_state[3]_i_12_n_0\
    );
\spi_mmio_fsm_state[3]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF00FFFF8F8F"
    )
        port map (
      I0 => \^spi_ss_o_reg[0]_0\,
      I1 => \spi_mmio_cs_mask_reg_n_0_[0]\,
      I2 => \spi_mmio_fsm_state_next_reg[3]_i_5_n_0\,
      I3 => spi_mmio_en,
      I4 => \spi_mmio_dummy_rem[1]_i_3_n_0\,
      I5 => \spi_mmio_fsm_state_next[3]_i_6_n_0\,
      O => \spi_mmio_fsm_state[3]_i_13_n_0\
    );
\spi_mmio_fsm_state[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABAA"
    )
        port map (
      I0 => \spi_mmio_fsm_state[3]_i_7_n_0\,
      I1 => \spi_mmio_fsm_state_reg_n_0_[3]\,
      I2 => \spi_mmio_fsm_state[3]_i_8_n_0\,
      I3 => \spi_mmio_fsm_state[3]_i_9_n_0\,
      O => \spi_mmio_fsm_state[3]_i_2_n_0\
    );
\spi_mmio_fsm_state[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I1 => \spi_mmio_fsm_state_reg_n_0_[2]\,
      O => \spi_mmio_fsm_state[3]_i_3_n_0\
    );
\spi_mmio_fsm_state[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => spi_sr_out_buf_valid,
      I1 => spi_rd_req_reg_n_0,
      O => \spi_mmio_fsm_state[3]_i_4_n_0\
    );
\spi_mmio_fsm_state[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF4F"
    )
        port map (
      I0 => s_axi_full_rlast_i_3_n_0,
      I1 => \spi_mmio_fsm_state[3]_i_10_n_0\,
      I2 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I3 => \spi_mmio_fsm_state_reg_n_0_[0]\,
      I4 => \spi_mmio_fsm_state_reg_n_0_[2]\,
      O => \spi_mmio_fsm_state[3]_i_5_n_0\
    );
\spi_mmio_fsm_state[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF44554555"
    )
        port map (
      I0 => \spi_mmio_fsm_state[3]_i_11_n_0\,
      I1 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I2 => \spi_mmio_addr_rem_reg_n_0_[1]\,
      I3 => \spi_mmio_fsm_state_reg_n_0_[0]\,
      I4 => \spi_mmio_addr_rem_reg_n_0_[0]\,
      I5 => \spi_mmio_fsm_state[3]_i_12_n_0\,
      O => \spi_mmio_fsm_state[3]_i_6_n_0\
    );
\spi_mmio_fsm_state[3]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00730000"
    )
        port map (
      I0 => \spi_mmio_fsm_state_reg_n_0_[0]\,
      I1 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I2 => \^s_axi_full_rvalid_reg_0\,
      I3 => \spi_mmio_fsm_state_reg_n_0_[2]\,
      I4 => \spi_mmio_fsm_state_reg_n_0_[3]\,
      O => \spi_mmio_fsm_state[3]_i_7_n_0\
    );
\spi_mmio_fsm_state[3]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4C4C4C0C"
    )
        port map (
      I0 => \spi_mmio_fsm_state_reg_n_0_[0]\,
      I1 => \spi_mmio_fsm_state_reg_n_0_[2]\,
      I2 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I3 => \spi_mmio_dummy_rem_reg_n_0_[1]\,
      I4 => \spi_mmio_dummy_rem_reg_n_0_[0]\,
      O => \spi_mmio_fsm_state[3]_i_8_n_0\
    );
\spi_mmio_fsm_state[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF4444444F"
    )
        port map (
      I0 => \spi_mmio_fsm_state[2]_i_3_n_0\,
      I1 => \spi_mmio_fsm_state_next_reg_n_0_[3]\,
      I2 => \spi_mmio_fsm_state_reg_n_0_[0]\,
      I3 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I4 => \spi_mmio_fsm_state[3]_i_13_n_0\,
      I5 => \spi_mmio_fsm_state_reg_n_0_[2]\,
      O => \spi_mmio_fsm_state[3]_i_9_n_0\
    );
\spi_mmio_fsm_state_next[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF000080008000"
    )
        port map (
      I0 => spi_en_reg_n_0,
      I1 => spi_mmio_en_req_reg_n_0,
      I2 => \^s_axi_full_arready_reg_0\,
      I3 => s_axi_full_arvalid,
      I4 => p_4_in(26),
      I5 => \spi_mmio_fsm_state_reg_n_0_[0]\,
      O => \spi_mmio_fsm_state_next[0]_i_1_n_0\
    );
\spi_mmio_fsm_state_next[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I1 => \^s_axi_full_arready_reg_0\,
      I2 => s_axi_full_arvalid,
      O => \spi_mmio_fsm_state_next[1]_i_1_n_0\
    );
\spi_mmio_fsm_state_next[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10111010"
    )
        port map (
      I0 => \spi_mmio_fsm_state_reg_n_0_[2]\,
      I1 => \spi_mmio_fsm_state_reg_n_0_[3]\,
      I2 => \spi_mmio_cs_wait_rem[7]_i_4_n_0\,
      I3 => \spi_mmio_fsm_state_next[3]_i_3_n_0\,
      I4 => \spi_mmio_fsm_state_next[3]_i_4_n_0\,
      O => \spi_mmio_fsm_state_next[3]_i_1_n_0\
    );
\spi_mmio_fsm_state_next[3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \s_axi_full_araddr_q_reg_n_0_[16]\,
      I1 => s_axi_full_araddr(16),
      I2 => \s_axi_full_araddr_q_reg_n_0_[15]\,
      I3 => s_axi_full_araddr(15),
      I4 => s_axi_full_araddr(17),
      I5 => \s_axi_full_araddr_q_reg_n_0_[17]\,
      O => \spi_mmio_fsm_state_next[3]_i_10_n_0\
    );
\spi_mmio_fsm_state_next[3]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \s_axi_full_araddr_q_reg_n_0_[12]\,
      I1 => s_axi_full_araddr(12),
      I2 => \s_axi_full_araddr_q_reg_n_0_[13]\,
      I3 => s_axi_full_araddr(13),
      I4 => s_axi_full_araddr(14),
      I5 => \s_axi_full_araddr_q_reg_n_0_[14]\,
      O => \spi_mmio_fsm_state_next[3]_i_11_n_0\
    );
\spi_mmio_fsm_state_next[3]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \s_axi_full_araddr_q_reg_n_0_[9]\,
      I1 => s_axi_full_araddr(9),
      I2 => \s_axi_full_araddr_q_reg_n_0_[10]\,
      I3 => s_axi_full_araddr(10),
      I4 => s_axi_full_araddr(11),
      I5 => \s_axi_full_araddr_q_reg_n_0_[11]\,
      O => \spi_mmio_fsm_state_next[3]_i_12_n_0\
    );
\spi_mmio_fsm_state_next[3]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \s_axi_full_araddr_q_reg_n_0_[6]\,
      I1 => s_axi_full_araddr(6),
      I2 => \s_axi_full_araddr_q_reg_n_0_[7]\,
      I3 => s_axi_full_araddr(7),
      I4 => s_axi_full_araddr(8),
      I5 => \s_axi_full_araddr_q_reg_n_0_[8]\,
      O => \spi_mmio_fsm_state_next[3]_i_13_n_0\
    );
\spi_mmio_fsm_state_next[3]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \s_axi_full_araddr_q_reg_n_0_[3]\,
      I1 => s_axi_full_araddr(3),
      I2 => \s_axi_full_araddr_q_reg_n_0_[4]\,
      I3 => s_axi_full_araddr(4),
      I4 => s_axi_full_araddr(5),
      I5 => \s_axi_full_araddr_q_reg_n_0_[5]\,
      O => \spi_mmio_fsm_state_next[3]_i_14_n_0\
    );
\spi_mmio_fsm_state_next[3]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      I1 => s_axi_full_araddr(1),
      I2 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      I3 => s_axi_full_araddr(0),
      I4 => s_axi_full_araddr(2),
      I5 => \s_axi_full_araddr_q_reg_n_0_[2]\,
      O => \spi_mmio_fsm_state_next[3]_i_15_n_0\
    );
\spi_mmio_fsm_state_next[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080808"
    )
        port map (
      I0 => s_axi_full_arvalid,
      I1 => \^s_axi_full_arready_reg_0\,
      I2 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I3 => spi_en_reg_n_0,
      I4 => spi_mmio_en_req_reg_n_0,
      O => \spi_mmio_fsm_state_next[3]_i_2_n_0\
    );
\spi_mmio_fsm_state_next[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFC0555555555555"
    )
        port map (
      I0 => spi_mmio_en,
      I1 => \spi_mmio_cs_mask_reg_n_0_[0]\,
      I2 => \^spi_ss_o_reg[0]_0\,
      I3 => \spi_mmio_fsm_state_next_reg[3]_i_5_n_0\,
      I4 => spi_en_reg_n_0,
      I5 => spi_mmio_en_req_reg_n_0,
      O => \spi_mmio_fsm_state_next[3]_i_3_n_0\
    );
\spi_mmio_fsm_state_next[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111100010001000"
    )
        port map (
      I0 => \spi_mmio_fsm_state_reg_n_0_[0]\,
      I1 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I2 => spi_mmio_en,
      I3 => \spi_mmio_fsm_state_next[3]_i_6_n_0\,
      I4 => s_axi_full_arvalid,
      I5 => \^s_axi_full_arready_reg_0\,
      O => \spi_mmio_fsm_state_next[3]_i_4_n_0\
    );
\spi_mmio_fsm_state_next[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => spi_mmio_en_req_reg_n_0,
      I1 => spi_en_reg_n_0,
      O => \spi_mmio_fsm_state_next[3]_i_6_n_0\
    );
\spi_mmio_fsm_state_next[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \s_axi_full_araddr_q_reg_n_0_[21]\,
      I1 => s_axi_full_araddr(21),
      I2 => \s_axi_full_araddr_q_reg_n_0_[22]\,
      I3 => s_axi_full_araddr(22),
      I4 => s_axi_full_araddr(23),
      I5 => \s_axi_full_araddr_q_reg_n_0_[23]\,
      O => \spi_mmio_fsm_state_next[3]_i_8_n_0\
    );
\spi_mmio_fsm_state_next[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \s_axi_full_araddr_q_reg_n_0_[20]\,
      I1 => s_axi_full_araddr(20),
      I2 => \s_axi_full_araddr_q_reg_n_0_[18]\,
      I3 => s_axi_full_araddr(18),
      I4 => s_axi_full_araddr(19),
      I5 => \s_axi_full_araddr_q_reg_n_0_[19]\,
      O => \spi_mmio_fsm_state_next[3]_i_9_n_0\
    );
\spi_mmio_fsm_state_next_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_mmio_fsm_state_next[3]_i_1_n_0\,
      D => \spi_mmio_fsm_state_next[0]_i_1_n_0\,
      Q => \spi_mmio_fsm_state_next_reg_n_0_[0]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_fsm_state_next_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_mmio_fsm_state_next[3]_i_1_n_0\,
      D => \spi_mmio_fsm_state_next[1]_i_1_n_0\,
      Q => \spi_mmio_fsm_state_next_reg_n_0_[1]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_fsm_state_next_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_mmio_fsm_state_next[3]_i_1_n_0\,
      D => \spi_mmio_fsm_state_reg_n_0_[1]\,
      Q => \spi_mmio_fsm_state_next_reg_n_0_[2]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_fsm_state_next_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_mmio_fsm_state_next[3]_i_1_n_0\,
      D => \spi_mmio_fsm_state_next[3]_i_2_n_0\,
      Q => \spi_mmio_fsm_state_next_reg_n_0_[3]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_fsm_state_next_reg[3]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \spi_mmio_fsm_state_next_reg[3]_i_7_n_0\,
      CO(3) => \spi_mmio_fsm_state_next_reg[3]_i_5_n_0\,
      CO(2) => \spi_mmio_fsm_state_next_reg[3]_i_5_n_1\,
      CO(1) => \spi_mmio_fsm_state_next_reg[3]_i_5_n_2\,
      CO(0) => \spi_mmio_fsm_state_next_reg[3]_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_spi_mmio_fsm_state_next_reg[3]_i_5_O_UNCONNECTED\(3 downto 0),
      S(3) => \spi_mmio_fsm_state_next[3]_i_8_n_0\,
      S(2) => \spi_mmio_fsm_state_next[3]_i_9_n_0\,
      S(1) => \spi_mmio_fsm_state_next[3]_i_10_n_0\,
      S(0) => \spi_mmio_fsm_state_next[3]_i_11_n_0\
    );
\spi_mmio_fsm_state_next_reg[3]_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \spi_mmio_fsm_state_next_reg[3]_i_7_n_0\,
      CO(2) => \spi_mmio_fsm_state_next_reg[3]_i_7_n_1\,
      CO(1) => \spi_mmio_fsm_state_next_reg[3]_i_7_n_2\,
      CO(0) => \spi_mmio_fsm_state_next_reg[3]_i_7_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_spi_mmio_fsm_state_next_reg[3]_i_7_O_UNCONNECTED\(3 downto 0),
      S(3) => \spi_mmio_fsm_state_next[3]_i_12_n_0\,
      S(2) => \spi_mmio_fsm_state_next[3]_i_13_n_0\,
      S(1) => \spi_mmio_fsm_state_next[3]_i_14_n_0\,
      S(0) => \spi_mmio_fsm_state_next[3]_i_15_n_0\
    );
\spi_mmio_fsm_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_fsm_state,
      D => \spi_mmio_fsm_state[0]_i_1_n_0\,
      Q => \spi_mmio_fsm_state_reg_n_0_[0]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_fsm_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_fsm_state,
      D => \spi_mmio_fsm_state[1]_i_1_n_0\,
      Q => \spi_mmio_fsm_state_reg_n_0_[1]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_fsm_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_fsm_state,
      D => \spi_mmio_fsm_state[2]_i_1_n_0\,
      Q => \spi_mmio_fsm_state_reg_n_0_[2]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_fsm_state_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_fsm_state,
      D => \spi_mmio_fsm_state[3]_i_2_n_0\,
      Q => \spi_mmio_fsm_state_reg_n_0_[3]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_mode_bits[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => \spi_mmio_rd_instr[7]_i_2_n_0\,
      I1 => s_axi_lite_wstrb(2),
      I2 => spi_mmio_en,
      I3 => \^s_axi_lite_awready\,
      I4 => s_axi_lite_awaddr(2),
      O => spi_mmio_mode_bits
    );
spi_mmio_mode_bits_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => s_axi_lite_wdata(20),
      I1 => s_axi_lite_awaddr(1),
      I2 => s_axi_lite_awaddr(0),
      I3 => s_axi_lite_awaddr(3),
      I4 => spi_mmio_mode_bits_en_i_2_n_0,
      I5 => p_4_in(24),
      O => spi_mmio_mode_bits_en_i_1_n_0
    );
spi_mmio_mode_bits_en_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBFF"
    )
        port map (
      I0 => s_axi_lite_awaddr(2),
      I1 => \^s_axi_lite_awready\,
      I2 => spi_mmio_en,
      I3 => s_axi_lite_wstrb(3),
      O => spi_mmio_mode_bits_en_i_2_n_0
    );
spi_mmio_mode_bits_en_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => spi_mmio_mode_bits_en_i_1_n_0,
      Q => p_4_in(24),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_mode_bits_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_mode_bits,
      D => s_axi_lite_wdata(12),
      Q => \spi_mmio_mode_bits_reg_n_0_[0]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_mode_bits_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_mode_bits,
      D => s_axi_lite_wdata(13),
      Q => \spi_mmio_mode_bits_reg_n_0_[1]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_mode_bits_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_mode_bits,
      D => s_axi_lite_wdata(14),
      Q => \spi_mmio_mode_bits_reg_n_0_[2]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_mode_bits_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_mode_bits,
      D => s_axi_lite_wdata(15),
      Q => \spi_mmio_mode_bits_reg_n_0_[3]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_mode_bits_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_mode_bits,
      D => s_axi_lite_wdata(16),
      Q => \spi_mmio_mode_bits_reg_n_0_[4]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_mode_bits_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_mode_bits,
      D => s_axi_lite_wdata(17),
      Q => \spi_mmio_mode_bits_reg_n_0_[5]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_mode_bits_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_mode_bits,
      D => s_axi_lite_wdata(18),
      Q => \spi_mmio_mode_bits_reg_n_0_[6]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_mode_bits_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_mode_bits,
      D => s_axi_lite_wdata(19),
      Q => \spi_mmio_mode_bits_reg_n_0_[7]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_rd_instr[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => spi_mmio_en,
      I1 => \^s_axi_lite_awready\,
      I2 => s_axi_lite_awaddr(2),
      I3 => s_axi_lite_wstrb(0),
      I4 => \spi_mmio_rd_instr[7]_i_2_n_0\,
      O => spi_mmio_rd_instr
    );
\spi_mmio_rd_instr[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axi_lite_awaddr(3),
      I1 => s_axi_lite_awaddr(0),
      I2 => s_axi_lite_awaddr(1),
      O => \spi_mmio_rd_instr[7]_i_2_n_0\
    );
\spi_mmio_rd_instr_io_mode[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => s_axi_lite_awaddr(0),
      I1 => s_axi_lite_awaddr(3),
      I2 => s_axi_lite_awaddr(1),
      I3 => \spi_mmio_rd_instr_io_mode[1]_i_2_n_0\,
      O => spi_mmio_rd_instr_io_mode
    );
\spi_mmio_rd_instr_io_mode[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => s_axi_lite_wstrb(0),
      I1 => s_axi_lite_awaddr(2),
      I2 => \^s_axi_lite_awready\,
      I3 => spi_mmio_en,
      O => \spi_mmio_rd_instr_io_mode[1]_i_2_n_0\
    );
\spi_mmio_rd_instr_io_mode_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_rd_instr_io_mode,
      D => s_axi_lite_wdata(0),
      Q => \spi_mmio_rd_instr_io_mode_reg_n_0_[0]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_rd_instr_io_mode_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_rd_instr_io_mode,
      D => s_axi_lite_wdata(1),
      Q => \spi_mmio_rd_instr_io_mode_reg_n_0_[1]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_rd_instr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_rd_instr,
      D => s_axi_lite_wdata(0),
      Q => \spi_mmio_rd_instr_reg_n_0_[0]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_rd_instr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_rd_instr,
      D => s_axi_lite_wdata(1),
      Q => \spi_mmio_rd_instr_reg_n_0_[1]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_rd_instr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_rd_instr,
      D => s_axi_lite_wdata(2),
      Q => \spi_mmio_rd_instr_reg_n_0_[2]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_rd_instr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_rd_instr,
      D => s_axi_lite_wdata(3),
      Q => \spi_mmio_rd_instr_reg_n_0_[3]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_rd_instr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_rd_instr,
      D => s_axi_lite_wdata(4),
      Q => \spi_mmio_rd_instr_reg_n_0_[4]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_rd_instr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_rd_instr,
      D => s_axi_lite_wdata(5),
      Q => \spi_mmio_rd_instr_reg_n_0_[5]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_rd_instr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_rd_instr,
      D => s_axi_lite_wdata(6),
      Q => \spi_mmio_rd_instr_reg_n_0_[6]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_rd_instr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_mmio_rd_instr,
      D => s_axi_lite_wdata(7),
      Q => \spi_mmio_rd_instr_reg_n_0_[7]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_rd_req_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \spi_mmio_rd_req_cnt[31]_i_3_n_0\,
      I1 => \spi_mmio_rd_req_cnt__0\(0),
      O => \spi_mmio_rd_req_cnt[0]_i_1_n_0\
    );
\spi_mmio_rd_req_cnt[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_mmio_rd_req_cnt0(10),
      I1 => \spi_mmio_rd_req_cnt[31]_i_3_n_0\,
      O => \spi_mmio_rd_req_cnt[10]_i_1_n_0\
    );
\spi_mmio_rd_req_cnt[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_mmio_rd_req_cnt0(11),
      I1 => \spi_mmio_rd_req_cnt[31]_i_3_n_0\,
      O => \spi_mmio_rd_req_cnt[11]_i_1_n_0\
    );
\spi_mmio_rd_req_cnt[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_mmio_rd_req_cnt0(12),
      I1 => \spi_mmio_rd_req_cnt[31]_i_3_n_0\,
      O => \spi_mmio_rd_req_cnt[12]_i_1_n_0\
    );
\spi_mmio_rd_req_cnt[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_mmio_rd_req_cnt0(13),
      I1 => \spi_mmio_rd_req_cnt[31]_i_3_n_0\,
      O => \spi_mmio_rd_req_cnt[13]_i_1_n_0\
    );
\spi_mmio_rd_req_cnt[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_mmio_rd_req_cnt0(14),
      I1 => \spi_mmio_rd_req_cnt[31]_i_3_n_0\,
      O => \spi_mmio_rd_req_cnt[14]_i_1_n_0\
    );
\spi_mmio_rd_req_cnt[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_mmio_rd_req_cnt0(15),
      I1 => \spi_mmio_rd_req_cnt[31]_i_3_n_0\,
      O => \spi_mmio_rd_req_cnt[15]_i_1_n_0\
    );
\spi_mmio_rd_req_cnt[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_mmio_rd_req_cnt0(16),
      I1 => \spi_mmio_rd_req_cnt[31]_i_3_n_0\,
      O => \spi_mmio_rd_req_cnt[16]_i_1_n_0\
    );
\spi_mmio_rd_req_cnt[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_mmio_rd_req_cnt0(17),
      I1 => \spi_mmio_rd_req_cnt[31]_i_3_n_0\,
      O => \spi_mmio_rd_req_cnt[17]_i_1_n_0\
    );
\spi_mmio_rd_req_cnt[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_mmio_rd_req_cnt0(18),
      I1 => \spi_mmio_rd_req_cnt[31]_i_3_n_0\,
      O => \spi_mmio_rd_req_cnt[18]_i_1_n_0\
    );
\spi_mmio_rd_req_cnt[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_mmio_rd_req_cnt0(19),
      I1 => \spi_mmio_rd_req_cnt[31]_i_3_n_0\,
      O => \spi_mmio_rd_req_cnt[19]_i_1_n_0\
    );
\spi_mmio_rd_req_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_mmio_rd_req_cnt0(1),
      I1 => \spi_mmio_rd_req_cnt[31]_i_3_n_0\,
      O => \spi_mmio_rd_req_cnt[1]_i_1_n_0\
    );
\spi_mmio_rd_req_cnt[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_mmio_rd_req_cnt0(20),
      I1 => \spi_mmio_rd_req_cnt[31]_i_3_n_0\,
      O => \spi_mmio_rd_req_cnt[20]_i_1_n_0\
    );
\spi_mmio_rd_req_cnt[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_mmio_rd_req_cnt0(21),
      I1 => \spi_mmio_rd_req_cnt[31]_i_3_n_0\,
      O => \spi_mmio_rd_req_cnt[21]_i_1_n_0\
    );
\spi_mmio_rd_req_cnt[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_mmio_rd_req_cnt0(22),
      I1 => \spi_mmio_rd_req_cnt[31]_i_3_n_0\,
      O => \spi_mmio_rd_req_cnt[22]_i_1_n_0\
    );
\spi_mmio_rd_req_cnt[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_mmio_rd_req_cnt0(23),
      I1 => \spi_mmio_rd_req_cnt[31]_i_3_n_0\,
      O => \spi_mmio_rd_req_cnt[23]_i_1_n_0\
    );
\spi_mmio_rd_req_cnt[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_mmio_rd_req_cnt0(24),
      I1 => \spi_mmio_rd_req_cnt[31]_i_3_n_0\,
      O => \spi_mmio_rd_req_cnt[24]_i_1_n_0\
    );
\spi_mmio_rd_req_cnt[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_mmio_rd_req_cnt0(25),
      I1 => \spi_mmio_rd_req_cnt[31]_i_3_n_0\,
      O => \spi_mmio_rd_req_cnt[25]_i_1_n_0\
    );
\spi_mmio_rd_req_cnt[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_mmio_rd_req_cnt0(26),
      I1 => \spi_mmio_rd_req_cnt[31]_i_3_n_0\,
      O => \spi_mmio_rd_req_cnt[26]_i_1_n_0\
    );
\spi_mmio_rd_req_cnt[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_mmio_rd_req_cnt0(27),
      I1 => \spi_mmio_rd_req_cnt[31]_i_3_n_0\,
      O => \spi_mmio_rd_req_cnt[27]_i_1_n_0\
    );
\spi_mmio_rd_req_cnt[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_mmio_rd_req_cnt0(28),
      I1 => \spi_mmio_rd_req_cnt[31]_i_3_n_0\,
      O => \spi_mmio_rd_req_cnt[28]_i_1_n_0\
    );
\spi_mmio_rd_req_cnt[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_mmio_rd_req_cnt0(29),
      I1 => \spi_mmio_rd_req_cnt[31]_i_3_n_0\,
      O => \spi_mmio_rd_req_cnt[29]_i_1_n_0\
    );
\spi_mmio_rd_req_cnt[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_mmio_rd_req_cnt0(2),
      I1 => \spi_mmio_rd_req_cnt[31]_i_3_n_0\,
      O => \spi_mmio_rd_req_cnt[2]_i_1_n_0\
    );
\spi_mmio_rd_req_cnt[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_mmio_rd_req_cnt0(30),
      I1 => \spi_mmio_rd_req_cnt[31]_i_3_n_0\,
      O => \spi_mmio_rd_req_cnt[30]_i_1_n_0\
    );
\spi_mmio_rd_req_cnt[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF40000000"
    )
        port map (
      I0 => \^s_axi_lite_rvalid_reg_0\,
      I1 => s_axi_lite_arvalid,
      I2 => s_axi_lite_araddr(3),
      I3 => s_axi_lite_araddr(2),
      I4 => \s_axi_lite_rdata[31]_i_5_n_0\,
      I5 => \spi_mmio_rd_req_cnt[31]_i_3_n_0\,
      O => \spi_mmio_rd_req_cnt[31]_i_1_n_0\
    );
\spi_mmio_rd_req_cnt[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_mmio_rd_req_cnt0(31),
      I1 => \spi_mmio_rd_req_cnt[31]_i_3_n_0\,
      O => \spi_mmio_rd_req_cnt[31]_i_2_n_0\
    );
\spi_mmio_rd_req_cnt[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010000000"
    )
        port map (
      I0 => \spi_mmio_fsm_state_reg_n_0_[3]\,
      I1 => \spi_mmio_fsm_state_reg_n_0_[0]\,
      I2 => \spi_mmio_fsm_state[3]_i_3_n_0\,
      I3 => s_axi_full_arvalid,
      I4 => \^s_axi_full_arready_reg_0\,
      I5 => \spi_mmio_fsm_state_next[3]_i_6_n_0\,
      O => \spi_mmio_rd_req_cnt[31]_i_3_n_0\
    );
\spi_mmio_rd_req_cnt[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_mmio_rd_req_cnt0(3),
      I1 => \spi_mmio_rd_req_cnt[31]_i_3_n_0\,
      O => \spi_mmio_rd_req_cnt[3]_i_1_n_0\
    );
\spi_mmio_rd_req_cnt[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_mmio_rd_req_cnt0(4),
      I1 => \spi_mmio_rd_req_cnt[31]_i_3_n_0\,
      O => \spi_mmio_rd_req_cnt[4]_i_1_n_0\
    );
\spi_mmio_rd_req_cnt[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_mmio_rd_req_cnt0(5),
      I1 => \spi_mmio_rd_req_cnt[31]_i_3_n_0\,
      O => \spi_mmio_rd_req_cnt[5]_i_1_n_0\
    );
\spi_mmio_rd_req_cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_mmio_rd_req_cnt0(6),
      I1 => \spi_mmio_rd_req_cnt[31]_i_3_n_0\,
      O => \spi_mmio_rd_req_cnt[6]_i_1_n_0\
    );
\spi_mmio_rd_req_cnt[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_mmio_rd_req_cnt0(7),
      I1 => \spi_mmio_rd_req_cnt[31]_i_3_n_0\,
      O => \spi_mmio_rd_req_cnt[7]_i_1_n_0\
    );
\spi_mmio_rd_req_cnt[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_mmio_rd_req_cnt0(8),
      I1 => \spi_mmio_rd_req_cnt[31]_i_3_n_0\,
      O => \spi_mmio_rd_req_cnt[8]_i_1_n_0\
    );
\spi_mmio_rd_req_cnt[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_mmio_rd_req_cnt0(9),
      I1 => \spi_mmio_rd_req_cnt[31]_i_3_n_0\,
      O => \spi_mmio_rd_req_cnt[9]_i_1_n_0\
    );
\spi_mmio_rd_req_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_mmio_rd_req_cnt[31]_i_1_n_0\,
      D => \spi_mmio_rd_req_cnt[0]_i_1_n_0\,
      Q => \spi_mmio_rd_req_cnt__0\(0),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_rd_req_cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_mmio_rd_req_cnt[31]_i_1_n_0\,
      D => \spi_mmio_rd_req_cnt[10]_i_1_n_0\,
      Q => \spi_mmio_rd_req_cnt__0\(10),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_rd_req_cnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_mmio_rd_req_cnt[31]_i_1_n_0\,
      D => \spi_mmio_rd_req_cnt[11]_i_1_n_0\,
      Q => \spi_mmio_rd_req_cnt__0\(11),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_rd_req_cnt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_mmio_rd_req_cnt[31]_i_1_n_0\,
      D => \spi_mmio_rd_req_cnt[12]_i_1_n_0\,
      Q => \spi_mmio_rd_req_cnt__0\(12),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_rd_req_cnt_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \spi_mmio_rd_req_cnt_reg[8]_i_2_n_0\,
      CO(3) => \spi_mmio_rd_req_cnt_reg[12]_i_2_n_0\,
      CO(2) => \spi_mmio_rd_req_cnt_reg[12]_i_2_n_1\,
      CO(1) => \spi_mmio_rd_req_cnt_reg[12]_i_2_n_2\,
      CO(0) => \spi_mmio_rd_req_cnt_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => spi_mmio_rd_req_cnt0(12 downto 9),
      S(3 downto 0) => \spi_mmio_rd_req_cnt__0\(12 downto 9)
    );
\spi_mmio_rd_req_cnt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_mmio_rd_req_cnt[31]_i_1_n_0\,
      D => \spi_mmio_rd_req_cnt[13]_i_1_n_0\,
      Q => \spi_mmio_rd_req_cnt__0\(13),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_rd_req_cnt_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_mmio_rd_req_cnt[31]_i_1_n_0\,
      D => \spi_mmio_rd_req_cnt[14]_i_1_n_0\,
      Q => \spi_mmio_rd_req_cnt__0\(14),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_rd_req_cnt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_mmio_rd_req_cnt[31]_i_1_n_0\,
      D => \spi_mmio_rd_req_cnt[15]_i_1_n_0\,
      Q => \spi_mmio_rd_req_cnt__0\(15),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_rd_req_cnt_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_mmio_rd_req_cnt[31]_i_1_n_0\,
      D => \spi_mmio_rd_req_cnt[16]_i_1_n_0\,
      Q => \spi_mmio_rd_req_cnt__0\(16),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_rd_req_cnt_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \spi_mmio_rd_req_cnt_reg[12]_i_2_n_0\,
      CO(3) => \spi_mmio_rd_req_cnt_reg[16]_i_2_n_0\,
      CO(2) => \spi_mmio_rd_req_cnt_reg[16]_i_2_n_1\,
      CO(1) => \spi_mmio_rd_req_cnt_reg[16]_i_2_n_2\,
      CO(0) => \spi_mmio_rd_req_cnt_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => spi_mmio_rd_req_cnt0(16 downto 13),
      S(3 downto 0) => \spi_mmio_rd_req_cnt__0\(16 downto 13)
    );
\spi_mmio_rd_req_cnt_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_mmio_rd_req_cnt[31]_i_1_n_0\,
      D => \spi_mmio_rd_req_cnt[17]_i_1_n_0\,
      Q => \spi_mmio_rd_req_cnt__0\(17),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_rd_req_cnt_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_mmio_rd_req_cnt[31]_i_1_n_0\,
      D => \spi_mmio_rd_req_cnt[18]_i_1_n_0\,
      Q => \spi_mmio_rd_req_cnt__0\(18),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_rd_req_cnt_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_mmio_rd_req_cnt[31]_i_1_n_0\,
      D => \spi_mmio_rd_req_cnt[19]_i_1_n_0\,
      Q => \spi_mmio_rd_req_cnt__0\(19),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_rd_req_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_mmio_rd_req_cnt[31]_i_1_n_0\,
      D => \spi_mmio_rd_req_cnt[1]_i_1_n_0\,
      Q => \spi_mmio_rd_req_cnt__0\(1),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_rd_req_cnt_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_mmio_rd_req_cnt[31]_i_1_n_0\,
      D => \spi_mmio_rd_req_cnt[20]_i_1_n_0\,
      Q => \spi_mmio_rd_req_cnt__0\(20),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_rd_req_cnt_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \spi_mmio_rd_req_cnt_reg[16]_i_2_n_0\,
      CO(3) => \spi_mmio_rd_req_cnt_reg[20]_i_2_n_0\,
      CO(2) => \spi_mmio_rd_req_cnt_reg[20]_i_2_n_1\,
      CO(1) => \spi_mmio_rd_req_cnt_reg[20]_i_2_n_2\,
      CO(0) => \spi_mmio_rd_req_cnt_reg[20]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => spi_mmio_rd_req_cnt0(20 downto 17),
      S(3 downto 0) => \spi_mmio_rd_req_cnt__0\(20 downto 17)
    );
\spi_mmio_rd_req_cnt_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_mmio_rd_req_cnt[31]_i_1_n_0\,
      D => \spi_mmio_rd_req_cnt[21]_i_1_n_0\,
      Q => \spi_mmio_rd_req_cnt__0\(21),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_rd_req_cnt_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_mmio_rd_req_cnt[31]_i_1_n_0\,
      D => \spi_mmio_rd_req_cnt[22]_i_1_n_0\,
      Q => \spi_mmio_rd_req_cnt__0\(22),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_rd_req_cnt_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_mmio_rd_req_cnt[31]_i_1_n_0\,
      D => \spi_mmio_rd_req_cnt[23]_i_1_n_0\,
      Q => \spi_mmio_rd_req_cnt__0\(23),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_rd_req_cnt_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_mmio_rd_req_cnt[31]_i_1_n_0\,
      D => \spi_mmio_rd_req_cnt[24]_i_1_n_0\,
      Q => \spi_mmio_rd_req_cnt__0\(24),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_rd_req_cnt_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \spi_mmio_rd_req_cnt_reg[20]_i_2_n_0\,
      CO(3) => \spi_mmio_rd_req_cnt_reg[24]_i_2_n_0\,
      CO(2) => \spi_mmio_rd_req_cnt_reg[24]_i_2_n_1\,
      CO(1) => \spi_mmio_rd_req_cnt_reg[24]_i_2_n_2\,
      CO(0) => \spi_mmio_rd_req_cnt_reg[24]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => spi_mmio_rd_req_cnt0(24 downto 21),
      S(3 downto 0) => \spi_mmio_rd_req_cnt__0\(24 downto 21)
    );
\spi_mmio_rd_req_cnt_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_mmio_rd_req_cnt[31]_i_1_n_0\,
      D => \spi_mmio_rd_req_cnt[25]_i_1_n_0\,
      Q => \spi_mmio_rd_req_cnt__0\(25),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_rd_req_cnt_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_mmio_rd_req_cnt[31]_i_1_n_0\,
      D => \spi_mmio_rd_req_cnt[26]_i_1_n_0\,
      Q => \spi_mmio_rd_req_cnt__0\(26),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_rd_req_cnt_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_mmio_rd_req_cnt[31]_i_1_n_0\,
      D => \spi_mmio_rd_req_cnt[27]_i_1_n_0\,
      Q => \spi_mmio_rd_req_cnt__0\(27),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_rd_req_cnt_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_mmio_rd_req_cnt[31]_i_1_n_0\,
      D => \spi_mmio_rd_req_cnt[28]_i_1_n_0\,
      Q => \spi_mmio_rd_req_cnt__0\(28),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_rd_req_cnt_reg[28]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \spi_mmio_rd_req_cnt_reg[24]_i_2_n_0\,
      CO(3) => \spi_mmio_rd_req_cnt_reg[28]_i_2_n_0\,
      CO(2) => \spi_mmio_rd_req_cnt_reg[28]_i_2_n_1\,
      CO(1) => \spi_mmio_rd_req_cnt_reg[28]_i_2_n_2\,
      CO(0) => \spi_mmio_rd_req_cnt_reg[28]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => spi_mmio_rd_req_cnt0(28 downto 25),
      S(3 downto 0) => \spi_mmio_rd_req_cnt__0\(28 downto 25)
    );
\spi_mmio_rd_req_cnt_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_mmio_rd_req_cnt[31]_i_1_n_0\,
      D => \spi_mmio_rd_req_cnt[29]_i_1_n_0\,
      Q => \spi_mmio_rd_req_cnt__0\(29),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_rd_req_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_mmio_rd_req_cnt[31]_i_1_n_0\,
      D => \spi_mmio_rd_req_cnt[2]_i_1_n_0\,
      Q => \spi_mmio_rd_req_cnt__0\(2),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_rd_req_cnt_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_mmio_rd_req_cnt[31]_i_1_n_0\,
      D => \spi_mmio_rd_req_cnt[30]_i_1_n_0\,
      Q => \spi_mmio_rd_req_cnt__0\(30),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_rd_req_cnt_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_mmio_rd_req_cnt[31]_i_1_n_0\,
      D => \spi_mmio_rd_req_cnt[31]_i_2_n_0\,
      Q => \spi_mmio_rd_req_cnt__0\(31),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_rd_req_cnt_reg[31]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \spi_mmio_rd_req_cnt_reg[28]_i_2_n_0\,
      CO(3 downto 2) => \NLW_spi_mmio_rd_req_cnt_reg[31]_i_4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \spi_mmio_rd_req_cnt_reg[31]_i_4_n_2\,
      CO(0) => \spi_mmio_rd_req_cnt_reg[31]_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_spi_mmio_rd_req_cnt_reg[31]_i_4_O_UNCONNECTED\(3),
      O(2 downto 0) => spi_mmio_rd_req_cnt0(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => \spi_mmio_rd_req_cnt__0\(31 downto 29)
    );
\spi_mmio_rd_req_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_mmio_rd_req_cnt[31]_i_1_n_0\,
      D => \spi_mmio_rd_req_cnt[3]_i_1_n_0\,
      Q => \spi_mmio_rd_req_cnt__0\(3),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_rd_req_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_mmio_rd_req_cnt[31]_i_1_n_0\,
      D => \spi_mmio_rd_req_cnt[4]_i_1_n_0\,
      Q => \spi_mmio_rd_req_cnt__0\(4),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_rd_req_cnt_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \spi_mmio_rd_req_cnt_reg[4]_i_2_n_0\,
      CO(2) => \spi_mmio_rd_req_cnt_reg[4]_i_2_n_1\,
      CO(1) => \spi_mmio_rd_req_cnt_reg[4]_i_2_n_2\,
      CO(0) => \spi_mmio_rd_req_cnt_reg[4]_i_2_n_3\,
      CYINIT => \spi_mmio_rd_req_cnt__0\(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => spi_mmio_rd_req_cnt0(4 downto 1),
      S(3 downto 0) => \spi_mmio_rd_req_cnt__0\(4 downto 1)
    );
\spi_mmio_rd_req_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_mmio_rd_req_cnt[31]_i_1_n_0\,
      D => \spi_mmio_rd_req_cnt[5]_i_1_n_0\,
      Q => \spi_mmio_rd_req_cnt__0\(5),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_rd_req_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_mmio_rd_req_cnt[31]_i_1_n_0\,
      D => \spi_mmio_rd_req_cnt[6]_i_1_n_0\,
      Q => \spi_mmio_rd_req_cnt__0\(6),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_rd_req_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_mmio_rd_req_cnt[31]_i_1_n_0\,
      D => \spi_mmio_rd_req_cnt[7]_i_1_n_0\,
      Q => \spi_mmio_rd_req_cnt__0\(7),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_rd_req_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_mmio_rd_req_cnt[31]_i_1_n_0\,
      D => \spi_mmio_rd_req_cnt[8]_i_1_n_0\,
      Q => \spi_mmio_rd_req_cnt__0\(8),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mmio_rd_req_cnt_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \spi_mmio_rd_req_cnt_reg[4]_i_2_n_0\,
      CO(3) => \spi_mmio_rd_req_cnt_reg[8]_i_2_n_0\,
      CO(2) => \spi_mmio_rd_req_cnt_reg[8]_i_2_n_1\,
      CO(1) => \spi_mmio_rd_req_cnt_reg[8]_i_2_n_2\,
      CO(0) => \spi_mmio_rd_req_cnt_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => spi_mmio_rd_req_cnt0(8 downto 5),
      S(3 downto 0) => \spi_mmio_rd_req_cnt__0\(8 downto 5)
    );
\spi_mmio_rd_req_cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_mmio_rd_req_cnt[31]_i_1_n_0\,
      D => \spi_mmio_rd_req_cnt[9]_i_1_n_0\,
      Q => \spi_mmio_rd_req_cnt__0\(9),
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mode[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => s_axi_lite_wdata(2),
      I1 => spi_mmio_en,
      I2 => s_axi_lite_wstrb(0),
      I3 => \spi_mode[1]_i_2_n_0\,
      I4 => \FSM_onehot_spi_fsm_state_reg_n_0_[0]\,
      I5 => \spi_mode_reg_n_0_[0]\,
      O => \spi_mode[0]_i_1_n_0\
    );
\spi_mode[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => s_axi_lite_wdata(3),
      I1 => spi_mmio_en,
      I2 => s_axi_lite_wstrb(0),
      I3 => \spi_mode[1]_i_2_n_0\,
      I4 => \FSM_onehot_spi_fsm_state_reg_n_0_[0]\,
      I5 => spi_cpol,
      O => \spi_mode[1]_i_1_n_0\
    );
\spi_mode[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFDFF"
    )
        port map (
      I0 => s_axi_lite_awaddr(0),
      I1 => s_axi_lite_awaddr(1),
      I2 => s_axi_lite_awaddr(2),
      I3 => \^s_axi_lite_awready\,
      I4 => s_axi_lite_awaddr(3),
      O => \spi_mode[1]_i_2_n_0\
    );
\spi_mode_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \spi_mode[0]_i_1_n_0\,
      Q => \spi_mode_reg_n_0_[0]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_mode_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \spi_mode[1]_i_1_n_0\,
      Q => spi_cpol,
      R => s_axi_lite_awready_i_1_n_0
    );
spi_rd_req_ack_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F88888FFFF8F88"
    )
        port map (
      I0 => spi_rd_req_ack_i_2_n_0,
      I1 => \FSM_onehot_spi_fsm_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_spi_fsm_state[2]_i_3_n_0\,
      I3 => \spi_io_mode_q[1]_i_3_n_0\,
      I4 => spi_rd_req_ack_i_3_n_0,
      I5 => spi_rd_req_ack_i_4_n_0,
      O => spi_rd_req_ack
    );
spi_rd_req_ack_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_rd_req_reg_n_0,
      I1 => spi_rd_req_ack_reg_n_0,
      O => spi_rd_req_ack_i_2_n_0
    );
spi_rd_req_ack_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FC004400"
    )
        port map (
      I0 => spi_sr_out_buf_valid,
      I1 => \FSM_onehot_spi_fsm_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_spi_fsm_state_reg_n_0_[2]\,
      I3 => spi_rd_req_reg_n_0,
      I4 => spi_rd_req_ack_reg_n_0,
      O => spi_rd_req_ack_i_3_n_0
    );
spi_rd_req_ack_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2F"
    )
        port map (
      I0 => spi_sr_out_buf_valid,
      I1 => spi_rd_req_ack_reg_n_0,
      I2 => spi_rd_req_reg_n_0,
      O => spi_rd_req_ack_i_4_n_0
    );
spi_rd_req_ack_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => spi_rd_req_ack,
      Q => spi_rd_req_ack_reg_n_0,
      R => p_5_in
    );
spi_rd_req_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEEEEFFFFAAEA"
    )
        port map (
      I0 => spi_rd_req_i_2_n_0,
      I1 => spi_rd_req_i_3_n_0,
      I2 => \spi_sr_out_buf[7]_i_4_n_0\,
      I3 => spi_rd_req_i_4_n_0,
      I4 => spi_rd_req_i_5_n_0,
      I5 => spi_rd_req_reg_n_0,
      O => spi_rd_req_i_1_n_0
    );
spi_rd_req_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F4004400440044"
    )
        port map (
      I0 => spi_sr_out_buf_valid,
      I1 => spi_rd_req_i_6_n_0,
      I2 => \s_axi_full_araddr_q[23]_i_3_n_0\,
      I3 => spi_rd_req_reg_n_0,
      I4 => spi_rd_req_i_7_n_0,
      I5 => s_axi_full_rlast_i_3_n_0,
      O => spi_rd_req_i_2_n_0
    );
spi_rd_req_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => spi_en_reg_n_0,
      I1 => spi_rd_req_ack_reg_n_0,
      I2 => spi_rd_req_reg_n_0,
      O => spi_rd_req_i_3_n_0
    );
spi_rd_req_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF7FFFFFFFF"
    )
        port map (
      I0 => s_axi_lite_wstrb(1),
      I1 => s_axi_lite_wstrb(0),
      I2 => s_axi_lite_wdata(8),
      I3 => spi_rd_req_reg_n_0,
      I4 => spi_mmio_en,
      I5 => s_axi_lite_wdata(9),
      O => spi_rd_req_i_4_n_0
    );
spi_rd_req_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAEAAAAA"
    )
        port map (
      I0 => \spi_mmio_cont_rd_req_cnt[31]_i_3_n_0\,
      I1 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I2 => \spi_mmio_fsm_state_reg_n_0_[0]\,
      I3 => \spi_mmio_fsm_state_reg_n_0_[3]\,
      I4 => \spi_mmio_fsm_state_reg_n_0_[2]\,
      I5 => \spi_mmio_fsm_state[3]_i_4_n_0\,
      O => spi_rd_req_i_5_n_0
    );
spi_rd_req_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I1 => \spi_mmio_fsm_state_reg_n_0_[2]\,
      I2 => \spi_mmio_fsm_state_reg_n_0_[0]\,
      I3 => \spi_mmio_fsm_state_reg_n_0_[3]\,
      O => spi_rd_req_i_6_n_0
    );
spi_rd_req_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => spi_mmio_en,
      I1 => spi_sr_in_buf_ready_reg_n_0,
      I2 => spi_sr_in_buf_valid_reg_n_0,
      O => spi_rd_req_i_7_n_0
    );
spi_rd_req_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => spi_rd_req_i_1_n_0,
      Q => spi_rd_req_reg_n_0,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_sck_div_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => spi_sck_div_cnt_reg(0),
      O => p_0_in(0)
    );
\spi_sck_div_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => spi_sck_div_cnt_reg(0),
      I1 => spi_sck_div_cnt_reg(1),
      O => p_0_in(1)
    );
\spi_sck_div_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => spi_sck_div_cnt_reg(2),
      I1 => spi_sck_div_cnt_reg(1),
      I2 => spi_sck_div_cnt_reg(0),
      O => p_0_in(2)
    );
\spi_sck_div_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => spi_sck_div_cnt_reg(3),
      I1 => spi_sck_div_cnt_reg(0),
      I2 => spi_sck_div_cnt_reg(1),
      I3 => spi_sck_div_cnt_reg(2),
      O => p_0_in(3)
    );
\spi_sck_div_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => spi_sck_div_cnt_reg(4),
      I1 => spi_sck_div_cnt_reg(2),
      I2 => spi_sck_div_cnt_reg(1),
      I3 => spi_sck_div_cnt_reg(0),
      I4 => spi_sck_div_cnt_reg(3),
      O => p_0_in(4)
    );
\spi_sck_div_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => spi_sck_div_cnt_reg(5),
      I1 => spi_sck_div_cnt_reg(3),
      I2 => spi_sck_div_cnt_reg(0),
      I3 => spi_sck_div_cnt_reg(1),
      I4 => spi_sck_div_cnt_reg(2),
      I5 => spi_sck_div_cnt_reg(4),
      O => p_0_in(5)
    );
\spi_sck_div_cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => spi_sck_div_cnt_reg(6),
      I1 => \spi_sck_div_cnt[7]_i_3_n_0\,
      O => p_0_in(6)
    );
\spi_sck_div_cnt[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \spi_io_o[0]_i_4_n_0\,
      I1 => \spi_io_o[0]_i_5_n_0\,
      I2 => spi_sck_div_en_reg_n_0,
      O => \spi_sck_div_cnt[7]_i_1_n_0\
    );
\spi_sck_div_cnt[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => spi_sck_div_cnt_reg(7),
      I1 => \spi_sck_div_cnt[7]_i_3_n_0\,
      I2 => spi_sck_div_cnt_reg(6),
      O => p_0_in(7)
    );
\spi_sck_div_cnt[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => spi_sck_div_cnt_reg(5),
      I1 => spi_sck_div_cnt_reg(3),
      I2 => spi_sck_div_cnt_reg(0),
      I3 => spi_sck_div_cnt_reg(1),
      I4 => spi_sck_div_cnt_reg(2),
      I5 => spi_sck_div_cnt_reg(4),
      O => \spi_sck_div_cnt[7]_i_3_n_0\
    );
\spi_sck_div_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in(0),
      Q => spi_sck_div_cnt_reg(0),
      R => \spi_sck_div_cnt[7]_i_1_n_0\
    );
\spi_sck_div_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in(1),
      Q => spi_sck_div_cnt_reg(1),
      R => \spi_sck_div_cnt[7]_i_1_n_0\
    );
\spi_sck_div_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in(2),
      Q => spi_sck_div_cnt_reg(2),
      R => \spi_sck_div_cnt[7]_i_1_n_0\
    );
\spi_sck_div_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in(3),
      Q => spi_sck_div_cnt_reg(3),
      R => \spi_sck_div_cnt[7]_i_1_n_0\
    );
\spi_sck_div_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in(4),
      Q => spi_sck_div_cnt_reg(4),
      R => \spi_sck_div_cnt[7]_i_1_n_0\
    );
\spi_sck_div_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in(5),
      Q => spi_sck_div_cnt_reg(5),
      R => \spi_sck_div_cnt[7]_i_1_n_0\
    );
\spi_sck_div_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in(6),
      Q => spi_sck_div_cnt_reg(6),
      R => \spi_sck_div_cnt[7]_i_1_n_0\
    );
\spi_sck_div_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in(7),
      Q => spi_sck_div_cnt_reg(7),
      R => \spi_sck_div_cnt[7]_i_1_n_0\
    );
spi_sck_div_en_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBBB0888"
    )
        port map (
      I0 => s_axi_lite_wdata(0),
      I1 => spi_en_i_2_n_0,
      I2 => s_axi_lite_wdata(1),
      I3 => spi_en_reg_n_0,
      I4 => spi_sck_div_en_reg_n_0,
      O => spi_sck_div_en_i_1_n_0
    );
spi_sck_div_en_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => spi_sck_div_en_i_1_n_0,
      Q => spi_sck_div_en_reg_n_0,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_sck_div_h[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \spi_sck_div_l[7]_i_2_n_0\,
      I1 => s_axi_lite_wstrb(2),
      I2 => spi_sck_div_en_reg_n_0,
      I3 => \^s_axi_lite_awready\,
      O => spi_sck_div_h
    );
\spi_sck_div_h_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_sck_div_h,
      D => s_axi_lite_wdata(12),
      Q => \spi_sck_div_h_reg_n_0_[0]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_sck_div_h_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_sck_div_h,
      D => s_axi_lite_wdata(13),
      Q => \spi_sck_div_h_reg_n_0_[1]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_sck_div_h_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_sck_div_h,
      D => s_axi_lite_wdata(14),
      Q => \spi_sck_div_h_reg_n_0_[2]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_sck_div_h_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_sck_div_h,
      D => s_axi_lite_wdata(15),
      Q => \spi_sck_div_h_reg_n_0_[3]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_sck_div_h_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_sck_div_h,
      D => s_axi_lite_wdata(16),
      Q => \spi_sck_div_h_reg_n_0_[4]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_sck_div_h_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_sck_div_h,
      D => s_axi_lite_wdata(17),
      Q => \spi_sck_div_h_reg_n_0_[5]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_sck_div_h_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_sck_div_h,
      D => s_axi_lite_wdata(18),
      Q => \spi_sck_div_h_reg_n_0_[6]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_sck_div_h_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_sck_div_h,
      D => s_axi_lite_wdata(19),
      Q => \spi_sck_div_h_reg_n_0_[7]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_sck_div_l[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \spi_sck_div_l[7]_i_2_n_0\,
      I1 => s_axi_lite_wstrb(0),
      I2 => spi_sck_div_en_reg_n_0,
      I3 => \^s_axi_lite_awready\,
      O => spi_sck_div_l
    );
\spi_sck_div_l[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => s_axi_lite_awaddr(1),
      I1 => s_axi_lite_awaddr(2),
      I2 => s_axi_lite_awaddr(3),
      I3 => s_axi_lite_awaddr(0),
      O => \spi_sck_div_l[7]_i_2_n_0\
    );
\spi_sck_div_l_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_sck_div_l,
      D => s_axi_lite_wdata(0),
      Q => \spi_sck_div_l_reg_n_0_[0]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_sck_div_l_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_sck_div_l,
      D => s_axi_lite_wdata(1),
      Q => \spi_sck_div_l_reg_n_0_[1]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_sck_div_l_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_sck_div_l,
      D => s_axi_lite_wdata(2),
      Q => \spi_sck_div_l_reg_n_0_[2]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_sck_div_l_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_sck_div_l,
      D => s_axi_lite_wdata(3),
      Q => \spi_sck_div_l_reg_n_0_[3]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_sck_div_l_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_sck_div_l,
      D => s_axi_lite_wdata(4),
      Q => \spi_sck_div_l_reg_n_0_[4]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_sck_div_l_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_sck_div_l,
      D => s_axi_lite_wdata(5),
      Q => \spi_sck_div_l_reg_n_0_[5]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_sck_div_l_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_sck_div_l,
      D => s_axi_lite_wdata(6),
      Q => \spi_sck_div_l_reg_n_0_[6]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_sck_div_l_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_sck_div_l,
      D => s_axi_lite_wdata(7),
      Q => \spi_sck_div_l_reg_n_0_[7]\,
      R => s_axi_lite_awready_i_1_n_0
    );
spi_sck_int_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8070"
    )
        port map (
      I0 => \spi_io_o[0]_i_4_n_0\,
      I1 => \spi_io_o[0]_i_5_n_0\,
      I2 => spi_sck_div_en_reg_n_0,
      I3 => spi_sck_int,
      O => spi_sck_int_i_1_n_0
    );
spi_sck_int_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => spi_sck_int_i_1_n_0,
      Q => spi_sck_int,
      R => '0'
    );
spi_sck_o_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AEFFFF00AE0000"
    )
        port map (
      I0 => spi_sck_o_i_2_n_0,
      I1 => \FSM_onehot_spi_fsm_state_reg_n_0_[2]\,
      I2 => spi_sck_o_i_3_n_0,
      I3 => spi_sck_o_i_4_n_0,
      I4 => spi_sck_o_i_5_n_0,
      I5 => \^spi_sck_o\,
      O => spi_sck_o_i_1_n_0
    );
spi_sck_o_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF8F"
    )
        port map (
      I0 => spi_cpol,
      I1 => \FSM_onehot_spi_fsm_state_reg_n_0_[0]\,
      I2 => spi_en_reg_n_0,
      I3 => \FSM_onehot_spi_fsm_state_reg_n_0_[1]\,
      O => spi_sck_o_i_2_n_0
    );
spi_sck_o_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555555A959AAAA"
    )
        port map (
      I0 => spi_cpol,
      I1 => \spi_io_o[0]_i_5_n_0\,
      I2 => \spi_mode_reg_n_0_[0]\,
      I3 => \spi_io_o[0]_i_4_n_0\,
      I4 => \spi_io_o[0]_i_7_n_0\,
      I5 => spi_sck_o_i_6_n_0,
      O => spi_sck_o_i_3_n_0
    );
spi_sck_o_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => spi_en_reg_n_0,
      I1 => spi_cpol,
      O => spi_sck_o_i_4_n_0
    );
spi_sck_o_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2AFF"
    )
        port map (
      I0 => \FSM_onehot_spi_fsm_state_reg_n_0_[2]\,
      I1 => \spi_io_o[0]_i_4_n_0\,
      I2 => \spi_io_o[0]_i_5_n_0\,
      I3 => spi_en_reg_n_0,
      I4 => \FSM_onehot_spi_fsm_state_reg_n_0_[0]\,
      O => spi_sck_o_i_5_n_0
    );
spi_sck_o_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000041000000"
    )
        port map (
      I0 => spi_sck_o_i_7_n_0,
      I1 => \spi_sck_div_h_reg_n_0_[7]\,
      I2 => spi_sck_div_cnt_reg(7),
      I3 => spi_sck_int,
      I4 => spi_sck_div_en_reg_n_0,
      I5 => spi_sck_o_i_8_n_0,
      O => spi_sck_o_i_6_n_0
    );
spi_sck_o_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \spi_sck_div_h_reg_n_0_[3]\,
      I1 => spi_sck_div_cnt_reg(3),
      I2 => \spi_sck_div_h_reg_n_0_[4]\,
      I3 => spi_sck_div_cnt_reg(4),
      O => spi_sck_o_i_7_n_0
    );
spi_sck_o_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF6FF6"
    )
        port map (
      I0 => spi_sck_div_cnt_reg(1),
      I1 => \spi_sck_div_h_reg_n_0_[1]\,
      I2 => spi_sck_div_cnt_reg(0),
      I3 => \spi_sck_div_h_reg_n_0_[0]\,
      I4 => spi_sck_o_i_9_n_0,
      O => spi_sck_o_i_8_n_0
    );
spi_sck_o_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \spi_sck_div_h_reg_n_0_[6]\,
      I1 => spi_sck_div_cnt_reg(6),
      I2 => spi_sck_div_cnt_reg(2),
      I3 => \spi_sck_div_h_reg_n_0_[2]\,
      I4 => spi_sck_div_cnt_reg(5),
      I5 => \spi_sck_div_h_reg_n_0_[5]\,
      O => spi_sck_o_i_9_n_0
    );
spi_sck_o_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => spi_sck_o_i_1_n_0,
      Q => \^spi_sck_o\,
      R => '0'
    );
\spi_sr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF4444444"
    )
        port map (
      I0 => \spi_sr[0]_i_2_n_0\,
      I1 => \FSM_onehot_spi_fsm_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_spi_fsm_state_reg_n_0_[0]\,
      I3 => \spi_sr_out_buf_reg_n_0_[0]\,
      I4 => spi_sr_out_buf_valid,
      I5 => \FSM_onehot_spi_fsm_state_reg_n_0_[1]\,
      O => \spi_sr[0]_i_1_n_0\
    );
\spi_sr[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AEFFAEAAAAAAAA"
    )
        port map (
      I0 => \spi_sr[0]_i_3_n_0\,
      I1 => spi_rd_req_reg_n_0,
      I2 => spi_rd_req_ack_reg_n_0,
      I3 => spi_sr_out_buf_valid,
      I4 => \spi_sr_out_buf_reg_n_0_[0]\,
      I5 => spi_sr_eot,
      O => \spi_sr[0]_i_2_n_0\
    );
\spi_sr[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888BBBB888BB8BB"
    )
        port map (
      I0 => \spi_sr_in_buf[0]_i_2_n_0\,
      I1 => spi_lsb_first_reg_n_0,
      I2 => \spi_io_mode_q_reg_n_0_[0]\,
      I3 => spi_io1_i,
      I4 => spi_io0_i,
      I5 => \spi_io_mode_q_reg_n_0_[1]\,
      O => \spi_sr[0]_i_3_n_0\
    );
\spi_sr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4FFF4FFF4FFF4F4"
    )
        port map (
      I0 => \spi_sr[1]_i_2_n_0\,
      I1 => \spi_sr_bit_cnt[2]_i_2_n_0\,
      I2 => \FSM_onehot_spi_fsm_state_reg_n_0_[1]\,
      I3 => \spi_sr[1]_i_3_n_0\,
      I4 => \spi_io_mode_q[1]_i_3_n_0\,
      I5 => \FSM_onehot_spi_fsm_state_reg_n_0_[0]\,
      O => \spi_sr[1]_i_1_n_0\
    );
\spi_sr[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAABABF"
    )
        port map (
      I0 => \spi_sr_in_buf[1]_i_2_n_0\,
      I1 => spi_io1_i,
      I2 => \spi_io_mode_q_reg_n_0_[1]\,
      I3 => \spi_sr_reg_n_0_[0]\,
      I4 => spi_lsb_first_reg_n_0,
      O => \spi_sr[1]_i_2_n_0\
    );
\spi_sr[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => spi_sr_out_buf_valid,
      I1 => \spi_sr_out_buf_reg_n_0_[1]\,
      O => \spi_sr[1]_i_3_n_0\
    );
\spi_sr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4FFF4FFF4FFF4F4"
    )
        port map (
      I0 => \spi_sr_reg[2]_i_2_n_0\,
      I1 => \spi_sr_bit_cnt[2]_i_2_n_0\,
      I2 => \FSM_onehot_spi_fsm_state_reg_n_0_[1]\,
      I3 => \spi_sr[2]_i_3_n_0\,
      I4 => \spi_io_mode_q[1]_i_3_n_0\,
      I5 => \FSM_onehot_spi_fsm_state_reg_n_0_[0]\,
      O => \spi_sr[2]_i_1_n_0\
    );
\spi_sr[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => spi_sr_out_buf_valid,
      I1 => \spi_sr_out_buf_reg_n_0_[2]\,
      O => \spi_sr[2]_i_3_n_0\
    );
\spi_sr[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0535F535"
    )
        port map (
      I0 => \spi_sr_reg_n_0_[1]\,
      I1 => \spi_sr_reg_n_0_[0]\,
      I2 => \spi_io_mode_q_reg_n_0_[1]\,
      I3 => \spi_io_mode_q_reg_n_0_[0]\,
      I4 => spi_io2_i,
      O => \spi_sr[2]_i_4_n_0\
    );
\spi_sr[2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"350035FF"
    )
        port map (
      I0 => \spi_sr_reg_n_0_[4]\,
      I1 => \spi_sr_reg_n_0_[6]\,
      I2 => \spi_io_mode_q_reg_n_0_[0]\,
      I3 => \spi_io_mode_q_reg_n_0_[1]\,
      I4 => \spi_sr_reg_n_0_[3]\,
      O => \spi_sr[2]_i_5_n_0\
    );
\spi_sr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4FFF4FFF4FFF4F4"
    )
        port map (
      I0 => \spi_sr_reg[3]_i_2_n_0\,
      I1 => \spi_sr_bit_cnt[2]_i_2_n_0\,
      I2 => \FSM_onehot_spi_fsm_state_reg_n_0_[1]\,
      I3 => \spi_sr[3]_i_3_n_0\,
      I4 => \spi_io_mode_q[1]_i_3_n_0\,
      I5 => \FSM_onehot_spi_fsm_state_reg_n_0_[0]\,
      O => \spi_sr[3]_i_1_n_0\
    );
\spi_sr[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => spi_sr_out_buf_valid,
      I1 => \spi_sr_out_buf_reg_n_0_[3]\,
      O => \spi_sr[3]_i_3_n_0\
    );
\spi_sr[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03F35353"
    )
        port map (
      I0 => \spi_sr_reg_n_0_[1]\,
      I1 => \spi_sr_reg_n_0_[2]\,
      I2 => \spi_io_mode_q_reg_n_0_[1]\,
      I3 => spi_io3_i,
      I4 => \spi_io_mode_q_reg_n_0_[0]\,
      O => \spi_sr[3]_i_4_n_0\
    );
\spi_sr[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"350035FF"
    )
        port map (
      I0 => \spi_sr_reg_n_0_[5]\,
      I1 => p_2_in(0),
      I2 => \spi_io_mode_q_reg_n_0_[0]\,
      I3 => \spi_io_mode_q_reg_n_0_[1]\,
      I4 => \spi_sr_reg_n_0_[4]\,
      O => \spi_sr[3]_i_5_n_0\
    );
\spi_sr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4FFF4FFF4FFF4F4"
    )
        port map (
      I0 => \spi_sr_reg[4]_i_2_n_0\,
      I1 => \spi_sr_bit_cnt[2]_i_2_n_0\,
      I2 => \FSM_onehot_spi_fsm_state_reg_n_0_[1]\,
      I3 => \spi_sr[4]_i_3_n_0\,
      I4 => \spi_io_mode_q[1]_i_3_n_0\,
      I5 => \FSM_onehot_spi_fsm_state_reg_n_0_[0]\,
      O => \spi_sr[4]_i_1_n_0\
    );
\spi_sr[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => spi_sr_out_buf_valid,
      I1 => \spi_sr_out_buf_reg_n_0_[4]\,
      O => \spi_sr[4]_i_3_n_0\
    );
\spi_sr[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03F35353"
    )
        port map (
      I0 => \spi_sr_reg_n_0_[2]\,
      I1 => \spi_sr_reg_n_0_[3]\,
      I2 => \spi_io_mode_q_reg_n_0_[1]\,
      I3 => \spi_sr_reg_n_0_[0]\,
      I4 => \spi_io_mode_q_reg_n_0_[0]\,
      O => \spi_sr[4]_i_4_n_0\
    );
\spi_sr[4]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"50305F3F"
    )
        port map (
      I0 => spi_io0_i,
      I1 => \spi_sr_reg_n_0_[6]\,
      I2 => \spi_io_mode_q_reg_n_0_[1]\,
      I3 => \spi_io_mode_q_reg_n_0_[0]\,
      I4 => \spi_sr_reg_n_0_[5]\,
      O => \spi_sr[4]_i_5_n_0\
    );
\spi_sr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4FFF4FFF4FFF4F4"
    )
        port map (
      I0 => \spi_sr_reg[5]_i_2_n_0\,
      I1 => \spi_sr_bit_cnt[2]_i_2_n_0\,
      I2 => \FSM_onehot_spi_fsm_state_reg_n_0_[1]\,
      I3 => \spi_sr[5]_i_3_n_0\,
      I4 => \spi_io_mode_q[1]_i_3_n_0\,
      I5 => \FSM_onehot_spi_fsm_state_reg_n_0_[0]\,
      O => \spi_sr[5]_i_1_n_0\
    );
\spi_sr[5]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => spi_sr_out_buf_valid,
      I1 => \spi_sr_out_buf_reg_n_0_[5]\,
      O => \spi_sr[5]_i_3_n_0\
    );
\spi_sr[5]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0535F535"
    )
        port map (
      I0 => \spi_sr_reg_n_0_[4]\,
      I1 => \spi_sr_reg_n_0_[3]\,
      I2 => \spi_io_mode_q_reg_n_0_[1]\,
      I3 => \spi_io_mode_q_reg_n_0_[0]\,
      I4 => \spi_sr_reg_n_0_[1]\,
      O => \spi_sr[5]_i_4_n_0\
    );
\spi_sr[5]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30553F55"
    )
        port map (
      I0 => \spi_sr_reg_n_0_[6]\,
      I1 => spi_io1_i,
      I2 => \spi_io_mode_q_reg_n_0_[0]\,
      I3 => \spi_io_mode_q_reg_n_0_[1]\,
      I4 => p_2_in(0),
      O => \spi_sr[5]_i_5_n_0\
    );
\spi_sr[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4FFF4FFF4FFF4F4"
    )
        port map (
      I0 => \spi_sr_reg[6]_i_2_n_0\,
      I1 => \spi_sr_bit_cnt[2]_i_2_n_0\,
      I2 => \FSM_onehot_spi_fsm_state_reg_n_0_[1]\,
      I3 => \spi_sr[6]_i_3_n_0\,
      I4 => \spi_io_mode_q[1]_i_3_n_0\,
      I5 => \FSM_onehot_spi_fsm_state_reg_n_0_[0]\,
      O => \spi_sr[6]_i_1_n_0\
    );
\spi_sr[6]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => spi_sr_out_buf_valid,
      I1 => \spi_sr_out_buf_reg_n_0_[6]\,
      O => \spi_sr[6]_i_3_n_0\
    );
\spi_sr[6]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30553F55"
    )
        port map (
      I0 => \spi_sr_reg_n_0_[5]\,
      I1 => \spi_sr_reg_n_0_[2]\,
      I2 => \spi_io_mode_q_reg_n_0_[0]\,
      I3 => \spi_io_mode_q_reg_n_0_[1]\,
      I4 => \spi_sr_reg_n_0_[4]\,
      O => \spi_sr[6]_i_4_n_0\
    );
\spi_sr[6]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"350035FF"
    )
        port map (
      I0 => spi_io0_i,
      I1 => spi_io2_i,
      I2 => \spi_io_mode_q_reg_n_0_[0]\,
      I3 => \spi_io_mode_q_reg_n_0_[1]\,
      I4 => p_2_in(0),
      O => \spi_sr[6]_i_5_n_0\
    );
\spi_sr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \spi_sr_reg[7]_i_2_n_0\,
      I1 => \spi_sr_bit_cnt[2]_i_2_n_0\,
      I2 => \spi_sr[7]_i_3_n_0\,
      O => \spi_sr[7]_i_1_n_0\
    );
\spi_sr[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEEAAAAAAAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_spi_fsm_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_spi_fsm_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_spi_fsm_state_reg_n_0_[2]\,
      I3 => spi_sr_eot,
      I4 => spi_sr_out_buf_valid,
      I5 => \spi_sr_out_buf_reg_n_0_[7]\,
      O => \spi_sr[7]_i_3_n_0\
    );
\spi_sr[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30553F55"
    )
        port map (
      I0 => \spi_sr_reg_n_0_[6]\,
      I1 => \spi_sr_reg_n_0_[3]\,
      I2 => \spi_io_mode_q_reg_n_0_[0]\,
      I3 => \spi_io_mode_q_reg_n_0_[1]\,
      I4 => \spi_sr_reg_n_0_[5]\,
      O => \spi_sr[7]_i_4_n_0\
    );
\spi_sr[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0533F533"
    )
        port map (
      I0 => spi_io0_i,
      I1 => spi_io1_i,
      I2 => \spi_io_mode_q_reg_n_0_[1]\,
      I3 => \spi_io_mode_q_reg_n_0_[0]\,
      I4 => spi_io3_i,
      O => \spi_sr[7]_i_5_n_0\
    );
\spi_sr_bit_cnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => \spi_sr_bit_cnt[2]_i_2_n_0\,
      I1 => \spi_sr_bit_cnt_reg_n_0_[0]\,
      I2 => \spi_io_mode_q_reg_n_0_[1]\,
      O => spi_sr_bit_cnt(0)
    );
\spi_sr_bit_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0880A22"
    )
        port map (
      I0 => \spi_sr_bit_cnt[2]_i_2_n_0\,
      I1 => \spi_sr_bit_cnt_reg_n_0_[0]\,
      I2 => \spi_io_mode_q_reg_n_0_[0]\,
      I3 => \spi_io_mode_q_reg_n_0_[1]\,
      I4 => \spi_sr_bit_cnt_reg_n_0_[1]\,
      O => spi_sr_bit_cnt(1)
    );
\spi_sr_bit_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22AA00A08800AA0A"
    )
        port map (
      I0 => \spi_sr_bit_cnt[2]_i_2_n_0\,
      I1 => \spi_io_mode_q_reg_n_0_[0]\,
      I2 => \spi_sr_bit_cnt_reg_n_0_[0]\,
      I3 => \spi_io_mode_q_reg_n_0_[1]\,
      I4 => \spi_sr_bit_cnt_reg_n_0_[1]\,
      I5 => \spi_sr_bit_cnt_reg_n_0_[2]\,
      O => spi_sr_bit_cnt(2)
    );
\spi_sr_bit_cnt[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2022AAAA"
    )
        port map (
      I0 => \FSM_onehot_spi_fsm_state_reg_n_0_[2]\,
      I1 => spi_sr_out_buf_valid,
      I2 => spi_rd_req_ack_reg_n_0,
      I3 => spi_rd_req_reg_n_0,
      I4 => spi_sr_eot,
      O => \spi_sr_bit_cnt[2]_i_2_n_0\
    );
\spi_sr_bit_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4FFF4F444444444"
    )
        port map (
      I0 => \FSM_onehot_spi_fsm_state[2]_i_3_n_0\,
      I1 => \FSM_onehot_spi_fsm_state_reg_n_0_[2]\,
      I2 => spi_sr_out_buf_valid,
      I3 => spi_rd_req_ack_reg_n_0,
      I4 => spi_rd_req_reg_n_0,
      I5 => \FSM_onehot_spi_fsm_state_reg_n_0_[0]\,
      O => \spi_sr_bit_cnt[3]_i_1_n_0\
    );
\spi_sr_bit_cnt[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFEAAAA"
    )
        port map (
      I0 => \FSM_onehot_spi_fsm_state_reg_n_0_[0]\,
      I1 => \spi_sr_bit_cnt[3]_i_3_n_0\,
      I2 => \spi_sr_bit_cnt[3]_i_4_n_0\,
      I3 => \spi_sr_bit_cnt_reg_n_0_[3]\,
      I4 => \FSM_onehot_spi_fsm_state_reg_n_0_[2]\,
      O => spi_sr_bit_cnt(3)
    );
\spi_sr_bit_cnt[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA08"
    )
        port map (
      I0 => spi_sr_eot,
      I1 => spi_rd_req_reg_n_0,
      I2 => spi_rd_req_ack_reg_n_0,
      I3 => spi_sr_out_buf_valid,
      O => \spi_sr_bit_cnt[3]_i_3_n_0\
    );
\spi_sr_bit_cnt[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"50511011"
    )
        port map (
      I0 => \spi_sr_bit_cnt_reg_n_0_[2]\,
      I1 => \spi_sr_bit_cnt_reg_n_0_[1]\,
      I2 => \spi_io_mode_q_reg_n_0_[1]\,
      I3 => \spi_sr_bit_cnt_reg_n_0_[0]\,
      I4 => \spi_io_mode_q_reg_n_0_[0]\,
      O => \spi_sr_bit_cnt[3]_i_4_n_0\
    );
\spi_sr_bit_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_sr_bit_cnt[3]_i_1_n_0\,
      D => spi_sr_bit_cnt(0),
      Q => \spi_sr_bit_cnt_reg_n_0_[0]\,
      R => p_5_in
    );
\spi_sr_bit_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_sr_bit_cnt[3]_i_1_n_0\,
      D => spi_sr_bit_cnt(1),
      Q => \spi_sr_bit_cnt_reg_n_0_[1]\,
      R => p_5_in
    );
\spi_sr_bit_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_sr_bit_cnt[3]_i_1_n_0\,
      D => spi_sr_bit_cnt(2),
      Q => \spi_sr_bit_cnt_reg_n_0_[2]\,
      R => p_5_in
    );
\spi_sr_bit_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_sr_bit_cnt[3]_i_1_n_0\,
      D => spi_sr_bit_cnt(3),
      Q => \spi_sr_bit_cnt_reg_n_0_[3]\,
      R => p_5_in
    );
spi_sr_eot_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040200000042"
    )
        port map (
      I0 => \spi_sr_bit_cnt_reg_n_0_[0]\,
      I1 => \spi_io_mode_q_reg_n_0_[1]\,
      I2 => \spi_sr_bit_cnt_reg_n_0_[1]\,
      I3 => \spi_sr_bit_cnt_reg_n_0_[2]\,
      I4 => \spi_sr_bit_cnt_reg_n_0_[3]\,
      I5 => \spi_io_mode_q_reg_n_0_[0]\,
      O => spi_sr_eot_i_1_n_0
    );
spi_sr_eot_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => spi_sr_eot_i_1_n_0,
      Q => spi_sr_eot,
      R => p_5_in
    );
\spi_sr_in_buf[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000CCD8FFFFCCD8"
    )
        port map (
      I0 => \spi_io_mode_q_reg_n_0_[1]\,
      I1 => spi_io0_i,
      I2 => spi_io1_i,
      I3 => \spi_io_mode_q_reg_n_0_[0]\,
      I4 => spi_lsb_first_reg_n_0,
      I5 => \spi_sr_in_buf[0]_i_2_n_0\,
      O => spi_sr_in_buf0_in(0)
    );
\spi_sr_in_buf[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"350035FF"
    )
        port map (
      I0 => \spi_sr_reg_n_0_[2]\,
      I1 => \spi_sr_reg_n_0_[4]\,
      I2 => \spi_io_mode_q_reg_n_0_[0]\,
      I3 => \spi_io_mode_q_reg_n_0_[1]\,
      I4 => \spi_sr_reg_n_0_[1]\,
      O => \spi_sr_in_buf[0]_i_2_n_0\
    );
\spi_sr_in_buf[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FEAE"
    )
        port map (
      I0 => spi_lsb_first_reg_n_0,
      I1 => \spi_sr_reg_n_0_[0]\,
      I2 => \spi_io_mode_q_reg_n_0_[1]\,
      I3 => spi_io1_i,
      I4 => \spi_sr_in_buf[1]_i_2_n_0\,
      O => spi_sr_in_buf0_in(1)
    );
\spi_sr_in_buf[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0303050505050"
    )
        port map (
      I0 => \spi_sr_reg_n_0_[2]\,
      I1 => \spi_sr_reg_n_0_[3]\,
      I2 => spi_lsb_first_reg_n_0,
      I3 => \spi_sr_reg_n_0_[5]\,
      I4 => \spi_io_mode_q_reg_n_0_[0]\,
      I5 => \spi_io_mode_q_reg_n_0_[1]\,
      O => \spi_sr_in_buf[1]_i_2_n_0\
    );
\spi_sr_in_buf[2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \spi_sr_reg[2]_i_2_n_0\,
      O => spi_sr_in_buf0_in(2)
    );
\spi_sr_in_buf[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \spi_sr_reg[3]_i_2_n_0\,
      O => spi_sr_in_buf0_in(3)
    );
\spi_sr_in_buf[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \spi_sr_reg[4]_i_2_n_0\,
      O => spi_sr_in_buf0_in(4)
    );
\spi_sr_in_buf[5]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \spi_sr_reg[5]_i_2_n_0\,
      O => spi_sr_in_buf0_in(5)
    );
\spi_sr_in_buf[6]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \spi_sr_reg[6]_i_2_n_0\,
      O => spi_sr_in_buf0_in(6)
    );
\spi_sr_in_buf[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000042000000"
    )
        port map (
      I0 => \spi_io_o[0]_i_5_n_0\,
      I1 => \spi_mode_reg_n_0_[0]\,
      I2 => \spi_io_o[0]_i_4_n_0\,
      I3 => spi_sr_eot,
      I4 => \FSM_onehot_spi_fsm_state_reg_n_0_[2]\,
      I5 => \spi_sr_in_buf[7]_i_3_n_0\,
      O => spi_sr_in_buf
    );
\spi_sr_in_buf[7]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \spi_sr_reg[7]_i_2_n_0\,
      O => spi_sr_in_buf0_in(7)
    );
\spi_sr_in_buf[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAFE"
    )
        port map (
      I0 => spi_sr_in_buf_valid_reg_n_0,
      I1 => \spi_io_mode_q_reg_n_0_[1]\,
      I2 => \spi_io_mode_q_reg_n_0_[0]\,
      I3 => spi_dir_reg_n_0,
      O => \spi_sr_in_buf[7]_i_3_n_0\
    );
spi_sr_in_buf_ready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF40FFFFFF400000"
    )
        port map (
      I0 => spi_mmio_en,
      I1 => spi_sr_in_buf_valid_reg_n_0,
      I2 => spi_sr_in_buf_ready_i_2_n_0,
      I3 => spi_sr_in_buf_ready_i_3_n_0,
      I4 => spi_sr_in_buf_ready,
      I5 => spi_sr_in_buf_ready_reg_n_0,
      O => spi_sr_in_buf_ready_i_1_n_0
    );
spi_sr_in_buf_ready_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555515555555555"
    )
        port map (
      I0 => spi_sr_in_buf_valid_reg_n_0,
      I1 => s_axi_lite_araddr(1),
      I2 => s_axi_lite_araddr(0),
      I3 => s_axi_lite_araddr(2),
      I4 => s_axi_lite_araddr(3),
      I5 => s_axi_lite_rd_en,
      O => spi_sr_in_buf_ready_i_10_n_0
    );
spi_sr_in_buf_ready_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7777707777777777"
    )
        port map (
      I0 => spi_sr_in_buf_valid_reg_n_0,
      I1 => spi_sr_in_buf_ready_reg_n_0,
      I2 => spi_sr_in_buf_ready_i_12_n_0,
      I3 => s_axi_lite_araddr(2),
      I4 => s_axi_lite_araddr(3),
      I5 => s_axi_lite_rd_en,
      O => spi_sr_in_buf_ready_i_11_n_0
    );
spi_sr_in_buf_ready_i_12: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => s_axi_lite_araddr(0),
      I1 => s_axi_lite_araddr(1),
      O => spi_sr_in_buf_ready_i_12_n_0
    );
spi_sr_in_buf_ready_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040000000000"
    )
        port map (
      I0 => \^s_axi_lite_rvalid_reg_0\,
      I1 => s_axi_lite_arvalid,
      I2 => s_axi_lite_araddr(3),
      I3 => s_axi_lite_araddr(2),
      I4 => s_axi_lite_araddr(0),
      I5 => s_axi_lite_araddr(1),
      O => spi_sr_in_buf_ready_i_2_n_0
    );
spi_sr_in_buf_ready_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0D0DCD010101010"
    )
        port map (
      I0 => spi_sr_in_buf_ready_i_5_n_0,
      I1 => spi_sr_in_buf_ready_i_6_n_0,
      I2 => spi_sr_in_buf_ready_i_7_n_0,
      I3 => spi_mmio_en,
      I4 => \^s_axi_full_rvalid_reg_0\,
      I5 => spi_sr_in_buf_ready_i_8_n_0,
      O => spi_sr_in_buf_ready_i_3_n_0
    );
spi_sr_in_buf_ready_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"04C434F43FFF3FFF"
    )
        port map (
      I0 => spi_sr_in_buf_ready_i_9_n_0,
      I1 => spi_sr_in_buf_ready_i_6_n_0,
      I2 => spi_sr_in_buf_ready_i_7_n_0,
      I3 => spi_sr_in_buf_ready_i_10_n_0,
      I4 => spi_sr_in_buf_ready_i_5_n_0,
      I5 => spi_sr_in_buf_ready_i_11_n_0,
      O => spi_sr_in_buf_ready
    );
spi_sr_in_buf_ready_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => spi_dir_reg_n_0,
      I1 => \spi_io_mode_reg_n_0_[0]\,
      I2 => \spi_io_mode_reg_n_0_[1]\,
      O => spi_sr_in_buf_ready_i_5_n_0
    );
spi_sr_in_buf_ready_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \spi_mmio_fsm_state_reg_n_0_[3]\,
      I1 => \spi_mmio_fsm_state_reg_n_0_[0]\,
      I2 => \spi_mmio_fsm_state_reg_n_0_[2]\,
      O => spi_sr_in_buf_ready_i_6_n_0
    );
spi_sr_in_buf_ready_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I1 => \spi_mmio_fsm_state_reg_n_0_[3]\,
      I2 => \spi_mmio_fsm_state_reg_n_0_[2]\,
      O => spi_sr_in_buf_ready_i_7_n_0
    );
spi_sr_in_buf_ready_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => spi_sr_in_buf_valid_reg_n_0,
      I1 => spi_sr_in_buf_ready_reg_n_0,
      O => spi_sr_in_buf_ready_i_8_n_0
    );
spi_sr_in_buf_ready_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FDFF"
    )
        port map (
      I0 => spi_mmio_en,
      I1 => \^s_axi_full_rvalid_reg_0\,
      I2 => spi_sr_in_buf_ready_reg_n_0,
      I3 => spi_sr_in_buf_valid_reg_n_0,
      O => spi_sr_in_buf_ready_i_9_n_0
    );
spi_sr_in_buf_ready_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => spi_sr_in_buf_ready_i_1_n_0,
      Q => spi_sr_in_buf_ready_reg_n_0,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_sr_in_buf_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_sr_in_buf,
      D => spi_sr_in_buf0_in(0),
      Q => data5(0),
      R => p_5_in
    );
\spi_sr_in_buf_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_sr_in_buf,
      D => spi_sr_in_buf0_in(1),
      Q => data5(1),
      R => p_5_in
    );
\spi_sr_in_buf_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_sr_in_buf,
      D => spi_sr_in_buf0_in(2),
      Q => data5(2),
      R => p_5_in
    );
\spi_sr_in_buf_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_sr_in_buf,
      D => spi_sr_in_buf0_in(3),
      Q => data5(3),
      R => p_5_in
    );
\spi_sr_in_buf_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_sr_in_buf,
      D => spi_sr_in_buf0_in(4),
      Q => data5(4),
      R => p_5_in
    );
\spi_sr_in_buf_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_sr_in_buf,
      D => spi_sr_in_buf0_in(5),
      Q => data5(5),
      R => p_5_in
    );
\spi_sr_in_buf_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_sr_in_buf,
      D => spi_sr_in_buf0_in(6),
      Q => data5(6),
      R => p_5_in
    );
\spi_sr_in_buf_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_sr_in_buf,
      D => spi_sr_in_buf0_in(7),
      Q => data5(7),
      R => p_5_in
    );
spi_sr_in_buf_valid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABFFFFAAAAAAAA"
    )
        port map (
      I0 => spi_sr_in_buf,
      I1 => \FSM_onehot_spi_fsm_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_spi_fsm_state_reg_n_0_[2]\,
      I3 => \FSM_onehot_spi_fsm_state_reg_n_0_[0]\,
      I4 => spi_sr_in_buf_ready_reg_n_0,
      I5 => spi_sr_in_buf_valid_reg_n_0,
      O => spi_sr_in_buf_valid_i_1_n_0
    );
spi_sr_in_buf_valid_q_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => spi_sr_in_buf_valid_reg_n_0,
      Q => spi_sr_in_buf_valid_q,
      R => s_axi_lite_awready_i_1_n_0
    );
spi_sr_in_buf_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => spi_sr_in_buf_valid_i_1_n_0,
      Q => spi_sr_in_buf_valid_reg_n_0,
      R => p_5_in
    );
\spi_sr_out_buf[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFB0000"
    )
        port map (
      I0 => spi_mmio_en,
      I1 => \spi_sr_out_buf[7]_i_4_n_0\,
      I2 => \spi_sr_out_buf[7]_i_5_n_0\,
      I3 => s_axi_lite_wdata(0),
      I4 => \spi_sr_out_buf[7]_i_3_n_0\,
      I5 => \spi_sr_out_buf[0]_i_2_n_0\,
      O => spi_sr_out_buf(0)
    );
\spi_sr_out_buf[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1055101055555555"
    )
        port map (
      I0 => \spi_mmio_fsm_state[3]_i_4_n_0\,
      I1 => \spi_sr_out_buf[7]_i_12_n_0\,
      I2 => \spi_mmio_rd_instr_reg_n_0_[0]\,
      I3 => \spi_sr_out_buf[7]_i_11_n_0\,
      I4 => \spi_mmio_mode_bits_reg_n_0_[0]\,
      I5 => \spi_sr_out_buf[0]_i_3_n_0\,
      O => \spi_sr_out_buf[0]_i_2_n_0\
    );
\spi_sr_out_buf[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F557F7FFFF57F7"
    )
        port map (
      I0 => \spi_sr_out_buf[7]_i_10_n_0\,
      I1 => \s_axi_full_araddr_q_reg_n_0_[0]\,
      I2 => \spi_mmio_addr_rem_reg_n_0_[1]\,
      I3 => \s_axi_full_araddr_q_reg_n_0_[16]\,
      I4 => \spi_mmio_addr_rem_reg_n_0_[0]\,
      I5 => \s_axi_full_araddr_q_reg_n_0_[8]\,
      O => \spi_sr_out_buf[0]_i_3_n_0\
    );
\spi_sr_out_buf[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5050D0D05050D0FF"
    )
        port map (
      I0 => \spi_sr_out_buf[7]_i_6_n_0\,
      I1 => s_axi_lite_wdata(1),
      I2 => \spi_sr_out_buf[7]_i_3_n_0\,
      I3 => \spi_sr_out_buf[1]_i_2_n_0\,
      I4 => spi_sr_out_buf_valid,
      I5 => spi_rd_req_reg_n_0,
      O => spi_sr_out_buf(1)
    );
\spi_sr_out_buf[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7707770700007707"
    )
        port map (
      I0 => \spi_sr_out_buf[1]_i_3_n_0\,
      I1 => \spi_sr_out_buf[7]_i_10_n_0\,
      I2 => \spi_mmio_mode_bits_reg_n_0_[1]\,
      I3 => \spi_sr_out_buf[7]_i_11_n_0\,
      I4 => \spi_mmio_rd_instr_reg_n_0_[1]\,
      I5 => \spi_sr_out_buf[7]_i_12_n_0\,
      O => \spi_sr_out_buf[1]_i_2_n_0\
    );
\spi_sr_out_buf[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \s_axi_full_araddr_q_reg_n_0_[9]\,
      I1 => \spi_mmio_addr_rem_reg_n_0_[0]\,
      I2 => \s_axi_full_araddr_q_reg_n_0_[17]\,
      I3 => \spi_mmio_addr_rem_reg_n_0_[1]\,
      I4 => \s_axi_full_araddr_q_reg_n_0_[1]\,
      O => \spi_sr_out_buf[1]_i_3_n_0\
    );
\spi_sr_out_buf[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5050D0D05050D0FF"
    )
        port map (
      I0 => \spi_sr_out_buf[7]_i_6_n_0\,
      I1 => s_axi_lite_wdata(2),
      I2 => \spi_sr_out_buf[7]_i_3_n_0\,
      I3 => \spi_sr_out_buf[2]_i_2_n_0\,
      I4 => spi_sr_out_buf_valid,
      I5 => spi_rd_req_reg_n_0,
      O => spi_sr_out_buf(2)
    );
\spi_sr_out_buf[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7707770700007707"
    )
        port map (
      I0 => \spi_sr_out_buf[2]_i_3_n_0\,
      I1 => \spi_sr_out_buf[7]_i_10_n_0\,
      I2 => \spi_mmio_mode_bits_reg_n_0_[2]\,
      I3 => \spi_sr_out_buf[7]_i_11_n_0\,
      I4 => \spi_mmio_rd_instr_reg_n_0_[2]\,
      I5 => \spi_sr_out_buf[7]_i_12_n_0\,
      O => \spi_sr_out_buf[2]_i_2_n_0\
    );
\spi_sr_out_buf[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \s_axi_full_araddr_q_reg_n_0_[10]\,
      I1 => \spi_mmio_addr_rem_reg_n_0_[0]\,
      I2 => \s_axi_full_araddr_q_reg_n_0_[18]\,
      I3 => \spi_mmio_addr_rem_reg_n_0_[1]\,
      I4 => \s_axi_full_araddr_q_reg_n_0_[2]\,
      O => \spi_sr_out_buf[2]_i_3_n_0\
    );
\spi_sr_out_buf[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5050D0D05050D0FF"
    )
        port map (
      I0 => \spi_sr_out_buf[7]_i_6_n_0\,
      I1 => s_axi_lite_wdata(3),
      I2 => \spi_sr_out_buf[7]_i_3_n_0\,
      I3 => \spi_sr_out_buf[3]_i_2_n_0\,
      I4 => spi_sr_out_buf_valid,
      I5 => spi_rd_req_reg_n_0,
      O => spi_sr_out_buf(3)
    );
\spi_sr_out_buf[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7707770700007707"
    )
        port map (
      I0 => \spi_sr_out_buf[3]_i_3_n_0\,
      I1 => \spi_sr_out_buf[7]_i_10_n_0\,
      I2 => \spi_mmio_mode_bits_reg_n_0_[3]\,
      I3 => \spi_sr_out_buf[7]_i_11_n_0\,
      I4 => \spi_mmio_rd_instr_reg_n_0_[3]\,
      I5 => \spi_sr_out_buf[7]_i_12_n_0\,
      O => \spi_sr_out_buf[3]_i_2_n_0\
    );
\spi_sr_out_buf[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \s_axi_full_araddr_q_reg_n_0_[11]\,
      I1 => \spi_mmio_addr_rem_reg_n_0_[0]\,
      I2 => \s_axi_full_araddr_q_reg_n_0_[19]\,
      I3 => \spi_mmio_addr_rem_reg_n_0_[1]\,
      I4 => \s_axi_full_araddr_q_reg_n_0_[3]\,
      O => \spi_sr_out_buf[3]_i_3_n_0\
    );
\spi_sr_out_buf[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5050D0D05050D0FF"
    )
        port map (
      I0 => \spi_sr_out_buf[7]_i_6_n_0\,
      I1 => s_axi_lite_wdata(4),
      I2 => \spi_sr_out_buf[7]_i_3_n_0\,
      I3 => \spi_sr_out_buf[4]_i_2_n_0\,
      I4 => spi_sr_out_buf_valid,
      I5 => spi_rd_req_reg_n_0,
      O => spi_sr_out_buf(4)
    );
\spi_sr_out_buf[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7707770700007707"
    )
        port map (
      I0 => \spi_sr_out_buf[4]_i_3_n_0\,
      I1 => \spi_sr_out_buf[7]_i_10_n_0\,
      I2 => \spi_mmio_mode_bits_reg_n_0_[4]\,
      I3 => \spi_sr_out_buf[7]_i_11_n_0\,
      I4 => \spi_mmio_rd_instr_reg_n_0_[4]\,
      I5 => \spi_sr_out_buf[7]_i_12_n_0\,
      O => \spi_sr_out_buf[4]_i_2_n_0\
    );
\spi_sr_out_buf[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \s_axi_full_araddr_q_reg_n_0_[12]\,
      I1 => \spi_mmio_addr_rem_reg_n_0_[0]\,
      I2 => \s_axi_full_araddr_q_reg_n_0_[20]\,
      I3 => \spi_mmio_addr_rem_reg_n_0_[1]\,
      I4 => \s_axi_full_araddr_q_reg_n_0_[4]\,
      O => \spi_sr_out_buf[4]_i_3_n_0\
    );
\spi_sr_out_buf[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5050D0D05050D0FF"
    )
        port map (
      I0 => \spi_sr_out_buf[7]_i_6_n_0\,
      I1 => s_axi_lite_wdata(5),
      I2 => \spi_sr_out_buf[7]_i_3_n_0\,
      I3 => \spi_sr_out_buf[5]_i_2_n_0\,
      I4 => spi_sr_out_buf_valid,
      I5 => spi_rd_req_reg_n_0,
      O => spi_sr_out_buf(5)
    );
\spi_sr_out_buf[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7707770700007707"
    )
        port map (
      I0 => \spi_sr_out_buf[5]_i_3_n_0\,
      I1 => \spi_sr_out_buf[7]_i_10_n_0\,
      I2 => \spi_mmio_mode_bits_reg_n_0_[5]\,
      I3 => \spi_sr_out_buf[7]_i_11_n_0\,
      I4 => \spi_mmio_rd_instr_reg_n_0_[5]\,
      I5 => \spi_sr_out_buf[7]_i_12_n_0\,
      O => \spi_sr_out_buf[5]_i_2_n_0\
    );
\spi_sr_out_buf[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \s_axi_full_araddr_q_reg_n_0_[13]\,
      I1 => \spi_mmio_addr_rem_reg_n_0_[0]\,
      I2 => \s_axi_full_araddr_q_reg_n_0_[21]\,
      I3 => \spi_mmio_addr_rem_reg_n_0_[1]\,
      I4 => \s_axi_full_araddr_q_reg_n_0_[5]\,
      O => \spi_sr_out_buf[5]_i_3_n_0\
    );
\spi_sr_out_buf[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5050D0D05050D0FF"
    )
        port map (
      I0 => \spi_sr_out_buf[7]_i_6_n_0\,
      I1 => s_axi_lite_wdata(6),
      I2 => \spi_sr_out_buf[7]_i_3_n_0\,
      I3 => \spi_sr_out_buf[6]_i_2_n_0\,
      I4 => spi_sr_out_buf_valid,
      I5 => spi_rd_req_reg_n_0,
      O => spi_sr_out_buf(6)
    );
\spi_sr_out_buf[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7707770700007707"
    )
        port map (
      I0 => \spi_sr_out_buf[6]_i_3_n_0\,
      I1 => \spi_sr_out_buf[7]_i_10_n_0\,
      I2 => \spi_mmio_mode_bits_reg_n_0_[6]\,
      I3 => \spi_sr_out_buf[7]_i_11_n_0\,
      I4 => \spi_mmio_rd_instr_reg_n_0_[6]\,
      I5 => \spi_sr_out_buf[7]_i_12_n_0\,
      O => \spi_sr_out_buf[6]_i_2_n_0\
    );
\spi_sr_out_buf[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \s_axi_full_araddr_q_reg_n_0_[14]\,
      I1 => \spi_mmio_addr_rem_reg_n_0_[0]\,
      I2 => \s_axi_full_araddr_q_reg_n_0_[22]\,
      I3 => \spi_mmio_addr_rem_reg_n_0_[1]\,
      I4 => \s_axi_full_araddr_q_reg_n_0_[6]\,
      O => \spi_sr_out_buf[6]_i_3_n_0\
    );
\spi_sr_out_buf[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"555D5555"
    )
        port map (
      I0 => \spi_sr_out_buf[7]_i_3_n_0\,
      I1 => \spi_sr_out_buf[7]_i_4_n_0\,
      I2 => spi_mmio_en,
      I3 => \spi_sr_out_buf[7]_i_5_n_0\,
      I4 => spi_en_reg_n_0,
      O => \spi_sr_out_buf[7]_i_1_n_0\
    );
\spi_sr_out_buf[7]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I1 => \spi_mmio_fsm_state_reg_n_0_[2]\,
      I2 => \spi_mmio_fsm_state_reg_n_0_[3]\,
      I3 => \spi_mmio_fsm_state_reg_n_0_[0]\,
      O => \spi_sr_out_buf[7]_i_10_n_0\
    );
\spi_sr_out_buf[7]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => \spi_mmio_fsm_state_reg_n_0_[0]\,
      I1 => \spi_mmio_fsm_state_reg_n_0_[3]\,
      I2 => \spi_mmio_fsm_state_reg_n_0_[2]\,
      I3 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      O => \spi_sr_out_buf[7]_i_11_n_0\
    );
\spi_sr_out_buf[7]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFB"
    )
        port map (
      I0 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I1 => \spi_mmio_fsm_state_reg_n_0_[2]\,
      I2 => \spi_mmio_fsm_state_reg_n_0_[3]\,
      I3 => \spi_mmio_fsm_state_reg_n_0_[0]\,
      O => \spi_sr_out_buf[7]_i_12_n_0\
    );
\spi_sr_out_buf[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5050D0D05050D0FF"
    )
        port map (
      I0 => \spi_sr_out_buf[7]_i_6_n_0\,
      I1 => s_axi_lite_wdata(7),
      I2 => \spi_sr_out_buf[7]_i_3_n_0\,
      I3 => \spi_sr_out_buf[7]_i_7_n_0\,
      I4 => spi_sr_out_buf_valid,
      I5 => spi_rd_req_reg_n_0,
      O => spi_sr_out_buf(7)
    );
\spi_sr_out_buf[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA80AAAA"
    )
        port map (
      I0 => spi_en_reg_n_0,
      I1 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I2 => \spi_mmio_fsm_state_reg_n_0_[0]\,
      I3 => \spi_mmio_fsm_state_reg_n_0_[3]\,
      I4 => \spi_mmio_fsm_state_reg_n_0_[2]\,
      I5 => \spi_mmio_fsm_state[3]_i_4_n_0\,
      O => \spi_sr_out_buf[7]_i_3_n_0\
    );
\spi_sr_out_buf[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002000"
    )
        port map (
      I0 => s_axi_lite_awaddr(2),
      I1 => s_axi_lite_awaddr(1),
      I2 => \^s_axi_lite_awready\,
      I3 => s_axi_lite_awaddr(0),
      I4 => s_axi_lite_awaddr(3),
      O => \spi_sr_out_buf[7]_i_4_n_0\
    );
\spi_sr_out_buf[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFFFFFF"
    )
        port map (
      I0 => spi_sr_out_buf_valid,
      I1 => s_axi_lite_wdata(9),
      I2 => s_axi_lite_wdata(8),
      I3 => s_axi_lite_wstrb(0),
      I4 => s_axi_lite_wstrb(1),
      O => \spi_sr_out_buf[7]_i_5_n_0\
    );
\spi_sr_out_buf[7]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000222"
    )
        port map (
      I0 => \spi_sr_out_buf[7]_i_4_n_0\,
      I1 => spi_mmio_en,
      I2 => spi_sr_out_buf_valid,
      I3 => spi_en_reg_n_0,
      I4 => \spi_sr_out_buf[7]_i_8_n_0\,
      O => \spi_sr_out_buf[7]_i_6_n_0\
    );
\spi_sr_out_buf[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7707770700007707"
    )
        port map (
      I0 => \spi_sr_out_buf[7]_i_9_n_0\,
      I1 => \spi_sr_out_buf[7]_i_10_n_0\,
      I2 => \spi_mmio_mode_bits_reg_n_0_[7]\,
      I3 => \spi_sr_out_buf[7]_i_11_n_0\,
      I4 => \spi_mmio_rd_instr_reg_n_0_[7]\,
      I5 => \spi_sr_out_buf[7]_i_12_n_0\,
      O => \spi_sr_out_buf[7]_i_7_n_0\
    );
\spi_sr_out_buf[7]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => s_axi_lite_wstrb(1),
      I1 => s_axi_lite_wstrb(0),
      I2 => s_axi_lite_wdata(8),
      I3 => s_axi_lite_wdata(9),
      O => \spi_sr_out_buf[7]_i_8_n_0\
    );
\spi_sr_out_buf[7]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \s_axi_full_araddr_q_reg_n_0_[15]\,
      I1 => \spi_mmio_addr_rem_reg_n_0_[0]\,
      I2 => \s_axi_full_araddr_q_reg_n_0_[23]\,
      I3 => \spi_mmio_addr_rem_reg_n_0_[1]\,
      I4 => \s_axi_full_araddr_q_reg_n_0_[7]\,
      O => \spi_sr_out_buf[7]_i_9_n_0\
    );
spi_sr_out_buf_ready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEFFFFFEEEE0000"
    )
        port map (
      I0 => \FSM_onehot_spi_fsm_state_reg_n_0_[0]\,
      I1 => spi_dir_i_2_n_0,
      I2 => \FSM_onehot_spi_fsm_state_reg_n_0_[2]\,
      I3 => \FSM_onehot_spi_fsm_state_reg_n_0_[1]\,
      I4 => spi_sr_out_buf_valid,
      I5 => spi_sr_out_buf_ready_reg_n_0,
      O => spi_sr_out_buf_ready_i_1_n_0
    );
spi_sr_out_buf_ready_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => spi_sr_out_buf_ready_i_1_n_0,
      Q => spi_sr_out_buf_ready_reg_n_0,
      R => p_5_in
    );
\spi_sr_out_buf_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_sr_out_buf[7]_i_1_n_0\,
      D => spi_sr_out_buf(0),
      Q => \spi_sr_out_buf_reg_n_0_[0]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_sr_out_buf_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_sr_out_buf[7]_i_1_n_0\,
      D => spi_sr_out_buf(1),
      Q => \spi_sr_out_buf_reg_n_0_[1]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_sr_out_buf_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_sr_out_buf[7]_i_1_n_0\,
      D => spi_sr_out_buf(2),
      Q => \spi_sr_out_buf_reg_n_0_[2]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_sr_out_buf_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_sr_out_buf[7]_i_1_n_0\,
      D => spi_sr_out_buf(3),
      Q => \spi_sr_out_buf_reg_n_0_[3]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_sr_out_buf_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_sr_out_buf[7]_i_1_n_0\,
      D => spi_sr_out_buf(4),
      Q => \spi_sr_out_buf_reg_n_0_[4]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_sr_out_buf_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_sr_out_buf[7]_i_1_n_0\,
      D => spi_sr_out_buf(5),
      Q => \spi_sr_out_buf_reg_n_0_[5]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_sr_out_buf_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_sr_out_buf[7]_i_1_n_0\,
      D => spi_sr_out_buf(6),
      Q => \spi_sr_out_buf_reg_n_0_[6]\,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_sr_out_buf_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_sr_out_buf[7]_i_1_n_0\,
      D => spi_sr_out_buf(7),
      Q => \spi_sr_out_buf_reg_n_0_[7]\,
      R => s_axi_lite_awready_i_1_n_0
    );
spi_sr_out_buf_valid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F4F4F444FF0000"
    )
        port map (
      I0 => spi_sr_out_buf_valid_i_2_n_0,
      I1 => \spi_mmio_addr_rem[0]_i_2_n_0\,
      I2 => spi_en_reg_n_0,
      I3 => spi_sr_out_buf_ready_reg_n_0,
      I4 => spi_sr_out_buf_valid,
      I5 => \spi_sr_out_buf[7]_i_1_n_0\,
      O => spi_sr_out_buf_valid_i_1_n_0
    );
spi_sr_out_buf_valid_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I1 => \spi_mmio_fsm_state_reg_n_0_[0]\,
      O => spi_sr_out_buf_valid_i_2_n_0
    );
spi_sr_out_buf_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => spi_sr_out_buf_valid_i_1_n_0,
      Q => spi_sr_out_buf_valid,
      R => s_axi_lite_awready_i_1_n_0
    );
\spi_sr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_sr_bit_cnt[3]_i_1_n_0\,
      D => \spi_sr[0]_i_1_n_0\,
      Q => \spi_sr_reg_n_0_[0]\,
      R => p_5_in
    );
\spi_sr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_sr_bit_cnt[3]_i_1_n_0\,
      D => \spi_sr[1]_i_1_n_0\,
      Q => \spi_sr_reg_n_0_[1]\,
      R => p_5_in
    );
\spi_sr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_sr_bit_cnt[3]_i_1_n_0\,
      D => \spi_sr[2]_i_1_n_0\,
      Q => \spi_sr_reg_n_0_[2]\,
      R => p_5_in
    );
\spi_sr_reg[2]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spi_sr[2]_i_4_n_0\,
      I1 => \spi_sr[2]_i_5_n_0\,
      O => \spi_sr_reg[2]_i_2_n_0\,
      S => spi_lsb_first_reg_n_0
    );
\spi_sr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_sr_bit_cnt[3]_i_1_n_0\,
      D => \spi_sr[3]_i_1_n_0\,
      Q => \spi_sr_reg_n_0_[3]\,
      R => p_5_in
    );
\spi_sr_reg[3]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spi_sr[3]_i_4_n_0\,
      I1 => \spi_sr[3]_i_5_n_0\,
      O => \spi_sr_reg[3]_i_2_n_0\,
      S => spi_lsb_first_reg_n_0
    );
\spi_sr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_sr_bit_cnt[3]_i_1_n_0\,
      D => \spi_sr[4]_i_1_n_0\,
      Q => \spi_sr_reg_n_0_[4]\,
      R => p_5_in
    );
\spi_sr_reg[4]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spi_sr[4]_i_4_n_0\,
      I1 => \spi_sr[4]_i_5_n_0\,
      O => \spi_sr_reg[4]_i_2_n_0\,
      S => spi_lsb_first_reg_n_0
    );
\spi_sr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_sr_bit_cnt[3]_i_1_n_0\,
      D => \spi_sr[5]_i_1_n_0\,
      Q => \spi_sr_reg_n_0_[5]\,
      R => p_5_in
    );
\spi_sr_reg[5]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spi_sr[5]_i_4_n_0\,
      I1 => \spi_sr[5]_i_5_n_0\,
      O => \spi_sr_reg[5]_i_2_n_0\,
      S => spi_lsb_first_reg_n_0
    );
\spi_sr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_sr_bit_cnt[3]_i_1_n_0\,
      D => \spi_sr[6]_i_1_n_0\,
      Q => \spi_sr_reg_n_0_[6]\,
      R => p_5_in
    );
\spi_sr_reg[6]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spi_sr[6]_i_4_n_0\,
      I1 => \spi_sr[6]_i_5_n_0\,
      O => \spi_sr_reg[6]_i_2_n_0\,
      S => spi_lsb_first_reg_n_0
    );
\spi_sr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_sr_bit_cnt[3]_i_1_n_0\,
      D => \spi_sr[7]_i_1_n_0\,
      Q => p_2_in(0),
      R => p_5_in
    );
\spi_sr_reg[7]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spi_sr[7]_i_4_n_0\,
      I1 => \spi_sr[7]_i_5_n_0\,
      O => \spi_sr_reg[7]_i_2_n_0\,
      S => spi_lsb_first_reg_n_0
    );
\spi_ss_o[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7777F0FF4444F000"
    )
        port map (
      I0 => \spi_mmio_fsm_state_reg_n_0_[1]\,
      I1 => \spi_mmio_cs_mask_reg_n_0_[0]\,
      I2 => s_axi_lite_wdata(0),
      I3 => \spi_ss_o[0]_i_2_n_0\,
      I4 => \spi_ss_o[0]_i_3_n_0\,
      I5 => \^spi_ss_o_reg[0]_0\,
      O => \spi_ss_o[0]_i_1_n_0\
    );
\spi_ss_o[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \spi_mmio_rd_instr_io_mode[1]_i_2_n_0\,
      I1 => s_axi_lite_awaddr(0),
      I2 => s_axi_lite_awaddr(3),
      I3 => s_axi_lite_awaddr(1),
      O => \spi_ss_o[0]_i_2_n_0\
    );
\spi_ss_o[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \spi_mmio_fsm_state_reg_n_0_[2]\,
      I1 => \spi_mmio_fsm_state_reg_n_0_[3]\,
      I2 => \spi_mmio_fsm_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_spi_fsm_state_reg_n_0_[0]\,
      O => \spi_ss_o[0]_i_3_n_0\
    );
\spi_ss_o_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \spi_ss_o[0]_i_1_n_0\,
      Q => \^spi_ss_o_reg[0]_0\,
      S => s_axi_lite_awready_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_qspi_mm_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_lite_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_lite_awvalid : in STD_LOGIC;
    s_axi_lite_awready : out STD_LOGIC;
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_lite_wvalid : in STD_LOGIC;
    s_axi_lite_wready : out STD_LOGIC;
    s_axi_lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_bvalid : out STD_LOGIC;
    s_axi_lite_bready : in STD_LOGIC;
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_lite_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_lite_arvalid : in STD_LOGIC;
    s_axi_lite_arready : out STD_LOGIC;
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_rvalid : out STD_LOGIC;
    s_axi_lite_rready : in STD_LOGIC;
    irq : out STD_LOGIC;
    s_axi_full_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_full_awaddr : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi_full_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_full_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_full_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_full_awlock : in STD_LOGIC;
    s_axi_full_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_full_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_full_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_full_awvalid : in STD_LOGIC;
    s_axi_full_awready : out STD_LOGIC;
    s_axi_full_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_full_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_full_wlast : in STD_LOGIC;
    s_axi_full_wvalid : in STD_LOGIC;
    s_axi_full_wready : out STD_LOGIC;
    s_axi_full_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_full_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_full_bvalid : out STD_LOGIC;
    s_axi_full_bready : in STD_LOGIC;
    s_axi_full_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_full_araddr : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi_full_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_full_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_full_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_full_arlock : in STD_LOGIC;
    s_axi_full_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_full_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_full_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_full_arvalid : in STD_LOGIC;
    s_axi_full_arready : out STD_LOGIC;
    s_axi_full_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_full_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_full_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_full_rlast : out STD_LOGIC;
    s_axi_full_rvalid : out STD_LOGIC;
    s_axi_full_rready : in STD_LOGIC;
    spi_sck_i : in STD_LOGIC;
    spi_sck_o : out STD_LOGIC;
    spi_sck_t : out STD_LOGIC;
    spi_ss_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    spi_ss_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    spi_ss_t : out STD_LOGIC;
    spi_io0_i : in STD_LOGIC;
    spi_io0_o : out STD_LOGIC;
    spi_io0_t : out STD_LOGIC;
    spi_io1_i : in STD_LOGIC;
    spi_io1_o : out STD_LOGIC;
    spi_io1_t : out STD_LOGIC;
    spi_io2_i : in STD_LOGIC;
    spi_io2_o : out STD_LOGIC;
    spi_io2_t : out STD_LOGIC;
    spi_io3_i : in STD_LOGIC;
    spi_io3_o : out STD_LOGIC;
    spi_io3_t : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of icyradio_axi_qspi_mm_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of icyradio_axi_qspi_mm_0_0 : entity is "icyradio_axi_qspi_mm_0_0,axi_qspi_mm,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of icyradio_axi_qspi_mm_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of icyradio_axi_qspi_mm_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of icyradio_axi_qspi_mm_0_0 : entity is "axi_qspi_mm,Vivado 2023.2";
end icyradio_axi_qspi_mm_0_0;

architecture STRUCTURE of icyradio_axi_qspi_mm_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axi_lite_wready\ : STD_LOGIC;
  signal \^spi_io2_t\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF s_axi_lite:s_axi_full, ASSOCIATED_RESET aresetn, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN icyradio_axi_pcie_0_0_axi_aclk_out, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of irq : signal is "xilinx.com:signal:interrupt:1.0 irq INTERRUPT";
  attribute X_INTERFACE_PARAMETER of irq : signal is "XIL_INTERFACENAME irq, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute X_INTERFACE_INFO of s_axi_full_arlock : signal is "xilinx.com:interface:aximm:1.0 s_axi_full ARLOCK";
  attribute X_INTERFACE_INFO of s_axi_full_arready : signal is "xilinx.com:interface:aximm:1.0 s_axi_full ARREADY";
  attribute X_INTERFACE_INFO of s_axi_full_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_full ARVALID";
  attribute X_INTERFACE_INFO of s_axi_full_awlock : signal is "xilinx.com:interface:aximm:1.0 s_axi_full AWLOCK";
  attribute X_INTERFACE_INFO of s_axi_full_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi_full AWREADY";
  attribute X_INTERFACE_INFO of s_axi_full_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_full AWVALID";
  attribute X_INTERFACE_INFO of s_axi_full_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi_full BREADY";
  attribute X_INTERFACE_INFO of s_axi_full_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_full BVALID";
  attribute X_INTERFACE_INFO of s_axi_full_rlast : signal is "xilinx.com:interface:aximm:1.0 s_axi_full RLAST";
  attribute X_INTERFACE_INFO of s_axi_full_rready : signal is "xilinx.com:interface:aximm:1.0 s_axi_full RREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_full_rready : signal is "XIL_INTERFACENAME s_axi_full, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 125000000, ID_WIDTH 4, ADDR_WIDTH 24, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN icyradio_axi_pcie_0_0_axi_aclk_out, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_full_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_full RVALID";
  attribute X_INTERFACE_INFO of s_axi_full_wlast : signal is "xilinx.com:interface:aximm:1.0 s_axi_full WLAST";
  attribute X_INTERFACE_INFO of s_axi_full_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi_full WREADY";
  attribute X_INTERFACE_INFO of s_axi_full_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_full WVALID";
  attribute X_INTERFACE_INFO of s_axi_lite_arready : signal is "xilinx.com:interface:aximm:1.0 s_axi_lite ARREADY";
  attribute X_INTERFACE_INFO of s_axi_lite_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_lite ARVALID";
  attribute X_INTERFACE_INFO of s_axi_lite_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi_lite AWREADY";
  attribute X_INTERFACE_INFO of s_axi_lite_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_lite AWVALID";
  attribute X_INTERFACE_INFO of s_axi_lite_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi_lite BREADY";
  attribute X_INTERFACE_INFO of s_axi_lite_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_lite BVALID";
  attribute X_INTERFACE_INFO of s_axi_lite_rready : signal is "xilinx.com:interface:aximm:1.0 s_axi_lite RREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_lite_rready : signal is "XIL_INTERFACENAME s_axi_lite, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 125000000, ID_WIDTH 0, ADDR_WIDTH 6, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN icyradio_axi_pcie_0_0_axi_aclk_out, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_lite_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_lite RVALID";
  attribute X_INTERFACE_INFO of s_axi_lite_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi_lite WREADY";
  attribute X_INTERFACE_INFO of s_axi_lite_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_lite WVALID";
  attribute X_INTERFACE_INFO of spi_io0_i : signal is "xilinx.com:interface:spi:1.0 spi IO0_I";
  attribute X_INTERFACE_INFO of spi_io0_o : signal is "xilinx.com:interface:spi:1.0 spi IO0_O";
  attribute X_INTERFACE_INFO of spi_io0_t : signal is "xilinx.com:interface:spi:1.0 spi IO0_T";
  attribute X_INTERFACE_INFO of spi_io1_i : signal is "xilinx.com:interface:spi:1.0 spi IO1_I";
  attribute X_INTERFACE_INFO of spi_io1_o : signal is "xilinx.com:interface:spi:1.0 spi IO1_O";
  attribute X_INTERFACE_INFO of spi_io1_t : signal is "xilinx.com:interface:spi:1.0 spi IO1_T";
  attribute X_INTERFACE_INFO of spi_io2_i : signal is "xilinx.com:interface:spi:1.0 spi IO2_I";
  attribute X_INTERFACE_INFO of spi_io2_o : signal is "xilinx.com:interface:spi:1.0 spi IO2_O";
  attribute X_INTERFACE_INFO of spi_io2_t : signal is "xilinx.com:interface:spi:1.0 spi IO2_T";
  attribute X_INTERFACE_INFO of spi_io3_i : signal is "xilinx.com:interface:spi:1.0 spi IO3_I";
  attribute X_INTERFACE_INFO of spi_io3_o : signal is "xilinx.com:interface:spi:1.0 spi IO3_O";
  attribute X_INTERFACE_INFO of spi_io3_t : signal is "xilinx.com:interface:spi:1.0 spi IO3_T";
  attribute X_INTERFACE_INFO of spi_sck_i : signal is "xilinx.com:interface:spi:1.0 spi SCK_I";
  attribute X_INTERFACE_INFO of spi_sck_o : signal is "xilinx.com:interface:spi:1.0 spi SCK_O";
  attribute X_INTERFACE_INFO of spi_sck_t : signal is "xilinx.com:interface:spi:1.0 spi SCK_T";
  attribute X_INTERFACE_INFO of spi_ss_t : signal is "xilinx.com:interface:spi:1.0 spi SS_T";
  attribute X_INTERFACE_INFO of s_axi_full_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axi_full ARADDR";
  attribute X_INTERFACE_INFO of s_axi_full_arburst : signal is "xilinx.com:interface:aximm:1.0 s_axi_full ARBURST";
  attribute X_INTERFACE_INFO of s_axi_full_arcache : signal is "xilinx.com:interface:aximm:1.0 s_axi_full ARCACHE";
  attribute X_INTERFACE_INFO of s_axi_full_arid : signal is "xilinx.com:interface:aximm:1.0 s_axi_full ARID";
  attribute X_INTERFACE_INFO of s_axi_full_arlen : signal is "xilinx.com:interface:aximm:1.0 s_axi_full ARLEN";
  attribute X_INTERFACE_INFO of s_axi_full_arprot : signal is "xilinx.com:interface:aximm:1.0 s_axi_full ARPROT";
  attribute X_INTERFACE_INFO of s_axi_full_arqos : signal is "xilinx.com:interface:aximm:1.0 s_axi_full ARQOS";
  attribute X_INTERFACE_INFO of s_axi_full_arsize : signal is "xilinx.com:interface:aximm:1.0 s_axi_full ARSIZE";
  attribute X_INTERFACE_INFO of s_axi_full_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi_full AWADDR";
  attribute X_INTERFACE_INFO of s_axi_full_awburst : signal is "xilinx.com:interface:aximm:1.0 s_axi_full AWBURST";
  attribute X_INTERFACE_INFO of s_axi_full_awcache : signal is "xilinx.com:interface:aximm:1.0 s_axi_full AWCACHE";
  attribute X_INTERFACE_INFO of s_axi_full_awid : signal is "xilinx.com:interface:aximm:1.0 s_axi_full AWID";
  attribute X_INTERFACE_INFO of s_axi_full_awlen : signal is "xilinx.com:interface:aximm:1.0 s_axi_full AWLEN";
  attribute X_INTERFACE_INFO of s_axi_full_awprot : signal is "xilinx.com:interface:aximm:1.0 s_axi_full AWPROT";
  attribute X_INTERFACE_INFO of s_axi_full_awqos : signal is "xilinx.com:interface:aximm:1.0 s_axi_full AWQOS";
  attribute X_INTERFACE_INFO of s_axi_full_awsize : signal is "xilinx.com:interface:aximm:1.0 s_axi_full AWSIZE";
  attribute X_INTERFACE_INFO of s_axi_full_bid : signal is "xilinx.com:interface:aximm:1.0 s_axi_full BID";
  attribute X_INTERFACE_INFO of s_axi_full_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi_full BRESP";
  attribute X_INTERFACE_INFO of s_axi_full_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi_full RDATA";
  attribute X_INTERFACE_INFO of s_axi_full_rid : signal is "xilinx.com:interface:aximm:1.0 s_axi_full RID";
  attribute X_INTERFACE_INFO of s_axi_full_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axi_full RRESP";
  attribute X_INTERFACE_INFO of s_axi_full_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi_full WDATA";
  attribute X_INTERFACE_INFO of s_axi_full_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axi_full WSTRB";
  attribute X_INTERFACE_INFO of s_axi_lite_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axi_lite ARADDR";
  attribute X_INTERFACE_INFO of s_axi_lite_arprot : signal is "xilinx.com:interface:aximm:1.0 s_axi_lite ARPROT";
  attribute X_INTERFACE_INFO of s_axi_lite_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi_lite AWADDR";
  attribute X_INTERFACE_INFO of s_axi_lite_awprot : signal is "xilinx.com:interface:aximm:1.0 s_axi_lite AWPROT";
  attribute X_INTERFACE_INFO of s_axi_lite_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi_lite BRESP";
  attribute X_INTERFACE_INFO of s_axi_lite_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA";
  attribute X_INTERFACE_INFO of s_axi_lite_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axi_lite RRESP";
  attribute X_INTERFACE_INFO of s_axi_lite_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi_lite WDATA";
  attribute X_INTERFACE_INFO of s_axi_lite_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axi_lite WSTRB";
  attribute X_INTERFACE_INFO of spi_ss_i : signal is "xilinx.com:interface:spi:1.0 spi SS_I";
  attribute X_INTERFACE_INFO of spi_ss_o : signal is "xilinx.com:interface:spi:1.0 spi SS_O";
begin
  s_axi_full_bresp(1) <= \<const0>\;
  s_axi_full_bresp(0) <= \<const0>\;
  s_axi_full_rresp(1) <= \<const0>\;
  s_axi_full_rresp(0) <= \<const0>\;
  s_axi_lite_awready <= \^s_axi_lite_wready\;
  s_axi_lite_bresp(1) <= \<const0>\;
  s_axi_lite_bresp(0) <= \<const0>\;
  s_axi_lite_rresp(1) <= \<const0>\;
  s_axi_lite_rresp(0) <= \<const0>\;
  s_axi_lite_wready <= \^s_axi_lite_wready\;
  spi_io2_t <= \^spi_io2_t\;
  spi_io3_t <= \^spi_io2_t\;
  spi_sck_t <= \<const0>\;
  spi_ss_t <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.icyradio_axi_qspi_mm_0_0_axi_qspi_mm
     port map (
      aclk => aclk,
      aresetn => aresetn,
      irq => irq,
      s_axi_full_araddr(23 downto 0) => s_axi_full_araddr(23 downto 0),
      s_axi_full_arid(3 downto 0) => s_axi_full_arid(3 downto 0),
      s_axi_full_arlen(7 downto 0) => s_axi_full_arlen(7 downto 0),
      s_axi_full_arready_reg_0 => s_axi_full_arready,
      s_axi_full_arsize(2 downto 0) => s_axi_full_arsize(2 downto 0),
      s_axi_full_arvalid => s_axi_full_arvalid,
      s_axi_full_awid(3 downto 0) => s_axi_full_awid(3 downto 0),
      s_axi_full_awready => s_axi_full_awready,
      s_axi_full_awvalid => s_axi_full_awvalid,
      s_axi_full_bid(3 downto 0) => s_axi_full_bid(3 downto 0),
      s_axi_full_bready => s_axi_full_bready,
      s_axi_full_bvalid => s_axi_full_bvalid,
      s_axi_full_rdata(63 downto 0) => s_axi_full_rdata(63 downto 0),
      s_axi_full_rid(3 downto 0) => s_axi_full_rid(3 downto 0),
      s_axi_full_rlast => s_axi_full_rlast,
      s_axi_full_rready => s_axi_full_rready,
      s_axi_full_rvalid_reg_0 => s_axi_full_rvalid,
      s_axi_full_wlast => s_axi_full_wlast,
      s_axi_full_wready => s_axi_full_wready,
      s_axi_full_wvalid => s_axi_full_wvalid,
      s_axi_lite_araddr(3 downto 0) => s_axi_lite_araddr(5 downto 2),
      s_axi_lite_arready => s_axi_lite_arready,
      s_axi_lite_arvalid => s_axi_lite_arvalid,
      s_axi_lite_awaddr(3 downto 0) => s_axi_lite_awaddr(5 downto 2),
      s_axi_lite_awready => \^s_axi_lite_wready\,
      s_axi_lite_awvalid => s_axi_lite_awvalid,
      s_axi_lite_bready => s_axi_lite_bready,
      s_axi_lite_bvalid => s_axi_lite_bvalid,
      s_axi_lite_rdata(31 downto 0) => s_axi_lite_rdata(31 downto 0),
      s_axi_lite_rready => s_axi_lite_rready,
      s_axi_lite_rvalid_reg_0 => s_axi_lite_rvalid,
      s_axi_lite_wdata(27 downto 12) => s_axi_lite_wdata(31 downto 16),
      s_axi_lite_wdata(11 downto 10) => s_axi_lite_wdata(13 downto 12),
      s_axi_lite_wdata(9 downto 0) => s_axi_lite_wdata(9 downto 0),
      s_axi_lite_wstrb(3 downto 0) => s_axi_lite_wstrb(3 downto 0),
      s_axi_lite_wvalid => s_axi_lite_wvalid,
      spi_io0_i => spi_io0_i,
      spi_io0_o => spi_io0_o,
      spi_io0_t => spi_io0_t,
      spi_io1_i => spi_io1_i,
      spi_io1_o => spi_io1_o,
      spi_io1_t => spi_io1_t,
      spi_io2_i => spi_io2_i,
      spi_io2_o => spi_io2_o,
      spi_io2_t => \^spi_io2_t\,
      spi_io3_i => spi_io3_i,
      spi_io3_o => spi_io3_o,
      spi_sck_o => spi_sck_o,
      \spi_ss_o_reg[0]_0\ => spi_ss_o(0)
    );
end STRUCTURE;
