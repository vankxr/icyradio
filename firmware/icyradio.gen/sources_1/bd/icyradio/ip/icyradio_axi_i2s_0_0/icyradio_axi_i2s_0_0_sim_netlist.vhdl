-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Tue Oct 10 22:25:32 2023
-- Host        : xubuntu-dev running 64-bit Ubuntu 20.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/joao/icyradio/firmware/icyradio.gen/sources_1/bd/icyradio/ip/icyradio_axi_i2s_0_0/icyradio_axi_i2s_0_0_sim_netlist.vhdl
-- Design      : icyradio_axi_i2s_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_i2s_0_0_axi_i2s is
  port (
    s_axi_wready : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    i2s_bclk_reg_0 : out STD_LOGIC;
    i2s_mclk : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 19 downto 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tvalid_reg_0 : out STD_LOGIC;
    i2s_lrclk : out STD_LOGIC;
    s_axis_tready_reg_0 : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    i2s_sdata_out : out STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 19 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    i2s_sdata_in : in STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tready : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    aresetn : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_axi_i2s_0_0_axi_i2s : entity is "axi_i2s";
end icyradio_axi_i2s_0_0_axi_i2s;

architecture STRUCTURE of icyradio_axi_i2s_0_0_axi_i2s is
  signal \FSM_sequential_i2s_fsm_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_i2s_fsm_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_i2s_fsm_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_i2s_fsm_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_i2s_fsm_state[1]_i_4_n_0\ : STD_LOGIC;
  signal i2s_bclk_div : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal i2s_bclk_div_4 : STD_LOGIC;
  signal \i2s_bclk_div_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \i2s_bclk_div_cnt[7]_i_3_n_0\ : STD_LOGIC;
  signal i2s_bclk_div_cnt_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal i2s_bclk_i_1_n_0 : STD_LOGIC;
  signal \^i2s_bclk_reg_0\ : STD_LOGIC;
  signal i2s_bclk_toggle : STD_LOGIC;
  signal i2s_bit_cnt : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \i2s_bit_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \i2s_bit_cnt[4]_i_4_n_0\ : STD_LOGIC;
  signal \i2s_bit_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \i2s_bit_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \i2s_bit_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \i2s_bit_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \i2s_bit_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \i2s_chan_bit_sz__1\ : STD_LOGIC;
  signal i2s_chan_bit_sz_i_1_n_0 : STD_LOGIC;
  signal i2s_chan_bit_sz_reg_n_0 : STD_LOGIC;
  signal \i2s_chan_cnt0__3\ : STD_LOGIC;
  signal \i2s_chan_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \i2s_chan_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \i2s_chan_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \i2s_chan_cnt[2]_i_2_n_0\ : STD_LOGIC;
  signal \i2s_chan_cnt[2]_i_3_n_0\ : STD_LOGIC;
  signal \i2s_chan_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \i2s_chan_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \i2s_chan_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal i2s_chan_en : STD_LOGIC;
  signal \i2s_chan_en[7]_i_2_n_0\ : STD_LOGIC;
  signal \i2s_chan_en_reg_n_0_[0]\ : STD_LOGIC;
  signal \i2s_chan_en_reg_n_0_[1]\ : STD_LOGIC;
  signal \i2s_chan_en_reg_n_0_[2]\ : STD_LOGIC;
  signal \i2s_chan_en_reg_n_0_[3]\ : STD_LOGIC;
  signal \i2s_chan_en_reg_n_0_[4]\ : STD_LOGIC;
  signal \i2s_chan_en_reg_n_0_[5]\ : STD_LOGIC;
  signal \i2s_chan_en_reg_n_0_[6]\ : STD_LOGIC;
  signal \i2s_chan_en_reg_n_0_[7]\ : STD_LOGIC;
  signal i2s_chan_max : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \i2s_chan_max[0]_i_1_n_0\ : STD_LOGIC;
  signal \i2s_chan_max[1]_i_1_n_0\ : STD_LOGIC;
  signal \i2s_chan_max[2]_i_1_n_0\ : STD_LOGIC;
  signal i2s_chan_max_2 : STD_LOGIC;
  signal i2s_clk_div_en_i_1_n_0 : STD_LOGIC;
  signal i2s_clk_div_en_i_2_n_0 : STD_LOGIC;
  signal i2s_clk_div_en_reg_n_0 : STD_LOGIC;
  signal i2s_en : STD_LOGIC;
  signal i2s_en17_out : STD_LOGIC;
  signal i2s_en_i_1_n_0 : STD_LOGIC;
  signal \i2s_fsm_state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^i2s_lrclk\ : STD_LOGIC;
  signal i2s_lrclk_div : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \i2s_lrclk_div_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \i2s_lrclk_div_cnt[0]_i_3_n_0\ : STD_LOGIC;
  signal i2s_lrclk_div_cnt_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \i2s_lrclk_div_cnt_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \i2s_lrclk_div_cnt_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \i2s_lrclk_div_cnt_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \i2s_lrclk_div_cnt_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \i2s_lrclk_div_cnt_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \i2s_lrclk_div_cnt_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \i2s_lrclk_div_cnt_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \i2s_lrclk_div_cnt_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \i2s_lrclk_div_cnt_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \i2s_lrclk_div_cnt_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \i2s_lrclk_div_cnt_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \i2s_lrclk_div_cnt_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \i2s_lrclk_div_cnt_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \i2s_lrclk_div_cnt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \i2s_lrclk_div_cnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \i2s_lrclk_div_cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \i2s_lrclk_div_cnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \i2s_lrclk_div_cnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \i2s_lrclk_div_cnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \i2s_lrclk_div_cnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \i2s_lrclk_div_cnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \i2s_lrclk_div_cnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \i2s_lrclk_div_cnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \i2s_lrclk_div_cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \i2s_lrclk_div_cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \i2s_lrclk_div_cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \i2s_lrclk_div_cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \i2s_lrclk_div_cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \i2s_lrclk_div_cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \i2s_lrclk_div_cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \i2s_lrclk_div_cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal i2s_lrclk_i_1_n_0 : STD_LOGIC;
  signal i2s_lrclk_toggle0 : STD_LOGIC;
  signal \i2s_lrclk_toggle0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i2s_lrclk_toggle0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i2s_lrclk_toggle0_carry__0_n_3\ : STD_LOGIC;
  signal i2s_lrclk_toggle0_carry_i_1_n_0 : STD_LOGIC;
  signal i2s_lrclk_toggle0_carry_i_2_n_0 : STD_LOGIC;
  signal i2s_lrclk_toggle0_carry_i_3_n_0 : STD_LOGIC;
  signal i2s_lrclk_toggle0_carry_i_4_n_0 : STD_LOGIC;
  signal i2s_lrclk_toggle0_carry_n_0 : STD_LOGIC;
  signal i2s_lrclk_toggle0_carry_n_1 : STD_LOGIC;
  signal i2s_lrclk_toggle0_carry_n_2 : STD_LOGIC;
  signal i2s_lrclk_toggle0_carry_n_3 : STD_LOGIC;
  signal \^i2s_mclk\ : STD_LOGIC;
  signal i2s_mclk_div : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal i2s_mclk_div_3 : STD_LOGIC;
  signal \i2s_mclk_div_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \i2s_mclk_div_cnt[7]_i_3_n_0\ : STD_LOGIC;
  signal i2s_mclk_div_cnt_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal i2s_mclk_i_1_n_0 : STD_LOGIC;
  signal i2s_mclk_i_2_n_0 : STD_LOGIC;
  signal i2s_mclk_i_3_n_0 : STD_LOGIC;
  signal i2s_mclk_i_4_n_0 : STD_LOGIC;
  signal i2s_sdata_in_sr : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \i2s_sdata_in_sr[30]_i_1_n_0\ : STD_LOGIC;
  signal i2s_sdata_in_sr_bit_cnt : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \i2s_sdata_in_sr_bit_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_bit_cnt[5]_i_3_n_0\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_bit_cnt[5]_i_4_n_0\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_bit_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_bit_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_bit_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_bit_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_bit_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \^i2s_sdata_out\ : STD_LOGIC;
  signal i2s_sdata_out_i_1_n_0 : STD_LOGIC;
  signal i2s_sdata_out_i_2_n_0 : STD_LOGIC;
  signal i2s_sdata_out_sr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal i2s_sdata_out_sr_bit_cnt : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \i2s_sdata_out_sr_bit_cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_bit_cnt[5]_i_6_n_0\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_bit_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_bit_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_bit_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_bit_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_bit_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_bit_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_reg_n_0_[0]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_reg_n_0_[10]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_reg_n_0_[11]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_reg_n_0_[12]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_reg_n_0_[13]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_reg_n_0_[14]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_reg_n_0_[15]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_reg_n_0_[16]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_reg_n_0_[17]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_reg_n_0_[18]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_reg_n_0_[19]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_reg_n_0_[1]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_reg_n_0_[20]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_reg_n_0_[21]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_reg_n_0_[22]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_reg_n_0_[23]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_reg_n_0_[24]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_reg_n_0_[25]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_reg_n_0_[26]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_reg_n_0_[27]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_reg_n_0_[28]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_reg_n_0_[29]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_reg_n_0_[2]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_reg_n_0_[30]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_reg_n_0_[31]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_reg_n_0_[3]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_reg_n_0_[4]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_reg_n_0_[5]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_reg_n_0_[6]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_reg_n_0_[7]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_reg_n_0_[8]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_reg_n_0_[9]\ : STD_LOGIC;
  signal \m_axis_tdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[31]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[31]_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[31]_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[31]_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[31]_i_7_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[31]_i_8_n_0\ : STD_LOGIC;
  signal \m_axis_tvalid0__3\ : STD_LOGIC;
  signal m_axis_tvalid12_in : STD_LOGIC;
  signal \m_axis_tvalid131_out__0\ : STD_LOGIC;
  signal \m_axis_tvalid1__6\ : STD_LOGIC;
  signal m_axis_tvalid_i_2_n_0 : STD_LOGIC;
  signal m_axis_tvalid_i_4_n_0 : STD_LOGIC;
  signal \^m_axis_tvalid_reg_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in_1 : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 15 downto 7 );
  signal \p_1_in__0\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \p_1_in__0_0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_33_in : STD_LOGIC;
  signal \s_axi_araddr_q[2]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_araddr_q[3]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_araddr_q[4]_i_1_n_0\ : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal s_axi_arready0 : STD_LOGIC;
  signal s_axi_aw_en_i_1_n_0 : STD_LOGIC;
  signal s_axi_aw_en_reg_n_0 : STD_LOGIC;
  signal \s_axi_awaddr_q[2]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_awaddr_q[3]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_awaddr_q[4]_i_1_n_0\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal s_axi_awready0 : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal s_axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \s_axi_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal s_axi_rdata_5 : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal \s_axi_reg_rden__0\ : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal s_axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal s_axi_wready_i_1_n_0 : STD_LOGIC;
  signal \s_axis_tready0__0\ : STD_LOGIC;
  signal \s_axis_tready127_out__0\ : STD_LOGIC;
  signal \s_axis_tready1__0\ : STD_LOGIC;
  signal \s_axis_tready9_out__2\ : STD_LOGIC;
  signal s_axis_tready_i_1_n_0 : STD_LOGIC;
  signal s_axis_tready_i_4_n_0 : STD_LOGIC;
  signal \^s_axis_tready_reg_0\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_i2s_lrclk_div_cnt_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_i2s_lrclk_toggle0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_i2s_lrclk_toggle0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_i2s_lrclk_toggle0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_i2s_fsm_state_reg[0]\ : label is "I2S_FSM_STATE_WAIT_LRCLK_SYNC:01,I2S_FSM_STATE_WAIT_BCLK_SYNC:10,I2S_FSM_STATE_RD_FIRST:00,I2S_FSM_STATE_ACTIVE:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_i2s_fsm_state_reg[1]\ : label is "I2S_FSM_STATE_WAIT_LRCLK_SYNC:01,I2S_FSM_STATE_WAIT_BCLK_SYNC:10,I2S_FSM_STATE_RD_FIRST:00,I2S_FSM_STATE_ACTIVE:11";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \i2s_bclk_div_cnt[1]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \i2s_bclk_div_cnt[2]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \i2s_bclk_div_cnt[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \i2s_bclk_div_cnt[4]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \i2s_bclk_div_cnt[7]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of i2s_bclk_i_1 : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \i2s_bit_cnt[0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \i2s_bit_cnt[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \i2s_bit_cnt[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \i2s_chan_cnt[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \i2s_chan_cnt[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \i2s_chan_cnt[2]_i_3\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \i2s_chan_en[7]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \i2s_chan_max[1]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \i2s_chan_max[2]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of i2s_clk_div_en_i_2 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of i2s_en_i_2 : label is "soft_lutpair2";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \i2s_lrclk_div_cnt_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \i2s_lrclk_div_cnt_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \i2s_lrclk_div_cnt_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \i2s_lrclk_div_cnt_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of i2s_lrclk_i_1 : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \i2s_mclk_div_cnt[1]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \i2s_mclk_div_cnt[2]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \i2s_mclk_div_cnt[3]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \i2s_mclk_div_cnt[4]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \i2s_mclk_div_cnt[7]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of i2s_mclk_i_4 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[10]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[11]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[12]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[13]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[14]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[15]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[16]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[17]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[18]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[19]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[1]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[20]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[21]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[22]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[23]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[24]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[25]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[26]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[27]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[28]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[29]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[2]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[30]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[3]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[4]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[5]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[6]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[7]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[8]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[9]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr_bit_cnt[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr_bit_cnt[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr_bit_cnt[3]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr_bit_cnt[4]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \i2s_sdata_out_sr[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \i2s_sdata_out_sr_bit_cnt[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \i2s_sdata_out_sr_bit_cnt[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \i2s_sdata_out_sr_bit_cnt[4]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \i2s_sdata_out_sr_bit_cnt[5]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \i2s_sdata_out_sr_bit_cnt[5]_i_5\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m_axis_tdata[31]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \m_axis_tdata[31]_i_6\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \s_axi_araddr_q[4]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of s_axi_arready_i_1 : label is "soft_lutpair13";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s_axi_arready_reg : label is "xilinx.com:interface:aximm:1.0 s_axi ARREADY";
  attribute X_INTERFACE_INFO of s_axi_awready_reg : label is "xilinx.com:interface:aximm:1.0 s_axi AWREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid_reg : label is "xilinx.com:interface:aximm:1.0 s_axi BVALID";
  attribute SOFT_HLUTNM of \s_axi_rdata[16]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \s_axi_rdata[17]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \s_axi_rdata[18]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \s_axi_rdata[20]_i_1\ : label is "soft_lutpair16";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[0]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[10]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[11]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[12]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[13]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[14]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[15]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[16]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[17]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[18]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[1]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[20]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[2]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[3]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[4]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[5]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[6]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[7]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[8]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[9]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of s_axi_rvalid_reg : label is "xilinx.com:interface:aximm:1.0 s_axi RVALID";
  attribute SOFT_HLUTNM of s_axi_wready_i_1 : label is "soft_lutpair12";
  attribute X_INTERFACE_INFO of s_axi_wready_reg : label is "xilinx.com:interface:aximm:1.0 s_axi WREADY";
  attribute SOFT_HLUTNM of s_axis_tready_i_2 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of s_axis_tready_i_3 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of s_axis_tready_i_4 : label is "soft_lutpair10";
begin
  i2s_bclk_reg_0 <= \^i2s_bclk_reg_0\;
  i2s_lrclk <= \^i2s_lrclk\;
  i2s_mclk <= \^i2s_mclk\;
  i2s_sdata_out <= \^i2s_sdata_out\;
  m_axis_tvalid_reg_0 <= \^m_axis_tvalid_reg_0\;
  s_axi_arready <= \^s_axi_arready\;
  s_axi_awready <= \^s_axi_awready\;
  s_axi_bvalid <= \^s_axi_bvalid\;
  s_axi_rvalid <= \^s_axi_rvalid\;
  s_axi_wready <= \^s_axi_wready\;
  s_axis_tready_reg_0 <= \^s_axis_tready_reg_0\;
\FSM_sequential_i2s_fsm_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0111FFEE011100EE"
    )
        port map (
      I0 => \FSM_sequential_i2s_fsm_state[1]_i_2_n_0\,
      I1 => \FSM_sequential_i2s_fsm_state[1]_i_3_n_0\,
      I2 => \FSM_sequential_i2s_fsm_state[1]_i_4_n_0\,
      I3 => \i2s_fsm_state__0\(1),
      I4 => \i2s_fsm_state__0\(0),
      I5 => \m_axis_tdata[31]_i_3_n_0\,
      O => \FSM_sequential_i2s_fsm_state[0]_i_1_n_0\
    );
\FSM_sequential_i2s_fsm_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01EEFF0001EE1100"
    )
        port map (
      I0 => \FSM_sequential_i2s_fsm_state[1]_i_2_n_0\,
      I1 => \FSM_sequential_i2s_fsm_state[1]_i_3_n_0\,
      I2 => \FSM_sequential_i2s_fsm_state[1]_i_4_n_0\,
      I3 => \i2s_fsm_state__0\(1),
      I4 => \i2s_fsm_state__0\(0),
      I5 => \m_axis_tdata[31]_i_3_n_0\,
      O => \FSM_sequential_i2s_fsm_state[1]_i_1_n_0\
    );
\FSM_sequential_i2s_fsm_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => p_33_in,
      I1 => i2s_clk_div_en_reg_n_0,
      I2 => i2s_lrclk_toggle0,
      I3 => \^i2s_lrclk\,
      I4 => \i2s_fsm_state__0\(1),
      I5 => \i2s_fsm_state__0\(0),
      O => \FSM_sequential_i2s_fsm_state[1]_i_2_n_0\
    );
\FSM_sequential_i2s_fsm_state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000F080"
    )
        port map (
      I0 => \^s_axis_tready_reg_0\,
      I1 => s_axis_tvalid,
      I2 => m_axis_tready,
      I3 => \s_axis_tready1__0\,
      I4 => \i2s_fsm_state__0\(1),
      I5 => \i2s_fsm_state__0\(0),
      O => \FSM_sequential_i2s_fsm_state[1]_i_3_n_0\
    );
\FSM_sequential_i2s_fsm_state[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08C80000"
    )
        port map (
      I0 => p_0_in_1,
      I1 => i2s_bclk_toggle,
      I2 => \^i2s_bclk_reg_0\,
      I3 => \s_axis_tready1__0\,
      I4 => \m_axis_tvalid1__6\,
      O => \FSM_sequential_i2s_fsm_state[1]_i_4_n_0\
    );
\FSM_sequential_i2s_fsm_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \FSM_sequential_i2s_fsm_state[0]_i_1_n_0\,
      Q => \i2s_fsm_state__0\(0),
      R => m_axis_tvalid12_in
    );
\FSM_sequential_i2s_fsm_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \FSM_sequential_i2s_fsm_state[1]_i_1_n_0\,
      Q => \i2s_fsm_state__0\(1),
      R => m_axis_tvalid12_in
    );
\i2s_bclk_div[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => \i2s_chan_en[7]_i_2_n_0\,
      I1 => \p_1_in__0_0\(1),
      I2 => \p_1_in__0_0\(0),
      I3 => \p_1_in__0_0\(2),
      I4 => i2s_clk_div_en_reg_n_0,
      I5 => s_axi_wstrb(0),
      O => i2s_bclk_div_4
    );
\i2s_bclk_div_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i2s_bclk_div_cnt_reg(0),
      O => \p_0_in__0\(0)
    );
\i2s_bclk_div_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i2s_bclk_div_cnt_reg(0),
      I1 => i2s_bclk_div_cnt_reg(1),
      O => \p_0_in__0\(1)
    );
\i2s_bclk_div_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => i2s_bclk_div_cnt_reg(0),
      I1 => i2s_bclk_div_cnt_reg(1),
      I2 => i2s_bclk_div_cnt_reg(2),
      O => \p_0_in__0\(2)
    );
\i2s_bclk_div_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => i2s_bclk_div_cnt_reg(1),
      I1 => i2s_bclk_div_cnt_reg(0),
      I2 => i2s_bclk_div_cnt_reg(2),
      I3 => i2s_bclk_div_cnt_reg(3),
      O => \p_0_in__0\(3)
    );
\i2s_bclk_div_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => i2s_bclk_div_cnt_reg(2),
      I1 => i2s_bclk_div_cnt_reg(0),
      I2 => i2s_bclk_div_cnt_reg(1),
      I3 => i2s_bclk_div_cnt_reg(3),
      I4 => i2s_bclk_div_cnt_reg(4),
      O => \p_0_in__0\(4)
    );
\i2s_bclk_div_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => i2s_bclk_div_cnt_reg(3),
      I1 => i2s_bclk_div_cnt_reg(1),
      I2 => i2s_bclk_div_cnt_reg(0),
      I3 => i2s_bclk_div_cnt_reg(2),
      I4 => i2s_bclk_div_cnt_reg(4),
      I5 => i2s_bclk_div_cnt_reg(5),
      O => \p_0_in__0\(5)
    );
\i2s_bclk_div_cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \i2s_bclk_div_cnt[7]_i_3_n_0\,
      I1 => i2s_bclk_div_cnt_reg(6),
      O => \p_0_in__0\(6)
    );
\i2s_bclk_div_cnt[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => i2s_bclk_toggle,
      I1 => i2s_clk_div_en_reg_n_0,
      O => \i2s_bclk_div_cnt[7]_i_1_n_0\
    );
\i2s_bclk_div_cnt[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \i2s_bclk_div_cnt[7]_i_3_n_0\,
      I1 => i2s_bclk_div_cnt_reg(6),
      I2 => i2s_bclk_div_cnt_reg(7),
      O => \p_0_in__0\(7)
    );
\i2s_bclk_div_cnt[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => i2s_bclk_div_cnt_reg(5),
      I1 => i2s_bclk_div_cnt_reg(3),
      I2 => i2s_bclk_div_cnt_reg(1),
      I3 => i2s_bclk_div_cnt_reg(0),
      I4 => i2s_bclk_div_cnt_reg(2),
      I5 => i2s_bclk_div_cnt_reg(4),
      O => \i2s_bclk_div_cnt[7]_i_3_n_0\
    );
\i2s_bclk_div_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_clk_div_en_reg_n_0,
      D => \p_0_in__0\(0),
      Q => i2s_bclk_div_cnt_reg(0),
      R => \i2s_bclk_div_cnt[7]_i_1_n_0\
    );
\i2s_bclk_div_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_clk_div_en_reg_n_0,
      D => \p_0_in__0\(1),
      Q => i2s_bclk_div_cnt_reg(1),
      R => \i2s_bclk_div_cnt[7]_i_1_n_0\
    );
\i2s_bclk_div_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_clk_div_en_reg_n_0,
      D => \p_0_in__0\(2),
      Q => i2s_bclk_div_cnt_reg(2),
      R => \i2s_bclk_div_cnt[7]_i_1_n_0\
    );
\i2s_bclk_div_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_clk_div_en_reg_n_0,
      D => \p_0_in__0\(3),
      Q => i2s_bclk_div_cnt_reg(3),
      R => \i2s_bclk_div_cnt[7]_i_1_n_0\
    );
\i2s_bclk_div_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_clk_div_en_reg_n_0,
      D => \p_0_in__0\(4),
      Q => i2s_bclk_div_cnt_reg(4),
      R => \i2s_bclk_div_cnt[7]_i_1_n_0\
    );
\i2s_bclk_div_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_clk_div_en_reg_n_0,
      D => \p_0_in__0\(5),
      Q => i2s_bclk_div_cnt_reg(5),
      R => \i2s_bclk_div_cnt[7]_i_1_n_0\
    );
\i2s_bclk_div_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_clk_div_en_reg_n_0,
      D => \p_0_in__0\(6),
      Q => i2s_bclk_div_cnt_reg(6),
      R => \i2s_bclk_div_cnt[7]_i_1_n_0\
    );
\i2s_bclk_div_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_clk_div_en_reg_n_0,
      D => \p_0_in__0\(7),
      Q => i2s_bclk_div_cnt_reg(7),
      R => \i2s_bclk_div_cnt[7]_i_1_n_0\
    );
\i2s_bclk_div_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_bclk_div_4,
      D => s_axi_wdata(0),
      Q => i2s_bclk_div(0),
      R => p_0_in
    );
\i2s_bclk_div_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_bclk_div_4,
      D => s_axi_wdata(1),
      Q => i2s_bclk_div(1),
      R => p_0_in
    );
\i2s_bclk_div_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_bclk_div_4,
      D => s_axi_wdata(2),
      Q => i2s_bclk_div(2),
      R => p_0_in
    );
\i2s_bclk_div_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_bclk_div_4,
      D => s_axi_wdata(3),
      Q => i2s_bclk_div(3),
      R => p_0_in
    );
\i2s_bclk_div_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_bclk_div_4,
      D => s_axi_wdata(4),
      Q => i2s_bclk_div(4),
      R => p_0_in
    );
\i2s_bclk_div_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_bclk_div_4,
      D => s_axi_wdata(5),
      Q => i2s_bclk_div(5),
      R => p_0_in
    );
\i2s_bclk_div_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_bclk_div_4,
      D => s_axi_wdata(6),
      Q => i2s_bclk_div(6),
      R => p_0_in
    );
\i2s_bclk_div_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_bclk_div_4,
      D => s_axi_wdata(7),
      Q => i2s_bclk_div(7),
      R => p_0_in
    );
i2s_bclk_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \^i2s_bclk_reg_0\,
      I1 => i2s_bclk_toggle,
      I2 => i2s_clk_div_en_reg_n_0,
      O => i2s_bclk_i_1_n_0
    );
i2s_bclk_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \m_axis_tdata[31]_i_8_n_0\,
      I1 => \m_axis_tdata[31]_i_7_n_0\,
      I2 => \m_axis_tdata[31]_i_6_n_0\,
      I3 => i2s_clk_div_en_reg_n_0,
      O => i2s_bclk_toggle
    );
i2s_bclk_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i2s_bclk_i_1_n_0,
      Q => \^i2s_bclk_reg_0\,
      R => '0'
    );
\i2s_bit_cnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \i2s_fsm_state__0\(1),
      I1 => \i2s_bit_cnt_reg_n_0_[0]\,
      I2 => \i2s_chan_cnt0__3\,
      O => i2s_bit_cnt(0)
    );
\i2s_bit_cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0220"
    )
        port map (
      I0 => \i2s_fsm_state__0\(1),
      I1 => \i2s_chan_cnt0__3\,
      I2 => \i2s_bit_cnt_reg_n_0_[0]\,
      I3 => \i2s_bit_cnt_reg_n_0_[1]\,
      O => i2s_bit_cnt(1)
    );
\i2s_bit_cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02222000"
    )
        port map (
      I0 => \i2s_fsm_state__0\(1),
      I1 => \i2s_chan_cnt0__3\,
      I2 => \i2s_bit_cnt_reg_n_0_[1]\,
      I3 => \i2s_bit_cnt_reg_n_0_[0]\,
      I4 => \i2s_bit_cnt_reg_n_0_[2]\,
      O => i2s_bit_cnt(2)
    );
\i2s_bit_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0222222220000000"
    )
        port map (
      I0 => \i2s_fsm_state__0\(1),
      I1 => \i2s_chan_cnt0__3\,
      I2 => \i2s_bit_cnt_reg_n_0_[0]\,
      I3 => \i2s_bit_cnt_reg_n_0_[1]\,
      I4 => \i2s_bit_cnt_reg_n_0_[2]\,
      I5 => \i2s_bit_cnt_reg_n_0_[3]\,
      O => i2s_bit_cnt(3)
    );
\i2s_bit_cnt[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"83"
    )
        port map (
      I0 => \m_axis_tdata[31]_i_3_n_0\,
      I1 => \i2s_fsm_state__0\(0),
      I2 => \i2s_fsm_state__0\(1),
      O => \i2s_bit_cnt[4]_i_1_n_0\
    );
\i2s_bit_cnt[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2202222200200000"
    )
        port map (
      I0 => \i2s_fsm_state__0\(1),
      I1 => \i2s_chan_cnt0__3\,
      I2 => \i2s_bit_cnt_reg_n_0_[2]\,
      I3 => \i2s_bit_cnt[4]_i_4_n_0\,
      I4 => \i2s_bit_cnt_reg_n_0_[3]\,
      I5 => \i2s_bit_cnt_reg_n_0_[4]\,
      O => i2s_bit_cnt(4)
    );
\i2s_bit_cnt[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C040000000000000"
    )
        port map (
      I0 => i2s_chan_bit_sz_reg_n_0,
      I1 => \i2s_bit_cnt_reg_n_0_[0]\,
      I2 => \i2s_bit_cnt_reg_n_0_[3]\,
      I3 => \i2s_bit_cnt_reg_n_0_[4]\,
      I4 => \i2s_bit_cnt_reg_n_0_[1]\,
      I5 => \i2s_bit_cnt_reg_n_0_[2]\,
      O => \i2s_chan_cnt0__3\
    );
\i2s_bit_cnt[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \i2s_bit_cnt_reg_n_0_[0]\,
      I1 => \i2s_bit_cnt_reg_n_0_[1]\,
      O => \i2s_bit_cnt[4]_i_4_n_0\
    );
\i2s_bit_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_bit_cnt[4]_i_1_n_0\,
      D => i2s_bit_cnt(0),
      Q => \i2s_bit_cnt_reg_n_0_[0]\,
      R => m_axis_tvalid12_in
    );
\i2s_bit_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_bit_cnt[4]_i_1_n_0\,
      D => i2s_bit_cnt(1),
      Q => \i2s_bit_cnt_reg_n_0_[1]\,
      R => m_axis_tvalid12_in
    );
\i2s_bit_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_bit_cnt[4]_i_1_n_0\,
      D => i2s_bit_cnt(2),
      Q => \i2s_bit_cnt_reg_n_0_[2]\,
      R => m_axis_tvalid12_in
    );
\i2s_bit_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_bit_cnt[4]_i_1_n_0\,
      D => i2s_bit_cnt(3),
      Q => \i2s_bit_cnt_reg_n_0_[3]\,
      R => m_axis_tvalid12_in
    );
\i2s_bit_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_bit_cnt[4]_i_1_n_0\,
      D => i2s_bit_cnt(4),
      Q => \i2s_bit_cnt_reg_n_0_[4]\,
      R => m_axis_tvalid12_in
    );
i2s_chan_bit_sz_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s_axi_wdata(19),
      I1 => \i2s_chan_bit_sz__1\,
      I2 => \i2s_chan_en[7]_i_2_n_0\,
      I3 => i2s_chan_bit_sz_reg_n_0,
      O => i2s_chan_bit_sz_i_1_n_0
    );
i2s_chan_bit_sz_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \p_1_in__0_0\(1),
      I1 => \p_1_in__0_0\(2),
      I2 => \p_1_in__0_0\(0),
      I3 => s_axi_wstrb(2),
      I4 => i2s_en,
      O => \i2s_chan_bit_sz__1\
    );
i2s_chan_bit_sz_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i2s_chan_bit_sz_i_1_n_0,
      Q => i2s_chan_bit_sz_reg_n_0,
      R => p_0_in
    );
\i2s_chan_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F20"
    )
        port map (
      I0 => \i2s_fsm_state__0\(1),
      I1 => \i2s_chan_cnt[2]_i_2_n_0\,
      I2 => \i2s_chan_cnt[2]_i_3_n_0\,
      I3 => \i2s_chan_cnt_reg_n_0_[0]\,
      O => \i2s_chan_cnt[0]_i_1_n_0\
    );
\i2s_chan_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FF2000"
    )
        port map (
      I0 => \i2s_fsm_state__0\(1),
      I1 => \i2s_chan_cnt[2]_i_2_n_0\,
      I2 => \i2s_chan_cnt_reg_n_0_[0]\,
      I3 => \i2s_chan_cnt[2]_i_3_n_0\,
      I4 => \i2s_chan_cnt_reg_n_0_[1]\,
      O => \i2s_chan_cnt[1]_i_1_n_0\
    );
\i2s_chan_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0222FFFF20000000"
    )
        port map (
      I0 => \i2s_fsm_state__0\(1),
      I1 => \i2s_chan_cnt[2]_i_2_n_0\,
      I2 => \i2s_chan_cnt_reg_n_0_[0]\,
      I3 => \i2s_chan_cnt_reg_n_0_[1]\,
      I4 => \i2s_chan_cnt[2]_i_3_n_0\,
      I5 => \i2s_chan_cnt_reg_n_0_[2]\,
      O => \i2s_chan_cnt[2]_i_1_n_0\
    );
\i2s_chan_cnt[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \i2s_chan_cnt_reg_n_0_[0]\,
      I1 => i2s_chan_max(0),
      I2 => i2s_chan_max(2),
      I3 => \i2s_chan_cnt_reg_n_0_[2]\,
      I4 => i2s_chan_max(1),
      I5 => \i2s_chan_cnt_reg_n_0_[1]\,
      O => \i2s_chan_cnt[2]_i_2_n_0\
    );
\i2s_chan_cnt[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"800F"
    )
        port map (
      I0 => \i2s_chan_cnt0__3\,
      I1 => \m_axis_tdata[31]_i_3_n_0\,
      I2 => \i2s_fsm_state__0\(0),
      I3 => \i2s_fsm_state__0\(1),
      O => \i2s_chan_cnt[2]_i_3_n_0\
    );
\i2s_chan_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \i2s_chan_cnt[0]_i_1_n_0\,
      Q => \i2s_chan_cnt_reg_n_0_[0]\,
      R => m_axis_tvalid12_in
    );
\i2s_chan_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \i2s_chan_cnt[1]_i_1_n_0\,
      Q => \i2s_chan_cnt_reg_n_0_[1]\,
      R => m_axis_tvalid12_in
    );
\i2s_chan_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \i2s_chan_cnt[2]_i_1_n_0\,
      Q => \i2s_chan_cnt_reg_n_0_[2]\,
      R => m_axis_tvalid12_in
    );
\i2s_chan_en[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => \i2s_chan_en[7]_i_2_n_0\,
      I1 => i2s_en,
      I2 => s_axi_wstrb(1),
      I3 => \p_1_in__0_0\(0),
      I4 => \p_1_in__0_0\(2),
      I5 => \p_1_in__0_0\(1),
      O => i2s_chan_en
    );
\i2s_chan_en[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => \^s_axi_awready\,
      I2 => s_axi_awvalid,
      I3 => s_axi_wvalid,
      O => \i2s_chan_en[7]_i_2_n_0\
    );
\i2s_chan_en_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_chan_en,
      D => s_axi_wdata(8),
      Q => \i2s_chan_en_reg_n_0_[0]\,
      R => p_0_in
    );
\i2s_chan_en_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_chan_en,
      D => s_axi_wdata(9),
      Q => \i2s_chan_en_reg_n_0_[1]\,
      R => p_0_in
    );
\i2s_chan_en_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_chan_en,
      D => s_axi_wdata(10),
      Q => \i2s_chan_en_reg_n_0_[2]\,
      R => p_0_in
    );
\i2s_chan_en_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_chan_en,
      D => s_axi_wdata(11),
      Q => \i2s_chan_en_reg_n_0_[3]\,
      R => p_0_in
    );
\i2s_chan_en_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_chan_en,
      D => s_axi_wdata(12),
      Q => \i2s_chan_en_reg_n_0_[4]\,
      R => p_0_in
    );
\i2s_chan_en_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_chan_en,
      D => s_axi_wdata(13),
      Q => \i2s_chan_en_reg_n_0_[5]\,
      R => p_0_in
    );
\i2s_chan_en_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_chan_en,
      D => s_axi_wdata(14),
      Q => \i2s_chan_en_reg_n_0_[6]\,
      R => p_0_in
    );
\i2s_chan_en_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_chan_en,
      D => s_axi_wdata(15),
      Q => \i2s_chan_en_reg_n_0_[7]\,
      R => p_0_in
    );
\i2s_chan_max[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(16),
      I1 => i2s_chan_max_2,
      I2 => i2s_chan_max(0),
      O => \i2s_chan_max[0]_i_1_n_0\
    );
\i2s_chan_max[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(17),
      I1 => i2s_chan_max_2,
      I2 => i2s_chan_max(1),
      O => \i2s_chan_max[1]_i_1_n_0\
    );
\i2s_chan_max[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(18),
      I1 => i2s_chan_max_2,
      I2 => i2s_chan_max(2),
      O => \i2s_chan_max[2]_i_1_n_0\
    );
\i2s_chan_max[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => \i2s_chan_en[7]_i_2_n_0\,
      I1 => i2s_en,
      I2 => s_axi_wstrb(2),
      I3 => \p_1_in__0_0\(0),
      I4 => \p_1_in__0_0\(2),
      I5 => \p_1_in__0_0\(1),
      O => i2s_chan_max_2
    );
\i2s_chan_max_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \i2s_chan_max[0]_i_1_n_0\,
      Q => i2s_chan_max(0),
      R => p_0_in
    );
\i2s_chan_max_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \i2s_chan_max[1]_i_1_n_0\,
      Q => i2s_chan_max(1),
      R => p_0_in
    );
\i2s_chan_max_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \i2s_chan_max[2]_i_1_n_0\,
      Q => i2s_chan_max(2),
      R => p_0_in
    );
i2s_clk_div_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => s_axi_wstrb(0),
      I2 => \p_1_in__0_0\(0),
      I3 => i2s_clk_div_en_i_2_n_0,
      I4 => \i2s_chan_en[7]_i_2_n_0\,
      I5 => i2s_clk_div_en_reg_n_0,
      O => i2s_clk_div_en_i_1_n_0
    );
i2s_clk_div_en_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \p_1_in__0_0\(2),
      I1 => \p_1_in__0_0\(1),
      O => i2s_clk_div_en_i_2_n_0
    );
i2s_clk_div_en_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i2s_clk_div_en_i_1_n_0,
      Q => i2s_clk_div_en_reg_n_0,
      R => p_0_in
    );
i2s_en_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8FFA800"
    )
        port map (
      I0 => s_axi_wdata(1),
      I1 => s_axi_wdata(0),
      I2 => i2s_clk_div_en_reg_n_0,
      I3 => i2s_en17_out,
      I4 => i2s_en,
      O => i2s_en_i_1_n_0
    );
i2s_en_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => s_axi_wstrb(0),
      I1 => \p_1_in__0_0\(0),
      I2 => \p_1_in__0_0\(2),
      I3 => \p_1_in__0_0\(1),
      I4 => \i2s_chan_en[7]_i_2_n_0\,
      O => i2s_en17_out
    );
i2s_en_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i2s_en_i_1_n_0,
      Q => i2s_en,
      R => p_0_in
    );
\i2s_lrclk_div[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => \i2s_chan_en[7]_i_2_n_0\,
      I1 => \p_1_in__0_0\(1),
      I2 => \p_1_in__0_0\(0),
      I3 => \p_1_in__0_0\(2),
      I4 => i2s_clk_div_en_reg_n_0,
      I5 => s_axi_wstrb(1),
      O => p_1_in(15)
    );
\i2s_lrclk_div[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => \i2s_chan_en[7]_i_2_n_0\,
      I1 => \p_1_in__0_0\(1),
      I2 => \p_1_in__0_0\(0),
      I3 => \p_1_in__0_0\(2),
      I4 => i2s_clk_div_en_reg_n_0,
      I5 => s_axi_wstrb(0),
      O => p_1_in(7)
    );
\i2s_lrclk_div_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => i2s_lrclk_toggle0,
      I1 => i2s_clk_div_en_reg_n_0,
      O => \i2s_lrclk_div_cnt[0]_i_1_n_0\
    );
\i2s_lrclk_div_cnt[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i2s_lrclk_div_cnt_reg(0),
      O => \i2s_lrclk_div_cnt[0]_i_3_n_0\
    );
\i2s_lrclk_div_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_clk_div_en_reg_n_0,
      D => \i2s_lrclk_div_cnt_reg[0]_i_2_n_7\,
      Q => i2s_lrclk_div_cnt_reg(0),
      R => \i2s_lrclk_div_cnt[0]_i_1_n_0\
    );
\i2s_lrclk_div_cnt_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \i2s_lrclk_div_cnt_reg[0]_i_2_n_0\,
      CO(2) => \i2s_lrclk_div_cnt_reg[0]_i_2_n_1\,
      CO(1) => \i2s_lrclk_div_cnt_reg[0]_i_2_n_2\,
      CO(0) => \i2s_lrclk_div_cnt_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \i2s_lrclk_div_cnt_reg[0]_i_2_n_4\,
      O(2) => \i2s_lrclk_div_cnt_reg[0]_i_2_n_5\,
      O(1) => \i2s_lrclk_div_cnt_reg[0]_i_2_n_6\,
      O(0) => \i2s_lrclk_div_cnt_reg[0]_i_2_n_7\,
      S(3 downto 1) => i2s_lrclk_div_cnt_reg(3 downto 1),
      S(0) => \i2s_lrclk_div_cnt[0]_i_3_n_0\
    );
\i2s_lrclk_div_cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_clk_div_en_reg_n_0,
      D => \i2s_lrclk_div_cnt_reg[8]_i_1_n_5\,
      Q => i2s_lrclk_div_cnt_reg(10),
      R => \i2s_lrclk_div_cnt[0]_i_1_n_0\
    );
\i2s_lrclk_div_cnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_clk_div_en_reg_n_0,
      D => \i2s_lrclk_div_cnt_reg[8]_i_1_n_4\,
      Q => i2s_lrclk_div_cnt_reg(11),
      R => \i2s_lrclk_div_cnt[0]_i_1_n_0\
    );
\i2s_lrclk_div_cnt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_clk_div_en_reg_n_0,
      D => \i2s_lrclk_div_cnt_reg[12]_i_1_n_7\,
      Q => i2s_lrclk_div_cnt_reg(12),
      R => \i2s_lrclk_div_cnt[0]_i_1_n_0\
    );
\i2s_lrclk_div_cnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i2s_lrclk_div_cnt_reg[8]_i_1_n_0\,
      CO(3) => \NLW_i2s_lrclk_div_cnt_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \i2s_lrclk_div_cnt_reg[12]_i_1_n_1\,
      CO(1) => \i2s_lrclk_div_cnt_reg[12]_i_1_n_2\,
      CO(0) => \i2s_lrclk_div_cnt_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i2s_lrclk_div_cnt_reg[12]_i_1_n_4\,
      O(2) => \i2s_lrclk_div_cnt_reg[12]_i_1_n_5\,
      O(1) => \i2s_lrclk_div_cnt_reg[12]_i_1_n_6\,
      O(0) => \i2s_lrclk_div_cnt_reg[12]_i_1_n_7\,
      S(3 downto 0) => i2s_lrclk_div_cnt_reg(15 downto 12)
    );
\i2s_lrclk_div_cnt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_clk_div_en_reg_n_0,
      D => \i2s_lrclk_div_cnt_reg[12]_i_1_n_6\,
      Q => i2s_lrclk_div_cnt_reg(13),
      R => \i2s_lrclk_div_cnt[0]_i_1_n_0\
    );
\i2s_lrclk_div_cnt_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_clk_div_en_reg_n_0,
      D => \i2s_lrclk_div_cnt_reg[12]_i_1_n_5\,
      Q => i2s_lrclk_div_cnt_reg(14),
      R => \i2s_lrclk_div_cnt[0]_i_1_n_0\
    );
\i2s_lrclk_div_cnt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_clk_div_en_reg_n_0,
      D => \i2s_lrclk_div_cnt_reg[12]_i_1_n_4\,
      Q => i2s_lrclk_div_cnt_reg(15),
      R => \i2s_lrclk_div_cnt[0]_i_1_n_0\
    );
\i2s_lrclk_div_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_clk_div_en_reg_n_0,
      D => \i2s_lrclk_div_cnt_reg[0]_i_2_n_6\,
      Q => i2s_lrclk_div_cnt_reg(1),
      R => \i2s_lrclk_div_cnt[0]_i_1_n_0\
    );
\i2s_lrclk_div_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_clk_div_en_reg_n_0,
      D => \i2s_lrclk_div_cnt_reg[0]_i_2_n_5\,
      Q => i2s_lrclk_div_cnt_reg(2),
      R => \i2s_lrclk_div_cnt[0]_i_1_n_0\
    );
\i2s_lrclk_div_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_clk_div_en_reg_n_0,
      D => \i2s_lrclk_div_cnt_reg[0]_i_2_n_4\,
      Q => i2s_lrclk_div_cnt_reg(3),
      R => \i2s_lrclk_div_cnt[0]_i_1_n_0\
    );
\i2s_lrclk_div_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_clk_div_en_reg_n_0,
      D => \i2s_lrclk_div_cnt_reg[4]_i_1_n_7\,
      Q => i2s_lrclk_div_cnt_reg(4),
      R => \i2s_lrclk_div_cnt[0]_i_1_n_0\
    );
\i2s_lrclk_div_cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i2s_lrclk_div_cnt_reg[0]_i_2_n_0\,
      CO(3) => \i2s_lrclk_div_cnt_reg[4]_i_1_n_0\,
      CO(2) => \i2s_lrclk_div_cnt_reg[4]_i_1_n_1\,
      CO(1) => \i2s_lrclk_div_cnt_reg[4]_i_1_n_2\,
      CO(0) => \i2s_lrclk_div_cnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i2s_lrclk_div_cnt_reg[4]_i_1_n_4\,
      O(2) => \i2s_lrclk_div_cnt_reg[4]_i_1_n_5\,
      O(1) => \i2s_lrclk_div_cnt_reg[4]_i_1_n_6\,
      O(0) => \i2s_lrclk_div_cnt_reg[4]_i_1_n_7\,
      S(3 downto 0) => i2s_lrclk_div_cnt_reg(7 downto 4)
    );
\i2s_lrclk_div_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_clk_div_en_reg_n_0,
      D => \i2s_lrclk_div_cnt_reg[4]_i_1_n_6\,
      Q => i2s_lrclk_div_cnt_reg(5),
      R => \i2s_lrclk_div_cnt[0]_i_1_n_0\
    );
\i2s_lrclk_div_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_clk_div_en_reg_n_0,
      D => \i2s_lrclk_div_cnt_reg[4]_i_1_n_5\,
      Q => i2s_lrclk_div_cnt_reg(6),
      R => \i2s_lrclk_div_cnt[0]_i_1_n_0\
    );
\i2s_lrclk_div_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_clk_div_en_reg_n_0,
      D => \i2s_lrclk_div_cnt_reg[4]_i_1_n_4\,
      Q => i2s_lrclk_div_cnt_reg(7),
      R => \i2s_lrclk_div_cnt[0]_i_1_n_0\
    );
\i2s_lrclk_div_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_clk_div_en_reg_n_0,
      D => \i2s_lrclk_div_cnt_reg[8]_i_1_n_7\,
      Q => i2s_lrclk_div_cnt_reg(8),
      R => \i2s_lrclk_div_cnt[0]_i_1_n_0\
    );
\i2s_lrclk_div_cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i2s_lrclk_div_cnt_reg[4]_i_1_n_0\,
      CO(3) => \i2s_lrclk_div_cnt_reg[8]_i_1_n_0\,
      CO(2) => \i2s_lrclk_div_cnt_reg[8]_i_1_n_1\,
      CO(1) => \i2s_lrclk_div_cnt_reg[8]_i_1_n_2\,
      CO(0) => \i2s_lrclk_div_cnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i2s_lrclk_div_cnt_reg[8]_i_1_n_4\,
      O(2) => \i2s_lrclk_div_cnt_reg[8]_i_1_n_5\,
      O(1) => \i2s_lrclk_div_cnt_reg[8]_i_1_n_6\,
      O(0) => \i2s_lrclk_div_cnt_reg[8]_i_1_n_7\,
      S(3 downto 0) => i2s_lrclk_div_cnt_reg(11 downto 8)
    );
\i2s_lrclk_div_cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_clk_div_en_reg_n_0,
      D => \i2s_lrclk_div_cnt_reg[8]_i_1_n_6\,
      Q => i2s_lrclk_div_cnt_reg(9),
      R => \i2s_lrclk_div_cnt[0]_i_1_n_0\
    );
\i2s_lrclk_div_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(7),
      D => s_axi_wdata(0),
      Q => i2s_lrclk_div(0),
      R => p_0_in
    );
\i2s_lrclk_div_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(15),
      D => s_axi_wdata(10),
      Q => i2s_lrclk_div(10),
      R => p_0_in
    );
\i2s_lrclk_div_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(15),
      D => s_axi_wdata(11),
      Q => i2s_lrclk_div(11),
      R => p_0_in
    );
\i2s_lrclk_div_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(15),
      D => s_axi_wdata(12),
      Q => i2s_lrclk_div(12),
      R => p_0_in
    );
\i2s_lrclk_div_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(15),
      D => s_axi_wdata(13),
      Q => i2s_lrclk_div(13),
      R => p_0_in
    );
\i2s_lrclk_div_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(15),
      D => s_axi_wdata(14),
      Q => i2s_lrclk_div(14),
      R => p_0_in
    );
\i2s_lrclk_div_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(15),
      D => s_axi_wdata(15),
      Q => i2s_lrclk_div(15),
      R => p_0_in
    );
\i2s_lrclk_div_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(7),
      D => s_axi_wdata(1),
      Q => i2s_lrclk_div(1),
      R => p_0_in
    );
\i2s_lrclk_div_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(7),
      D => s_axi_wdata(2),
      Q => i2s_lrclk_div(2),
      R => p_0_in
    );
\i2s_lrclk_div_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(7),
      D => s_axi_wdata(3),
      Q => i2s_lrclk_div(3),
      R => p_0_in
    );
\i2s_lrclk_div_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(7),
      D => s_axi_wdata(4),
      Q => i2s_lrclk_div(4),
      R => p_0_in
    );
\i2s_lrclk_div_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(7),
      D => s_axi_wdata(5),
      Q => i2s_lrclk_div(5),
      R => p_0_in
    );
\i2s_lrclk_div_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(7),
      D => s_axi_wdata(6),
      Q => i2s_lrclk_div(6),
      R => p_0_in
    );
\i2s_lrclk_div_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(7),
      D => s_axi_wdata(7),
      Q => i2s_lrclk_div(7),
      R => p_0_in
    );
\i2s_lrclk_div_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(15),
      D => s_axi_wdata(8),
      Q => i2s_lrclk_div(8),
      R => p_0_in
    );
\i2s_lrclk_div_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(15),
      D => s_axi_wdata(9),
      Q => i2s_lrclk_div(9),
      R => p_0_in
    );
i2s_lrclk_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \^i2s_lrclk\,
      I1 => i2s_lrclk_toggle0,
      I2 => i2s_clk_div_en_reg_n_0,
      O => i2s_lrclk_i_1_n_0
    );
i2s_lrclk_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i2s_lrclk_i_1_n_0,
      Q => \^i2s_lrclk\,
      R => '0'
    );
i2s_lrclk_toggle0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => i2s_lrclk_toggle0_carry_n_0,
      CO(2) => i2s_lrclk_toggle0_carry_n_1,
      CO(1) => i2s_lrclk_toggle0_carry_n_2,
      CO(0) => i2s_lrclk_toggle0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_i2s_lrclk_toggle0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => i2s_lrclk_toggle0_carry_i_1_n_0,
      S(2) => i2s_lrclk_toggle0_carry_i_2_n_0,
      S(1) => i2s_lrclk_toggle0_carry_i_3_n_0,
      S(0) => i2s_lrclk_toggle0_carry_i_4_n_0
    );
\i2s_lrclk_toggle0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => i2s_lrclk_toggle0_carry_n_0,
      CO(3 downto 2) => \NLW_i2s_lrclk_toggle0_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => i2s_lrclk_toggle0,
      CO(0) => \i2s_lrclk_toggle0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_i2s_lrclk_toggle0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \i2s_lrclk_toggle0_carry__0_i_1_n_0\,
      S(0) => \i2s_lrclk_toggle0_carry__0_i_2_n_0\
    );
\i2s_lrclk_toggle0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => i2s_lrclk_div(15),
      I1 => i2s_lrclk_div_cnt_reg(15),
      O => \i2s_lrclk_toggle0_carry__0_i_1_n_0\
    );
\i2s_lrclk_toggle0_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => i2s_lrclk_div_cnt_reg(12),
      I1 => i2s_lrclk_div(12),
      I2 => i2s_lrclk_div(14),
      I3 => i2s_lrclk_div_cnt_reg(14),
      I4 => i2s_lrclk_div(13),
      I5 => i2s_lrclk_div_cnt_reg(13),
      O => \i2s_lrclk_toggle0_carry__0_i_2_n_0\
    );
i2s_lrclk_toggle0_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => i2s_lrclk_div_cnt_reg(9),
      I1 => i2s_lrclk_div(9),
      I2 => i2s_lrclk_div(11),
      I3 => i2s_lrclk_div_cnt_reg(11),
      I4 => i2s_lrclk_div(10),
      I5 => i2s_lrclk_div_cnt_reg(10),
      O => i2s_lrclk_toggle0_carry_i_1_n_0
    );
i2s_lrclk_toggle0_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => i2s_lrclk_div_cnt_reg(6),
      I1 => i2s_lrclk_div(6),
      I2 => i2s_lrclk_div(8),
      I3 => i2s_lrclk_div_cnt_reg(8),
      I4 => i2s_lrclk_div(7),
      I5 => i2s_lrclk_div_cnt_reg(7),
      O => i2s_lrclk_toggle0_carry_i_2_n_0
    );
i2s_lrclk_toggle0_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => i2s_lrclk_div_cnt_reg(3),
      I1 => i2s_lrclk_div(3),
      I2 => i2s_lrclk_div(5),
      I3 => i2s_lrclk_div_cnt_reg(5),
      I4 => i2s_lrclk_div(4),
      I5 => i2s_lrclk_div_cnt_reg(4),
      O => i2s_lrclk_toggle0_carry_i_3_n_0
    );
i2s_lrclk_toggle0_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => i2s_lrclk_div_cnt_reg(0),
      I1 => i2s_lrclk_div(0),
      I2 => i2s_lrclk_div(2),
      I3 => i2s_lrclk_div_cnt_reg(2),
      I4 => i2s_lrclk_div(1),
      I5 => i2s_lrclk_div_cnt_reg(1),
      O => i2s_lrclk_toggle0_carry_i_4_n_0
    );
\i2s_mclk_div[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => \i2s_chan_en[7]_i_2_n_0\,
      I1 => i2s_clk_div_en_reg_n_0,
      I2 => s_axi_wstrb(0),
      I3 => \p_1_in__0_0\(1),
      I4 => \p_1_in__0_0\(2),
      I5 => \p_1_in__0_0\(0),
      O => i2s_mclk_div_3
    );
\i2s_mclk_div_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i2s_mclk_div_cnt_reg(0),
      O => \p_0_in__1\(0)
    );
\i2s_mclk_div_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i2s_mclk_div_cnt_reg(0),
      I1 => i2s_mclk_div_cnt_reg(1),
      O => \p_0_in__1\(1)
    );
\i2s_mclk_div_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => i2s_mclk_div_cnt_reg(0),
      I1 => i2s_mclk_div_cnt_reg(1),
      I2 => i2s_mclk_div_cnt_reg(2),
      O => \p_0_in__1\(2)
    );
\i2s_mclk_div_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => i2s_mclk_div_cnt_reg(1),
      I1 => i2s_mclk_div_cnt_reg(0),
      I2 => i2s_mclk_div_cnt_reg(2),
      I3 => i2s_mclk_div_cnt_reg(3),
      O => \p_0_in__1\(3)
    );
\i2s_mclk_div_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => i2s_mclk_div_cnt_reg(2),
      I1 => i2s_mclk_div_cnt_reg(0),
      I2 => i2s_mclk_div_cnt_reg(1),
      I3 => i2s_mclk_div_cnt_reg(3),
      I4 => i2s_mclk_div_cnt_reg(4),
      O => \p_0_in__1\(4)
    );
\i2s_mclk_div_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => i2s_mclk_div_cnt_reg(3),
      I1 => i2s_mclk_div_cnt_reg(1),
      I2 => i2s_mclk_div_cnt_reg(0),
      I3 => i2s_mclk_div_cnt_reg(2),
      I4 => i2s_mclk_div_cnt_reg(4),
      I5 => i2s_mclk_div_cnt_reg(5),
      O => \p_0_in__1\(5)
    );
\i2s_mclk_div_cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \i2s_mclk_div_cnt[7]_i_3_n_0\,
      I1 => i2s_mclk_div_cnt_reg(6),
      O => \p_0_in__1\(6)
    );
\i2s_mclk_div_cnt[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"55D5"
    )
        port map (
      I0 => i2s_clk_div_en_reg_n_0,
      I1 => i2s_mclk_i_2_n_0,
      I2 => i2s_mclk_i_3_n_0,
      I3 => i2s_mclk_i_4_n_0,
      O => \i2s_mclk_div_cnt[7]_i_1_n_0\
    );
\i2s_mclk_div_cnt[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \i2s_mclk_div_cnt[7]_i_3_n_0\,
      I1 => i2s_mclk_div_cnt_reg(6),
      I2 => i2s_mclk_div_cnt_reg(7),
      O => \p_0_in__1\(7)
    );
\i2s_mclk_div_cnt[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => i2s_mclk_div_cnt_reg(5),
      I1 => i2s_mclk_div_cnt_reg(3),
      I2 => i2s_mclk_div_cnt_reg(1),
      I3 => i2s_mclk_div_cnt_reg(0),
      I4 => i2s_mclk_div_cnt_reg(2),
      I5 => i2s_mclk_div_cnt_reg(4),
      O => \i2s_mclk_div_cnt[7]_i_3_n_0\
    );
\i2s_mclk_div_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_clk_div_en_reg_n_0,
      D => \p_0_in__1\(0),
      Q => i2s_mclk_div_cnt_reg(0),
      R => \i2s_mclk_div_cnt[7]_i_1_n_0\
    );
\i2s_mclk_div_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_clk_div_en_reg_n_0,
      D => \p_0_in__1\(1),
      Q => i2s_mclk_div_cnt_reg(1),
      R => \i2s_mclk_div_cnt[7]_i_1_n_0\
    );
\i2s_mclk_div_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_clk_div_en_reg_n_0,
      D => \p_0_in__1\(2),
      Q => i2s_mclk_div_cnt_reg(2),
      R => \i2s_mclk_div_cnt[7]_i_1_n_0\
    );
\i2s_mclk_div_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_clk_div_en_reg_n_0,
      D => \p_0_in__1\(3),
      Q => i2s_mclk_div_cnt_reg(3),
      R => \i2s_mclk_div_cnt[7]_i_1_n_0\
    );
\i2s_mclk_div_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_clk_div_en_reg_n_0,
      D => \p_0_in__1\(4),
      Q => i2s_mclk_div_cnt_reg(4),
      R => \i2s_mclk_div_cnt[7]_i_1_n_0\
    );
\i2s_mclk_div_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_clk_div_en_reg_n_0,
      D => \p_0_in__1\(5),
      Q => i2s_mclk_div_cnt_reg(5),
      R => \i2s_mclk_div_cnt[7]_i_1_n_0\
    );
\i2s_mclk_div_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_clk_div_en_reg_n_0,
      D => \p_0_in__1\(6),
      Q => i2s_mclk_div_cnt_reg(6),
      R => \i2s_mclk_div_cnt[7]_i_1_n_0\
    );
\i2s_mclk_div_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_clk_div_en_reg_n_0,
      D => \p_0_in__1\(7),
      Q => i2s_mclk_div_cnt_reg(7),
      R => \i2s_mclk_div_cnt[7]_i_1_n_0\
    );
\i2s_mclk_div_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_mclk_div_3,
      D => s_axi_wdata(0),
      Q => i2s_mclk_div(0),
      R => p_0_in
    );
\i2s_mclk_div_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_mclk_div_3,
      D => s_axi_wdata(1),
      Q => i2s_mclk_div(1),
      R => p_0_in
    );
\i2s_mclk_div_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_mclk_div_3,
      D => s_axi_wdata(2),
      Q => i2s_mclk_div(2),
      R => p_0_in
    );
\i2s_mclk_div_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_mclk_div_3,
      D => s_axi_wdata(3),
      Q => i2s_mclk_div(3),
      R => p_0_in
    );
\i2s_mclk_div_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_mclk_div_3,
      D => s_axi_wdata(4),
      Q => i2s_mclk_div(4),
      R => p_0_in
    );
\i2s_mclk_div_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_mclk_div_3,
      D => s_axi_wdata(5),
      Q => i2s_mclk_div(5),
      R => p_0_in
    );
\i2s_mclk_div_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_mclk_div_3,
      D => s_axi_wdata(6),
      Q => i2s_mclk_div(6),
      R => p_0_in
    );
\i2s_mclk_div_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_mclk_div_3,
      D => s_axi_wdata(7),
      Q => i2s_mclk_div(7),
      R => p_0_in
    );
i2s_mclk_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA2A0080"
    )
        port map (
      I0 => i2s_clk_div_en_reg_n_0,
      I1 => i2s_mclk_i_2_n_0,
      I2 => i2s_mclk_i_3_n_0,
      I3 => i2s_mclk_i_4_n_0,
      I4 => \^i2s_mclk\,
      O => i2s_mclk_i_1_n_0
    );
i2s_mclk_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => i2s_mclk_div_cnt_reg(0),
      I1 => i2s_mclk_div(0),
      I2 => i2s_mclk_div(2),
      I3 => i2s_mclk_div_cnt_reg(2),
      I4 => i2s_mclk_div(1),
      I5 => i2s_mclk_div_cnt_reg(1),
      O => i2s_mclk_i_2_n_0
    );
i2s_mclk_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => i2s_mclk_div_cnt_reg(3),
      I1 => i2s_mclk_div(3),
      I2 => i2s_mclk_div(5),
      I3 => i2s_mclk_div_cnt_reg(5),
      I4 => i2s_mclk_div(4),
      I5 => i2s_mclk_div_cnt_reg(4),
      O => i2s_mclk_i_3_n_0
    );
i2s_mclk_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => i2s_mclk_div_cnt_reg(6),
      I1 => i2s_mclk_div(6),
      I2 => i2s_mclk_div_cnt_reg(7),
      I3 => i2s_mclk_div(7),
      O => i2s_mclk_i_4_n_0
    );
i2s_mclk_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i2s_mclk_i_1_n_0,
      Q => \^i2s_mclk\,
      R => '0'
    );
\i2s_sdata_in_sr[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \i2s_fsm_state__0\(1),
      I1 => \m_axis_tvalid0__3\,
      I2 => i2s_sdata_in,
      O => i2s_sdata_in_sr(0)
    );
\i2s_sdata_in_sr[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \i2s_fsm_state__0\(1),
      I1 => \m_axis_tvalid0__3\,
      I2 => \p_1_in__0\(10),
      O => i2s_sdata_in_sr(10)
    );
\i2s_sdata_in_sr[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \i2s_fsm_state__0\(1),
      I1 => \m_axis_tvalid0__3\,
      I2 => \p_1_in__0\(11),
      O => i2s_sdata_in_sr(11)
    );
\i2s_sdata_in_sr[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \i2s_fsm_state__0\(1),
      I1 => \m_axis_tvalid0__3\,
      I2 => \p_1_in__0\(12),
      O => i2s_sdata_in_sr(12)
    );
\i2s_sdata_in_sr[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \i2s_fsm_state__0\(1),
      I1 => \m_axis_tvalid0__3\,
      I2 => \p_1_in__0\(13),
      O => i2s_sdata_in_sr(13)
    );
\i2s_sdata_in_sr[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \i2s_fsm_state__0\(1),
      I1 => \m_axis_tvalid0__3\,
      I2 => \p_1_in__0\(14),
      O => i2s_sdata_in_sr(14)
    );
\i2s_sdata_in_sr[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \i2s_fsm_state__0\(1),
      I1 => \m_axis_tvalid0__3\,
      I2 => \p_1_in__0\(15),
      O => i2s_sdata_in_sr(15)
    );
\i2s_sdata_in_sr[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \i2s_fsm_state__0\(1),
      I1 => \m_axis_tvalid0__3\,
      I2 => \p_1_in__0\(16),
      O => i2s_sdata_in_sr(16)
    );
\i2s_sdata_in_sr[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \i2s_fsm_state__0\(1),
      I1 => \m_axis_tvalid0__3\,
      I2 => \p_1_in__0\(17),
      O => i2s_sdata_in_sr(17)
    );
\i2s_sdata_in_sr[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \i2s_fsm_state__0\(1),
      I1 => \m_axis_tvalid0__3\,
      I2 => \p_1_in__0\(18),
      O => i2s_sdata_in_sr(18)
    );
\i2s_sdata_in_sr[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \i2s_fsm_state__0\(1),
      I1 => \m_axis_tvalid0__3\,
      I2 => \p_1_in__0\(19),
      O => i2s_sdata_in_sr(19)
    );
\i2s_sdata_in_sr[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \i2s_fsm_state__0\(1),
      I1 => \m_axis_tvalid0__3\,
      I2 => \p_1_in__0\(1),
      O => i2s_sdata_in_sr(1)
    );
\i2s_sdata_in_sr[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \i2s_fsm_state__0\(1),
      I1 => \m_axis_tvalid0__3\,
      I2 => \p_1_in__0\(20),
      O => i2s_sdata_in_sr(20)
    );
\i2s_sdata_in_sr[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \i2s_fsm_state__0\(1),
      I1 => \m_axis_tvalid0__3\,
      I2 => \p_1_in__0\(21),
      O => i2s_sdata_in_sr(21)
    );
\i2s_sdata_in_sr[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \i2s_fsm_state__0\(1),
      I1 => \m_axis_tvalid0__3\,
      I2 => \p_1_in__0\(22),
      O => i2s_sdata_in_sr(22)
    );
\i2s_sdata_in_sr[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \i2s_fsm_state__0\(1),
      I1 => \m_axis_tvalid0__3\,
      I2 => \p_1_in__0\(23),
      O => i2s_sdata_in_sr(23)
    );
\i2s_sdata_in_sr[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \i2s_fsm_state__0\(1),
      I1 => \m_axis_tvalid0__3\,
      I2 => \p_1_in__0\(24),
      O => i2s_sdata_in_sr(24)
    );
\i2s_sdata_in_sr[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \i2s_fsm_state__0\(1),
      I1 => \m_axis_tvalid0__3\,
      I2 => \p_1_in__0\(25),
      O => i2s_sdata_in_sr(25)
    );
\i2s_sdata_in_sr[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \i2s_fsm_state__0\(1),
      I1 => \m_axis_tvalid0__3\,
      I2 => \p_1_in__0\(26),
      O => i2s_sdata_in_sr(26)
    );
\i2s_sdata_in_sr[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \i2s_fsm_state__0\(1),
      I1 => \m_axis_tvalid0__3\,
      I2 => \p_1_in__0\(27),
      O => i2s_sdata_in_sr(27)
    );
\i2s_sdata_in_sr[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \i2s_fsm_state__0\(1),
      I1 => \m_axis_tvalid0__3\,
      I2 => \p_1_in__0\(28),
      O => i2s_sdata_in_sr(28)
    );
\i2s_sdata_in_sr[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \i2s_fsm_state__0\(1),
      I1 => \m_axis_tvalid0__3\,
      I2 => \p_1_in__0\(29),
      O => i2s_sdata_in_sr(29)
    );
\i2s_sdata_in_sr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \i2s_fsm_state__0\(1),
      I1 => \m_axis_tvalid0__3\,
      I2 => \p_1_in__0\(2),
      O => i2s_sdata_in_sr(2)
    );
\i2s_sdata_in_sr[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"200000FF"
    )
        port map (
      I0 => \m_axis_tvalid1__6\,
      I1 => p_0_in_1,
      I2 => \m_axis_tdata[31]_i_3_n_0\,
      I3 => \i2s_fsm_state__0\(0),
      I4 => \i2s_fsm_state__0\(1),
      O => \i2s_sdata_in_sr[30]_i_1_n_0\
    );
\i2s_sdata_in_sr[30]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \i2s_fsm_state__0\(1),
      I1 => \m_axis_tvalid0__3\,
      I2 => \p_1_in__0\(30),
      O => i2s_sdata_in_sr(30)
    );
\i2s_sdata_in_sr[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \i2s_fsm_state__0\(1),
      I1 => \m_axis_tvalid0__3\,
      I2 => \p_1_in__0\(3),
      O => i2s_sdata_in_sr(3)
    );
\i2s_sdata_in_sr[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \i2s_fsm_state__0\(1),
      I1 => \m_axis_tvalid0__3\,
      I2 => \p_1_in__0\(4),
      O => i2s_sdata_in_sr(4)
    );
\i2s_sdata_in_sr[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \i2s_fsm_state__0\(1),
      I1 => \m_axis_tvalid0__3\,
      I2 => \p_1_in__0\(5),
      O => i2s_sdata_in_sr(5)
    );
\i2s_sdata_in_sr[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \i2s_fsm_state__0\(1),
      I1 => \m_axis_tvalid0__3\,
      I2 => \p_1_in__0\(6),
      O => i2s_sdata_in_sr(6)
    );
\i2s_sdata_in_sr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \i2s_fsm_state__0\(1),
      I1 => \m_axis_tvalid0__3\,
      I2 => \p_1_in__0\(7),
      O => i2s_sdata_in_sr(7)
    );
\i2s_sdata_in_sr[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \i2s_fsm_state__0\(1),
      I1 => \m_axis_tvalid0__3\,
      I2 => \p_1_in__0\(8),
      O => i2s_sdata_in_sr(8)
    );
\i2s_sdata_in_sr[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \i2s_fsm_state__0\(1),
      I1 => \m_axis_tvalid0__3\,
      I2 => \p_1_in__0\(9),
      O => i2s_sdata_in_sr(9)
    );
\i2s_sdata_in_sr_bit_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0222"
    )
        port map (
      I0 => \i2s_fsm_state__0\(1),
      I1 => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[0]\,
      I2 => \^m_axis_tvalid_reg_0\,
      I3 => m_axis_tready,
      O => i2s_sdata_in_sr_bit_cnt(0)
    );
\i2s_sdata_in_sr_bit_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"002A2A00"
    )
        port map (
      I0 => \i2s_fsm_state__0\(1),
      I1 => \^m_axis_tvalid_reg_0\,
      I2 => m_axis_tready,
      I3 => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[0]\,
      I4 => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[1]\,
      O => i2s_sdata_in_sr_bit_cnt(1)
    );
\i2s_sdata_in_sr_bit_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"002A2A2A2A000000"
    )
        port map (
      I0 => \i2s_fsm_state__0\(1),
      I1 => \^m_axis_tvalid_reg_0\,
      I2 => m_axis_tready,
      I3 => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[0]\,
      I4 => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[1]\,
      I5 => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[2]\,
      O => i2s_sdata_in_sr_bit_cnt(2)
    );
\i2s_sdata_in_sr_bit_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0222222220000000"
    )
        port map (
      I0 => \i2s_fsm_state__0\(1),
      I1 => \m_axis_tvalid131_out__0\,
      I2 => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[1]\,
      I3 => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[0]\,
      I4 => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[2]\,
      I5 => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[3]\,
      O => i2s_sdata_in_sr_bit_cnt(3)
    );
\i2s_sdata_in_sr_bit_cnt[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axis_tvalid_reg_0\,
      I1 => m_axis_tready,
      O => \m_axis_tvalid131_out__0\
    );
\i2s_sdata_in_sr_bit_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"002A2A00"
    )
        port map (
      I0 => \i2s_fsm_state__0\(1),
      I1 => \^m_axis_tvalid_reg_0\,
      I2 => m_axis_tready,
      I3 => \i2s_sdata_in_sr_bit_cnt[5]_i_4_n_0\,
      I4 => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[4]\,
      O => i2s_sdata_in_sr_bit_cnt(4)
    );
\i2s_sdata_in_sr_bit_cnt[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EA0000FF"
    )
        port map (
      I0 => \i2s_sdata_in_sr_bit_cnt[5]_i_3_n_0\,
      I1 => \^m_axis_tvalid_reg_0\,
      I2 => m_axis_tready,
      I3 => \i2s_fsm_state__0\(0),
      I4 => \i2s_fsm_state__0\(1),
      O => \i2s_sdata_in_sr_bit_cnt[5]_i_1_n_0\
    );
\i2s_sdata_in_sr_bit_cnt[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"002A2A2A2A000000"
    )
        port map (
      I0 => \i2s_fsm_state__0\(1),
      I1 => \^m_axis_tvalid_reg_0\,
      I2 => m_axis_tready,
      I3 => \i2s_sdata_in_sr_bit_cnt[5]_i_4_n_0\,
      I4 => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[4]\,
      I5 => p_0_in_1,
      O => i2s_sdata_in_sr_bit_cnt(5)
    );
\i2s_sdata_in_sr_bit_cnt[5]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \m_axis_tdata[31]_i_3_n_0\,
      I1 => p_0_in_1,
      I2 => \m_axis_tvalid1__6\,
      O => \i2s_sdata_in_sr_bit_cnt[5]_i_3_n_0\
    );
\i2s_sdata_in_sr_bit_cnt[5]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[3]\,
      I1 => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[1]\,
      I2 => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[0]\,
      I3 => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[2]\,
      O => \i2s_sdata_in_sr_bit_cnt[5]_i_4_n_0\
    );
\i2s_sdata_in_sr_bit_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_in_sr_bit_cnt(0),
      Q => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[0]\,
      R => m_axis_tvalid12_in
    );
\i2s_sdata_in_sr_bit_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_in_sr_bit_cnt(1),
      Q => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[1]\,
      R => m_axis_tvalid12_in
    );
\i2s_sdata_in_sr_bit_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_in_sr_bit_cnt(2),
      Q => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[2]\,
      R => m_axis_tvalid12_in
    );
\i2s_sdata_in_sr_bit_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_in_sr_bit_cnt(3),
      Q => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[3]\,
      R => m_axis_tvalid12_in
    );
\i2s_sdata_in_sr_bit_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_in_sr_bit_cnt(4),
      Q => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[4]\,
      R => m_axis_tvalid12_in
    );
\i2s_sdata_in_sr_bit_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_in_sr_bit_cnt(5),
      Q => p_0_in_1,
      R => m_axis_tvalid12_in
    );
\i2s_sdata_in_sr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(0),
      Q => \p_1_in__0\(1),
      R => m_axis_tvalid12_in
    );
\i2s_sdata_in_sr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(10),
      Q => \p_1_in__0\(11),
      R => m_axis_tvalid12_in
    );
\i2s_sdata_in_sr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(11),
      Q => \p_1_in__0\(12),
      R => m_axis_tvalid12_in
    );
\i2s_sdata_in_sr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(12),
      Q => \p_1_in__0\(13),
      R => m_axis_tvalid12_in
    );
\i2s_sdata_in_sr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(13),
      Q => \p_1_in__0\(14),
      R => m_axis_tvalid12_in
    );
\i2s_sdata_in_sr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(14),
      Q => \p_1_in__0\(15),
      R => m_axis_tvalid12_in
    );
\i2s_sdata_in_sr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(15),
      Q => \p_1_in__0\(16),
      R => m_axis_tvalid12_in
    );
\i2s_sdata_in_sr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(16),
      Q => \p_1_in__0\(17),
      R => m_axis_tvalid12_in
    );
\i2s_sdata_in_sr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(17),
      Q => \p_1_in__0\(18),
      R => m_axis_tvalid12_in
    );
\i2s_sdata_in_sr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(18),
      Q => \p_1_in__0\(19),
      R => m_axis_tvalid12_in
    );
\i2s_sdata_in_sr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(19),
      Q => \p_1_in__0\(20),
      R => m_axis_tvalid12_in
    );
\i2s_sdata_in_sr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(1),
      Q => \p_1_in__0\(2),
      R => m_axis_tvalid12_in
    );
\i2s_sdata_in_sr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(20),
      Q => \p_1_in__0\(21),
      R => m_axis_tvalid12_in
    );
\i2s_sdata_in_sr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(21),
      Q => \p_1_in__0\(22),
      R => m_axis_tvalid12_in
    );
\i2s_sdata_in_sr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(22),
      Q => \p_1_in__0\(23),
      R => m_axis_tvalid12_in
    );
\i2s_sdata_in_sr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(23),
      Q => \p_1_in__0\(24),
      R => m_axis_tvalid12_in
    );
\i2s_sdata_in_sr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(24),
      Q => \p_1_in__0\(25),
      R => m_axis_tvalid12_in
    );
\i2s_sdata_in_sr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(25),
      Q => \p_1_in__0\(26),
      R => m_axis_tvalid12_in
    );
\i2s_sdata_in_sr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(26),
      Q => \p_1_in__0\(27),
      R => m_axis_tvalid12_in
    );
\i2s_sdata_in_sr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(27),
      Q => \p_1_in__0\(28),
      R => m_axis_tvalid12_in
    );
\i2s_sdata_in_sr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(28),
      Q => \p_1_in__0\(29),
      R => m_axis_tvalid12_in
    );
\i2s_sdata_in_sr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(29),
      Q => \p_1_in__0\(30),
      R => m_axis_tvalid12_in
    );
\i2s_sdata_in_sr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(2),
      Q => \p_1_in__0\(3),
      R => m_axis_tvalid12_in
    );
\i2s_sdata_in_sr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(30),
      Q => \p_1_in__0\(31),
      R => m_axis_tvalid12_in
    );
\i2s_sdata_in_sr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(3),
      Q => \p_1_in__0\(4),
      R => m_axis_tvalid12_in
    );
\i2s_sdata_in_sr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(4),
      Q => \p_1_in__0\(5),
      R => m_axis_tvalid12_in
    );
\i2s_sdata_in_sr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(5),
      Q => \p_1_in__0\(6),
      R => m_axis_tvalid12_in
    );
\i2s_sdata_in_sr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(6),
      Q => \p_1_in__0\(7),
      R => m_axis_tvalid12_in
    );
\i2s_sdata_in_sr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(7),
      Q => \p_1_in__0\(8),
      R => m_axis_tvalid12_in
    );
\i2s_sdata_in_sr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(8),
      Q => \p_1_in__0\(9),
      R => m_axis_tvalid12_in
    );
\i2s_sdata_in_sr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(9),
      Q => \p_1_in__0\(10),
      R => m_axis_tvalid12_in
    );
i2s_sdata_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => \i2s_fsm_state__0\(1),
      I1 => \m_axis_tvalid1__6\,
      I2 => \i2s_sdata_out_sr_reg_n_0_[31]\,
      I3 => i2s_sdata_out_i_2_n_0,
      I4 => \^i2s_sdata_out\,
      O => i2s_sdata_out_i_1_n_0
    );
i2s_sdata_out_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A0000FF"
    )
        port map (
      I0 => p_33_in,
      I1 => \s_axis_tready1__0\,
      I2 => \m_axis_tvalid1__6\,
      I3 => \i2s_fsm_state__0\(0),
      I4 => \i2s_fsm_state__0\(1),
      O => i2s_sdata_out_i_2_n_0
    );
i2s_sdata_out_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i2s_sdata_out_i_1_n_0,
      Q => \^i2s_sdata_out\,
      R => m_axis_tvalid12_in
    );
\i2s_sdata_out_sr[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^s_axis_tready_reg_0\,
      I1 => s_axis_tvalid,
      I2 => s_axis_tdata(0),
      O => i2s_sdata_out_sr(0)
    );
\i2s_sdata_out_sr[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880888"
    )
        port map (
      I0 => \i2s_sdata_out_sr_reg_n_0_[9]\,
      I1 => \i2s_fsm_state__0\(1),
      I2 => \^s_axis_tready_reg_0\,
      I3 => s_axis_tvalid,
      I4 => s_axis_tdata(10),
      O => i2s_sdata_out_sr(10)
    );
\i2s_sdata_out_sr[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880888"
    )
        port map (
      I0 => \i2s_sdata_out_sr_reg_n_0_[10]\,
      I1 => \i2s_fsm_state__0\(1),
      I2 => \^s_axis_tready_reg_0\,
      I3 => s_axis_tvalid,
      I4 => s_axis_tdata(11),
      O => i2s_sdata_out_sr(11)
    );
\i2s_sdata_out_sr[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880888"
    )
        port map (
      I0 => \i2s_sdata_out_sr_reg_n_0_[11]\,
      I1 => \i2s_fsm_state__0\(1),
      I2 => \^s_axis_tready_reg_0\,
      I3 => s_axis_tvalid,
      I4 => s_axis_tdata(12),
      O => i2s_sdata_out_sr(12)
    );
\i2s_sdata_out_sr[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880888"
    )
        port map (
      I0 => \i2s_sdata_out_sr_reg_n_0_[12]\,
      I1 => \i2s_fsm_state__0\(1),
      I2 => \^s_axis_tready_reg_0\,
      I3 => s_axis_tvalid,
      I4 => s_axis_tdata(13),
      O => i2s_sdata_out_sr(13)
    );
\i2s_sdata_out_sr[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880888"
    )
        port map (
      I0 => \i2s_sdata_out_sr_reg_n_0_[13]\,
      I1 => \i2s_fsm_state__0\(1),
      I2 => \^s_axis_tready_reg_0\,
      I3 => s_axis_tvalid,
      I4 => s_axis_tdata(14),
      O => i2s_sdata_out_sr(14)
    );
\i2s_sdata_out_sr[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880888"
    )
        port map (
      I0 => \i2s_sdata_out_sr_reg_n_0_[14]\,
      I1 => \i2s_fsm_state__0\(1),
      I2 => \^s_axis_tready_reg_0\,
      I3 => s_axis_tvalid,
      I4 => s_axis_tdata(15),
      O => i2s_sdata_out_sr(15)
    );
\i2s_sdata_out_sr[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880888"
    )
        port map (
      I0 => \i2s_sdata_out_sr_reg_n_0_[15]\,
      I1 => \i2s_fsm_state__0\(1),
      I2 => \^s_axis_tready_reg_0\,
      I3 => s_axis_tvalid,
      I4 => s_axis_tdata(16),
      O => i2s_sdata_out_sr(16)
    );
\i2s_sdata_out_sr[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880888"
    )
        port map (
      I0 => \i2s_sdata_out_sr_reg_n_0_[16]\,
      I1 => \i2s_fsm_state__0\(1),
      I2 => \^s_axis_tready_reg_0\,
      I3 => s_axis_tvalid,
      I4 => s_axis_tdata(17),
      O => i2s_sdata_out_sr(17)
    );
\i2s_sdata_out_sr[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880888"
    )
        port map (
      I0 => \i2s_sdata_out_sr_reg_n_0_[17]\,
      I1 => \i2s_fsm_state__0\(1),
      I2 => \^s_axis_tready_reg_0\,
      I3 => s_axis_tvalid,
      I4 => s_axis_tdata(18),
      O => i2s_sdata_out_sr(18)
    );
\i2s_sdata_out_sr[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880888"
    )
        port map (
      I0 => \i2s_sdata_out_sr_reg_n_0_[18]\,
      I1 => \i2s_fsm_state__0\(1),
      I2 => \^s_axis_tready_reg_0\,
      I3 => s_axis_tvalid,
      I4 => s_axis_tdata(19),
      O => i2s_sdata_out_sr(19)
    );
\i2s_sdata_out_sr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880888"
    )
        port map (
      I0 => \i2s_sdata_out_sr_reg_n_0_[0]\,
      I1 => \i2s_fsm_state__0\(1),
      I2 => \^s_axis_tready_reg_0\,
      I3 => s_axis_tvalid,
      I4 => s_axis_tdata(1),
      O => i2s_sdata_out_sr(1)
    );
\i2s_sdata_out_sr[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880888"
    )
        port map (
      I0 => \i2s_sdata_out_sr_reg_n_0_[19]\,
      I1 => \i2s_fsm_state__0\(1),
      I2 => \^s_axis_tready_reg_0\,
      I3 => s_axis_tvalid,
      I4 => s_axis_tdata(20),
      O => i2s_sdata_out_sr(20)
    );
\i2s_sdata_out_sr[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880888"
    )
        port map (
      I0 => \i2s_sdata_out_sr_reg_n_0_[20]\,
      I1 => \i2s_fsm_state__0\(1),
      I2 => \^s_axis_tready_reg_0\,
      I3 => s_axis_tvalid,
      I4 => s_axis_tdata(21),
      O => i2s_sdata_out_sr(21)
    );
\i2s_sdata_out_sr[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880888"
    )
        port map (
      I0 => \i2s_sdata_out_sr_reg_n_0_[21]\,
      I1 => \i2s_fsm_state__0\(1),
      I2 => \^s_axis_tready_reg_0\,
      I3 => s_axis_tvalid,
      I4 => s_axis_tdata(22),
      O => i2s_sdata_out_sr(22)
    );
\i2s_sdata_out_sr[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880888"
    )
        port map (
      I0 => \i2s_sdata_out_sr_reg_n_0_[22]\,
      I1 => \i2s_fsm_state__0\(1),
      I2 => \^s_axis_tready_reg_0\,
      I3 => s_axis_tvalid,
      I4 => s_axis_tdata(23),
      O => i2s_sdata_out_sr(23)
    );
\i2s_sdata_out_sr[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880888"
    )
        port map (
      I0 => \i2s_sdata_out_sr_reg_n_0_[23]\,
      I1 => \i2s_fsm_state__0\(1),
      I2 => \^s_axis_tready_reg_0\,
      I3 => s_axis_tvalid,
      I4 => s_axis_tdata(24),
      O => i2s_sdata_out_sr(24)
    );
\i2s_sdata_out_sr[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880888"
    )
        port map (
      I0 => \i2s_sdata_out_sr_reg_n_0_[24]\,
      I1 => \i2s_fsm_state__0\(1),
      I2 => \^s_axis_tready_reg_0\,
      I3 => s_axis_tvalid,
      I4 => s_axis_tdata(25),
      O => i2s_sdata_out_sr(25)
    );
\i2s_sdata_out_sr[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880888"
    )
        port map (
      I0 => \i2s_sdata_out_sr_reg_n_0_[25]\,
      I1 => \i2s_fsm_state__0\(1),
      I2 => \^s_axis_tready_reg_0\,
      I3 => s_axis_tvalid,
      I4 => s_axis_tdata(26),
      O => i2s_sdata_out_sr(26)
    );
\i2s_sdata_out_sr[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880888"
    )
        port map (
      I0 => \i2s_sdata_out_sr_reg_n_0_[26]\,
      I1 => \i2s_fsm_state__0\(1),
      I2 => \^s_axis_tready_reg_0\,
      I3 => s_axis_tvalid,
      I4 => s_axis_tdata(27),
      O => i2s_sdata_out_sr(27)
    );
\i2s_sdata_out_sr[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880888"
    )
        port map (
      I0 => \i2s_sdata_out_sr_reg_n_0_[27]\,
      I1 => \i2s_fsm_state__0\(1),
      I2 => \^s_axis_tready_reg_0\,
      I3 => s_axis_tvalid,
      I4 => s_axis_tdata(28),
      O => i2s_sdata_out_sr(28)
    );
\i2s_sdata_out_sr[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880888"
    )
        port map (
      I0 => \i2s_sdata_out_sr_reg_n_0_[28]\,
      I1 => \i2s_fsm_state__0\(1),
      I2 => \^s_axis_tready_reg_0\,
      I3 => s_axis_tvalid,
      I4 => s_axis_tdata(29),
      O => i2s_sdata_out_sr(29)
    );
\i2s_sdata_out_sr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880888"
    )
        port map (
      I0 => \i2s_sdata_out_sr_reg_n_0_[1]\,
      I1 => \i2s_fsm_state__0\(1),
      I2 => \^s_axis_tready_reg_0\,
      I3 => s_axis_tvalid,
      I4 => s_axis_tdata(2),
      O => i2s_sdata_out_sr(2)
    );
\i2s_sdata_out_sr[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880888"
    )
        port map (
      I0 => \i2s_sdata_out_sr_reg_n_0_[29]\,
      I1 => \i2s_fsm_state__0\(1),
      I2 => \^s_axis_tready_reg_0\,
      I3 => s_axis_tvalid,
      I4 => s_axis_tdata(30),
      O => i2s_sdata_out_sr(30)
    );
\i2s_sdata_out_sr[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880888"
    )
        port map (
      I0 => \i2s_sdata_out_sr_reg_n_0_[30]\,
      I1 => \i2s_fsm_state__0\(1),
      I2 => \^s_axis_tready_reg_0\,
      I3 => s_axis_tvalid,
      I4 => s_axis_tdata(31),
      O => i2s_sdata_out_sr(31)
    );
\i2s_sdata_out_sr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880888"
    )
        port map (
      I0 => \i2s_sdata_out_sr_reg_n_0_[2]\,
      I1 => \i2s_fsm_state__0\(1),
      I2 => \^s_axis_tready_reg_0\,
      I3 => s_axis_tvalid,
      I4 => s_axis_tdata(3),
      O => i2s_sdata_out_sr(3)
    );
\i2s_sdata_out_sr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880888"
    )
        port map (
      I0 => \i2s_sdata_out_sr_reg_n_0_[3]\,
      I1 => \i2s_fsm_state__0\(1),
      I2 => \^s_axis_tready_reg_0\,
      I3 => s_axis_tvalid,
      I4 => s_axis_tdata(4),
      O => i2s_sdata_out_sr(4)
    );
\i2s_sdata_out_sr[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880888"
    )
        port map (
      I0 => \i2s_sdata_out_sr_reg_n_0_[4]\,
      I1 => \i2s_fsm_state__0\(1),
      I2 => \^s_axis_tready_reg_0\,
      I3 => s_axis_tvalid,
      I4 => s_axis_tdata(5),
      O => i2s_sdata_out_sr(5)
    );
\i2s_sdata_out_sr[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880888"
    )
        port map (
      I0 => \i2s_sdata_out_sr_reg_n_0_[5]\,
      I1 => \i2s_fsm_state__0\(1),
      I2 => \^s_axis_tready_reg_0\,
      I3 => s_axis_tvalid,
      I4 => s_axis_tdata(6),
      O => i2s_sdata_out_sr(6)
    );
\i2s_sdata_out_sr[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880888"
    )
        port map (
      I0 => \i2s_sdata_out_sr_reg_n_0_[6]\,
      I1 => \i2s_fsm_state__0\(1),
      I2 => \^s_axis_tready_reg_0\,
      I3 => s_axis_tvalid,
      I4 => s_axis_tdata(7),
      O => i2s_sdata_out_sr(7)
    );
\i2s_sdata_out_sr[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880888"
    )
        port map (
      I0 => \i2s_sdata_out_sr_reg_n_0_[7]\,
      I1 => \i2s_fsm_state__0\(1),
      I2 => \^s_axis_tready_reg_0\,
      I3 => s_axis_tvalid,
      I4 => s_axis_tdata(8),
      O => i2s_sdata_out_sr(8)
    );
\i2s_sdata_out_sr[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880888"
    )
        port map (
      I0 => \i2s_sdata_out_sr_reg_n_0_[8]\,
      I1 => \i2s_fsm_state__0\(1),
      I2 => \^s_axis_tready_reg_0\,
      I3 => s_axis_tvalid,
      I4 => s_axis_tdata(9),
      O => i2s_sdata_out_sr(9)
    );
\i2s_sdata_out_sr_bit_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0222"
    )
        port map (
      I0 => \i2s_fsm_state__0\(1),
      I1 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[0]\,
      I2 => s_axis_tvalid,
      I3 => \^s_axis_tready_reg_0\,
      O => i2s_sdata_out_sr_bit_cnt(0)
    );
\i2s_sdata_out_sr_bit_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00828282"
    )
        port map (
      I0 => \i2s_fsm_state__0\(1),
      I1 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[0]\,
      I2 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[1]\,
      I3 => s_axis_tvalid,
      I4 => \^s_axis_tready_reg_0\,
      O => i2s_sdata_out_sr_bit_cnt(1)
    );
\i2s_sdata_out_sr_bit_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A802A802A802"
    )
        port map (
      I0 => \i2s_fsm_state__0\(1),
      I1 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[1]\,
      I2 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[0]\,
      I3 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[2]\,
      I4 => s_axis_tvalid,
      I5 => \^s_axis_tready_reg_0\,
      O => i2s_sdata_out_sr_bit_cnt(2)
    );
\i2s_sdata_out_sr_bit_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAA80002"
    )
        port map (
      I0 => \i2s_fsm_state__0\(1),
      I1 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[2]\,
      I2 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[0]\,
      I3 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[1]\,
      I4 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[3]\,
      I5 => \s_axis_tready127_out__0\,
      O => i2s_sdata_out_sr_bit_cnt(3)
    );
\i2s_sdata_out_sr_bit_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAA80002"
    )
        port map (
      I0 => \i2s_fsm_state__0\(1),
      I1 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[3]\,
      I2 => \i2s_sdata_out_sr_bit_cnt[4]_i_2_n_0\,
      I3 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[2]\,
      I4 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[4]\,
      I5 => \s_axis_tready127_out__0\,
      O => i2s_sdata_out_sr_bit_cnt(4)
    );
\i2s_sdata_out_sr_bit_cnt[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[0]\,
      I1 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[1]\,
      O => \i2s_sdata_out_sr_bit_cnt[4]_i_2_n_0\
    );
\i2s_sdata_out_sr_bit_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF8000000000FFFF"
    )
        port map (
      I0 => p_33_in,
      I1 => \m_axis_tvalid1__6\,
      I2 => \s_axis_tready1__0\,
      I3 => \s_axis_tready127_out__0\,
      I4 => \i2s_fsm_state__0\(0),
      I5 => \i2s_fsm_state__0\(1),
      O => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\
    );
\i2s_sdata_out_sr_bit_cnt[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA900A900A900"
    )
        port map (
      I0 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[5]\,
      I1 => \i2s_sdata_out_sr_bit_cnt[5]_i_6_n_0\,
      I2 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[4]\,
      I3 => \i2s_fsm_state__0\(1),
      I4 => s_axis_tvalid,
      I5 => \^s_axis_tready_reg_0\,
      O => i2s_sdata_out_sr_bit_cnt(5)
    );
\i2s_sdata_out_sr_bit_cnt[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => \^i2s_bclk_reg_0\,
      I1 => i2s_clk_div_en_reg_n_0,
      I2 => \m_axis_tdata[31]_i_6_n_0\,
      I3 => \m_axis_tdata[31]_i_7_n_0\,
      I4 => \m_axis_tdata[31]_i_8_n_0\,
      O => p_33_in
    );
\i2s_sdata_out_sr_bit_cnt[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[1]\,
      I1 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[0]\,
      I2 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[4]\,
      I3 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[5]\,
      I4 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[2]\,
      I5 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[3]\,
      O => \s_axis_tready1__0\
    );
\i2s_sdata_out_sr_bit_cnt[5]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => \^s_axis_tready_reg_0\,
      O => \s_axis_tready127_out__0\
    );
\i2s_sdata_out_sr_bit_cnt[5]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[2]\,
      I1 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[0]\,
      I2 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[1]\,
      I3 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[3]\,
      O => \i2s_sdata_out_sr_bit_cnt[5]_i_6_n_0\
    );
\i2s_sdata_out_sr_bit_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr_bit_cnt(0),
      Q => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[0]\,
      R => m_axis_tvalid12_in
    );
\i2s_sdata_out_sr_bit_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr_bit_cnt(1),
      Q => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[1]\,
      R => m_axis_tvalid12_in
    );
\i2s_sdata_out_sr_bit_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr_bit_cnt(2),
      Q => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[2]\,
      R => m_axis_tvalid12_in
    );
\i2s_sdata_out_sr_bit_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr_bit_cnt(3),
      Q => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[3]\,
      R => m_axis_tvalid12_in
    );
\i2s_sdata_out_sr_bit_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr_bit_cnt(4),
      Q => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[4]\,
      R => m_axis_tvalid12_in
    );
\i2s_sdata_out_sr_bit_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr_bit_cnt(5),
      Q => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[5]\,
      R => m_axis_tvalid12_in
    );
\i2s_sdata_out_sr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(0),
      Q => \i2s_sdata_out_sr_reg_n_0_[0]\,
      R => m_axis_tvalid12_in
    );
\i2s_sdata_out_sr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(10),
      Q => \i2s_sdata_out_sr_reg_n_0_[10]\,
      R => m_axis_tvalid12_in
    );
\i2s_sdata_out_sr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(11),
      Q => \i2s_sdata_out_sr_reg_n_0_[11]\,
      R => m_axis_tvalid12_in
    );
\i2s_sdata_out_sr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(12),
      Q => \i2s_sdata_out_sr_reg_n_0_[12]\,
      R => m_axis_tvalid12_in
    );
\i2s_sdata_out_sr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(13),
      Q => \i2s_sdata_out_sr_reg_n_0_[13]\,
      R => m_axis_tvalid12_in
    );
\i2s_sdata_out_sr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(14),
      Q => \i2s_sdata_out_sr_reg_n_0_[14]\,
      R => m_axis_tvalid12_in
    );
\i2s_sdata_out_sr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(15),
      Q => \i2s_sdata_out_sr_reg_n_0_[15]\,
      R => m_axis_tvalid12_in
    );
\i2s_sdata_out_sr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(16),
      Q => \i2s_sdata_out_sr_reg_n_0_[16]\,
      R => m_axis_tvalid12_in
    );
\i2s_sdata_out_sr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(17),
      Q => \i2s_sdata_out_sr_reg_n_0_[17]\,
      R => m_axis_tvalid12_in
    );
\i2s_sdata_out_sr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(18),
      Q => \i2s_sdata_out_sr_reg_n_0_[18]\,
      R => m_axis_tvalid12_in
    );
\i2s_sdata_out_sr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(19),
      Q => \i2s_sdata_out_sr_reg_n_0_[19]\,
      R => m_axis_tvalid12_in
    );
\i2s_sdata_out_sr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(1),
      Q => \i2s_sdata_out_sr_reg_n_0_[1]\,
      R => m_axis_tvalid12_in
    );
\i2s_sdata_out_sr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(20),
      Q => \i2s_sdata_out_sr_reg_n_0_[20]\,
      R => m_axis_tvalid12_in
    );
\i2s_sdata_out_sr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(21),
      Q => \i2s_sdata_out_sr_reg_n_0_[21]\,
      R => m_axis_tvalid12_in
    );
\i2s_sdata_out_sr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(22),
      Q => \i2s_sdata_out_sr_reg_n_0_[22]\,
      R => m_axis_tvalid12_in
    );
\i2s_sdata_out_sr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(23),
      Q => \i2s_sdata_out_sr_reg_n_0_[23]\,
      R => m_axis_tvalid12_in
    );
\i2s_sdata_out_sr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(24),
      Q => \i2s_sdata_out_sr_reg_n_0_[24]\,
      R => m_axis_tvalid12_in
    );
\i2s_sdata_out_sr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(25),
      Q => \i2s_sdata_out_sr_reg_n_0_[25]\,
      R => m_axis_tvalid12_in
    );
\i2s_sdata_out_sr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(26),
      Q => \i2s_sdata_out_sr_reg_n_0_[26]\,
      R => m_axis_tvalid12_in
    );
\i2s_sdata_out_sr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(27),
      Q => \i2s_sdata_out_sr_reg_n_0_[27]\,
      R => m_axis_tvalid12_in
    );
\i2s_sdata_out_sr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(28),
      Q => \i2s_sdata_out_sr_reg_n_0_[28]\,
      R => m_axis_tvalid12_in
    );
\i2s_sdata_out_sr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(29),
      Q => \i2s_sdata_out_sr_reg_n_0_[29]\,
      R => m_axis_tvalid12_in
    );
\i2s_sdata_out_sr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(2),
      Q => \i2s_sdata_out_sr_reg_n_0_[2]\,
      R => m_axis_tvalid12_in
    );
\i2s_sdata_out_sr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(30),
      Q => \i2s_sdata_out_sr_reg_n_0_[30]\,
      R => m_axis_tvalid12_in
    );
\i2s_sdata_out_sr_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(31),
      Q => \i2s_sdata_out_sr_reg_n_0_[31]\,
      R => m_axis_tvalid12_in
    );
\i2s_sdata_out_sr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(3),
      Q => \i2s_sdata_out_sr_reg_n_0_[3]\,
      R => m_axis_tvalid12_in
    );
\i2s_sdata_out_sr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(4),
      Q => \i2s_sdata_out_sr_reg_n_0_[4]\,
      R => m_axis_tvalid12_in
    );
\i2s_sdata_out_sr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(5),
      Q => \i2s_sdata_out_sr_reg_n_0_[5]\,
      R => m_axis_tvalid12_in
    );
\i2s_sdata_out_sr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(6),
      Q => \i2s_sdata_out_sr_reg_n_0_[6]\,
      R => m_axis_tvalid12_in
    );
\i2s_sdata_out_sr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(7),
      Q => \i2s_sdata_out_sr_reg_n_0_[7]\,
      R => m_axis_tvalid12_in
    );
\i2s_sdata_out_sr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(8),
      Q => \i2s_sdata_out_sr_reg_n_0_[8]\,
      R => m_axis_tvalid12_in
    );
\i2s_sdata_out_sr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(9),
      Q => \i2s_sdata_out_sr_reg_n_0_[9]\,
      R => m_axis_tvalid12_in
    );
\m_axis_tdata[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \i2s_fsm_state__0\(1),
      I1 => \i2s_fsm_state__0\(0),
      I2 => \m_axis_tvalid1__6\,
      I3 => \m_axis_tdata[31]_i_3_n_0\,
      I4 => \m_axis_tvalid0__3\,
      I5 => p_0_in_1,
      O => \m_axis_tdata[31]_i_1_n_0\
    );
\m_axis_tdata[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002000"
    )
        port map (
      I0 => i2s_clk_div_en_reg_n_0,
      I1 => \m_axis_tdata[31]_i_6_n_0\,
      I2 => \m_axis_tdata[31]_i_7_n_0\,
      I3 => \m_axis_tdata[31]_i_8_n_0\,
      I4 => \^i2s_bclk_reg_0\,
      O => \m_axis_tdata[31]_i_3_n_0\
    );
\m_axis_tdata[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \i2s_chan_en_reg_n_0_[3]\,
      I1 => \i2s_chan_en_reg_n_0_[2]\,
      I2 => \i2s_chan_cnt_reg_n_0_[1]\,
      I3 => \i2s_chan_en_reg_n_0_[1]\,
      I4 => \i2s_chan_cnt_reg_n_0_[0]\,
      I5 => \i2s_chan_en_reg_n_0_[0]\,
      O => \m_axis_tdata[31]_i_4_n_0\
    );
\m_axis_tdata[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \i2s_chan_en_reg_n_0_[7]\,
      I1 => \i2s_chan_en_reg_n_0_[6]\,
      I2 => \i2s_chan_cnt_reg_n_0_[1]\,
      I3 => \i2s_chan_en_reg_n_0_[5]\,
      I4 => \i2s_chan_cnt_reg_n_0_[0]\,
      I5 => \i2s_chan_en_reg_n_0_[4]\,
      O => \m_axis_tdata[31]_i_5_n_0\
    );
\m_axis_tdata[31]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => i2s_bclk_div_cnt_reg(6),
      I1 => i2s_bclk_div(6),
      I2 => i2s_bclk_div_cnt_reg(7),
      I3 => i2s_bclk_div(7),
      O => \m_axis_tdata[31]_i_6_n_0\
    );
\m_axis_tdata[31]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => i2s_bclk_div_cnt_reg(3),
      I1 => i2s_bclk_div(3),
      I2 => i2s_bclk_div(5),
      I3 => i2s_bclk_div_cnt_reg(5),
      I4 => i2s_bclk_div(4),
      I5 => i2s_bclk_div_cnt_reg(4),
      O => \m_axis_tdata[31]_i_7_n_0\
    );
\m_axis_tdata[31]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => i2s_bclk_div_cnt_reg(0),
      I1 => i2s_bclk_div(0),
      I2 => i2s_bclk_div(2),
      I3 => i2s_bclk_div_cnt_reg(2),
      I4 => i2s_bclk_div(1),
      I5 => i2s_bclk_div_cnt_reg(1),
      O => \m_axis_tdata[31]_i_8_n_0\
    );
\m_axis_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => i2s_sdata_in,
      Q => m_axis_tdata(0),
      R => m_axis_tvalid12_in
    );
\m_axis_tdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => \p_1_in__0\(10),
      Q => m_axis_tdata(10),
      R => m_axis_tvalid12_in
    );
\m_axis_tdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => \p_1_in__0\(11),
      Q => m_axis_tdata(11),
      R => m_axis_tvalid12_in
    );
\m_axis_tdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => \p_1_in__0\(12),
      Q => m_axis_tdata(12),
      R => m_axis_tvalid12_in
    );
\m_axis_tdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => \p_1_in__0\(13),
      Q => m_axis_tdata(13),
      R => m_axis_tvalid12_in
    );
\m_axis_tdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => \p_1_in__0\(14),
      Q => m_axis_tdata(14),
      R => m_axis_tvalid12_in
    );
\m_axis_tdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => \p_1_in__0\(15),
      Q => m_axis_tdata(15),
      R => m_axis_tvalid12_in
    );
\m_axis_tdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => \p_1_in__0\(16),
      Q => m_axis_tdata(16),
      R => m_axis_tvalid12_in
    );
\m_axis_tdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => \p_1_in__0\(17),
      Q => m_axis_tdata(17),
      R => m_axis_tvalid12_in
    );
\m_axis_tdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => \p_1_in__0\(18),
      Q => m_axis_tdata(18),
      R => m_axis_tvalid12_in
    );
\m_axis_tdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => \p_1_in__0\(19),
      Q => m_axis_tdata(19),
      R => m_axis_tvalid12_in
    );
\m_axis_tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => \p_1_in__0\(1),
      Q => m_axis_tdata(1),
      R => m_axis_tvalid12_in
    );
\m_axis_tdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => \p_1_in__0\(20),
      Q => m_axis_tdata(20),
      R => m_axis_tvalid12_in
    );
\m_axis_tdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => \p_1_in__0\(21),
      Q => m_axis_tdata(21),
      R => m_axis_tvalid12_in
    );
\m_axis_tdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => \p_1_in__0\(22),
      Q => m_axis_tdata(22),
      R => m_axis_tvalid12_in
    );
\m_axis_tdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => \p_1_in__0\(23),
      Q => m_axis_tdata(23),
      R => m_axis_tvalid12_in
    );
\m_axis_tdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => \p_1_in__0\(24),
      Q => m_axis_tdata(24),
      R => m_axis_tvalid12_in
    );
\m_axis_tdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => \p_1_in__0\(25),
      Q => m_axis_tdata(25),
      R => m_axis_tvalid12_in
    );
\m_axis_tdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => \p_1_in__0\(26),
      Q => m_axis_tdata(26),
      R => m_axis_tvalid12_in
    );
\m_axis_tdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => \p_1_in__0\(27),
      Q => m_axis_tdata(27),
      R => m_axis_tvalid12_in
    );
\m_axis_tdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => \p_1_in__0\(28),
      Q => m_axis_tdata(28),
      R => m_axis_tvalid12_in
    );
\m_axis_tdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => \p_1_in__0\(29),
      Q => m_axis_tdata(29),
      R => m_axis_tvalid12_in
    );
\m_axis_tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => \p_1_in__0\(2),
      Q => m_axis_tdata(2),
      R => m_axis_tvalid12_in
    );
\m_axis_tdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => \p_1_in__0\(30),
      Q => m_axis_tdata(30),
      R => m_axis_tvalid12_in
    );
\m_axis_tdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => \p_1_in__0\(31),
      Q => m_axis_tdata(31),
      R => m_axis_tvalid12_in
    );
\m_axis_tdata_reg[31]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axis_tdata[31]_i_4_n_0\,
      I1 => \m_axis_tdata[31]_i_5_n_0\,
      O => \m_axis_tvalid1__6\,
      S => \i2s_chan_cnt_reg_n_0_[2]\
    );
\m_axis_tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => \p_1_in__0\(3),
      Q => m_axis_tdata(3),
      R => m_axis_tvalid12_in
    );
\m_axis_tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => \p_1_in__0\(4),
      Q => m_axis_tdata(4),
      R => m_axis_tvalid12_in
    );
\m_axis_tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => \p_1_in__0\(5),
      Q => m_axis_tdata(5),
      R => m_axis_tvalid12_in
    );
\m_axis_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => \p_1_in__0\(6),
      Q => m_axis_tdata(6),
      R => m_axis_tvalid12_in
    );
\m_axis_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => \p_1_in__0\(7),
      Q => m_axis_tdata(7),
      R => m_axis_tvalid12_in
    );
\m_axis_tdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => \p_1_in__0\(8),
      Q => m_axis_tdata(8),
      R => m_axis_tvalid12_in
    );
\m_axis_tdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => \p_1_in__0\(9),
      Q => m_axis_tdata(9),
      R => m_axis_tvalid12_in
    );
m_axis_tvalid_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i2s_en,
      O => m_axis_tvalid12_in
    );
m_axis_tvalid_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2FFFFFFFA0000000"
    )
        port map (
      I0 => \m_axis_tvalid0__3\,
      I1 => m_axis_tready,
      I2 => \i2s_fsm_state__0\(1),
      I3 => \i2s_fsm_state__0\(0),
      I4 => m_axis_tvalid_i_4_n_0,
      I5 => \^m_axis_tvalid_reg_0\,
      O => m_axis_tvalid_i_2_n_0
    );
m_axis_tvalid_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[0]\,
      I1 => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[3]\,
      I2 => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[4]\,
      I3 => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[1]\,
      I4 => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[2]\,
      O => \m_axis_tvalid0__3\
    );
m_axis_tvalid_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888F88888888888"
    )
        port map (
      I0 => m_axis_tready,
      I1 => \^m_axis_tvalid_reg_0\,
      I2 => \m_axis_tvalid1__6\,
      I3 => \m_axis_tdata[31]_i_3_n_0\,
      I4 => p_0_in_1,
      I5 => \m_axis_tvalid0__3\,
      O => m_axis_tvalid_i_4_n_0
    );
m_axis_tvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_axis_tvalid_i_2_n_0,
      Q => \^m_axis_tvalid_reg_0\,
      R => m_axis_tvalid12_in
    );
\s_axi_araddr_q[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_araddr(0),
      I1 => s_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => sel0(0),
      O => \s_axi_araddr_q[2]_i_1_n_0\
    );
\s_axi_araddr_q[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_araddr(1),
      I1 => s_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => sel0(1),
      O => \s_axi_araddr_q[3]_i_1_n_0\
    );
\s_axi_araddr_q[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_araddr(2),
      I1 => s_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => sel0(2),
      O => \s_axi_araddr_q[4]_i_1_n_0\
    );
\s_axi_araddr_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_axi_araddr_q[2]_i_1_n_0\,
      Q => sel0(0),
      R => p_0_in
    );
\s_axi_araddr_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_axi_araddr_q[3]_i_1_n_0\,
      Q => sel0(1),
      R => p_0_in
    );
\s_axi_araddr_q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_axi_araddr_q[4]_i_1_n_0\,
      Q => sel0(2),
      R => p_0_in
    );
s_axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \^s_axi_arready\,
      O => s_axi_arready0
    );
s_axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axi_arready0,
      Q => \^s_axi_arready\,
      R => p_0_in
    );
s_axi_aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFF700F700F700"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => \^s_axi_awready\,
      I3 => s_axi_aw_en_reg_n_0,
      I4 => s_axi_bready,
      I5 => \^s_axi_bvalid\,
      O => s_axi_aw_en_i_1_n_0
    );
s_axi_aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => s_axi_aw_en_i_1_n_0,
      Q => s_axi_aw_en_reg_n_0,
      S => p_0_in
    );
\s_axi_awaddr_q[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => s_axi_aw_en_reg_n_0,
      I2 => \^s_axi_awready\,
      I3 => s_axi_awvalid,
      I4 => s_axi_wvalid,
      I5 => \p_1_in__0_0\(0),
      O => \s_axi_awaddr_q[2]_i_1_n_0\
    );
\s_axi_awaddr_q[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => s_axi_awaddr(1),
      I1 => s_axi_aw_en_reg_n_0,
      I2 => \^s_axi_awready\,
      I3 => s_axi_awvalid,
      I4 => s_axi_wvalid,
      I5 => \p_1_in__0_0\(1),
      O => \s_axi_awaddr_q[3]_i_1_n_0\
    );
\s_axi_awaddr_q[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => s_axi_aw_en_reg_n_0,
      I2 => \^s_axi_awready\,
      I3 => s_axi_awvalid,
      I4 => s_axi_wvalid,
      I5 => \p_1_in__0_0\(2),
      O => \s_axi_awaddr_q[4]_i_1_n_0\
    );
\s_axi_awaddr_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_axi_awaddr_q[2]_i_1_n_0\,
      Q => \p_1_in__0_0\(0),
      R => p_0_in
    );
\s_axi_awaddr_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_axi_awaddr_q[3]_i_1_n_0\,
      Q => \p_1_in__0_0\(1),
      R => p_0_in
    );
\s_axi_awaddr_q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_axi_awaddr_q[4]_i_1_n_0\,
      Q => \p_1_in__0_0\(2),
      R => p_0_in
    );
s_axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => p_0_in
    );
s_axi_awready_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => s_axi_aw_en_reg_n_0,
      I1 => \^s_axi_awready\,
      I2 => s_axi_awvalid,
      I3 => s_axi_wvalid,
      O => s_axi_awready0
    );
s_axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axi_awready0,
      Q => \^s_axi_awready\,
      R => p_0_in
    );
s_axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      I2 => \^s_axi_awready\,
      I3 => \^s_axi_wready\,
      I4 => s_axi_bready,
      I5 => \^s_axi_bvalid\,
      O => s_axi_bvalid_i_1_n_0
    );
s_axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axi_bvalid_i_1_n_0,
      Q => \^s_axi_bvalid\,
      R => p_0_in
    );
\s_axi_rdata[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A8ABA8A"
    )
        port map (
      I0 => \s_axi_rdata[0]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => i2s_lrclk_div(0),
      I4 => sel0(0),
      O => s_axi_rdata_5(0)
    );
\s_axi_rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55C050C005C000C0"
    )
        port map (
      I0 => sel0(2),
      I1 => i2s_clk_div_en_reg_n_0,
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => i2s_mclk_div(0),
      I5 => i2s_bclk_div(0),
      O => \s_axi_rdata[0]_i_2_n_0\
    );
\s_axi_rdata[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02023000"
    )
        port map (
      I0 => \i2s_chan_en_reg_n_0_[2]\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => i2s_lrclk_div(10),
      I4 => sel0(0),
      O => s_axi_rdata_5(10)
    );
\s_axi_rdata[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02023000"
    )
        port map (
      I0 => \i2s_chan_en_reg_n_0_[3]\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => i2s_lrclk_div(11),
      I4 => sel0(0),
      O => s_axi_rdata_5(11)
    );
\s_axi_rdata[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02023000"
    )
        port map (
      I0 => \i2s_chan_en_reg_n_0_[4]\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => i2s_lrclk_div(12),
      I4 => sel0(0),
      O => s_axi_rdata_5(12)
    );
\s_axi_rdata[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02023000"
    )
        port map (
      I0 => \i2s_chan_en_reg_n_0_[5]\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => i2s_lrclk_div(13),
      I4 => sel0(0),
      O => s_axi_rdata_5(13)
    );
\s_axi_rdata[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02023000"
    )
        port map (
      I0 => \i2s_chan_en_reg_n_0_[6]\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => i2s_lrclk_div(14),
      I4 => sel0(0),
      O => s_axi_rdata_5(14)
    );
\s_axi_rdata[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02023000"
    )
        port map (
      I0 => \i2s_chan_en_reg_n_0_[7]\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => i2s_lrclk_div(15),
      I4 => sel0(0),
      O => s_axi_rdata_5(15)
    );
\s_axi_rdata[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000D"
    )
        port map (
      I0 => sel0(0),
      I1 => i2s_chan_max(0),
      I2 => sel0(1),
      I3 => sel0(2),
      O => s_axi_rdata_5(16)
    );
\s_axi_rdata[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => i2s_chan_max(1),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      O => s_axi_rdata_5(17)
    );
\s_axi_rdata[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => i2s_chan_max(2),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      O => s_axi_rdata_5(18)
    );
\s_axi_rdata[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A8ABA8A"
    )
        port map (
      I0 => \s_axi_rdata[1]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => i2s_lrclk_div(1),
      I4 => sel0(0),
      O => s_axi_rdata_5(1)
    );
\s_axi_rdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55C050C005C000C0"
    )
        port map (
      I0 => sel0(2),
      I1 => i2s_en,
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => i2s_mclk_div(1),
      I5 => i2s_bclk_div(1),
      O => \s_axi_rdata[1]_i_2_n_0\
    );
\s_axi_rdata[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => i2s_chan_bit_sz_reg_n_0,
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      O => s_axi_rdata_5(20)
    );
\s_axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A000A00FC000C0"
    )
        port map (
      I0 => i2s_bclk_div(2),
      I1 => i2s_mclk_div(2),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => i2s_lrclk_div(2),
      I5 => sel0(0),
      O => s_axi_rdata_5(2)
    );
\s_axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A000A00FC000C0"
    )
        port map (
      I0 => i2s_bclk_div(3),
      I1 => i2s_mclk_div(3),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => i2s_lrclk_div(3),
      I5 => sel0(0),
      O => s_axi_rdata_5(3)
    );
\s_axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A000A00FC000C0"
    )
        port map (
      I0 => i2s_bclk_div(4),
      I1 => i2s_mclk_div(4),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => i2s_lrclk_div(4),
      I5 => sel0(0),
      O => s_axi_rdata_5(4)
    );
\s_axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A000A00FC000C0"
    )
        port map (
      I0 => i2s_bclk_div(5),
      I1 => i2s_mclk_div(5),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => i2s_lrclk_div(5),
      I5 => sel0(0),
      O => s_axi_rdata_5(5)
    );
\s_axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A000A00FC000C0"
    )
        port map (
      I0 => i2s_bclk_div(6),
      I1 => i2s_mclk_div(6),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => i2s_lrclk_div(6),
      I5 => sel0(0),
      O => s_axi_rdata_5(6)
    );
\s_axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A000A00FC000C0"
    )
        port map (
      I0 => i2s_bclk_div(7),
      I1 => i2s_mclk_div(7),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => i2s_lrclk_div(7),
      I5 => sel0(0),
      O => s_axi_rdata_5(7)
    );
\s_axi_rdata[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02023000"
    )
        port map (
      I0 => \i2s_chan_en_reg_n_0_[0]\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => i2s_lrclk_div(8),
      I4 => sel0(0),
      O => s_axi_rdata_5(8)
    );
\s_axi_rdata[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02023000"
    )
        port map (
      I0 => \i2s_chan_en_reg_n_0_[1]\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => i2s_lrclk_div(9),
      I4 => sel0(0),
      O => s_axi_rdata_5(9)
    );
\s_axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => s_axi_rdata_5(0),
      Q => s_axi_rdata(0),
      R => p_0_in
    );
\s_axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => s_axi_rdata_5(10),
      Q => s_axi_rdata(10),
      R => p_0_in
    );
\s_axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => s_axi_rdata_5(11),
      Q => s_axi_rdata(11),
      R => p_0_in
    );
\s_axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => s_axi_rdata_5(12),
      Q => s_axi_rdata(12),
      R => p_0_in
    );
\s_axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => s_axi_rdata_5(13),
      Q => s_axi_rdata(13),
      R => p_0_in
    );
\s_axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => s_axi_rdata_5(14),
      Q => s_axi_rdata(14),
      R => p_0_in
    );
\s_axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => s_axi_rdata_5(15),
      Q => s_axi_rdata(15),
      R => p_0_in
    );
\s_axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => s_axi_rdata_5(16),
      Q => s_axi_rdata(16),
      R => p_0_in
    );
\s_axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => s_axi_rdata_5(17),
      Q => s_axi_rdata(17),
      R => p_0_in
    );
\s_axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => s_axi_rdata_5(18),
      Q => s_axi_rdata(18),
      R => p_0_in
    );
\s_axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => s_axi_rdata_5(1),
      Q => s_axi_rdata(1),
      R => p_0_in
    );
\s_axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => s_axi_rdata_5(20),
      Q => s_axi_rdata(19),
      R => p_0_in
    );
\s_axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => s_axi_rdata_5(2),
      Q => s_axi_rdata(2),
      R => p_0_in
    );
\s_axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => s_axi_rdata_5(3),
      Q => s_axi_rdata(3),
      R => p_0_in
    );
\s_axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => s_axi_rdata_5(4),
      Q => s_axi_rdata(4),
      R => p_0_in
    );
\s_axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => s_axi_rdata_5(5),
      Q => s_axi_rdata(5),
      R => p_0_in
    );
\s_axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => s_axi_rdata_5(6),
      Q => s_axi_rdata(6),
      R => p_0_in
    );
\s_axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => s_axi_rdata_5(7),
      Q => s_axi_rdata(7),
      R => p_0_in
    );
\s_axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => s_axi_rdata_5(8),
      Q => s_axi_rdata(8),
      R => p_0_in
    );
\s_axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => s_axi_rdata_5(9),
      Q => s_axi_rdata(9),
      R => p_0_in
    );
s_axi_reg_rden: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \^s_axi_arready\,
      I2 => \^s_axi_rvalid\,
      O => \s_axi_reg_rden__0\
    );
s_axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => s_axi_arvalid,
      I2 => \^s_axi_rvalid\,
      I3 => s_axi_rready,
      O => s_axi_rvalid_i_1_n_0
    );
s_axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axi_rvalid_i_1_n_0,
      Q => \^s_axi_rvalid\,
      R => p_0_in
    );
s_axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => s_axi_aw_en_reg_n_0,
      I2 => s_axi_awvalid,
      I3 => s_axi_wvalid,
      O => s_axi_wready_i_1_n_0
    );
s_axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axi_wready_i_1_n_0,
      Q => \^s_axi_wready\,
      R => p_0_in
    );
s_axis_tready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B88FF00FF000FFF"
    )
        port map (
      I0 => \s_axis_tready0__0\,
      I1 => \s_axis_tready9_out__2\,
      I2 => s_axis_tvalid,
      I3 => \^s_axis_tready_reg_0\,
      I4 => \i2s_fsm_state__0\(0),
      I5 => \i2s_fsm_state__0\(1),
      O => s_axis_tready_i_1_n_0
    );
s_axis_tready_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[1]\,
      I1 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[4]\,
      I2 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[5]\,
      I3 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[2]\,
      I4 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[3]\,
      O => \s_axis_tready0__0\
    );
s_axis_tready_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => p_33_in,
      I1 => \m_axis_tvalid1__6\,
      I2 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[1]\,
      I3 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[0]\,
      I4 => s_axis_tready_i_4_n_0,
      O => \s_axis_tready9_out__2\
    );
s_axis_tready_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[3]\,
      I1 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[2]\,
      I2 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[5]\,
      I3 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[4]\,
      O => s_axis_tready_i_4_n_0
    );
s_axis_tready_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tready_i_1_n_0,
      Q => \^s_axis_tready_reg_0\,
      R => m_axis_tvalid12_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_i2s_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
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
    s_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tready : out STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i2s_mclk : out STD_LOGIC;
    i2s_bclk : out STD_LOGIC;
    i2s_lrclk : out STD_LOGIC;
    i2s_sdata_out : out STD_LOGIC;
    i2s_sdata_in : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of icyradio_axi_i2s_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of icyradio_axi_i2s_0_0 : entity is "icyradio_axi_i2s_0_0,axi_i2s,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of icyradio_axi_i2s_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of icyradio_axi_i2s_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of icyradio_axi_i2s_0_0 : entity is "axi_i2s,Vivado 2021.1";
end icyradio_axi_i2s_0_0;

architecture STRUCTURE of icyradio_axi_i2s_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 20 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF s_axi:m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 49152000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN icyradio_FPGA_CLK1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of i2s_bclk : signal is "analog.com:interface:i2s:1.0 i2s BCLK";
  attribute X_INTERFACE_INFO of i2s_lrclk : signal is "analog.com:interface:i2s:1.0 i2s LRCLK";
  attribute X_INTERFACE_INFO of i2s_sdata_in : signal is "analog.com:interface:i2s:1.0 i2s SDATA_IN";
  attribute X_INTERFACE_INFO of i2s_sdata_out : signal is "analog.com:interface:i2s:1.0 i2s SDATA_OUT";
  attribute X_INTERFACE_INFO of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 s_axi ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi BREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi BVALID";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 s_axi RREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_rready : signal is "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 49152000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN icyradio_FPGA_CLK1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi RVALID";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi WVALID";
  attribute X_INTERFACE_INFO of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute X_INTERFACE_PARAMETER of m_axis_tdata : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 49152000, PHASE 0.0, CLK_DOMAIN icyradio_FPGA_CLK1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axi ARADDR";
  attribute X_INTERFACE_INFO of s_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 s_axi ARPROT";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi AWADDR";
  attribute X_INTERFACE_INFO of s_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 s_axi AWPROT";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi BRESP";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axi RRESP";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi WDATA";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axi WSTRB";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
  attribute X_INTERFACE_PARAMETER of s_axis_tdata : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 49152000, PHASE 0.0, CLK_DOMAIN icyradio_FPGA_CLK1, LAYERED_METADATA undef, INSERT_VIP 0";
begin
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rdata(31) <= \<const0>\;
  s_axi_rdata(30) <= \<const0>\;
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \<const0>\;
  s_axi_rdata(27) <= \<const0>\;
  s_axi_rdata(26) <= \<const0>\;
  s_axi_rdata(25) <= \<const0>\;
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \<const0>\;
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \<const0>\;
  s_axi_rdata(20) <= \^s_axi_rdata\(20);
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18 downto 0) <= \^s_axi_rdata\(18 downto 0);
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.icyradio_axi_i2s_0_0_axi_i2s
     port map (
      aclk => aclk,
      aresetn => aresetn,
      i2s_bclk_reg_0 => i2s_bclk,
      i2s_lrclk => i2s_lrclk,
      i2s_mclk => i2s_mclk,
      i2s_sdata_in => i2s_sdata_in,
      i2s_sdata_out => i2s_sdata_out,
      m_axis_tdata(31 downto 0) => m_axis_tdata(31 downto 0),
      m_axis_tready => m_axis_tready,
      m_axis_tvalid_reg_0 => m_axis_tvalid,
      s_axi_araddr(2 downto 0) => s_axi_araddr(4 downto 2),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(2 downto 0) => s_axi_awaddr(4 downto 2),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(19) => \^s_axi_rdata\(20),
      s_axi_rdata(18 downto 0) => \^s_axi_rdata\(18 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(19) => s_axi_wdata(20),
      s_axi_wdata(18 downto 0) => s_axi_wdata(18 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(2 downto 0) => s_axi_wstrb(2 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      s_axis_tdata(31 downto 0) => s_axis_tdata(31 downto 0),
      s_axis_tready_reg_0 => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
