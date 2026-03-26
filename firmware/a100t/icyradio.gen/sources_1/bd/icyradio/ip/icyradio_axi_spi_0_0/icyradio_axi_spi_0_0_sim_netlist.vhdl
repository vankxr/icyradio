-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Thu Mar  6 16:08:33 2025
-- Host        : node4-dev running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top icyradio_axi_spi_0_0 -prefix
--               icyradio_axi_spi_0_0_ icyradio_axi_spi_0_0_sim_netlist.vhdl
-- Design      : icyradio_axi_spi_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_spi_0_0_axi_spi is
  port (
    s_axi_wready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 20 downto 0 );
    spi_io1_o : out STD_LOGIC;
    spi_io0_o : out STD_LOGIC;
    spi_io1_t : out STD_LOGIC;
    spi_io0_t : out STD_LOGIC;
    s_axi_rvalid_reg_0 : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    spi_ss_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bvalid : out STD_LOGIC;
    irq : out STD_LOGIC;
    spi_sck_o : out STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    spi_io0_i : in STD_LOGIC;
    spi_io1_i : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC
  );
end icyradio_axi_spi_0_0_axi_spi;

architecture STRUCTURE of icyradio_axi_spi_0_0_axi_spi is
  signal \FSM_onehot_spi_fsm_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_spi_fsm_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_spi_fsm_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_spi_fsm_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_spi_fsm_state_reg_n_0_[2]\ : STD_LOGIC;
  signal data3 : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal data5 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal in14 : STD_LOGIC_VECTOR ( 7 downto 0 );
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
  signal \irq_pend[1]_i_2_n_0\ : STD_LOGIC;
  signal \irq_pend[2]_i_1_n_0\ : STD_LOGIC;
  signal \irq_pend[2]_i_2_n_0\ : STD_LOGIC;
  signal \irq_pend[2]_i_3_n_0\ : STD_LOGIC;
  signal \irq_pend_reg_n_0_[0]\ : STD_LOGIC;
  signal \irq_pend_reg_n_0_[1]\ : STD_LOGIC;
  signal \irq_pend_reg_n_0_[2]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 4 downto 3 );
  signal \p_0_in__0\ : STD_LOGIC;
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_2_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s_axi_awready0 : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal s_axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal s_axi_rd_en : STD_LOGIC;
  signal \s_axi_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[0]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[0]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[1]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[2]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[3]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[4]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[5]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal s_axi_rdata_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_rvalid_reg_0\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal spi_cpol : STD_LOGIC;
  signal spi_dir_i_1_n_0 : STD_LOGIC;
  signal spi_dir_reg_n_0 : STD_LOGIC;
  signal spi_en : STD_LOGIC;
  signal spi_en_i_1_n_0 : STD_LOGIC;
  signal spi_fsm_state : STD_LOGIC;
  signal \spi_fsm_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \spi_fsm_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \spi_fsm_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \spi_fsm_state_reg_n_0_[1]\ : STD_LOGIC;
  signal spi_idle_q : STD_LOGIC;
  signal \^spi_io0_o\ : STD_LOGIC;
  signal \^spi_io0_t\ : STD_LOGIC;
  signal \^spi_io1_o\ : STD_LOGIC;
  signal \^spi_io1_t\ : STD_LOGIC;
  signal spi_io_mode : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \spi_io_mode[0]_i_1_n_0\ : STD_LOGIC;
  signal \spi_io_mode[1]_i_1_n_0\ : STD_LOGIC;
  signal \spi_io_mode_q0__0\ : STD_LOGIC;
  signal \spi_io_mode_q1__2\ : STD_LOGIC;
  signal \spi_io_mode_q[0]_i_1_n_0\ : STD_LOGIC;
  signal \spi_io_mode_q[1]_i_1_n_0\ : STD_LOGIC;
  signal \spi_io_mode_q[1]_i_2_n_0\ : STD_LOGIC;
  signal \spi_io_mode_q_reg_n_0_[0]\ : STD_LOGIC;
  signal \spi_io_mode_q_reg_n_0_[1]\ : STD_LOGIC;
  signal spi_io_o : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \spi_io_o[0]_i_1_n_0\ : STD_LOGIC;
  signal \spi_io_o[0]_i_2_n_0\ : STD_LOGIC;
  signal \spi_io_o[0]_i_3_n_0\ : STD_LOGIC;
  signal \spi_io_o[0]_i_4_n_0\ : STD_LOGIC;
  signal \spi_io_o[1]_i_1_n_0\ : STD_LOGIC;
  signal \spi_io_o[1]_i_2_n_0\ : STD_LOGIC;
  signal \spi_io_o[1]_i_3_n_0\ : STD_LOGIC;
  signal \spi_io_t[0]_i_1_n_0\ : STD_LOGIC;
  signal \spi_io_t[0]_i_2_n_0\ : STD_LOGIC;
  signal \spi_io_t[1]_i_1_n_0\ : STD_LOGIC;
  signal \spi_io_t[1]_i_2_n_0\ : STD_LOGIC;
  signal \spi_io_t[1]_i_3_n_0\ : STD_LOGIC;
  signal spi_lsb_first_i_1_n_0 : STD_LOGIC;
  signal spi_lsb_first_reg_n_0 : STD_LOGIC;
  signal \spi_mode[0]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mode[1]_i_1_n_0\ : STD_LOGIC;
  signal \spi_mode[1]_i_2_n_0\ : STD_LOGIC;
  signal \spi_mode_reg_n_0_[0]\ : STD_LOGIC;
  signal spi_rd_req : STD_LOGIC;
  signal spi_rd_req_ack : STD_LOGIC;
  signal \spi_rd_req_ack0__0\ : STD_LOGIC;
  signal spi_rd_req_ack_i_3_n_0 : STD_LOGIC;
  signal spi_rd_req_ack_reg_n_0 : STD_LOGIC;
  signal spi_rd_req_i_1_n_0 : STD_LOGIC;
  signal spi_rd_req_i_2_n_0 : STD_LOGIC;
  signal \spi_sck_div_cnt[7]_i_10_n_0\ : STD_LOGIC;
  signal \spi_sck_div_cnt[7]_i_11_n_0\ : STD_LOGIC;
  signal \spi_sck_div_cnt[7]_i_12_n_0\ : STD_LOGIC;
  signal \spi_sck_div_cnt[7]_i_13_n_0\ : STD_LOGIC;
  signal \spi_sck_div_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \spi_sck_div_cnt[7]_i_5_n_0\ : STD_LOGIC;
  signal \spi_sck_div_cnt[7]_i_6_n_0\ : STD_LOGIC;
  signal \spi_sck_div_cnt[7]_i_7_n_0\ : STD_LOGIC;
  signal \spi_sck_div_cnt[7]_i_8_n_0\ : STD_LOGIC;
  signal \spi_sck_div_cnt[7]_i_9_n_0\ : STD_LOGIC;
  signal spi_sck_div_cnt_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal spi_sck_div_en_i_1_n_0 : STD_LOGIC;
  signal spi_sck_div_en_reg_n_0 : STD_LOGIC;
  signal spi_sck_div_h : STD_LOGIC;
  signal \spi_sck_div_h[7]_i_2_n_0\ : STD_LOGIC;
  signal spi_sck_div_l : STD_LOGIC;
  signal \spi_sck_falling__1\ : STD_LOGIC;
  signal spi_sck_int : STD_LOGIC;
  signal spi_sck_int_i_1_n_0 : STD_LOGIC;
  signal \^spi_sck_o\ : STD_LOGIC;
  signal \spi_sck_o1__0\ : STD_LOGIC;
  signal spi_sck_o_i_1_n_0 : STD_LOGIC;
  signal spi_sck_o_i_2_n_0 : STD_LOGIC;
  signal spi_sck_o_i_3_n_0 : STD_LOGIC;
  signal spi_sck_o_i_4_n_0 : STD_LOGIC;
  signal \spi_sck_rising__1\ : STD_LOGIC;
  signal spi_sr : STD_LOGIC;
  signal \spi_sr[0]_i_1_n_0\ : STD_LOGIC;
  signal \spi_sr[1]_i_1_n_0\ : STD_LOGIC;
  signal \spi_sr[2]_i_1_n_0\ : STD_LOGIC;
  signal \spi_sr[3]_i_1_n_0\ : STD_LOGIC;
  signal \spi_sr[4]_i_1_n_0\ : STD_LOGIC;
  signal \spi_sr[5]_i_1_n_0\ : STD_LOGIC;
  signal \spi_sr[6]_i_1_n_0\ : STD_LOGIC;
  signal \spi_sr[7]_i_2_n_0\ : STD_LOGIC;
  signal spi_sr_bit_cnt : STD_LOGIC;
  signal \spi_sr_bit_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \spi_sr_bit_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \spi_sr_bit_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \spi_sr_bit_cnt[2]_i_2_n_0\ : STD_LOGIC;
  signal \spi_sr_bit_cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal \spi_sr_bit_cnt[3]_i_3_n_0\ : STD_LOGIC;
  signal \spi_sr_bit_cnt[3]_i_4_n_0\ : STD_LOGIC;
  signal \spi_sr_bit_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \spi_sr_bit_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \spi_sr_bit_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \spi_sr_bit_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal spi_sr_eot : STD_LOGIC;
  signal spi_sr_eot_i_1_n_0 : STD_LOGIC;
  signal spi_sr_in_buf : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal spi_sr_in_buf0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \spi_sr_in_buf[0]_i_2_n_0\ : STD_LOGIC;
  signal \spi_sr_in_buf[1]_i_2_n_0\ : STD_LOGIC;
  signal \spi_sr_in_buf[2]_i_2_n_0\ : STD_LOGIC;
  signal \spi_sr_in_buf[3]_i_2_n_0\ : STD_LOGIC;
  signal \spi_sr_in_buf[4]_i_2_n_0\ : STD_LOGIC;
  signal \spi_sr_in_buf[5]_i_2_n_0\ : STD_LOGIC;
  signal \spi_sr_in_buf[6]_i_2_n_0\ : STD_LOGIC;
  signal \spi_sr_in_buf[7]_i_3_n_0\ : STD_LOGIC;
  signal spi_sr_in_buf_0 : STD_LOGIC;
  signal spi_sr_in_buf_ready_i_1_n_0 : STD_LOGIC;
  signal spi_sr_in_buf_ready_i_2_n_0 : STD_LOGIC;
  signal spi_sr_in_buf_ready_reg_n_0 : STD_LOGIC;
  signal spi_sr_in_buf_valid_i_1_n_0 : STD_LOGIC;
  signal spi_sr_in_buf_valid_i_2_n_0 : STD_LOGIC;
  signal spi_sr_in_buf_valid_i_3_n_0 : STD_LOGIC;
  signal spi_sr_in_buf_valid_q : STD_LOGIC;
  signal spi_sr_in_buf_valid_reg_n_0 : STD_LOGIC;
  signal spi_sr_out_buf : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \spi_sr_out_buf[7]_i_1_n_0\ : STD_LOGIC;
  signal \spi_sr_out_buf[7]_i_3_n_0\ : STD_LOGIC;
  signal \spi_sr_out_buf[7]_i_4_n_0\ : STD_LOGIC;
  signal \spi_sr_out_buf[7]_i_5_n_0\ : STD_LOGIC;
  signal \spi_sr_out_buf[7]_i_6_n_0\ : STD_LOGIC;
  signal \spi_sr_out_buf[7]_i_7_n_0\ : STD_LOGIC;
  signal spi_sr_out_buf_ready_i_1_n_0 : STD_LOGIC;
  signal spi_sr_out_buf_ready_reg_n_0 : STD_LOGIC;
  signal spi_sr_out_buf_valid : STD_LOGIC;
  signal spi_sr_out_buf_valid_i_1_n_0 : STD_LOGIC;
  signal \spi_sr_reg_n_0_[0]\ : STD_LOGIC;
  signal \spi_sr_reg_n_0_[1]\ : STD_LOGIC;
  signal \spi_sr_reg_n_0_[2]\ : STD_LOGIC;
  signal \spi_sr_reg_n_0_[3]\ : STD_LOGIC;
  signal \spi_sr_reg_n_0_[6]\ : STD_LOGIC;
  signal \^spi_ss_o\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \spi_ss_o[0]_i_1_n_0\ : STD_LOGIC;
  signal \spi_ss_o[0]_i_2_n_0\ : STD_LOGIC;
  signal \spi_ss_o[0]_i_3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_spi_fsm_state[2]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \FSM_onehot_spi_fsm_state[2]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_onehot_spi_fsm_state[2]_i_4\ : label is "soft_lutpair1";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_spi_fsm_state_reg[0]\ : label is "SPI_FSM_STATE_WAIT_XFER_REQ:001,SPI_FSM_STATE_WAIT_SCK_SYNC:010,SPI_FSM_STATE_ACTIVE:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_spi_fsm_state_reg[1]\ : label is "SPI_FSM_STATE_WAIT_XFER_REQ:001,SPI_FSM_STATE_WAIT_SCK_SYNC:010,SPI_FSM_STATE_ACTIVE:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_spi_fsm_state_reg[2]\ : label is "SPI_FSM_STATE_WAIT_XFER_REQ:001,SPI_FSM_STATE_WAIT_SCK_SYNC:010,SPI_FSM_STATE_ACTIVE:100,";
  attribute SOFT_HLUTNM of \irq_pend[1]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of s_axi_arready_INST_0 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of s_axi_awready_i_2 : label is "soft_lutpair7";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s_axi_awready_reg : label is "xilinx.com:interface:aximm:1.0 s_axi AWREADY";
  attribute SOFT_HLUTNM of s_axi_bvalid_i_1 : label is "soft_lutpair7";
  attribute X_INTERFACE_INFO of s_axi_bvalid_reg : label is "xilinx.com:interface:aximm:1.0 s_axi BVALID";
  attribute SOFT_HLUTNM of \s_axi_rdata[0]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \s_axi_rdata[0]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \s_axi_rdata[1]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \s_axi_rdata[1]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \s_axi_rdata[7]_i_1\ : label is "soft_lutpair14";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[0]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[16]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[17]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[18]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[19]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[1]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[20]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[21]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[22]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[23]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[28]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[29]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[2]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[31]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[3]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[4]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[5]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[6]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[7]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[8]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[9]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute SOFT_HLUTNM of s_axi_rvalid_i_1 : label is "soft_lutpair19";
  attribute X_INTERFACE_INFO of s_axi_rvalid_reg : label is "xilinx.com:interface:aximm:1.0 s_axi RVALID";
  attribute SOFT_HLUTNM of spi_dir_i_2 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \spi_fsm_state[0]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \spi_fsm_state[1]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \spi_io_o[0]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \spi_io_o[0]_i_5\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \spi_io_o[1]_i_4\ : label is "soft_lutpair0";
  attribute X_INTERFACE_INFO of \spi_io_o_reg[0]\ : label is "xilinx.com:interface:spi_rtl:1.0 spi IO0_O";
  attribute X_INTERFACE_INFO of \spi_io_o_reg[1]\ : label is "xilinx.com:interface:spi_rtl:1.0 spi IO0_O";
  attribute SOFT_HLUTNM of \spi_io_t[1]_i_3\ : label is "soft_lutpair20";
  attribute X_INTERFACE_INFO of \spi_io_t_reg[0]\ : label is "xilinx.com:interface:spi_rtl:1.0 spi IO0_T";
  attribute X_INTERFACE_INFO of \spi_io_t_reg[1]\ : label is "xilinx.com:interface:spi_rtl:1.0 spi IO0_T";
  attribute SOFT_HLUTNM of \spi_mode[1]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of spi_rd_req_ack_i_2 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of spi_rd_req_ack_i_3 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of spi_rd_req_i_1 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of spi_rd_req_i_2 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \spi_sck_div_cnt[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \spi_sck_div_cnt[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \spi_sck_div_cnt[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \spi_sck_div_cnt[4]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \spi_sck_div_cnt[6]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \spi_sck_div_cnt[7]_i_12\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \spi_sck_div_cnt[7]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \spi_sck_div_cnt[7]_i_8\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \spi_sck_div_h[7]_i_2\ : label is "soft_lutpair11";
  attribute X_INTERFACE_INFO of spi_sck_o_reg : label is "xilinx.com:interface:spi_rtl:1.0 spi SCK_O";
  attribute SOFT_HLUTNM of \spi_sr_bit_cnt[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \spi_sr_bit_cnt[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \spi_sr_bit_cnt[2]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \spi_sr_bit_cnt[3]_i_4\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of spi_sr_in_buf_ready_i_2 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of spi_sr_in_buf_valid_i_3 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \spi_sr_out_buf[7]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \spi_sr_out_buf[7]_i_4\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \spi_sr_out_buf[7]_i_5\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \spi_sr_out_buf[7]_i_6\ : label is "soft_lutpair16";
  attribute X_INTERFACE_INFO of \spi_ss_o_reg[0]\ : label is "xilinx.com:interface:spi_rtl:1.0 spi SS_O";
begin
  s_axi_bvalid <= \^s_axi_bvalid\;
  s_axi_rvalid_reg_0 <= \^s_axi_rvalid_reg_0\;
  s_axi_wready <= \^s_axi_wready\;
  spi_io0_o <= \^spi_io0_o\;
  spi_io0_t <= \^spi_io0_t\;
  spi_io1_o <= \^spi_io1_o\;
  spi_io1_t <= \^spi_io1_t\;
  spi_sck_o <= \^spi_sck_o\;
  spi_ss_o(0) <= \^spi_ss_o\(0);
\FSM_onehot_spi_fsm_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \FSM_onehot_spi_fsm_state[2]_i_2_n_0\,
      I1 => \FSM_onehot_spi_fsm_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_spi_fsm_state_reg_n_0_[1]\,
      I3 => \spi_io_mode_q1__2\,
      I4 => \FSM_onehot_spi_fsm_state[2]_i_4_n_0\,
      O => spi_fsm_state
    );
\FSM_onehot_spi_fsm_state[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => spi_rd_req_ack_reg_n_0,
      I1 => spi_rd_req,
      I2 => spi_sr_out_buf_valid,
      O => \FSM_onehot_spi_fsm_state[2]_i_2_n_0\
    );
\FSM_onehot_spi_fsm_state[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \spi_sck_falling__1\,
      I1 => \spi_mode_reg_n_0_[0]\,
      I2 => \spi_sck_rising__1\,
      O => \spi_io_mode_q1__2\
    );
\FSM_onehot_spi_fsm_state[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A80"
    )
        port map (
      I0 => \FSM_onehot_spi_fsm_state_reg_n_0_[2]\,
      I1 => \spi_sck_rising__1\,
      I2 => \spi_mode_reg_n_0_[0]\,
      I3 => \spi_sck_falling__1\,
      I4 => \spi_io_o[0]_i_3_n_0\,
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
      S => \spi_io_o[0]_i_1_n_0\
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
      R => \spi_io_o[0]_i_1_n_0\
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
      R => \spi_io_o[0]_i_1_n_0\
    );
irq_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \irq_pend_reg_n_0_[0]\,
      I1 => \irq_enabled_reg_n_0_[0]\,
      I2 => \irq_pend_reg_n_0_[1]\,
      I3 => \irq_enabled_reg_n_0_[1]\,
      I4 => \irq_enabled_reg_n_0_[2]\,
      I5 => \irq_pend_reg_n_0_[2]\,
      O => irq
    );
\irq_enabled[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000200000"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => s_axi_awaddr(3),
      I2 => s_axi_awaddr(1),
      I3 => s_axi_awaddr(0),
      I4 => s_axi_wstrb(0),
      I5 => s_axi_awaddr(2),
      O => irq_enabled
    );
\irq_enabled_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => irq_enabled,
      D => s_axi_wdata(0),
      Q => \irq_enabled_reg_n_0_[0]\,
      R => \p_0_in__0\
    );
\irq_enabled_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => irq_enabled,
      D => s_axi_wdata(1),
      Q => \irq_enabled_reg_n_0_[1]\,
      R => \p_0_in__0\
    );
\irq_enabled_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => irq_enabled,
      D => s_axi_wdata(2),
      Q => \irq_enabled_reg_n_0_[2]\,
      R => \p_0_in__0\
    );
\irq_enabled_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => irq_enabled,
      D => s_axi_wdata(3),
      Q => \irq_enabled_reg_n_0_[3]\,
      R => \p_0_in__0\
    );
\irq_enabled_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => irq_enabled,
      D => s_axi_wdata(4),
      Q => \irq_enabled_reg_n_0_[4]\,
      R => \p_0_in__0\
    );
\irq_enabled_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => irq_enabled,
      D => s_axi_wdata(5),
      Q => \irq_enabled_reg_n_0_[5]\,
      R => \p_0_in__0\
    );
\irq_enabled_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => irq_enabled,
      D => s_axi_wdata(6),
      Q => \irq_enabled_reg_n_0_[6]\,
      R => \p_0_in__0\
    );
\irq_pend[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFDFDFDF00CF0000"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => \irq_pend[1]_i_2_n_0\,
      I2 => \^s_axi_wready\,
      I3 => spi_idle_q,
      I4 => \FSM_onehot_spi_fsm_state_reg_n_0_[0]\,
      I5 => \irq_pend_reg_n_0_[0]\,
      O => \irq_pend[0]_i_1_n_0\
    );
\irq_pend[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFDFDFDF00CF0000"
    )
        port map (
      I0 => s_axi_wdata(1),
      I1 => \irq_pend[1]_i_2_n_0\,
      I2 => \^s_axi_wready\,
      I3 => spi_sr_in_buf_valid_q,
      I4 => spi_sr_in_buf_valid_reg_n_0,
      I5 => \irq_pend_reg_n_0_[1]\,
      O => \irq_pend[1]_i_1_n_0\
    );
\irq_pend[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFFFFFF"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => s_axi_awaddr(3),
      I2 => s_axi_awaddr(0),
      I3 => s_axi_awaddr(1),
      I4 => s_axi_wstrb(0),
      O => \irq_pend[1]_i_2_n_0\
    );
\irq_pend[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABFAFAAAA80A0"
    )
        port map (
      I0 => \irq_pend[2]_i_2_n_0\,
      I1 => spi_sr_out_buf_ready_reg_n_0,
      I2 => spi_sr_out_buf_valid,
      I3 => spi_en,
      I4 => \irq_pend[2]_i_3_n_0\,
      I5 => \irq_pend_reg_n_0_[2]\,
      O => \irq_pend[2]_i_1_n_0\
    );
\irq_pend[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F2FF0200"
    )
        port map (
      I0 => \irq_pend_reg_n_0_[2]\,
      I1 => s_axi_wdata(2),
      I2 => \irq_pend[1]_i_2_n_0\,
      I3 => \^s_axi_wready\,
      I4 => spi_sr_out_buf_valid,
      O => \irq_pend[2]_i_2_n_0\
    );
\irq_pend[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => s_axi_wstrb(0),
      I2 => s_axi_awaddr(1),
      I3 => s_axi_awaddr(0),
      I4 => s_axi_awaddr(3),
      I5 => s_axi_awaddr(2),
      O => \irq_pend[2]_i_3_n_0\
    );
\irq_pend_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \irq_pend[0]_i_1_n_0\,
      Q => \irq_pend_reg_n_0_[0]\,
      R => \p_0_in__0\
    );
\irq_pend_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \irq_pend[1]_i_1_n_0\,
      Q => \irq_pend_reg_n_0_[1]\,
      R => \p_0_in__0\
    );
\irq_pend_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \irq_pend[2]_i_1_n_0\,
      Q => \irq_pend_reg_n_0_[2]\,
      R => \p_0_in__0\
    );
s_axi_arready_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^s_axi_rvalid_reg_0\,
      O => s_axi_arready
    );
s_axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => \p_0_in__0\
    );
s_axi_awready_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08080008"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => \^s_axi_wready\,
      I3 => \^s_axi_bvalid\,
      I4 => s_axi_bready,
      O => s_axi_awready0
    );
s_axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axi_awready0,
      Q => \^s_axi_wready\,
      R => \p_0_in__0\
    );
s_axi_bvalid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => s_axi_bready,
      I2 => \^s_axi_bvalid\,
      O => s_axi_bvalid_i_1_n_0
    );
s_axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axi_bvalid_i_1_n_0,
      Q => \^s_axi_bvalid\,
      R => \p_0_in__0\
    );
\s_axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000C0C0FF00AAAA"
    )
        port map (
      I0 => \s_axi_rdata[0]_i_2_n_0\,
      I1 => \^spi_ss_o\(0),
      I2 => \s_axi_rdata[0]_i_3_n_0\,
      I3 => \s_axi_rdata[0]_i_4_n_0\,
      I4 => s_axi_araddr(2),
      I5 => s_axi_araddr(3),
      O => s_axi_rdata_1(0)
    );
\s_axi_rdata[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => \irq_enabled_reg_n_0_[0]\,
      I1 => spi_sck_div_en_reg_n_0,
      I2 => \irq_pend_reg_n_0_[0]\,
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(0),
      O => \s_axi_rdata[0]_i_2_n_0\
    );
\s_axi_rdata[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_araddr(1),
      I1 => s_axi_araddr(0),
      O => \s_axi_rdata[0]_i_3_n_0\
    );
\s_axi_rdata[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => spi_sr_out_buf(0),
      I1 => \spi_sr_reg_n_0_[0]\,
      I2 => s_axi_araddr(0),
      I3 => s_axi_araddr(1),
      I4 => data3(0),
      I5 => data5(0),
      O => \s_axi_rdata[0]_i_4_n_0\
    );
\s_axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010103311"
    )
        port map (
      I0 => s_axi_araddr(0),
      I1 => s_axi_araddr(1),
      I2 => data3(16),
      I3 => spi_sr_out_buf_valid,
      I4 => s_axi_araddr(2),
      I5 => s_axi_araddr(3),
      O => s_axi_rdata_1(16)
    );
\s_axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000A0C00"
    )
        port map (
      I0 => spi_sr_in_buf_valid_reg_n_0,
      I1 => data3(17),
      I2 => s_axi_araddr(3),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(0),
      I5 => s_axi_araddr(1),
      O => s_axi_rdata_1(17)
    );
\s_axi_rdata[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => s_axi_araddr(1),
      I1 => s_axi_araddr(0),
      I2 => s_axi_araddr(2),
      I3 => s_axi_araddr(3),
      I4 => data3(18),
      O => s_axi_rdata_1(18)
    );
\s_axi_rdata[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => s_axi_araddr(1),
      I1 => s_axi_araddr(0),
      I2 => s_axi_araddr(2),
      I3 => s_axi_araddr(3),
      I4 => data3(19),
      O => s_axi_rdata_1(19)
    );
\s_axi_rdata[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => \s_axi_rdata[1]_i_2_n_0\,
      I1 => \s_axi_rdata[1]_i_3_n_0\,
      I2 => s_axi_araddr(3),
      I3 => s_axi_araddr(2),
      O => s_axi_rdata_1(1)
    );
\s_axi_rdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => spi_sr_out_buf(1),
      I1 => \spi_sr_reg_n_0_[1]\,
      I2 => s_axi_araddr(0),
      I3 => s_axi_araddr(1),
      I4 => data3(1),
      I5 => data5(1),
      O => \s_axi_rdata[1]_i_2_n_0\
    );
\s_axi_rdata[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => \irq_enabled_reg_n_0_[1]\,
      I1 => spi_en,
      I2 => \irq_pend_reg_n_0_[1]\,
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(0),
      O => \s_axi_rdata[1]_i_3_n_0\
    );
\s_axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000A0C00"
    )
        port map (
      I0 => \FSM_onehot_spi_fsm_state_reg_n_0_[0]\,
      I1 => data3(20),
      I2 => s_axi_araddr(3),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(0),
      I5 => s_axi_araddr(1),
      O => s_axi_rdata_1(20)
    );
\s_axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000A0C00"
    )
        port map (
      I0 => spi_dir_reg_n_0,
      I1 => data3(21),
      I2 => s_axi_araddr(3),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(0),
      I5 => s_axi_araddr(1),
      O => s_axi_rdata_1(21)
    );
\s_axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000A0C00"
    )
        port map (
      I0 => \spi_fsm_state_reg_n_0_[0]\,
      I1 => data3(22),
      I2 => s_axi_araddr(3),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(0),
      I5 => s_axi_araddr(1),
      O => s_axi_rdata_1(22)
    );
\s_axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000A0C00"
    )
        port map (
      I0 => \spi_fsm_state_reg_n_0_[1]\,
      I1 => data3(23),
      I2 => s_axi_araddr(3),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(0),
      I5 => s_axi_araddr(1),
      O => s_axi_rdata_1(23)
    );
\s_axi_rdata[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => s_axi_araddr(0),
      I1 => s_axi_araddr(1),
      I2 => s_axi_araddr(3),
      I3 => s_axi_araddr(2),
      I4 => \spi_io_mode_q_reg_n_0_[0]\,
      O => s_axi_rdata_1(28)
    );
\s_axi_rdata[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => s_axi_araddr(0),
      I1 => s_axi_araddr(1),
      I2 => s_axi_araddr(3),
      I3 => s_axi_araddr(2),
      I4 => \spi_io_mode_q_reg_n_0_[1]\,
      O => s_axi_rdata_1(29)
    );
\s_axi_rdata[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => \s_axi_rdata[2]_i_2_n_0\,
      I1 => \s_axi_rdata[2]_i_3_n_0\,
      I2 => s_axi_araddr(3),
      I3 => s_axi_araddr(2),
      O => s_axi_rdata_1(2)
    );
\s_axi_rdata[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => spi_sr_out_buf(2),
      I1 => \spi_sr_reg_n_0_[2]\,
      I2 => s_axi_araddr(0),
      I3 => s_axi_araddr(1),
      I4 => data3(2),
      I5 => data5(2),
      O => \s_axi_rdata[2]_i_2_n_0\
    );
\s_axi_rdata[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => \irq_enabled_reg_n_0_[2]\,
      I1 => \spi_mode_reg_n_0_[0]\,
      I2 => \irq_pend_reg_n_0_[2]\,
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(0),
      O => \s_axi_rdata[2]_i_3_n_0\
    );
\s_axi_rdata[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D0FF"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \^s_axi_rvalid_reg_0\,
      I2 => s_axi_rready,
      I3 => aresetn,
      O => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \^s_axi_rvalid_reg_0\,
      O => s_axi_rd_en
    );
\s_axi_rdata[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => spi_sr_in_buf_valid_reg_n_0,
      I1 => s_axi_araddr(1),
      I2 => s_axi_araddr(0),
      I3 => s_axi_araddr(3),
      I4 => s_axi_araddr(2),
      O => s_axi_rdata_1(31)
    );
\s_axi_rdata[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F8"
    )
        port map (
      I0 => \s_axi_rdata[3]_i_2_n_0\,
      I1 => s_axi_araddr(2),
      I2 => \s_axi_rdata[3]_i_3_n_0\,
      I3 => s_axi_araddr(3),
      O => s_axi_rdata_1(3)
    );
\s_axi_rdata[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => spi_sr_out_buf(3),
      I1 => \spi_sr_reg_n_0_[3]\,
      I2 => s_axi_araddr(0),
      I3 => s_axi_araddr(1),
      I4 => data3(3),
      I5 => data5(3),
      O => \s_axi_rdata[3]_i_2_n_0\
    );
\s_axi_rdata[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002C20"
    )
        port map (
      I0 => spi_cpol,
      I1 => s_axi_araddr(1),
      I2 => s_axi_araddr(0),
      I3 => \irq_enabled_reg_n_0_[3]\,
      I4 => s_axi_araddr(2),
      O => \s_axi_rdata[3]_i_3_n_0\
    );
\s_axi_rdata[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F8"
    )
        port map (
      I0 => \s_axi_rdata[4]_i_2_n_0\,
      I1 => s_axi_araddr(2),
      I2 => \s_axi_rdata[4]_i_3_n_0\,
      I3 => s_axi_araddr(3),
      O => s_axi_rdata_1(4)
    );
\s_axi_rdata[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => spi_sr_out_buf(4),
      I1 => p_0_in(3),
      I2 => s_axi_araddr(0),
      I3 => s_axi_araddr(1),
      I4 => data3(4),
      I5 => data5(4),
      O => \s_axi_rdata[4]_i_2_n_0\
    );
\s_axi_rdata[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002C20"
    )
        port map (
      I0 => spi_io_mode(0),
      I1 => s_axi_araddr(1),
      I2 => s_axi_araddr(0),
      I3 => \irq_enabled_reg_n_0_[4]\,
      I4 => s_axi_araddr(2),
      O => \s_axi_rdata[4]_i_3_n_0\
    );
\s_axi_rdata[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F8"
    )
        port map (
      I0 => \s_axi_rdata[5]_i_2_n_0\,
      I1 => s_axi_araddr(2),
      I2 => \s_axi_rdata[5]_i_3_n_0\,
      I3 => s_axi_araddr(3),
      O => s_axi_rdata_1(5)
    );
\s_axi_rdata[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => spi_sr_out_buf(5),
      I1 => p_0_in(4),
      I2 => s_axi_araddr(0),
      I3 => s_axi_araddr(1),
      I4 => data3(5),
      I5 => data5(5),
      O => \s_axi_rdata[5]_i_2_n_0\
    );
\s_axi_rdata[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002C20"
    )
        port map (
      I0 => spi_io_mode(1),
      I1 => s_axi_araddr(1),
      I2 => s_axi_araddr(0),
      I3 => \irq_enabled_reg_n_0_[5]\,
      I4 => s_axi_araddr(2),
      O => \s_axi_rdata[5]_i_3_n_0\
    );
\s_axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2023202020202020"
    )
        port map (
      I0 => \s_axi_rdata[6]_i_2_n_0\,
      I1 => s_axi_araddr(3),
      I2 => s_axi_araddr(2),
      I3 => s_axi_araddr(0),
      I4 => s_axi_araddr(1),
      I5 => \irq_enabled_reg_n_0_[6]\,
      O => s_axi_rdata_1(6)
    );
\s_axi_rdata[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => spi_sr_out_buf(6),
      I1 => \spi_sr_reg_n_0_[6]\,
      I2 => s_axi_araddr(0),
      I3 => s_axi_araddr(1),
      I4 => data3(6),
      I5 => data5(6),
      O => \s_axi_rdata[6]_i_2_n_0\
    );
\s_axi_rdata[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => s_axi_araddr(3),
      I1 => s_axi_araddr(2),
      I2 => \s_axi_rdata[7]_i_2_n_0\,
      O => s_axi_rdata_1(7)
    );
\s_axi_rdata[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => spi_sr_out_buf(7),
      I1 => p_1_in(0),
      I2 => s_axi_araddr(0),
      I3 => s_axi_araddr(1),
      I4 => data3(7),
      I5 => data5(7),
      O => \s_axi_rdata[7]_i_2_n_0\
    );
\s_axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000AC00000000"
    )
        port map (
      I0 => spi_sr_out_buf_valid,
      I1 => spi_lsb_first_reg_n_0,
      I2 => s_axi_araddr(2),
      I3 => s_axi_araddr(3),
      I4 => s_axi_araddr(1),
      I5 => s_axi_araddr(0),
      O => s_axi_rdata_1(8)
    );
\s_axi_rdata[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => spi_rd_req,
      I1 => s_axi_araddr(2),
      I2 => s_axi_araddr(3),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(0),
      O => s_axi_rdata_1(9)
    );
\s_axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_rd_en,
      D => s_axi_rdata_1(0),
      Q => s_axi_rdata(0),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_rd_en,
      D => s_axi_rdata_1(16),
      Q => s_axi_rdata(10),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_rd_en,
      D => s_axi_rdata_1(17),
      Q => s_axi_rdata(11),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_rd_en,
      D => s_axi_rdata_1(18),
      Q => s_axi_rdata(12),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_rd_en,
      D => s_axi_rdata_1(19),
      Q => s_axi_rdata(13),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_rd_en,
      D => s_axi_rdata_1(1),
      Q => s_axi_rdata(1),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_rd_en,
      D => s_axi_rdata_1(20),
      Q => s_axi_rdata(14),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_rd_en,
      D => s_axi_rdata_1(21),
      Q => s_axi_rdata(15),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_rd_en,
      D => s_axi_rdata_1(22),
      Q => s_axi_rdata(16),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_rd_en,
      D => s_axi_rdata_1(23),
      Q => s_axi_rdata(17),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_rd_en,
      D => s_axi_rdata_1(28),
      Q => s_axi_rdata(18),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_rd_en,
      D => s_axi_rdata_1(29),
      Q => s_axi_rdata(19),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_rd_en,
      D => s_axi_rdata_1(2),
      Q => s_axi_rdata(2),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_rd_en,
      D => s_axi_rdata_1(31),
      Q => s_axi_rdata(20),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_rd_en,
      D => s_axi_rdata_1(3),
      Q => s_axi_rdata(3),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_rd_en,
      D => s_axi_rdata_1(4),
      Q => s_axi_rdata(4),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_rd_en,
      D => s_axi_rdata_1(5),
      Q => s_axi_rdata(5),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_rd_en,
      D => s_axi_rdata_1(6),
      Q => s_axi_rdata(6),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_rd_en,
      D => s_axi_rdata_1(7),
      Q => s_axi_rdata(7),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_rd_en,
      D => s_axi_rdata_1(8),
      Q => s_axi_rdata(8),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_rd_en,
      D => s_axi_rdata_1(9),
      Q => s_axi_rdata(9),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
s_axi_rvalid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4E"
    )
        port map (
      I0 => \^s_axi_rvalid_reg_0\,
      I1 => s_axi_arvalid,
      I2 => s_axi_rready,
      O => s_axi_rvalid_i_1_n_0
    );
s_axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axi_rvalid_i_1_n_0,
      Q => \^s_axi_rvalid_reg_0\,
      R => \p_0_in__0\
    );
spi_dir_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFBBFF00F00040"
    )
        port map (
      I0 => \spi_io_mode_q[1]_i_2_n_0\,
      I1 => \FSM_onehot_spi_fsm_state_reg_n_0_[2]\,
      I2 => \spi_io_mode_q0__0\,
      I3 => spi_sr_out_buf_valid,
      I4 => \FSM_onehot_spi_fsm_state_reg_n_0_[0]\,
      I5 => spi_dir_reg_n_0,
      O => spi_dir_i_1_n_0
    );
spi_dir_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => spi_rd_req,
      I1 => spi_rd_req_ack_reg_n_0,
      O => \spi_io_mode_q0__0\
    );
spi_dir_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => spi_dir_i_1_n_0,
      Q => spi_dir_reg_n_0,
      R => \spi_io_o[0]_i_1_n_0\
    );
spi_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFBFBFF08080800"
    )
        port map (
      I0 => s_axi_wdata(1),
      I1 => \spi_mode[1]_i_2_n_0\,
      I2 => \spi_ss_o[0]_i_2_n_0\,
      I3 => spi_sck_div_en_reg_n_0,
      I4 => s_axi_wdata(0),
      I5 => spi_en,
      O => spi_en_i_1_n_0
    );
spi_en_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => spi_en_i_1_n_0,
      Q => spi_en,
      R => \p_0_in__0\
    );
\spi_fsm_state[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \spi_fsm_state_reg_n_0_[0]\,
      I1 => \spi_fsm_state_reg_n_0_[1]\,
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
      R => \spi_io_o[0]_i_1_n_0\
    );
\spi_fsm_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_fsm_state,
      D => \spi_fsm_state[1]_i_1_n_0\,
      Q => \spi_fsm_state_reg_n_0_[1]\,
      R => \spi_io_o[0]_i_1_n_0\
    );
spi_idle_q_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \FSM_onehot_spi_fsm_state_reg_n_0_[0]\,
      Q => spi_idle_q,
      R => \p_0_in__0\
    );
\spi_io_mode[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDFFFDF00002000"
    )
        port map (
      I0 => \spi_mode[1]_i_2_n_0\,
      I1 => s_axi_awaddr(2),
      I2 => s_axi_wstrb(0),
      I3 => s_axi_wdata(4),
      I4 => s_axi_wdata(5),
      I5 => spi_io_mode(0),
      O => \spi_io_mode[0]_i_1_n_0\
    );
\spi_io_mode[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFDF00200000"
    )
        port map (
      I0 => \spi_mode[1]_i_2_n_0\,
      I1 => s_axi_awaddr(2),
      I2 => s_axi_wstrb(0),
      I3 => s_axi_wdata(4),
      I4 => s_axi_wdata(5),
      I5 => spi_io_mode(1),
      O => \spi_io_mode[1]_i_1_n_0\
    );
\spi_io_mode_q[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFFBFFAA000800"
    )
        port map (
      I0 => spi_io_mode(0),
      I1 => \FSM_onehot_spi_fsm_state_reg_n_0_[2]\,
      I2 => \spi_io_mode_q[1]_i_2_n_0\,
      I3 => \FSM_onehot_spi_fsm_state[2]_i_2_n_0\,
      I4 => \FSM_onehot_spi_fsm_state_reg_n_0_[0]\,
      I5 => \spi_io_mode_q_reg_n_0_[0]\,
      O => \spi_io_mode_q[0]_i_1_n_0\
    );
\spi_io_mode_q[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFFBFFAA000800"
    )
        port map (
      I0 => spi_io_mode(1),
      I1 => \FSM_onehot_spi_fsm_state_reg_n_0_[2]\,
      I2 => \spi_io_mode_q[1]_i_2_n_0\,
      I3 => \FSM_onehot_spi_fsm_state[2]_i_2_n_0\,
      I4 => \FSM_onehot_spi_fsm_state_reg_n_0_[0]\,
      I5 => \spi_io_mode_q_reg_n_0_[1]\,
      O => \spi_io_mode_q[1]_i_1_n_0\
    );
\spi_io_mode_q[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DFF"
    )
        port map (
      I0 => \spi_sck_rising__1\,
      I1 => \spi_mode_reg_n_0_[0]\,
      I2 => \spi_sck_falling__1\,
      I3 => spi_sr_eot,
      O => \spi_io_mode_q[1]_i_2_n_0\
    );
\spi_io_mode_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \spi_io_mode_q[0]_i_1_n_0\,
      Q => \spi_io_mode_q_reg_n_0_[0]\,
      R => \spi_io_o[0]_i_1_n_0\
    );
\spi_io_mode_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \spi_io_mode_q[1]_i_1_n_0\,
      Q => \spi_io_mode_q_reg_n_0_[1]\,
      R => \spi_io_o[0]_i_1_n_0\
    );
\spi_io_mode_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \spi_io_mode[0]_i_1_n_0\,
      Q => spi_io_mode(0),
      R => \p_0_in__0\
    );
\spi_io_mode_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \spi_io_mode[1]_i_1_n_0\,
      Q => spi_io_mode(1),
      R => \p_0_in__0\
    );
\spi_io_o[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => spi_en,
      O => \spi_io_o[0]_i_1_n_0\
    );
\spi_io_o[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => \FSM_onehot_spi_fsm_state_reg_n_0_[2]\,
      I1 => \spi_io_o[0]_i_3_n_0\,
      I2 => \spi_io_o[0]_i_4_n_0\,
      I3 => spi_io_o(0),
      I4 => \^spi_io0_o\,
      O => \spi_io_o[0]_i_2_n_0\
    );
\spi_io_o[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \spi_sr_bit_cnt_reg_n_0_[1]\,
      I1 => \spi_sr_bit_cnt_reg_n_0_[0]\,
      I2 => \spi_sr_bit_cnt_reg_n_0_[3]\,
      I3 => \spi_sr_bit_cnt_reg_n_0_[2]\,
      O => \spi_io_o[0]_i_3_n_0\
    );
\spi_io_o[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF44E4000044E4"
    )
        port map (
      I0 => \spi_io_mode_q_reg_n_0_[1]\,
      I1 => p_1_in(0),
      I2 => \spi_sr_reg_n_0_[6]\,
      I3 => \spi_io_mode_q_reg_n_0_[0]\,
      I4 => spi_lsb_first_reg_n_0,
      I5 => \spi_sr_reg_n_0_[0]\,
      O => \spi_io_o[0]_i_4_n_0\
    );
\spi_io_o[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFB800"
    )
        port map (
      I0 => \spi_sck_rising__1\,
      I1 => \spi_mode_reg_n_0_[0]\,
      I2 => \spi_sck_falling__1\,
      I3 => \FSM_onehot_spi_fsm_state_reg_n_0_[2]\,
      I4 => \FSM_onehot_spi_fsm_state_reg_n_0_[0]\,
      O => spi_io_o(0)
    );
\spi_io_o[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABFFFAAAA8000"
    )
        port map (
      I0 => \spi_io_o[1]_i_2_n_0\,
      I1 => \spi_io_o[1]_i_3_n_0\,
      I2 => \spi_sck_o1__0\,
      I3 => \FSM_onehot_spi_fsm_state_reg_n_0_[2]\,
      I4 => \FSM_onehot_spi_fsm_state_reg_n_0_[0]\,
      I5 => \^spi_io1_o\,
      O => \spi_io_o[1]_i_1_n_0\
    );
\spi_io_o[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000808880008000"
    )
        port map (
      I0 => \FSM_onehot_spi_fsm_state_reg_n_0_[2]\,
      I1 => \spi_io_o[0]_i_3_n_0\,
      I2 => \spi_sr_reg_n_0_[1]\,
      I3 => spi_lsb_first_reg_n_0,
      I4 => \spi_io_mode_q_reg_n_0_[0]\,
      I5 => p_1_in(0),
      O => \spi_io_o[1]_i_2_n_0\
    );
\spi_io_o[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEEEEEEEEF"
    )
        port map (
      I0 => \spi_io_mode_q_reg_n_0_[1]\,
      I1 => spi_lsb_first_reg_n_0,
      I2 => \spi_sr_bit_cnt_reg_n_0_[2]\,
      I3 => \spi_sr_bit_cnt_reg_n_0_[3]\,
      I4 => \spi_sr_bit_cnt_reg_n_0_[0]\,
      I5 => \spi_sr_bit_cnt_reg_n_0_[1]\,
      O => \spi_io_o[1]_i_3_n_0\
    );
\spi_io_o[1]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \spi_sck_rising__1\,
      I1 => \spi_mode_reg_n_0_[0]\,
      I2 => \spi_sck_falling__1\,
      O => \spi_sck_o1__0\
    );
\spi_io_o_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \spi_io_o[0]_i_2_n_0\,
      Q => \^spi_io0_o\,
      R => \spi_io_o[0]_i_1_n_0\
    );
\spi_io_o_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \spi_io_o[1]_i_1_n_0\,
      Q => \^spi_io1_o\,
      R => \spi_io_o[0]_i_1_n_0\
    );
\spi_io_t[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \spi_io_t[0]_i_2_n_0\,
      I1 => spi_io_o(0),
      I2 => \^spi_io0_t\,
      O => \spi_io_t[0]_i_1_n_0\
    );
\spi_io_t[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFDD50000"
    )
        port map (
      I0 => \spi_io_o[0]_i_3_n_0\,
      I1 => spi_dir_reg_n_0,
      I2 => \spi_io_mode_q_reg_n_0_[1]\,
      I3 => \spi_io_mode_q_reg_n_0_[0]\,
      I4 => \FSM_onehot_spi_fsm_state_reg_n_0_[2]\,
      I5 => \FSM_onehot_spi_fsm_state_reg_n_0_[0]\,
      O => \spi_io_t[0]_i_2_n_0\
    );
\spi_io_t[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FFF800"
    )
        port map (
      I0 => \spi_io_t[1]_i_2_n_0\,
      I1 => \FSM_onehot_spi_fsm_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_spi_fsm_state_reg_n_0_[0]\,
      I3 => spi_io_o(0),
      I4 => \^spi_io1_t\,
      O => \spi_io_t[1]_i_1_n_0\
    );
\spi_io_t[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEEEEEEEEF"
    )
        port map (
      I0 => \spi_io_t[1]_i_3_n_0\,
      I1 => spi_dir_reg_n_0,
      I2 => \spi_sr_bit_cnt_reg_n_0_[2]\,
      I3 => \spi_sr_bit_cnt_reg_n_0_[3]\,
      I4 => \spi_sr_bit_cnt_reg_n_0_[0]\,
      I5 => \spi_sr_bit_cnt_reg_n_0_[1]\,
      O => \spi_io_t[1]_i_2_n_0\
    );
\spi_io_t[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \spi_io_mode_q_reg_n_0_[0]\,
      I1 => \spi_io_mode_q_reg_n_0_[1]\,
      O => \spi_io_t[1]_i_3_n_0\
    );
\spi_io_t_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \spi_io_t[0]_i_1_n_0\,
      Q => \^spi_io0_t\,
      S => \spi_io_o[0]_i_1_n_0\
    );
\spi_io_t_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \spi_io_t[1]_i_1_n_0\,
      Q => \^spi_io1_t\,
      S => \spi_io_o[0]_i_1_n_0\
    );
spi_lsb_first_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => s_axi_wdata(8),
      I1 => s_axi_awaddr(2),
      I2 => s_axi_wstrb(1),
      I3 => \FSM_onehot_spi_fsm_state_reg_n_0_[0]\,
      I4 => \spi_mode[1]_i_2_n_0\,
      I5 => spi_lsb_first_reg_n_0,
      O => spi_lsb_first_i_1_n_0
    );
spi_lsb_first_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => spi_lsb_first_i_1_n_0,
      Q => spi_lsb_first_reg_n_0,
      R => \p_0_in__0\
    );
\spi_mode[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => s_axi_wdata(2),
      I1 => s_axi_awaddr(2),
      I2 => s_axi_wstrb(0),
      I3 => \FSM_onehot_spi_fsm_state_reg_n_0_[0]\,
      I4 => \spi_mode[1]_i_2_n_0\,
      I5 => \spi_mode_reg_n_0_[0]\,
      O => \spi_mode[0]_i_1_n_0\
    );
\spi_mode[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => s_axi_wdata(3),
      I1 => s_axi_awaddr(2),
      I2 => s_axi_wstrb(0),
      I3 => \FSM_onehot_spi_fsm_state_reg_n_0_[0]\,
      I4 => \spi_mode[1]_i_2_n_0\,
      I5 => spi_cpol,
      O => \spi_mode[1]_i_1_n_0\
    );
\spi_mode[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => s_axi_awaddr(3),
      I1 => s_axi_awaddr(1),
      I2 => \^s_axi_wready\,
      I3 => s_axi_awaddr(0),
      O => \spi_mode[1]_i_2_n_0\
    );
\spi_mode_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \spi_mode[0]_i_1_n_0\,
      Q => \spi_mode_reg_n_0_[0]\,
      R => \p_0_in__0\
    );
\spi_mode_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \spi_mode[1]_i_1_n_0\,
      Q => spi_cpol,
      R => \p_0_in__0\
    );
spi_rd_req_ack_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEAAFEFAFC00CC00"
    )
        port map (
      I0 => \FSM_onehot_spi_fsm_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_spi_fsm_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_spi_fsm_state_reg_n_0_[2]\,
      I3 => \spi_rd_req_ack0__0\,
      I4 => \spi_io_mode_q[1]_i_2_n_0\,
      I5 => spi_rd_req_ack_i_3_n_0,
      O => spi_rd_req_ack
    );
spi_rd_req_ack_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_rd_req,
      I1 => spi_rd_req_ack_reg_n_0,
      O => \spi_rd_req_ack0__0\
    );
spi_rd_req_ack_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => spi_sr_out_buf_valid,
      I1 => spi_rd_req_ack_reg_n_0,
      I2 => spi_rd_req,
      O => spi_rd_req_ack_i_3_n_0
    );
spi_rd_req_ack_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => spi_rd_req_ack,
      Q => spi_rd_req_ack_reg_n_0,
      R => \spi_io_o[0]_i_1_n_0\
    );
spi_rd_req_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F888888"
    )
        port map (
      I0 => spi_rd_req_i_2_n_0,
      I1 => \^s_axi_wready\,
      I2 => spi_rd_req_ack_reg_n_0,
      I3 => spi_rd_req,
      I4 => spi_en,
      O => spi_rd_req_i_1_n_0
    );
spi_rd_req_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => s_axi_wdata(8),
      I1 => s_axi_wdata(9),
      I2 => spi_rd_req,
      I3 => \spi_sr_out_buf[7]_i_6_n_0\,
      O => spi_rd_req_i_2_n_0
    );
spi_rd_req_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => spi_rd_req_i_1_n_0,
      Q => spi_rd_req,
      R => \p_0_in__0\
    );
\spi_sck_div_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => spi_sck_div_cnt_reg(0),
      O => \p_0_in__1\(0)
    );
\spi_sck_div_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => spi_sck_div_cnt_reg(0),
      I1 => spi_sck_div_cnt_reg(1),
      O => \p_0_in__1\(1)
    );
\spi_sck_div_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => spi_sck_div_cnt_reg(0),
      I1 => spi_sck_div_cnt_reg(1),
      I2 => spi_sck_div_cnt_reg(2),
      O => \p_0_in__1\(2)
    );
\spi_sck_div_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => spi_sck_div_cnt_reg(1),
      I1 => spi_sck_div_cnt_reg(0),
      I2 => spi_sck_div_cnt_reg(2),
      I3 => spi_sck_div_cnt_reg(3),
      O => \p_0_in__1\(3)
    );
\spi_sck_div_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => spi_sck_div_cnt_reg(2),
      I1 => spi_sck_div_cnt_reg(0),
      I2 => spi_sck_div_cnt_reg(1),
      I3 => spi_sck_div_cnt_reg(3),
      I4 => spi_sck_div_cnt_reg(4),
      O => \p_0_in__1\(4)
    );
\spi_sck_div_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => spi_sck_div_cnt_reg(3),
      I1 => spi_sck_div_cnt_reg(1),
      I2 => spi_sck_div_cnt_reg(0),
      I3 => spi_sck_div_cnt_reg(2),
      I4 => spi_sck_div_cnt_reg(4),
      I5 => spi_sck_div_cnt_reg(5),
      O => \p_0_in__1\(5)
    );
\spi_sck_div_cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \spi_sck_div_cnt[7]_i_5_n_0\,
      I1 => spi_sck_div_cnt_reg(6),
      O => \p_0_in__1\(6)
    );
\spi_sck_div_cnt[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \spi_sck_rising__1\,
      I1 => \spi_sck_falling__1\,
      I2 => spi_sck_div_en_reg_n_0,
      O => \spi_sck_div_cnt[7]_i_1_n_0\
    );
\spi_sck_div_cnt[7]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8008000000008008"
    )
        port map (
      I0 => spi_sck_div_en_reg_n_0,
      I1 => spi_sck_int,
      I2 => data3(22),
      I3 => spi_sck_div_cnt_reg(6),
      I4 => data3(23),
      I5 => spi_sck_div_cnt_reg(7),
      O => \spi_sck_div_cnt[7]_i_10_n_0\
    );
\spi_sck_div_cnt[7]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => spi_sck_div_cnt_reg(5),
      I1 => data3(21),
      I2 => spi_sck_div_cnt_reg(2),
      I3 => data3(18),
      O => \spi_sck_div_cnt[7]_i_11_n_0\
    );
\spi_sck_div_cnt[7]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => spi_sck_div_cnt_reg(1),
      I1 => data3(17),
      I2 => spi_sck_div_cnt_reg(0),
      I3 => data3(16),
      O => \spi_sck_div_cnt[7]_i_12_n_0\
    );
\spi_sck_div_cnt[7]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => spi_sck_div_cnt_reg(4),
      I1 => data3(20),
      I2 => spi_sck_div_cnt_reg(3),
      I3 => data3(19),
      O => \spi_sck_div_cnt[7]_i_13_n_0\
    );
\spi_sck_div_cnt[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \spi_sck_div_cnt[7]_i_5_n_0\,
      I1 => spi_sck_div_cnt_reg(6),
      I2 => spi_sck_div_cnt_reg(7),
      O => \p_0_in__1\(7)
    );
\spi_sck_div_cnt[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \spi_sck_div_cnt[7]_i_6_n_0\,
      I1 => \spi_sck_div_cnt[7]_i_7_n_0\,
      I2 => \spi_sck_div_cnt[7]_i_8_n_0\,
      I3 => \spi_sck_div_cnt[7]_i_9_n_0\,
      O => \spi_sck_rising__1\
    );
\spi_sck_div_cnt[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \spi_sck_div_cnt[7]_i_10_n_0\,
      I1 => \spi_sck_div_cnt[7]_i_11_n_0\,
      I2 => \spi_sck_div_cnt[7]_i_12_n_0\,
      I3 => \spi_sck_div_cnt[7]_i_13_n_0\,
      O => \spi_sck_falling__1\
    );
\spi_sck_div_cnt[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => spi_sck_div_cnt_reg(5),
      I1 => spi_sck_div_cnt_reg(3),
      I2 => spi_sck_div_cnt_reg(1),
      I3 => spi_sck_div_cnt_reg(0),
      I4 => spi_sck_div_cnt_reg(2),
      I5 => spi_sck_div_cnt_reg(4),
      O => \spi_sck_div_cnt[7]_i_5_n_0\
    );
\spi_sck_div_cnt[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4004000000004004"
    )
        port map (
      I0 => spi_sck_int,
      I1 => spi_sck_div_en_reg_n_0,
      I2 => data3(6),
      I3 => spi_sck_div_cnt_reg(6),
      I4 => data3(7),
      I5 => spi_sck_div_cnt_reg(7),
      O => \spi_sck_div_cnt[7]_i_6_n_0\
    );
\spi_sck_div_cnt[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => spi_sck_div_cnt_reg(5),
      I1 => data3(5),
      I2 => spi_sck_div_cnt_reg(2),
      I3 => data3(2),
      O => \spi_sck_div_cnt[7]_i_7_n_0\
    );
\spi_sck_div_cnt[7]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => spi_sck_div_cnt_reg(1),
      I1 => data3(1),
      I2 => spi_sck_div_cnt_reg(0),
      I3 => data3(0),
      O => \spi_sck_div_cnt[7]_i_8_n_0\
    );
\spi_sck_div_cnt[7]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => spi_sck_div_cnt_reg(4),
      I1 => data3(4),
      I2 => spi_sck_div_cnt_reg(3),
      I3 => data3(3),
      O => \spi_sck_div_cnt[7]_i_9_n_0\
    );
\spi_sck_div_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \p_0_in__1\(0),
      Q => spi_sck_div_cnt_reg(0),
      R => \spi_sck_div_cnt[7]_i_1_n_0\
    );
\spi_sck_div_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \p_0_in__1\(1),
      Q => spi_sck_div_cnt_reg(1),
      R => \spi_sck_div_cnt[7]_i_1_n_0\
    );
\spi_sck_div_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \p_0_in__1\(2),
      Q => spi_sck_div_cnt_reg(2),
      R => \spi_sck_div_cnt[7]_i_1_n_0\
    );
\spi_sck_div_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \p_0_in__1\(3),
      Q => spi_sck_div_cnt_reg(3),
      R => \spi_sck_div_cnt[7]_i_1_n_0\
    );
\spi_sck_div_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \p_0_in__1\(4),
      Q => spi_sck_div_cnt_reg(4),
      R => \spi_sck_div_cnt[7]_i_1_n_0\
    );
\spi_sck_div_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \p_0_in__1\(5),
      Q => spi_sck_div_cnt_reg(5),
      R => \spi_sck_div_cnt[7]_i_1_n_0\
    );
\spi_sck_div_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \p_0_in__1\(6),
      Q => spi_sck_div_cnt_reg(6),
      R => \spi_sck_div_cnt[7]_i_1_n_0\
    );
\spi_sck_div_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \p_0_in__1\(7),
      Q => spi_sck_div_cnt_reg(7),
      R => \spi_sck_div_cnt[7]_i_1_n_0\
    );
spi_sck_div_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFBFB00080808"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => \spi_mode[1]_i_2_n_0\,
      I2 => \spi_ss_o[0]_i_2_n_0\,
      I3 => spi_en,
      I4 => s_axi_wdata(1),
      I5 => spi_sck_div_en_reg_n_0,
      O => spi_sck_div_en_i_1_n_0
    );
spi_sck_div_en_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => spi_sck_div_en_i_1_n_0,
      Q => spi_sck_div_en_reg_n_0,
      R => \p_0_in__0\
    );
\spi_sck_div_h[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => s_axi_wstrb(2),
      I1 => spi_sck_div_en_reg_n_0,
      I2 => s_axi_awaddr(2),
      I3 => s_axi_awaddr(0),
      I4 => \spi_sck_div_h[7]_i_2_n_0\,
      O => spi_sck_div_h
    );
\spi_sck_div_h[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => s_axi_awaddr(1),
      I2 => s_axi_awaddr(3),
      O => \spi_sck_div_h[7]_i_2_n_0\
    );
\spi_sck_div_h_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_sck_div_h,
      D => s_axi_wdata(10),
      Q => data3(16),
      R => \p_0_in__0\
    );
\spi_sck_div_h_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_sck_div_h,
      D => s_axi_wdata(11),
      Q => data3(17),
      R => \p_0_in__0\
    );
\spi_sck_div_h_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_sck_div_h,
      D => s_axi_wdata(12),
      Q => data3(18),
      R => \p_0_in__0\
    );
\spi_sck_div_h_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_sck_div_h,
      D => s_axi_wdata(13),
      Q => data3(19),
      R => \p_0_in__0\
    );
\spi_sck_div_h_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_sck_div_h,
      D => s_axi_wdata(14),
      Q => data3(20),
      R => \p_0_in__0\
    );
\spi_sck_div_h_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_sck_div_h,
      D => s_axi_wdata(15),
      Q => data3(21),
      R => \p_0_in__0\
    );
\spi_sck_div_h_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_sck_div_h,
      D => s_axi_wdata(16),
      Q => data3(22),
      R => \p_0_in__0\
    );
\spi_sck_div_h_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_sck_div_h,
      D => s_axi_wdata(17),
      Q => data3(23),
      R => \p_0_in__0\
    );
\spi_sck_div_l[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => s_axi_wstrb(0),
      I1 => spi_sck_div_en_reg_n_0,
      I2 => s_axi_awaddr(2),
      I3 => s_axi_awaddr(0),
      I4 => \spi_sck_div_h[7]_i_2_n_0\,
      O => spi_sck_div_l
    );
\spi_sck_div_l_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_sck_div_l,
      D => s_axi_wdata(0),
      Q => data3(0),
      R => \p_0_in__0\
    );
\spi_sck_div_l_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_sck_div_l,
      D => s_axi_wdata(1),
      Q => data3(1),
      R => \p_0_in__0\
    );
\spi_sck_div_l_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_sck_div_l,
      D => s_axi_wdata(2),
      Q => data3(2),
      R => \p_0_in__0\
    );
\spi_sck_div_l_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_sck_div_l,
      D => s_axi_wdata(3),
      Q => data3(3),
      R => \p_0_in__0\
    );
\spi_sck_div_l_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_sck_div_l,
      D => s_axi_wdata(4),
      Q => data3(4),
      R => \p_0_in__0\
    );
\spi_sck_div_l_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_sck_div_l,
      D => s_axi_wdata(5),
      Q => data3(5),
      R => \p_0_in__0\
    );
\spi_sck_div_l_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_sck_div_l,
      D => s_axi_wdata(6),
      Q => data3(6),
      R => \p_0_in__0\
    );
\spi_sck_div_l_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_sck_div_l,
      D => s_axi_wdata(7),
      Q => data3(7),
      R => \p_0_in__0\
    );
spi_sck_int_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1E00"
    )
        port map (
      I0 => \spi_sck_rising__1\,
      I1 => \spi_sck_falling__1\,
      I2 => spi_sck_int,
      I3 => spi_sck_div_en_reg_n_0,
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
      INIT => X"EFE0FFFFEFE00000"
    )
        port map (
      I0 => spi_sck_o_i_2_n_0,
      I1 => spi_sck_o_i_3_n_0,
      I2 => spi_en,
      I3 => spi_cpol,
      I4 => spi_sck_o_i_4_n_0,
      I5 => \^spi_sck_o\,
      O => spi_sck_o_i_1_n_0
    );
spi_sck_o_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => spi_cpol,
      I1 => \FSM_onehot_spi_fsm_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_spi_fsm_state_reg_n_0_[1]\,
      O => spi_sck_o_i_2_n_0
    );
spi_sck_o_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888222288888222"
    )
        port map (
      I0 => \FSM_onehot_spi_fsm_state_reg_n_0_[2]\,
      I1 => spi_cpol,
      I2 => \spi_sck_rising__1\,
      I3 => \spi_mode_reg_n_0_[0]\,
      I4 => \spi_sck_falling__1\,
      I5 => \spi_io_o[0]_i_3_n_0\,
      O => spi_sck_o_i_3_n_0
    );
spi_sck_o_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFBBBBB"
    )
        port map (
      I0 => \FSM_onehot_spi_fsm_state_reg_n_0_[0]\,
      I1 => spi_en,
      I2 => \spi_sck_falling__1\,
      I3 => \spi_sck_rising__1\,
      I4 => \FSM_onehot_spi_fsm_state_reg_n_0_[2]\,
      O => spi_sck_o_i_4_n_0
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
      INIT => X"FFFFEAAAEAAAEAAA"
    )
        port map (
      I0 => \FSM_onehot_spi_fsm_state_reg_n_0_[1]\,
      I1 => spi_sr_out_buf_valid,
      I2 => \FSM_onehot_spi_fsm_state_reg_n_0_[0]\,
      I3 => spi_sr_out_buf(0),
      I4 => \FSM_onehot_spi_fsm_state_reg_n_0_[2]\,
      I5 => in14(0),
      O => \spi_sr[0]_i_1_n_0\
    );
\spi_sr[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACACA0ACCCCCCCCC"
    )
        port map (
      I0 => spi_sr_out_buf(0),
      I1 => spi_sr_in_buf(0),
      I2 => spi_sr_out_buf_valid,
      I3 => spi_rd_req,
      I4 => spi_rd_req_ack_reg_n_0,
      I5 => spi_sr_eot,
      O => in14(0)
    );
\spi_sr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEAAAEAAAEAAA"
    )
        port map (
      I0 => \FSM_onehot_spi_fsm_state_reg_n_0_[1]\,
      I1 => spi_sr_out_buf_valid,
      I2 => \FSM_onehot_spi_fsm_state_reg_n_0_[0]\,
      I3 => spi_sr_out_buf(1),
      I4 => \FSM_onehot_spi_fsm_state_reg_n_0_[2]\,
      I5 => in14(1),
      O => \spi_sr[1]_i_1_n_0\
    );
\spi_sr[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACACA0ACCCCCCCCC"
    )
        port map (
      I0 => spi_sr_out_buf(1),
      I1 => spi_sr_in_buf(1),
      I2 => spi_sr_out_buf_valid,
      I3 => spi_rd_req,
      I4 => spi_rd_req_ack_reg_n_0,
      I5 => spi_sr_eot,
      O => in14(1)
    );
\spi_sr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEAAAEAAAEAAA"
    )
        port map (
      I0 => \FSM_onehot_spi_fsm_state_reg_n_0_[1]\,
      I1 => spi_sr_out_buf_valid,
      I2 => \FSM_onehot_spi_fsm_state_reg_n_0_[0]\,
      I3 => spi_sr_out_buf(2),
      I4 => \FSM_onehot_spi_fsm_state_reg_n_0_[2]\,
      I5 => in14(2),
      O => \spi_sr[2]_i_1_n_0\
    );
\spi_sr[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACACA0ACCCCCCCCC"
    )
        port map (
      I0 => spi_sr_out_buf(2),
      I1 => spi_sr_in_buf(2),
      I2 => spi_sr_out_buf_valid,
      I3 => spi_rd_req,
      I4 => spi_rd_req_ack_reg_n_0,
      I5 => spi_sr_eot,
      O => in14(2)
    );
\spi_sr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEAAAEAAAEAAA"
    )
        port map (
      I0 => \FSM_onehot_spi_fsm_state_reg_n_0_[1]\,
      I1 => spi_sr_out_buf_valid,
      I2 => \FSM_onehot_spi_fsm_state_reg_n_0_[0]\,
      I3 => spi_sr_out_buf(3),
      I4 => \FSM_onehot_spi_fsm_state_reg_n_0_[2]\,
      I5 => in14(3),
      O => \spi_sr[3]_i_1_n_0\
    );
\spi_sr[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACACA0ACCCCCCCCC"
    )
        port map (
      I0 => spi_sr_out_buf(3),
      I1 => spi_sr_in_buf(3),
      I2 => spi_sr_out_buf_valid,
      I3 => spi_rd_req,
      I4 => spi_rd_req_ack_reg_n_0,
      I5 => spi_sr_eot,
      O => in14(3)
    );
\spi_sr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEAAAEAAAEAAA"
    )
        port map (
      I0 => \FSM_onehot_spi_fsm_state_reg_n_0_[1]\,
      I1 => spi_sr_out_buf_valid,
      I2 => \FSM_onehot_spi_fsm_state_reg_n_0_[0]\,
      I3 => spi_sr_out_buf(4),
      I4 => \FSM_onehot_spi_fsm_state_reg_n_0_[2]\,
      I5 => in14(4),
      O => \spi_sr[4]_i_1_n_0\
    );
\spi_sr[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACACA0ACCCCCCCCC"
    )
        port map (
      I0 => spi_sr_out_buf(4),
      I1 => spi_sr_in_buf(4),
      I2 => spi_sr_out_buf_valid,
      I3 => spi_rd_req,
      I4 => spi_rd_req_ack_reg_n_0,
      I5 => spi_sr_eot,
      O => in14(4)
    );
\spi_sr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEAAAEAAAEAAA"
    )
        port map (
      I0 => \FSM_onehot_spi_fsm_state_reg_n_0_[1]\,
      I1 => spi_sr_out_buf_valid,
      I2 => \FSM_onehot_spi_fsm_state_reg_n_0_[0]\,
      I3 => spi_sr_out_buf(5),
      I4 => \FSM_onehot_spi_fsm_state_reg_n_0_[2]\,
      I5 => in14(5),
      O => \spi_sr[5]_i_1_n_0\
    );
\spi_sr[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACACA0ACCCCCCCCC"
    )
        port map (
      I0 => spi_sr_out_buf(5),
      I1 => spi_sr_in_buf(5),
      I2 => spi_sr_out_buf_valid,
      I3 => spi_rd_req,
      I4 => spi_rd_req_ack_reg_n_0,
      I5 => spi_sr_eot,
      O => in14(5)
    );
\spi_sr[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEAAAEAAAEAAA"
    )
        port map (
      I0 => \FSM_onehot_spi_fsm_state_reg_n_0_[1]\,
      I1 => spi_sr_out_buf_valid,
      I2 => \FSM_onehot_spi_fsm_state_reg_n_0_[0]\,
      I3 => spi_sr_out_buf(6),
      I4 => \FSM_onehot_spi_fsm_state_reg_n_0_[2]\,
      I5 => in14(6),
      O => \spi_sr[6]_i_1_n_0\
    );
\spi_sr[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACACA0ACCCCCCCCC"
    )
        port map (
      I0 => spi_sr_out_buf(6),
      I1 => spi_sr_in_buf(6),
      I2 => spi_sr_out_buf_valid,
      I3 => spi_rd_req,
      I4 => spi_rd_req_ack_reg_n_0,
      I5 => spi_sr_eot,
      O => in14(6)
    );
\spi_sr[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF8F8888888888"
    )
        port map (
      I0 => \spi_io_mode_q1__2\,
      I1 => \FSM_onehot_spi_fsm_state_reg_n_0_[2]\,
      I2 => spi_rd_req_ack_reg_n_0,
      I3 => spi_rd_req,
      I4 => spi_sr_out_buf_valid,
      I5 => \FSM_onehot_spi_fsm_state_reg_n_0_[0]\,
      O => spi_sr
    );
\spi_sr[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEAAAEAAAEAAA"
    )
        port map (
      I0 => \FSM_onehot_spi_fsm_state_reg_n_0_[1]\,
      I1 => spi_sr_out_buf_valid,
      I2 => \FSM_onehot_spi_fsm_state_reg_n_0_[0]\,
      I3 => spi_sr_out_buf(7),
      I4 => \FSM_onehot_spi_fsm_state_reg_n_0_[2]\,
      I5 => in14(7),
      O => \spi_sr[7]_i_2_n_0\
    );
\spi_sr[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACACA0ACCCCCCCCC"
    )
        port map (
      I0 => spi_sr_out_buf(7),
      I1 => spi_sr_in_buf(7),
      I2 => spi_sr_out_buf_valid,
      I3 => spi_rd_req,
      I4 => spi_rd_req_ack_reg_n_0,
      I5 => spi_sr_eot,
      O => in14(7)
    );
\spi_sr_bit_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8200"
    )
        port map (
      I0 => \FSM_onehot_spi_fsm_state_reg_n_0_[2]\,
      I1 => \spi_io_mode_q_reg_n_0_[1]\,
      I2 => \spi_sr_bit_cnt_reg_n_0_[0]\,
      I3 => \spi_sr_bit_cnt[2]_i_2_n_0\,
      O => \spi_sr_bit_cnt[0]_i_1_n_0\
    );
\spi_sr_bit_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08A20000"
    )
        port map (
      I0 => \FSM_onehot_spi_fsm_state_reg_n_0_[2]\,
      I1 => \spi_sr_bit_cnt_reg_n_0_[0]\,
      I2 => \spi_io_mode_q_reg_n_0_[1]\,
      I3 => \spi_sr_bit_cnt_reg_n_0_[1]\,
      I4 => \spi_sr_bit_cnt[2]_i_2_n_0\,
      O => \spi_sr_bit_cnt[1]_i_1_n_0\
    );
\spi_sr_bit_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A80A0200000000"
    )
        port map (
      I0 => \FSM_onehot_spi_fsm_state_reg_n_0_[2]\,
      I1 => \spi_sr_bit_cnt_reg_n_0_[0]\,
      I2 => \spi_sr_bit_cnt_reg_n_0_[1]\,
      I3 => \spi_io_mode_q_reg_n_0_[1]\,
      I4 => \spi_sr_bit_cnt_reg_n_0_[2]\,
      I5 => \spi_sr_bit_cnt[2]_i_2_n_0\,
      O => \spi_sr_bit_cnt[2]_i_1_n_0\
    );
\spi_sr_bit_cnt[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"51FF"
    )
        port map (
      I0 => spi_sr_out_buf_valid,
      I1 => spi_rd_req,
      I2 => spi_rd_req_ack_reg_n_0,
      I3 => spi_sr_eot,
      O => \spi_sr_bit_cnt[2]_i_2_n_0\
    );
\spi_sr_bit_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CF888F8888888888"
    )
        port map (
      I0 => \FSM_onehot_spi_fsm_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_spi_fsm_state[2]_i_2_n_0\,
      I2 => \spi_sr_bit_cnt[3]_i_3_n_0\,
      I3 => \FSM_onehot_spi_fsm_state_reg_n_0_[2]\,
      I4 => spi_sr_eot,
      I5 => \spi_io_mode_q1__2\,
      O => spi_sr_bit_cnt
    );
\spi_sr_bit_cnt[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAAFAAA"
    )
        port map (
      I0 => \FSM_onehot_spi_fsm_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_spi_fsm_state[2]_i_2_n_0\,
      I2 => \spi_sr_bit_cnt[3]_i_4_n_0\,
      I3 => \FSM_onehot_spi_fsm_state_reg_n_0_[2]\,
      I4 => spi_sr_eot,
      O => \spi_sr_bit_cnt[3]_i_2_n_0\
    );
\spi_sr_bit_cnt[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \spi_io_mode_q_reg_n_0_[0]\,
      I1 => \spi_io_mode_q_reg_n_0_[1]\,
      O => \spi_sr_bit_cnt[3]_i_3_n_0\
    );
\spi_sr_bit_cnt[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAFE0501"
    )
        port map (
      I0 => \spi_sr_bit_cnt_reg_n_0_[2]\,
      I1 => \spi_sr_bit_cnt_reg_n_0_[0]\,
      I2 => \spi_sr_bit_cnt_reg_n_0_[1]\,
      I3 => \spi_io_mode_q_reg_n_0_[1]\,
      I4 => \spi_sr_bit_cnt_reg_n_0_[3]\,
      O => \spi_sr_bit_cnt[3]_i_4_n_0\
    );
\spi_sr_bit_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_sr_bit_cnt,
      D => \spi_sr_bit_cnt[0]_i_1_n_0\,
      Q => \spi_sr_bit_cnt_reg_n_0_[0]\,
      R => \spi_io_o[0]_i_1_n_0\
    );
\spi_sr_bit_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_sr_bit_cnt,
      D => \spi_sr_bit_cnt[1]_i_1_n_0\,
      Q => \spi_sr_bit_cnt_reg_n_0_[1]\,
      R => \spi_io_o[0]_i_1_n_0\
    );
\spi_sr_bit_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_sr_bit_cnt,
      D => \spi_sr_bit_cnt[2]_i_1_n_0\,
      Q => \spi_sr_bit_cnt_reg_n_0_[2]\,
      R => \spi_io_o[0]_i_1_n_0\
    );
\spi_sr_bit_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_sr_bit_cnt,
      D => \spi_sr_bit_cnt[3]_i_2_n_0\,
      Q => \spi_sr_bit_cnt_reg_n_0_[3]\,
      R => \spi_io_o[0]_i_1_n_0\
    );
spi_sr_eot_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000300"
    )
        port map (
      I0 => \spi_io_mode_q_reg_n_0_[0]\,
      I1 => \spi_sr_bit_cnt_reg_n_0_[2]\,
      I2 => \spi_sr_bit_cnt_reg_n_0_[3]\,
      I3 => \spi_sr_bit_cnt_reg_n_0_[0]\,
      I4 => \spi_io_mode_q_reg_n_0_[1]\,
      I5 => \spi_sr_bit_cnt_reg_n_0_[1]\,
      O => spi_sr_eot_i_1_n_0
    );
spi_sr_eot_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => spi_sr_eot_i_1_n_0,
      Q => spi_sr_eot,
      R => \spi_io_o[0]_i_1_n_0\
    );
\spi_sr_in_buf[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAAC0AAC"
    )
        port map (
      I0 => spi_io0_i,
      I1 => spi_io1_i,
      I2 => \spi_io_mode_q_reg_n_0_[1]\,
      I3 => \spi_io_mode_q_reg_n_0_[0]\,
      I4 => \spi_sr_reg_n_0_[0]\,
      O => \spi_sr_in_buf[0]_i_2_n_0\
    );
\spi_sr_in_buf[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FACA0ACA"
    )
        port map (
      I0 => \spi_sr_reg_n_0_[1]\,
      I1 => \spi_sr_reg_n_0_[2]\,
      I2 => \spi_io_mode_q_reg_n_0_[1]\,
      I3 => \spi_io_mode_q_reg_n_0_[0]\,
      I4 => \spi_sr_reg_n_0_[0]\,
      O => spi_sr_in_buf0_in(0)
    );
\spi_sr_in_buf[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FACA0ACA"
    )
        port map (
      I0 => \spi_sr_reg_n_0_[0]\,
      I1 => spi_io1_i,
      I2 => \spi_io_mode_q_reg_n_0_[1]\,
      I3 => \spi_io_mode_q_reg_n_0_[0]\,
      I4 => \spi_sr_reg_n_0_[1]\,
      O => \spi_sr_in_buf[1]_i_2_n_0\
    );
\spi_sr_in_buf[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FACA0ACA"
    )
        port map (
      I0 => \spi_sr_reg_n_0_[2]\,
      I1 => \spi_sr_reg_n_0_[3]\,
      I2 => \spi_io_mode_q_reg_n_0_[1]\,
      I3 => \spi_io_mode_q_reg_n_0_[0]\,
      I4 => \spi_sr_reg_n_0_[1]\,
      O => spi_sr_in_buf0_in(1)
    );
\spi_sr_in_buf[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FACA0ACA"
    )
        port map (
      I0 => \spi_sr_reg_n_0_[1]\,
      I1 => \spi_sr_reg_n_0_[0]\,
      I2 => \spi_io_mode_q_reg_n_0_[1]\,
      I3 => \spi_io_mode_q_reg_n_0_[0]\,
      I4 => \spi_sr_reg_n_0_[2]\,
      O => \spi_sr_in_buf[2]_i_2_n_0\
    );
\spi_sr_in_buf[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FACA0ACA"
    )
        port map (
      I0 => \spi_sr_reg_n_0_[3]\,
      I1 => p_0_in(3),
      I2 => \spi_io_mode_q_reg_n_0_[1]\,
      I3 => \spi_io_mode_q_reg_n_0_[0]\,
      I4 => \spi_sr_reg_n_0_[2]\,
      O => spi_sr_in_buf0_in(2)
    );
\spi_sr_in_buf[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FACA0ACA"
    )
        port map (
      I0 => \spi_sr_reg_n_0_[2]\,
      I1 => \spi_sr_reg_n_0_[1]\,
      I2 => \spi_io_mode_q_reg_n_0_[1]\,
      I3 => \spi_io_mode_q_reg_n_0_[0]\,
      I4 => \spi_sr_reg_n_0_[3]\,
      O => \spi_sr_in_buf[3]_i_2_n_0\
    );
\spi_sr_in_buf[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FACA0ACA"
    )
        port map (
      I0 => p_0_in(3),
      I1 => p_0_in(4),
      I2 => \spi_io_mode_q_reg_n_0_[1]\,
      I3 => \spi_io_mode_q_reg_n_0_[0]\,
      I4 => \spi_sr_reg_n_0_[3]\,
      O => spi_sr_in_buf0_in(3)
    );
\spi_sr_in_buf[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FACA0ACA"
    )
        port map (
      I0 => \spi_sr_reg_n_0_[3]\,
      I1 => \spi_sr_reg_n_0_[2]\,
      I2 => \spi_io_mode_q_reg_n_0_[1]\,
      I3 => \spi_io_mode_q_reg_n_0_[0]\,
      I4 => p_0_in(3),
      O => \spi_sr_in_buf[4]_i_2_n_0\
    );
\spi_sr_in_buf[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FACA0ACA"
    )
        port map (
      I0 => p_0_in(4),
      I1 => \spi_sr_reg_n_0_[6]\,
      I2 => \spi_io_mode_q_reg_n_0_[1]\,
      I3 => \spi_io_mode_q_reg_n_0_[0]\,
      I4 => p_0_in(3),
      O => spi_sr_in_buf0_in(4)
    );
\spi_sr_in_buf[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FACA0ACA"
    )
        port map (
      I0 => p_0_in(3),
      I1 => \spi_sr_reg_n_0_[3]\,
      I2 => \spi_io_mode_q_reg_n_0_[1]\,
      I3 => \spi_io_mode_q_reg_n_0_[0]\,
      I4 => p_0_in(4),
      O => \spi_sr_in_buf[5]_i_2_n_0\
    );
\spi_sr_in_buf[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FACA0ACA"
    )
        port map (
      I0 => \spi_sr_reg_n_0_[6]\,
      I1 => p_1_in(0),
      I2 => \spi_io_mode_q_reg_n_0_[1]\,
      I3 => \spi_io_mode_q_reg_n_0_[0]\,
      I4 => p_0_in(4),
      O => spi_sr_in_buf0_in(5)
    );
\spi_sr_in_buf[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FACA0ACA"
    )
        port map (
      I0 => p_0_in(4),
      I1 => p_0_in(3),
      I2 => \spi_io_mode_q_reg_n_0_[1]\,
      I3 => \spi_io_mode_q_reg_n_0_[0]\,
      I4 => \spi_sr_reg_n_0_[6]\,
      O => \spi_sr_in_buf[6]_i_2_n_0\
    );
\spi_sr_in_buf[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FACA0ACA"
    )
        port map (
      I0 => p_1_in(0),
      I1 => spi_io0_i,
      I2 => \spi_io_mode_q_reg_n_0_[1]\,
      I3 => \spi_io_mode_q_reg_n_0_[0]\,
      I4 => \spi_sr_reg_n_0_[6]\,
      O => spi_sr_in_buf0_in(6)
    );
\spi_sr_in_buf[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404040400000004"
    )
        port map (
      I0 => \spi_io_mode_q[1]_i_2_n_0\,
      I1 => \FSM_onehot_spi_fsm_state_reg_n_0_[2]\,
      I2 => spi_sr_in_buf_valid_reg_n_0,
      I3 => \spi_io_mode_q_reg_n_0_[1]\,
      I4 => \spi_io_mode_q_reg_n_0_[0]\,
      I5 => spi_dir_reg_n_0,
      O => spi_sr_in_buf_0
    );
\spi_sr_in_buf[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FACA0ACA"
    )
        port map (
      I0 => \spi_sr_reg_n_0_[6]\,
      I1 => p_0_in(4),
      I2 => \spi_io_mode_q_reg_n_0_[1]\,
      I3 => \spi_io_mode_q_reg_n_0_[0]\,
      I4 => p_1_in(0),
      O => \spi_sr_in_buf[7]_i_3_n_0\
    );
\spi_sr_in_buf[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FACC0ACC"
    )
        port map (
      I0 => spi_io0_i,
      I1 => spi_io1_i,
      I2 => \spi_io_mode_q_reg_n_0_[1]\,
      I3 => \spi_io_mode_q_reg_n_0_[0]\,
      I4 => p_1_in(0),
      O => spi_sr_in_buf0_in(7)
    );
spi_sr_in_buf_ready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000DFFF20000000"
    )
        port map (
      I0 => s_axi_araddr(2),
      I1 => s_axi_araddr(3),
      I2 => spi_sr_in_buf_ready_i_2_n_0,
      I3 => s_axi_rd_en,
      I4 => spi_sr_in_buf_valid_reg_n_0,
      I5 => spi_sr_in_buf_ready_reg_n_0,
      O => spi_sr_in_buf_ready_i_1_n_0
    );
spi_sr_in_buf_ready_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_araddr(1),
      I1 => s_axi_araddr(0),
      O => spi_sr_in_buf_ready_i_2_n_0
    );
spi_sr_in_buf_ready_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => spi_sr_in_buf_ready_i_1_n_0,
      Q => spi_sr_in_buf_ready_reg_n_0,
      R => \p_0_in__0\
    );
\spi_sr_in_buf_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_sr_in_buf_0,
      D => spi_sr_in_buf(0),
      Q => data5(0),
      R => \spi_io_o[0]_i_1_n_0\
    );
\spi_sr_in_buf_reg[0]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spi_sr_in_buf[0]_i_2_n_0\,
      I1 => spi_sr_in_buf0_in(0),
      O => spi_sr_in_buf(0),
      S => spi_lsb_first_reg_n_0
    );
\spi_sr_in_buf_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_sr_in_buf_0,
      D => spi_sr_in_buf(1),
      Q => data5(1),
      R => \spi_io_o[0]_i_1_n_0\
    );
\spi_sr_in_buf_reg[1]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spi_sr_in_buf[1]_i_2_n_0\,
      I1 => spi_sr_in_buf0_in(1),
      O => spi_sr_in_buf(1),
      S => spi_lsb_first_reg_n_0
    );
\spi_sr_in_buf_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_sr_in_buf_0,
      D => spi_sr_in_buf(2),
      Q => data5(2),
      R => \spi_io_o[0]_i_1_n_0\
    );
\spi_sr_in_buf_reg[2]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spi_sr_in_buf[2]_i_2_n_0\,
      I1 => spi_sr_in_buf0_in(2),
      O => spi_sr_in_buf(2),
      S => spi_lsb_first_reg_n_0
    );
\spi_sr_in_buf_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_sr_in_buf_0,
      D => spi_sr_in_buf(3),
      Q => data5(3),
      R => \spi_io_o[0]_i_1_n_0\
    );
\spi_sr_in_buf_reg[3]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spi_sr_in_buf[3]_i_2_n_0\,
      I1 => spi_sr_in_buf0_in(3),
      O => spi_sr_in_buf(3),
      S => spi_lsb_first_reg_n_0
    );
\spi_sr_in_buf_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_sr_in_buf_0,
      D => spi_sr_in_buf(4),
      Q => data5(4),
      R => \spi_io_o[0]_i_1_n_0\
    );
\spi_sr_in_buf_reg[4]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spi_sr_in_buf[4]_i_2_n_0\,
      I1 => spi_sr_in_buf0_in(4),
      O => spi_sr_in_buf(4),
      S => spi_lsb_first_reg_n_0
    );
\spi_sr_in_buf_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_sr_in_buf_0,
      D => spi_sr_in_buf(5),
      Q => data5(5),
      R => \spi_io_o[0]_i_1_n_0\
    );
\spi_sr_in_buf_reg[5]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spi_sr_in_buf[5]_i_2_n_0\,
      I1 => spi_sr_in_buf0_in(5),
      O => spi_sr_in_buf(5),
      S => spi_lsb_first_reg_n_0
    );
\spi_sr_in_buf_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_sr_in_buf_0,
      D => spi_sr_in_buf(6),
      Q => data5(6),
      R => \spi_io_o[0]_i_1_n_0\
    );
\spi_sr_in_buf_reg[6]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spi_sr_in_buf[6]_i_2_n_0\,
      I1 => spi_sr_in_buf0_in(6),
      O => spi_sr_in_buf(6),
      S => spi_lsb_first_reg_n_0
    );
\spi_sr_in_buf_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_sr_in_buf_0,
      D => spi_sr_in_buf(7),
      Q => data5(7),
      R => \spi_io_o[0]_i_1_n_0\
    );
\spi_sr_in_buf_reg[7]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spi_sr_in_buf[7]_i_3_n_0\,
      I1 => spi_sr_in_buf0_in(7),
      O => spi_sr_in_buf(7),
      S => spi_lsb_first_reg_n_0
    );
spi_sr_in_buf_valid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5500550055CF5500"
    )
        port map (
      I0 => spi_sr_in_buf_valid_i_2_n_0,
      I1 => spi_dir_reg_n_0,
      I2 => spi_sr_in_buf_valid_i_3_n_0,
      I3 => spi_sr_in_buf_valid_reg_n_0,
      I4 => \FSM_onehot_spi_fsm_state_reg_n_0_[2]\,
      I5 => \spi_io_mode_q[1]_i_2_n_0\,
      O => spi_sr_in_buf_valid_i_1_n_0
    );
spi_sr_in_buf_valid_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE000000"
    )
        port map (
      I0 => \FSM_onehot_spi_fsm_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_spi_fsm_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_spi_fsm_state_reg_n_0_[2]\,
      I3 => spi_sr_in_buf_ready_reg_n_0,
      I4 => spi_sr_in_buf_valid_reg_n_0,
      O => spi_sr_in_buf_valid_i_2_n_0
    );
spi_sr_in_buf_valid_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \spi_io_mode_q_reg_n_0_[0]\,
      I1 => \spi_io_mode_q_reg_n_0_[1]\,
      O => spi_sr_in_buf_valid_i_3_n_0
    );
spi_sr_in_buf_valid_q_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => spi_sr_in_buf_valid_reg_n_0,
      Q => spi_sr_in_buf_valid_q,
      R => \p_0_in__0\
    );
spi_sr_in_buf_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => spi_sr_in_buf_valid_i_1_n_0,
      Q => spi_sr_in_buf_valid_reg_n_0,
      R => \spi_io_o[0]_i_1_n_0\
    );
\spi_sr_out_buf[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE0FFFFFF200000"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => \spi_sr_out_buf[7]_i_5_n_0\,
      I2 => \spi_sr_out_buf[7]_i_6_n_0\,
      I3 => \spi_sr_out_buf[7]_i_7_n_0\,
      I4 => \^s_axi_wready\,
      I5 => spi_en,
      O => p_2_in(0)
    );
\spi_sr_out_buf[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE0FFFFFF200000"
    )
        port map (
      I0 => s_axi_wdata(1),
      I1 => \spi_sr_out_buf[7]_i_5_n_0\,
      I2 => \spi_sr_out_buf[7]_i_6_n_0\,
      I3 => \spi_sr_out_buf[7]_i_7_n_0\,
      I4 => \^s_axi_wready\,
      I5 => spi_en,
      O => p_2_in(1)
    );
\spi_sr_out_buf[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE0FFFFFF200000"
    )
        port map (
      I0 => s_axi_wdata(2),
      I1 => \spi_sr_out_buf[7]_i_5_n_0\,
      I2 => \spi_sr_out_buf[7]_i_6_n_0\,
      I3 => \spi_sr_out_buf[7]_i_7_n_0\,
      I4 => \^s_axi_wready\,
      I5 => spi_en,
      O => p_2_in(2)
    );
\spi_sr_out_buf[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE0FFFFFF200000"
    )
        port map (
      I0 => s_axi_wdata(3),
      I1 => \spi_sr_out_buf[7]_i_5_n_0\,
      I2 => \spi_sr_out_buf[7]_i_6_n_0\,
      I3 => \spi_sr_out_buf[7]_i_7_n_0\,
      I4 => \^s_axi_wready\,
      I5 => spi_en,
      O => p_2_in(3)
    );
\spi_sr_out_buf[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE0FFFFFF200000"
    )
        port map (
      I0 => s_axi_wdata(4),
      I1 => \spi_sr_out_buf[7]_i_5_n_0\,
      I2 => \spi_sr_out_buf[7]_i_6_n_0\,
      I3 => \spi_sr_out_buf[7]_i_7_n_0\,
      I4 => \^s_axi_wready\,
      I5 => spi_en,
      O => p_2_in(4)
    );
\spi_sr_out_buf[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE0FFFFFF200000"
    )
        port map (
      I0 => s_axi_wdata(5),
      I1 => \spi_sr_out_buf[7]_i_5_n_0\,
      I2 => \spi_sr_out_buf[7]_i_6_n_0\,
      I3 => \spi_sr_out_buf[7]_i_7_n_0\,
      I4 => \^s_axi_wready\,
      I5 => spi_en,
      O => p_2_in(5)
    );
\spi_sr_out_buf[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE0FFFFFF200000"
    )
        port map (
      I0 => s_axi_wdata(6),
      I1 => \spi_sr_out_buf[7]_i_5_n_0\,
      I2 => \spi_sr_out_buf[7]_i_6_n_0\,
      I3 => \spi_sr_out_buf[7]_i_7_n_0\,
      I4 => \^s_axi_wready\,
      I5 => spi_en,
      O => p_2_in(6)
    );
\spi_sr_out_buf[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0800FFFF"
    )
        port map (
      I0 => \spi_sr_out_buf[7]_i_3_n_0\,
      I1 => \spi_sr_out_buf[7]_i_4_n_0\,
      I2 => \spi_sr_out_buf[7]_i_5_n_0\,
      I3 => \^s_axi_wready\,
      I4 => spi_en,
      O => \spi_sr_out_buf[7]_i_1_n_0\
    );
\spi_sr_out_buf[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE0FFFFFF200000"
    )
        port map (
      I0 => s_axi_wdata(7),
      I1 => \spi_sr_out_buf[7]_i_5_n_0\,
      I2 => \spi_sr_out_buf[7]_i_6_n_0\,
      I3 => \spi_sr_out_buf[7]_i_7_n_0\,
      I4 => \^s_axi_wready\,
      I5 => spi_en,
      O => p_2_in(7)
    );
\spi_sr_out_buf[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => s_axi_awaddr(1),
      I1 => s_axi_awaddr(0),
      I2 => s_axi_awaddr(3),
      I3 => s_axi_awaddr(2),
      O => \spi_sr_out_buf[7]_i_3_n_0\
    );
\spi_sr_out_buf[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_wstrb(0),
      I1 => s_axi_wstrb(1),
      O => \spi_sr_out_buf[7]_i_4_n_0\
    );
\spi_sr_out_buf[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => spi_sr_out_buf_valid,
      I1 => s_axi_wdata(9),
      I2 => s_axi_wdata(8),
      O => \spi_sr_out_buf[7]_i_5_n_0\
    );
\spi_sr_out_buf[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \spi_sr_out_buf[7]_i_3_n_0\,
      I1 => s_axi_wstrb(0),
      I2 => s_axi_wstrb(1),
      I3 => spi_en,
      O => \spi_sr_out_buf[7]_i_6_n_0\
    );
\spi_sr_out_buf[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF7FFFF00000000"
    )
        port map (
      I0 => \spi_sr_out_buf[7]_i_4_n_0\,
      I1 => s_axi_awaddr(0),
      I2 => s_axi_awaddr(1),
      I3 => s_axi_awaddr(3),
      I4 => s_axi_awaddr(2),
      I5 => spi_en,
      O => \spi_sr_out_buf[7]_i_7_n_0\
    );
spi_sr_out_buf_ready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABFBFFFFAAFA0000"
    )
        port map (
      I0 => \FSM_onehot_spi_fsm_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_spi_fsm_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_spi_fsm_state_reg_n_0_[2]\,
      I3 => \spi_io_mode_q[1]_i_2_n_0\,
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
      R => \spi_io_o[0]_i_1_n_0\
    );
\spi_sr_out_buf_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_sr_out_buf[7]_i_1_n_0\,
      D => p_2_in(0),
      Q => spi_sr_out_buf(0),
      R => \p_0_in__0\
    );
\spi_sr_out_buf_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_sr_out_buf[7]_i_1_n_0\,
      D => p_2_in(1),
      Q => spi_sr_out_buf(1),
      R => \p_0_in__0\
    );
\spi_sr_out_buf_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_sr_out_buf[7]_i_1_n_0\,
      D => p_2_in(2),
      Q => spi_sr_out_buf(2),
      R => \p_0_in__0\
    );
\spi_sr_out_buf_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_sr_out_buf[7]_i_1_n_0\,
      D => p_2_in(3),
      Q => spi_sr_out_buf(3),
      R => \p_0_in__0\
    );
\spi_sr_out_buf_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_sr_out_buf[7]_i_1_n_0\,
      D => p_2_in(4),
      Q => spi_sr_out_buf(4),
      R => \p_0_in__0\
    );
\spi_sr_out_buf_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_sr_out_buf[7]_i_1_n_0\,
      D => p_2_in(5),
      Q => spi_sr_out_buf(5),
      R => \p_0_in__0\
    );
\spi_sr_out_buf_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_sr_out_buf[7]_i_1_n_0\,
      D => p_2_in(6),
      Q => spi_sr_out_buf(6),
      R => \p_0_in__0\
    );
\spi_sr_out_buf_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \spi_sr_out_buf[7]_i_1_n_0\,
      D => p_2_in(7),
      Q => spi_sr_out_buf(7),
      R => \p_0_in__0\
    );
spi_sr_out_buf_valid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20FF202020202020"
    )
        port map (
      I0 => spi_sr_out_buf_valid,
      I1 => spi_sr_out_buf_ready_reg_n_0,
      I2 => spi_en,
      I3 => \spi_sr_out_buf[7]_i_5_n_0\,
      I4 => \spi_sr_out_buf[7]_i_6_n_0\,
      I5 => \^s_axi_wready\,
      O => spi_sr_out_buf_valid_i_1_n_0
    );
spi_sr_out_buf_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => spi_sr_out_buf_valid_i_1_n_0,
      Q => spi_sr_out_buf_valid,
      R => \p_0_in__0\
    );
\spi_sr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_sr,
      D => \spi_sr[0]_i_1_n_0\,
      Q => \spi_sr_reg_n_0_[0]\,
      R => \spi_io_o[0]_i_1_n_0\
    );
\spi_sr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_sr,
      D => \spi_sr[1]_i_1_n_0\,
      Q => \spi_sr_reg_n_0_[1]\,
      R => \spi_io_o[0]_i_1_n_0\
    );
\spi_sr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_sr,
      D => \spi_sr[2]_i_1_n_0\,
      Q => \spi_sr_reg_n_0_[2]\,
      R => \spi_io_o[0]_i_1_n_0\
    );
\spi_sr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_sr,
      D => \spi_sr[3]_i_1_n_0\,
      Q => \spi_sr_reg_n_0_[3]\,
      R => \spi_io_o[0]_i_1_n_0\
    );
\spi_sr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_sr,
      D => \spi_sr[4]_i_1_n_0\,
      Q => p_0_in(3),
      R => \spi_io_o[0]_i_1_n_0\
    );
\spi_sr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_sr,
      D => \spi_sr[5]_i_1_n_0\,
      Q => p_0_in(4),
      R => \spi_io_o[0]_i_1_n_0\
    );
\spi_sr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_sr,
      D => \spi_sr[6]_i_1_n_0\,
      Q => \spi_sr_reg_n_0_[6]\,
      R => \spi_io_o[0]_i_1_n_0\
    );
\spi_sr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => spi_sr,
      D => \spi_sr[7]_i_2_n_0\,
      Q => p_1_in(0),
      R => \spi_io_o[0]_i_1_n_0\
    );
\spi_ss_o[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => \spi_ss_o[0]_i_2_n_0\,
      I2 => s_axi_awaddr(3),
      I3 => \^s_axi_wready\,
      I4 => \spi_ss_o[0]_i_3_n_0\,
      I5 => \^spi_ss_o\(0),
      O => \spi_ss_o[0]_i_1_n_0\
    );
\spi_ss_o[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => s_axi_wstrb(0),
      O => \spi_ss_o[0]_i_2_n_0\
    );
\spi_ss_o[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => s_axi_awaddr(1),
      O => \spi_ss_o[0]_i_3_n_0\
    );
\spi_ss_o_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \spi_ss_o[0]_i_1_n_0\,
      Q => \^spi_ss_o\(0),
      S => \p_0_in__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_spi_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    irq : out STD_LOGIC;
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
    spi_io1_t : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of icyradio_axi_spi_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of icyradio_axi_spi_0_0 : entity is "icyradio_axi_spi_0_0,axi_spi,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of icyradio_axi_spi_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of icyradio_axi_spi_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of icyradio_axi_spi_0_0 : entity is "axi_spi,Vivado 2023.2";
end icyradio_axi_spi_0_0;

architecture STRUCTURE of icyradio_axi_spi_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_wready\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET aresetn, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN icyradio_axi_pcie_0_0_axi_aclk_out, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of irq : signal is "xilinx.com:signal:interrupt:1.0 irq INTERRUPT";
  attribute X_INTERFACE_PARAMETER of irq : signal is "XIL_INTERFACENAME irq, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 s_axi ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi BREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi BVALID";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 s_axi RREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_rready : signal is "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 125000000, ID_WIDTH 0, ADDR_WIDTH 6, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN icyradio_axi_pcie_0_0_axi_aclk_out, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi RVALID";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi WVALID";
  attribute X_INTERFACE_INFO of spi_io0_i : signal is "xilinx.com:interface:spi:1.0 spi IO0_I";
  attribute X_INTERFACE_INFO of spi_io0_o : signal is "xilinx.com:interface:spi:1.0 spi IO0_O";
  attribute X_INTERFACE_INFO of spi_io0_t : signal is "xilinx.com:interface:spi:1.0 spi IO0_T";
  attribute X_INTERFACE_INFO of spi_io1_i : signal is "xilinx.com:interface:spi:1.0 spi IO1_I";
  attribute X_INTERFACE_INFO of spi_io1_o : signal is "xilinx.com:interface:spi:1.0 spi IO1_O";
  attribute X_INTERFACE_INFO of spi_io1_t : signal is "xilinx.com:interface:spi:1.0 spi IO1_T";
  attribute X_INTERFACE_INFO of spi_sck_i : signal is "xilinx.com:interface:spi:1.0 spi SCK_I";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of spi_sck_i : signal is "Master";
  attribute X_INTERFACE_INFO of spi_sck_o : signal is "xilinx.com:interface:spi:1.0 spi SCK_O";
  attribute X_INTERFACE_INFO of spi_sck_t : signal is "xilinx.com:interface:spi:1.0 spi SCK_T";
  attribute X_INTERFACE_INFO of spi_ss_t : signal is "xilinx.com:interface:spi:1.0 spi SS_T";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axi ARADDR";
  attribute X_INTERFACE_INFO of s_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 s_axi ARPROT";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi AWADDR";
  attribute X_INTERFACE_INFO of s_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 s_axi AWPROT";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi BRESP";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axi RRESP";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi WDATA";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axi WSTRB";
  attribute X_INTERFACE_INFO of spi_ss_i : signal is "xilinx.com:interface:spi:1.0 spi SS_I";
  attribute X_INTERFACE_INFO of spi_ss_o : signal is "xilinx.com:interface:spi:1.0 spi SS_O";
begin
  s_axi_awready <= \^s_axi_wready\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rdata(31) <= \^s_axi_rdata\(31);
  s_axi_rdata(30) <= \<const0>\;
  s_axi_rdata(29 downto 28) <= \^s_axi_rdata\(29 downto 28);
  s_axi_rdata(27) <= \<const0>\;
  s_axi_rdata(26) <= \<const0>\;
  s_axi_rdata(25) <= \<const0>\;
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23 downto 16) <= \^s_axi_rdata\(23 downto 16);
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9 downto 0) <= \^s_axi_rdata\(9 downto 0);
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_wready <= \^s_axi_wready\;
  spi_sck_t <= \<const0>\;
  spi_ss_t <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.icyradio_axi_spi_0_0_axi_spi
     port map (
      aclk => aclk,
      aresetn => aresetn,
      irq => irq,
      s_axi_araddr(3 downto 0) => s_axi_araddr(5 downto 2),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(3 downto 0) => s_axi_awaddr(5 downto 2),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(20) => \^s_axi_rdata\(31),
      s_axi_rdata(19 downto 18) => \^s_axi_rdata\(29 downto 28),
      s_axi_rdata(17 downto 10) => \^s_axi_rdata\(23 downto 16),
      s_axi_rdata(9 downto 0) => \^s_axi_rdata\(9 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid_reg_0 => s_axi_rvalid,
      s_axi_wdata(17 downto 10) => s_axi_wdata(23 downto 16),
      s_axi_wdata(9 downto 0) => s_axi_wdata(9 downto 0),
      s_axi_wready => \^s_axi_wready\,
      s_axi_wstrb(2 downto 0) => s_axi_wstrb(2 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      spi_io0_i => spi_io0_i,
      spi_io0_o => spi_io0_o,
      spi_io0_t => spi_io0_t,
      spi_io1_i => spi_io1_i,
      spi_io1_o => spi_io1_o,
      spi_io1_t => spi_io1_t,
      spi_sck_o => spi_sck_o,
      spi_ss_o(0) => spi_ss_o(0)
    );
end STRUCTURE;
