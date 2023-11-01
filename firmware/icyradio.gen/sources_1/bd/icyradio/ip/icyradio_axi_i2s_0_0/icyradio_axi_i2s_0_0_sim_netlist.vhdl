-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Fri Oct 27 00:54:12 2023
-- Host        : node4-dev running 64-bit Ubuntu 22.04.3 LTS
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
    i2s_bclk_reg_0 : out STD_LOGIC;
    m_axis_tvalid_reg_0 : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 19 downto 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tready_reg_0 : out STD_LOGIC;
    i2s_sdata_out : out STD_LOGIC;
    i2s_lrclk : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    i2s_mclk : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 19 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    i2s_sdata_in : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_axi_i2s_0_0_axi_i2s : entity is "axi_i2s";
end icyradio_axi_i2s_0_0_axi_i2s;

architecture STRUCTURE of icyradio_axi_i2s_0_0_axi_i2s is
  signal \FSM_sequential_i2s_fsm_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_i2s_fsm_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_i2s_fsm_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_i2s_fsm_state[2]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_i2s_fsm_state[2]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_sequential_i2s_fsm_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_i2s_fsm_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_i2s_fsm_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_i2s_fsm_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_i2s_fsm_state[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_i2s_fsm_state[2]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_i2s_fsm_state[2]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_i2s_fsm_state[2]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_i2s_fsm_state[2]_i_9_n_0\ : STD_LOGIC;
  signal i2s_bclk_div : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal i2s_bclk_div_2 : STD_LOGIC;
  signal \i2s_bclk_div_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \i2s_bclk_div_cnt[7]_i_3_n_0\ : STD_LOGIC;
  signal i2s_bclk_div_cnt_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal i2s_bclk_i_1_n_0 : STD_LOGIC;
  signal i2s_bclk_i_2_n_0 : STD_LOGIC;
  signal \^i2s_bclk_reg_0\ : STD_LOGIC;
  signal i2s_bit_cnt : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \i2s_bit_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \i2s_bit_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \i2s_bit_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \i2s_bit_cnt[4]_i_3_n_0\ : STD_LOGIC;
  signal \i2s_bit_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \i2s_bit_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \i2s_bit_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \i2s_bit_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \i2s_bit_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal i2s_chan_bit_sz6_out : STD_LOGIC;
  signal i2s_chan_cnt : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \i2s_chan_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \i2s_chan_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \i2s_chan_cnt[1]_i_2_n_0\ : STD_LOGIC;
  signal \i2s_chan_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \i2s_chan_cnt[2]_i_3_n_0\ : STD_LOGIC;
  signal \i2s_chan_cnt[2]_i_4_n_0\ : STD_LOGIC;
  signal \i2s_chan_cnt[2]_i_5_n_0\ : STD_LOGIC;
  signal \i2s_chan_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \i2s_chan_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \i2s_chan_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal i2s_chan_en : STD_LOGIC;
  signal \i2s_chan_en[7]_i_2_n_0\ : STD_LOGIC;
  signal i2s_chan_max : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal i2s_clk_div_en_i_1_n_0 : STD_LOGIC;
  signal i2s_en_i_1_n_0 : STD_LOGIC;
  signal \i2s_fsm_state__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal i2s_lb_en_i_1_n_0 : STD_LOGIC;
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
  signal i2s_mclk_div_1 : STD_LOGIC;
  signal \i2s_mclk_div_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \i2s_mclk_div_cnt[7]_i_3_n_0\ : STD_LOGIC;
  signal i2s_mclk_div_cnt_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal i2s_mclk_i_1_n_0 : STD_LOGIC;
  signal i2s_mclk_i_2_n_0 : STD_LOGIC;
  signal i2s_mclk_i_3_n_0 : STD_LOGIC;
  signal i2s_mclk_i_4_n_0 : STD_LOGIC;
  signal i2s_pause14_out : STD_LOGIC;
  signal i2s_pause_i_1_n_0 : STD_LOGIC;
  signal i2s_paused_i_1_n_0 : STD_LOGIC;
  signal i2s_paused_i_2_n_0 : STD_LOGIC;
  signal i2s_paused_i_3_n_0 : STD_LOGIC;
  signal i2s_paused_i_4_n_0 : STD_LOGIC;
  signal i2s_sdata_in_sr : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \i2s_sdata_in_sr[30]_i_1_n_0\ : STD_LOGIC;
  signal i2s_sdata_in_sr_bit_cnt : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \i2s_sdata_in_sr_bit_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_bit_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_bit_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_bit_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_bit_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_bit_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_reg_n_0_[0]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_reg_n_0_[10]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_reg_n_0_[11]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_reg_n_0_[12]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_reg_n_0_[13]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_reg_n_0_[14]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_reg_n_0_[15]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_reg_n_0_[16]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_reg_n_0_[17]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_reg_n_0_[18]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_reg_n_0_[19]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_reg_n_0_[1]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_reg_n_0_[20]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_reg_n_0_[21]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_reg_n_0_[22]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_reg_n_0_[23]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_reg_n_0_[24]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_reg_n_0_[25]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_reg_n_0_[26]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_reg_n_0_[27]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_reg_n_0_[28]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_reg_n_0_[29]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_reg_n_0_[2]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_reg_n_0_[30]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_reg_n_0_[3]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_reg_n_0_[4]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_reg_n_0_[5]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_reg_n_0_[6]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_reg_n_0_[7]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_reg_n_0_[8]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_reg_n_0_[9]\ : STD_LOGIC;
  signal i2s_sdata_out_int : STD_LOGIC;
  signal i2s_sdata_out_int_i_1_n_0 : STD_LOGIC;
  signal i2s_sdata_out_int_i_2_n_0 : STD_LOGIC;
  signal i2s_sdata_out_int_i_3_n_0 : STD_LOGIC;
  signal i2s_sdata_out_int_reg_n_0 : STD_LOGIC;
  signal i2s_sdata_out_sr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal i2s_sdata_out_sr_bit_cnt : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_bit_cnt[5]_i_2_n_0\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_bit_cnt[5]_i_3_n_0\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_bit_cnt[5]_i_4_n_0\ : STD_LOGIC;
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
  signal m_axis_tdata0_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \m_axis_tdata[31]_i_10_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[31]_i_11_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[31]_i_12_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[31]_i_13_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[31]_i_14_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[31]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[31]_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[31]_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[31]_i_7_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[31]_i_8_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[31]_i_9_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[31]_i_6_n_0\ : STD_LOGIC;
  signal m_axis_tvalid_i_1_n_0 : STD_LOGIC;
  signal m_axis_tvalid_i_2_n_0 : STD_LOGIC;
  signal m_axis_tvalid_i_3_n_0 : STD_LOGIC;
  signal m_axis_tvalid_i_4_n_0 : STD_LOGIC;
  signal m_axis_tvalid_i_5_n_0 : STD_LOGIC;
  signal \^m_axis_tvalid_reg_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in_0 : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 15 downto 7 );
  signal p_4_in : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal \s_axi_araddr_q[2]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_araddr_q[3]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_araddr_q[4]_i_1_n_0\ : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal s_axi_arready0 : STD_LOGIC;
  signal s_axi_aw_en_i_1_n_0 : STD_LOGIC;
  signal s_axi_aw_en_reg_n_0 : STD_LOGIC;
  signal s_axi_awaddr_q : STD_LOGIC_VECTOR ( 4 downto 2 );
  signal \s_axi_awaddr_q[2]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_awaddr_q[3]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_awaddr_q[4]_i_1_n_0\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal s_axi_awready0 : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal s_axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \s_axi_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal s_axi_rdata_3 : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal \s_axi_reg_rden__0\ : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal s_axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal s_axi_wready0 : STD_LOGIC;
  signal s_axis_tready_i_10_n_0 : STD_LOGIC;
  signal s_axis_tready_i_1_n_0 : STD_LOGIC;
  signal s_axis_tready_i_2_n_0 : STD_LOGIC;
  signal s_axis_tready_i_3_n_0 : STD_LOGIC;
  signal s_axis_tready_i_4_n_0 : STD_LOGIC;
  signal s_axis_tready_i_5_n_0 : STD_LOGIC;
  signal s_axis_tready_i_6_n_0 : STD_LOGIC;
  signal s_axis_tready_i_7_n_0 : STD_LOGIC;
  signal s_axis_tready_i_8_n_0 : STD_LOGIC;
  signal s_axis_tready_i_9_n_0 : STD_LOGIC;
  signal \^s_axis_tready_reg_0\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_i2s_lrclk_div_cnt_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_i2s_lrclk_toggle0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_i2s_lrclk_toggle0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_i2s_lrclk_toggle0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_i2s_fsm_state[2]_i_11\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \FSM_sequential_i2s_fsm_state[2]_i_3\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \FSM_sequential_i2s_fsm_state[2]_i_7\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_sequential_i2s_fsm_state[2]_i_9\ : label is "soft_lutpair17";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_i2s_fsm_state_reg[0]\ : label is "I2S_FSM_STATE_RD_FIRST:000,I2S_FSM_STATE_WAIT_BCLK_SYNC:010,I2S_FSM_STATE_ACTIVE:011,I2S_FSM_STATE_RESET:100,I2S_FSM_STATE_WAIT_LRCLK_SYNC:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_i2s_fsm_state_reg[1]\ : label is "I2S_FSM_STATE_RD_FIRST:000,I2S_FSM_STATE_WAIT_BCLK_SYNC:010,I2S_FSM_STATE_ACTIVE:011,I2S_FSM_STATE_RESET:100,I2S_FSM_STATE_WAIT_LRCLK_SYNC:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_i2s_fsm_state_reg[2]\ : label is "I2S_FSM_STATE_RD_FIRST:000,I2S_FSM_STATE_WAIT_BCLK_SYNC:010,I2S_FSM_STATE_ACTIVE:011,I2S_FSM_STATE_RESET:100,I2S_FSM_STATE_WAIT_LRCLK_SYNC:001";
  attribute SOFT_HLUTNM of \i2s_bclk_div_cnt[1]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \i2s_bclk_div_cnt[2]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \i2s_bclk_div_cnt[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \i2s_bclk_div_cnt[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \i2s_bclk_div_cnt[6]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \i2s_bclk_div_cnt[7]_i_2\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \i2s_bit_cnt[0]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \i2s_bit_cnt[1]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \i2s_bit_cnt[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \i2s_bit_cnt[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \i2s_bit_cnt[4]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \i2s_bit_cnt[4]_i_3\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \i2s_chan_cnt[1]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \i2s_chan_cnt[2]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \i2s_chan_cnt[2]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \i2s_chan_en[7]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of i2s_clk_div_en_i_1 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of i2s_en_i_1 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of i2s_lb_en_i_1 : label is "soft_lutpair46";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \i2s_lrclk_div_cnt_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \i2s_lrclk_div_cnt_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \i2s_lrclk_div_cnt_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \i2s_lrclk_div_cnt_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of i2s_lrclk_i_1 : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \i2s_mclk_div_cnt[1]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \i2s_mclk_div_cnt[2]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \i2s_mclk_div_cnt[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \i2s_mclk_div_cnt[4]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \i2s_mclk_div_cnt[6]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \i2s_mclk_div_cnt[7]_i_2\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of i2s_mclk_i_1 : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of i2s_pause_i_1 : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of i2s_paused_i_2 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of i2s_paused_i_3 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of i2s_paused_i_4 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[10]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[11]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[12]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[13]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[14]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[15]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[16]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[17]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[18]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[19]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[1]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[20]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[21]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[22]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[23]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[24]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[25]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[26]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[27]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[28]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[29]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[2]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[3]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[4]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[5]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[6]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[7]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[8]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[9]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr_bit_cnt[0]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr_bit_cnt[1]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr_bit_cnt[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr_bit_cnt[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of i2s_sdata_out_INST_0 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of i2s_sdata_out_int_i_2 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of i2s_sdata_out_int_i_3 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of i2s_sdata_out_int_i_4 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \i2s_sdata_out_sr[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \i2s_sdata_out_sr[29]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \i2s_sdata_out_sr[30]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \i2s_sdata_out_sr[31]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \i2s_sdata_out_sr_bit_cnt[0]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \i2s_sdata_out_sr_bit_cnt[1]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \i2s_sdata_out_sr_bit_cnt[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \i2s_sdata_out_sr_bit_cnt[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \i2s_sdata_out_sr_bit_cnt[5]_i_4\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \m_axis_tdata[0]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \m_axis_tdata[10]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \m_axis_tdata[11]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \m_axis_tdata[12]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \m_axis_tdata[13]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \m_axis_tdata[14]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \m_axis_tdata[15]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \m_axis_tdata[16]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \m_axis_tdata[17]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \m_axis_tdata[18]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \m_axis_tdata[19]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \m_axis_tdata[1]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \m_axis_tdata[20]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \m_axis_tdata[21]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \m_axis_tdata[22]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \m_axis_tdata[23]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \m_axis_tdata[24]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \m_axis_tdata[25]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \m_axis_tdata[26]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \m_axis_tdata[27]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \m_axis_tdata[28]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \m_axis_tdata[29]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \m_axis_tdata[2]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \m_axis_tdata[30]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \m_axis_tdata[31]_i_3\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \m_axis_tdata[31]_i_4\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m_axis_tdata[31]_i_7\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m_axis_tdata[3]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \m_axis_tdata[4]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \m_axis_tdata[5]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \m_axis_tdata[6]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \m_axis_tdata[7]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \m_axis_tdata[8]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \m_axis_tdata[9]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of m_axis_tvalid_i_2 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \s_axi_araddr_q[4]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of s_axi_arready_i_1 : label is "soft_lutpair13";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s_axi_arready_reg : label is "xilinx.com:interface:aximm:1.0 s_axi ARREADY";
  attribute SOFT_HLUTNM of s_axi_awready_i_2 : label is "soft_lutpair14";
  attribute X_INTERFACE_INFO of s_axi_awready_reg : label is "xilinx.com:interface:aximm:1.0 s_axi AWREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid_reg : label is "xilinx.com:interface:aximm:1.0 s_axi BVALID";
  attribute SOFT_HLUTNM of \s_axi_rdata[16]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \s_axi_rdata[17]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \s_axi_rdata[18]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \s_axi_rdata[20]_i_1\ : label is "soft_lutpair22";
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
  attribute X_INTERFACE_INFO of s_axi_wready_reg : label is "xilinx.com:interface:aximm:1.0 s_axi WREADY";
  attribute SOFT_HLUTNM of s_axis_tready_i_5 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of s_axis_tready_i_9 : label is "soft_lutpair45";
begin
  i2s_bclk_reg_0 <= \^i2s_bclk_reg_0\;
  i2s_lrclk <= \^i2s_lrclk\;
  i2s_mclk <= \^i2s_mclk\;
  m_axis_tvalid_reg_0 <= \^m_axis_tvalid_reg_0\;
  s_axi_arready <= \^s_axi_arready\;
  s_axi_awready <= \^s_axi_awready\;
  s_axi_bvalid <= \^s_axi_bvalid\;
  s_axi_rvalid <= \^s_axi_rvalid\;
  s_axi_wready <= \^s_axi_wready\;
  s_axis_tready_reg_0 <= \^s_axis_tready_reg_0\;
\FSM_sequential_i2s_fsm_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFCCCF0000DDD0"
    )
        port map (
      I0 => \i2s_fsm_state__0\(2),
      I1 => \FSM_sequential_i2s_fsm_state[0]_i_2_n_0\,
      I2 => \FSM_sequential_i2s_fsm_state[2]_i_4_n_0\,
      I3 => \FSM_sequential_i2s_fsm_state[2]_i_5_n_0\,
      I4 => \FSM_sequential_i2s_fsm_state[2]_i_6_n_0\,
      I5 => \i2s_fsm_state__0\(0),
      O => \FSM_sequential_i2s_fsm_state[0]_i_1_n_0\
    );
\FSM_sequential_i2s_fsm_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800080008"
    )
        port map (
      I0 => \i2s_fsm_state__0\(1),
      I1 => \m_axis_tdata[31]_i_5_n_0\,
      I2 => \FSM_sequential_i2s_fsm_state[2]_i_7_n_0\,
      I3 => \i2s_fsm_state__0\(2),
      I4 => p_0_in_0,
      I5 => \m_axis_tdata_reg[31]_i_6_n_0\,
      O => \FSM_sequential_i2s_fsm_state[0]_i_2_n_0\
    );
\FSM_sequential_i2s_fsm_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF111F00002220"
    )
        port map (
      I0 => \i2s_fsm_state__0\(0),
      I1 => \i2s_fsm_state__0\(2),
      I2 => \FSM_sequential_i2s_fsm_state[2]_i_4_n_0\,
      I3 => \FSM_sequential_i2s_fsm_state[2]_i_5_n_0\,
      I4 => \FSM_sequential_i2s_fsm_state[2]_i_6_n_0\,
      I5 => \i2s_fsm_state__0\(1),
      O => \FSM_sequential_i2s_fsm_state[1]_i_1_n_0\
    );
\FSM_sequential_i2s_fsm_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF222F00002220"
    )
        port map (
      I0 => \FSM_sequential_i2s_fsm_state[2]_i_2_n_0\,
      I1 => \FSM_sequential_i2s_fsm_state[2]_i_3_n_0\,
      I2 => \FSM_sequential_i2s_fsm_state[2]_i_4_n_0\,
      I3 => \FSM_sequential_i2s_fsm_state[2]_i_5_n_0\,
      I4 => \FSM_sequential_i2s_fsm_state[2]_i_6_n_0\,
      I5 => \i2s_fsm_state__0\(2),
      O => \FSM_sequential_i2s_fsm_state[2]_i_1_n_0\
    );
\FSM_sequential_i2s_fsm_state[2]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => p_4_in(3),
      I1 => \^i2s_lrclk\,
      O => \FSM_sequential_i2s_fsm_state[2]_i_10_n_0\
    );
\FSM_sequential_i2s_fsm_state[2]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF04"
    )
        port map (
      I0 => s_axis_tready_i_10_n_0,
      I1 => m_axis_tready,
      I2 => \i2s_fsm_state__0\(0),
      I3 => \i2s_fsm_state__0\(1),
      I4 => \i2s_fsm_state__0\(2),
      O => \FSM_sequential_i2s_fsm_state[2]_i_11_n_0\
    );
\FSM_sequential_i2s_fsm_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF8"
    )
        port map (
      I0 => \m_axis_tdata_reg[31]_i_6_n_0\,
      I1 => p_0_in_0,
      I2 => \i2s_fsm_state__0\(2),
      I3 => \FSM_sequential_i2s_fsm_state[2]_i_7_n_0\,
      I4 => \^i2s_bclk_reg_0\,
      I5 => i2s_bclk_i_2_n_0,
      O => \FSM_sequential_i2s_fsm_state[2]_i_2_n_0\
    );
\FSM_sequential_i2s_fsm_state[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"17"
    )
        port map (
      I0 => \i2s_fsm_state__0\(1),
      I1 => \i2s_fsm_state__0\(0),
      I2 => \i2s_fsm_state__0\(2),
      O => \FSM_sequential_i2s_fsm_state[2]_i_3_n_0\
    );
\FSM_sequential_i2s_fsm_state[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0400040F"
    )
        port map (
      I0 => \FSM_sequential_i2s_fsm_state[2]_i_8_n_0\,
      I1 => \i2s_fsm_state__0\(0),
      I2 => i2s_bclk_i_2_n_0,
      I3 => \^i2s_bclk_reg_0\,
      I4 => \FSM_sequential_i2s_fsm_state[2]_i_7_n_0\,
      I5 => \FSM_sequential_i2s_fsm_state[2]_i_9_n_0\,
      O => \FSM_sequential_i2s_fsm_state[2]_i_4_n_0\
    );
\FSM_sequential_i2s_fsm_state[2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10001111"
    )
        port map (
      I0 => i2s_bclk_i_2_n_0,
      I1 => \^i2s_bclk_reg_0\,
      I2 => \m_axis_tdata_reg[31]_i_6_n_0\,
      I3 => p_0_in_0,
      I4 => \i2s_fsm_state__0\(0),
      O => \FSM_sequential_i2s_fsm_state[2]_i_5_n_0\
    );
\FSM_sequential_i2s_fsm_state[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFF7FF"
    )
        port map (
      I0 => i2s_lrclk_toggle0,
      I1 => p_4_in(0),
      I2 => \FSM_sequential_i2s_fsm_state[2]_i_10_n_0\,
      I3 => \i2s_fsm_state__0\(0),
      I4 => s_axis_tready_i_8_n_0,
      I5 => \FSM_sequential_i2s_fsm_state[2]_i_11_n_0\,
      O => \FSM_sequential_i2s_fsm_state[2]_i_6_n_0\
    );
\FSM_sequential_i2s_fsm_state[2]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \i2s_chan_cnt[2]_i_5_n_0\,
      I1 => p_4_in(2),
      I2 => \i2s_chan_cnt[2]_i_4_n_0\,
      O => \FSM_sequential_i2s_fsm_state[2]_i_7_n_0\
    );
\FSM_sequential_i2s_fsm_state[2]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DFF"
    )
        port map (
      I0 => \m_axis_tdata[31]_i_13_n_0\,
      I1 => \i2s_chan_cnt_reg_n_0_[2]\,
      I2 => \m_axis_tdata[31]_i_14_n_0\,
      I3 => s_axis_tready_i_10_n_0,
      O => \FSM_sequential_i2s_fsm_state[2]_i_8_n_0\
    );
\FSM_sequential_i2s_fsm_state[2]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \i2s_fsm_state__0\(2),
      I1 => \i2s_fsm_state__0\(1),
      O => \FSM_sequential_i2s_fsm_state[2]_i_9_n_0\
    );
\FSM_sequential_i2s_fsm_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \FSM_sequential_i2s_fsm_state[0]_i_1_n_0\,
      Q => \i2s_fsm_state__0\(0),
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\FSM_sequential_i2s_fsm_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \FSM_sequential_i2s_fsm_state[1]_i_1_n_0\,
      Q => \i2s_fsm_state__0\(1),
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\FSM_sequential_i2s_fsm_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \FSM_sequential_i2s_fsm_state[2]_i_1_n_0\,
      Q => \i2s_fsm_state__0\(2),
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_bclk_div[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => \i2s_chan_en[7]_i_2_n_0\,
      I1 => s_axi_awaddr_q(2),
      I2 => p_4_in(0),
      I3 => s_axi_wstrb(0),
      I4 => s_axi_awaddr_q(3),
      I5 => s_axi_awaddr_q(4),
      O => i2s_bclk_div_2
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
      INIT => X"6A"
    )
        port map (
      I0 => i2s_bclk_div_cnt_reg(2),
      I1 => i2s_bclk_div_cnt_reg(1),
      I2 => i2s_bclk_div_cnt_reg(0),
      O => \p_0_in__0\(2)
    );
\i2s_bclk_div_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => i2s_bclk_div_cnt_reg(3),
      I1 => i2s_bclk_div_cnt_reg(0),
      I2 => i2s_bclk_div_cnt_reg(1),
      I3 => i2s_bclk_div_cnt_reg(2),
      O => \p_0_in__0\(3)
    );
\i2s_bclk_div_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => i2s_bclk_div_cnt_reg(4),
      I1 => i2s_bclk_div_cnt_reg(2),
      I2 => i2s_bclk_div_cnt_reg(1),
      I3 => i2s_bclk_div_cnt_reg(0),
      I4 => i2s_bclk_div_cnt_reg(3),
      O => \p_0_in__0\(4)
    );
\i2s_bclk_div_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => i2s_bclk_div_cnt_reg(5),
      I1 => i2s_bclk_div_cnt_reg(3),
      I2 => i2s_bclk_div_cnt_reg(0),
      I3 => i2s_bclk_div_cnt_reg(1),
      I4 => i2s_bclk_div_cnt_reg(2),
      I5 => i2s_bclk_div_cnt_reg(4),
      O => \p_0_in__0\(5)
    );
\i2s_bclk_div_cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i2s_bclk_div_cnt_reg(6),
      I1 => \i2s_bclk_div_cnt[7]_i_3_n_0\,
      O => \p_0_in__0\(6)
    );
\i2s_bclk_div_cnt[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => p_4_in(0),
      I1 => i2s_bclk_i_2_n_0,
      O => \i2s_bclk_div_cnt[7]_i_1_n_0\
    );
\i2s_bclk_div_cnt[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => i2s_bclk_div_cnt_reg(7),
      I1 => \i2s_bclk_div_cnt[7]_i_3_n_0\,
      I2 => i2s_bclk_div_cnt_reg(6),
      O => \p_0_in__0\(7)
    );
\i2s_bclk_div_cnt[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => i2s_bclk_div_cnt_reg(5),
      I1 => i2s_bclk_div_cnt_reg(3),
      I2 => i2s_bclk_div_cnt_reg(0),
      I3 => i2s_bclk_div_cnt_reg(1),
      I4 => i2s_bclk_div_cnt_reg(2),
      I5 => i2s_bclk_div_cnt_reg(4),
      O => \i2s_bclk_div_cnt[7]_i_3_n_0\
    );
\i2s_bclk_div_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_4_in(0),
      D => \p_0_in__0\(0),
      Q => i2s_bclk_div_cnt_reg(0),
      R => \i2s_bclk_div_cnt[7]_i_1_n_0\
    );
\i2s_bclk_div_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_4_in(0),
      D => \p_0_in__0\(1),
      Q => i2s_bclk_div_cnt_reg(1),
      R => \i2s_bclk_div_cnt[7]_i_1_n_0\
    );
\i2s_bclk_div_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_4_in(0),
      D => \p_0_in__0\(2),
      Q => i2s_bclk_div_cnt_reg(2),
      R => \i2s_bclk_div_cnt[7]_i_1_n_0\
    );
\i2s_bclk_div_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_4_in(0),
      D => \p_0_in__0\(3),
      Q => i2s_bclk_div_cnt_reg(3),
      R => \i2s_bclk_div_cnt[7]_i_1_n_0\
    );
\i2s_bclk_div_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_4_in(0),
      D => \p_0_in__0\(4),
      Q => i2s_bclk_div_cnt_reg(4),
      R => \i2s_bclk_div_cnt[7]_i_1_n_0\
    );
\i2s_bclk_div_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_4_in(0),
      D => \p_0_in__0\(5),
      Q => i2s_bclk_div_cnt_reg(5),
      R => \i2s_bclk_div_cnt[7]_i_1_n_0\
    );
\i2s_bclk_div_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_4_in(0),
      D => \p_0_in__0\(6),
      Q => i2s_bclk_div_cnt_reg(6),
      R => \i2s_bclk_div_cnt[7]_i_1_n_0\
    );
\i2s_bclk_div_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_4_in(0),
      D => \p_0_in__0\(7),
      Q => i2s_bclk_div_cnt_reg(7),
      R => \i2s_bclk_div_cnt[7]_i_1_n_0\
    );
\i2s_bclk_div_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_bclk_div_2,
      D => s_axi_wdata(0),
      Q => i2s_bclk_div(0),
      R => p_0_in
    );
\i2s_bclk_div_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_bclk_div_2,
      D => s_axi_wdata(1),
      Q => i2s_bclk_div(1),
      R => p_0_in
    );
\i2s_bclk_div_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_bclk_div_2,
      D => s_axi_wdata(2),
      Q => i2s_bclk_div(2),
      R => p_0_in
    );
\i2s_bclk_div_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_bclk_div_2,
      D => s_axi_wdata(3),
      Q => i2s_bclk_div(3),
      R => p_0_in
    );
\i2s_bclk_div_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_bclk_div_2,
      D => s_axi_wdata(4),
      Q => i2s_bclk_div(4),
      R => p_0_in
    );
\i2s_bclk_div_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_bclk_div_2,
      D => s_axi_wdata(5),
      Q => i2s_bclk_div(5),
      R => p_0_in
    );
\i2s_bclk_div_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_bclk_div_2,
      D => s_axi_wdata(6),
      Q => i2s_bclk_div(6),
      R => p_0_in
    );
\i2s_bclk_div_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_bclk_div_2,
      D => s_axi_wdata(7),
      Q => i2s_bclk_div(7),
      R => p_0_in
    );
i2s_bclk_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"90"
    )
        port map (
      I0 => \^i2s_bclk_reg_0\,
      I1 => i2s_bclk_i_2_n_0,
      I2 => p_4_in(0),
      O => i2s_bclk_i_1_n_0
    );
i2s_bclk_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFBE"
    )
        port map (
      I0 => \m_axis_tdata[31]_i_12_n_0\,
      I1 => i2s_bclk_div_cnt_reg(3),
      I2 => i2s_bclk_div(3),
      I3 => \m_axis_tdata[31]_i_10_n_0\,
      I4 => \m_axis_tdata[31]_i_9_n_0\,
      I5 => \m_axis_tdata[31]_i_8_n_0\,
      O => i2s_bclk_i_2_n_0
    );
i2s_bclk_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i2s_bclk_i_1_n_0,
      Q => \^i2s_bclk_reg_0\,
      R => '0'
    );
\i2s_bit_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \i2s_fsm_state__0\(2),
      I1 => \i2s_bit_cnt_reg_n_0_[0]\,
      O => i2s_bit_cnt(0)
    );
\i2s_bit_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \i2s_bit_cnt_reg_n_0_[0]\,
      I1 => \i2s_bit_cnt_reg_n_0_[1]\,
      I2 => \i2s_fsm_state__0\(2),
      O => i2s_bit_cnt(1)
    );
\i2s_bit_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1540"
    )
        port map (
      I0 => \i2s_fsm_state__0\(2),
      I1 => \i2s_bit_cnt_reg_n_0_[1]\,
      I2 => \i2s_bit_cnt_reg_n_0_[0]\,
      I3 => \i2s_bit_cnt_reg_n_0_[2]\,
      O => \i2s_bit_cnt[2]_i_1_n_0\
    );
\i2s_bit_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15554000"
    )
        port map (
      I0 => \i2s_fsm_state__0\(2),
      I1 => \i2s_bit_cnt_reg_n_0_[0]\,
      I2 => \i2s_bit_cnt_reg_n_0_[1]\,
      I3 => \i2s_bit_cnt_reg_n_0_[2]\,
      I4 => \i2s_bit_cnt_reg_n_0_[3]\,
      O => \i2s_bit_cnt[3]_i_1_n_0\
    );
\i2s_bit_cnt[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAAE"
    )
        port map (
      I0 => \i2s_chan_cnt[2]_i_3_n_0\,
      I1 => \i2s_fsm_state__0\(2),
      I2 => \i2s_fsm_state__0\(1),
      I3 => \i2s_fsm_state__0\(0),
      O => \i2s_bit_cnt[4]_i_1_n_0\
    );
\i2s_bit_cnt[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0098"
    )
        port map (
      I0 => \i2s_bit_cnt[4]_i_3_n_0\,
      I1 => \i2s_bit_cnt_reg_n_0_[4]\,
      I2 => p_4_in(20),
      I3 => \i2s_fsm_state__0\(2),
      O => i2s_bit_cnt(4)
    );
\i2s_bit_cnt[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \i2s_bit_cnt_reg_n_0_[2]\,
      I1 => \i2s_bit_cnt_reg_n_0_[1]\,
      I2 => \i2s_bit_cnt_reg_n_0_[0]\,
      I3 => \i2s_bit_cnt_reg_n_0_[3]\,
      O => \i2s_bit_cnt[4]_i_3_n_0\
    );
\i2s_bit_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_bit_cnt[4]_i_1_n_0\,
      D => i2s_bit_cnt(0),
      Q => \i2s_bit_cnt_reg_n_0_[0]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_bit_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_bit_cnt[4]_i_1_n_0\,
      D => i2s_bit_cnt(1),
      Q => \i2s_bit_cnt_reg_n_0_[1]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_bit_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_bit_cnt[4]_i_1_n_0\,
      D => \i2s_bit_cnt[2]_i_1_n_0\,
      Q => \i2s_bit_cnt_reg_n_0_[2]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_bit_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_bit_cnt[4]_i_1_n_0\,
      D => \i2s_bit_cnt[3]_i_1_n_0\,
      Q => \i2s_bit_cnt_reg_n_0_[3]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_bit_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_bit_cnt[4]_i_1_n_0\,
      D => i2s_bit_cnt(4),
      Q => \i2s_bit_cnt_reg_n_0_[4]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
i2s_chan_bit_sz_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_chan_bit_sz6_out,
      D => s_axi_wdata(19),
      Q => p_4_in(20),
      R => p_0_in
    );
\i2s_chan_cnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F03A0A8"
    )
        port map (
      I0 => \i2s_chan_cnt[1]_i_2_n_0\,
      I1 => \i2s_chan_cnt[2]_i_3_n_0\,
      I2 => \m_axis_tdata[31]_i_7_n_0\,
      I3 => \i2s_chan_cnt[2]_i_4_n_0\,
      I4 => \i2s_chan_cnt_reg_n_0_[0]\,
      O => \i2s_chan_cnt[0]_i_1_n_0\
    );
\i2s_chan_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22FF222F88008880"
    )
        port map (
      I0 => \i2s_chan_cnt[1]_i_2_n_0\,
      I1 => \i2s_chan_cnt_reg_n_0_[0]\,
      I2 => \i2s_chan_cnt[2]_i_3_n_0\,
      I3 => \m_axis_tdata[31]_i_7_n_0\,
      I4 => \i2s_chan_cnt[2]_i_4_n_0\,
      I5 => \i2s_chan_cnt_reg_n_0_[1]\,
      O => \i2s_chan_cnt[1]_i_1_n_0\
    );
\i2s_chan_cnt[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i2s_chan_cnt[2]_i_5_n_0\,
      I1 => \i2s_fsm_state__0\(2),
      O => \i2s_chan_cnt[1]_i_2_n_0\
    );
\i2s_chan_cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFABA0A8"
    )
        port map (
      I0 => i2s_chan_cnt(2),
      I1 => \i2s_chan_cnt[2]_i_3_n_0\,
      I2 => \m_axis_tdata[31]_i_7_n_0\,
      I3 => \i2s_chan_cnt[2]_i_4_n_0\,
      I4 => \i2s_chan_cnt_reg_n_0_[2]\,
      O => \i2s_chan_cnt[2]_i_1_n_0\
    );
\i2s_chan_cnt[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04444000"
    )
        port map (
      I0 => \i2s_fsm_state__0\(2),
      I1 => \i2s_chan_cnt[2]_i_5_n_0\,
      I2 => \i2s_chan_cnt_reg_n_0_[0]\,
      I3 => \i2s_chan_cnt_reg_n_0_[1]\,
      I4 => \i2s_chan_cnt_reg_n_0_[2]\,
      O => i2s_chan_cnt(2)
    );
\i2s_chan_cnt[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => i2s_bclk_i_2_n_0,
      I1 => \^i2s_bclk_reg_0\,
      I2 => \i2s_fsm_state__0\(1),
      I3 => \i2s_fsm_state__0\(0),
      I4 => \i2s_fsm_state__0\(2),
      O => \i2s_chan_cnt[2]_i_3_n_0\
    );
\i2s_chan_cnt[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF7FFF7FFF"
    )
        port map (
      I0 => \i2s_bit_cnt_reg_n_0_[3]\,
      I1 => \i2s_bit_cnt_reg_n_0_[0]\,
      I2 => \i2s_bit_cnt_reg_n_0_[1]\,
      I3 => \i2s_bit_cnt_reg_n_0_[2]\,
      I4 => \i2s_bit_cnt_reg_n_0_[4]\,
      I5 => p_4_in(20),
      O => \i2s_chan_cnt[2]_i_4_n_0\
    );
\i2s_chan_cnt[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => i2s_chan_max(1),
      I1 => \i2s_chan_cnt_reg_n_0_[1]\,
      I2 => \i2s_chan_cnt_reg_n_0_[2]\,
      I3 => i2s_chan_max(2),
      I4 => \i2s_chan_cnt_reg_n_0_[0]\,
      I5 => i2s_chan_max(0),
      O => \i2s_chan_cnt[2]_i_5_n_0\
    );
\i2s_chan_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \i2s_chan_cnt[0]_i_1_n_0\,
      Q => \i2s_chan_cnt_reg_n_0_[0]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_chan_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \i2s_chan_cnt[1]_i_1_n_0\,
      Q => \i2s_chan_cnt_reg_n_0_[1]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_chan_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \i2s_chan_cnt[2]_i_1_n_0\,
      Q => \i2s_chan_cnt_reg_n_0_[2]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_chan_en[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => p_4_in(1),
      I1 => s_axi_awaddr_q(2),
      I2 => \i2s_chan_en[7]_i_2_n_0\,
      I3 => s_axi_wstrb(1),
      I4 => s_axi_awaddr_q(3),
      I5 => s_axi_awaddr_q(4),
      O => i2s_chan_en
    );
\i2s_chan_en[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      I2 => \^s_axi_awready\,
      I3 => \^s_axi_wready\,
      O => \i2s_chan_en[7]_i_2_n_0\
    );
\i2s_chan_en_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_chan_en,
      D => s_axi_wdata(8),
      Q => p_4_in(8),
      R => p_0_in
    );
\i2s_chan_en_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_chan_en,
      D => s_axi_wdata(9),
      Q => p_4_in(9),
      R => p_0_in
    );
\i2s_chan_en_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_chan_en,
      D => s_axi_wdata(10),
      Q => p_4_in(10),
      R => p_0_in
    );
\i2s_chan_en_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_chan_en,
      D => s_axi_wdata(11),
      Q => p_4_in(11),
      R => p_0_in
    );
\i2s_chan_en_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_chan_en,
      D => s_axi_wdata(12),
      Q => p_4_in(12),
      R => p_0_in
    );
\i2s_chan_en_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_chan_en,
      D => s_axi_wdata(13),
      Q => p_4_in(13),
      R => p_0_in
    );
\i2s_chan_en_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_chan_en,
      D => s_axi_wdata(14),
      Q => p_4_in(14),
      R => p_0_in
    );
\i2s_chan_en_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_chan_en,
      D => s_axi_wdata(15),
      Q => p_4_in(15),
      R => p_0_in
    );
\i2s_chan_max[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => p_4_in(1),
      I1 => s_axi_awaddr_q(2),
      I2 => \i2s_chan_en[7]_i_2_n_0\,
      I3 => s_axi_wstrb(2),
      I4 => s_axi_awaddr_q(3),
      I5 => s_axi_awaddr_q(4),
      O => i2s_chan_bit_sz6_out
    );
\i2s_chan_max_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_chan_bit_sz6_out,
      D => s_axi_wdata(16),
      Q => i2s_chan_max(0),
      R => p_0_in
    );
\i2s_chan_max_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_chan_bit_sz6_out,
      D => s_axi_wdata(17),
      Q => i2s_chan_max(1),
      R => p_0_in
    );
\i2s_chan_max_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_chan_bit_sz6_out,
      D => s_axi_wdata(18),
      Q => i2s_chan_max(2),
      R => p_0_in
    );
i2s_clk_div_en_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBBB0888"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => i2s_pause14_out,
      I2 => s_axi_wdata(1),
      I3 => p_4_in(1),
      I4 => p_4_in(0),
      O => i2s_clk_div_en_i_1_n_0
    );
i2s_clk_div_en_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \i2s_chan_en[7]_i_2_n_0\,
      I1 => s_axi_awaddr_q(2),
      I2 => s_axi_wstrb(0),
      I3 => s_axi_awaddr_q(3),
      I4 => s_axi_awaddr_q(4),
      O => i2s_pause14_out
    );
i2s_clk_div_en_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i2s_clk_div_en_i_1_n_0,
      Q => p_4_in(0),
      R => p_0_in
    );
i2s_en_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABFFA800"
    )
        port map (
      I0 => s_axi_wdata(1),
      I1 => s_axi_wdata(0),
      I2 => p_4_in(0),
      I3 => i2s_pause14_out,
      I4 => p_4_in(1),
      O => i2s_en_i_1_n_0
    );
i2s_en_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i2s_en_i_1_n_0,
      Q => p_4_in(1),
      R => p_0_in
    );
i2s_lb_en_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(4),
      I1 => i2s_pause14_out,
      I2 => p_4_in(4),
      O => i2s_lb_en_i_1_n_0
    );
i2s_lb_en_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i2s_lb_en_i_1_n_0,
      Q => p_4_in(4),
      R => p_0_in
    );
\i2s_lrclk_div[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400000"
    )
        port map (
      I0 => p_4_in(0),
      I1 => \i2s_chan_en[7]_i_2_n_0\,
      I2 => s_axi_wstrb(1),
      I3 => s_axi_awaddr_q(3),
      I4 => s_axi_awaddr_q(4),
      I5 => s_axi_awaddr_q(2),
      O => p_1_in(15)
    );
\i2s_lrclk_div[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400000"
    )
        port map (
      I0 => p_4_in(0),
      I1 => \i2s_chan_en[7]_i_2_n_0\,
      I2 => s_axi_wstrb(0),
      I3 => s_axi_awaddr_q(3),
      I4 => s_axi_awaddr_q(4),
      I5 => s_axi_awaddr_q(2),
      O => p_1_in(7)
    );
\i2s_lrclk_div_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => i2s_lrclk_toggle0,
      I1 => p_4_in(0),
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
      CE => p_4_in(0),
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
      CE => p_4_in(0),
      D => \i2s_lrclk_div_cnt_reg[8]_i_1_n_5\,
      Q => i2s_lrclk_div_cnt_reg(10),
      R => \i2s_lrclk_div_cnt[0]_i_1_n_0\
    );
\i2s_lrclk_div_cnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_4_in(0),
      D => \i2s_lrclk_div_cnt_reg[8]_i_1_n_4\,
      Q => i2s_lrclk_div_cnt_reg(11),
      R => \i2s_lrclk_div_cnt[0]_i_1_n_0\
    );
\i2s_lrclk_div_cnt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_4_in(0),
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
      CE => p_4_in(0),
      D => \i2s_lrclk_div_cnt_reg[12]_i_1_n_6\,
      Q => i2s_lrclk_div_cnt_reg(13),
      R => \i2s_lrclk_div_cnt[0]_i_1_n_0\
    );
\i2s_lrclk_div_cnt_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_4_in(0),
      D => \i2s_lrclk_div_cnt_reg[12]_i_1_n_5\,
      Q => i2s_lrclk_div_cnt_reg(14),
      R => \i2s_lrclk_div_cnt[0]_i_1_n_0\
    );
\i2s_lrclk_div_cnt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_4_in(0),
      D => \i2s_lrclk_div_cnt_reg[12]_i_1_n_4\,
      Q => i2s_lrclk_div_cnt_reg(15),
      R => \i2s_lrclk_div_cnt[0]_i_1_n_0\
    );
\i2s_lrclk_div_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_4_in(0),
      D => \i2s_lrclk_div_cnt_reg[0]_i_2_n_6\,
      Q => i2s_lrclk_div_cnt_reg(1),
      R => \i2s_lrclk_div_cnt[0]_i_1_n_0\
    );
\i2s_lrclk_div_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_4_in(0),
      D => \i2s_lrclk_div_cnt_reg[0]_i_2_n_5\,
      Q => i2s_lrclk_div_cnt_reg(2),
      R => \i2s_lrclk_div_cnt[0]_i_1_n_0\
    );
\i2s_lrclk_div_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_4_in(0),
      D => \i2s_lrclk_div_cnt_reg[0]_i_2_n_4\,
      Q => i2s_lrclk_div_cnt_reg(3),
      R => \i2s_lrclk_div_cnt[0]_i_1_n_0\
    );
\i2s_lrclk_div_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_4_in(0),
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
      CE => p_4_in(0),
      D => \i2s_lrclk_div_cnt_reg[4]_i_1_n_6\,
      Q => i2s_lrclk_div_cnt_reg(5),
      R => \i2s_lrclk_div_cnt[0]_i_1_n_0\
    );
\i2s_lrclk_div_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_4_in(0),
      D => \i2s_lrclk_div_cnt_reg[4]_i_1_n_5\,
      Q => i2s_lrclk_div_cnt_reg(6),
      R => \i2s_lrclk_div_cnt[0]_i_1_n_0\
    );
\i2s_lrclk_div_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_4_in(0),
      D => \i2s_lrclk_div_cnt_reg[4]_i_1_n_4\,
      Q => i2s_lrclk_div_cnt_reg(7),
      R => \i2s_lrclk_div_cnt[0]_i_1_n_0\
    );
\i2s_lrclk_div_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_4_in(0),
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
      CE => p_4_in(0),
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
      I2 => p_4_in(0),
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
      I2 => i2s_lrclk_div_cnt_reg(13),
      I3 => i2s_lrclk_div(13),
      I4 => i2s_lrclk_div(14),
      I5 => i2s_lrclk_div_cnt_reg(14),
      O => \i2s_lrclk_toggle0_carry__0_i_2_n_0\
    );
i2s_lrclk_toggle0_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => i2s_lrclk_div_cnt_reg(9),
      I1 => i2s_lrclk_div(9),
      I2 => i2s_lrclk_div_cnt_reg(10),
      I3 => i2s_lrclk_div(10),
      I4 => i2s_lrclk_div(11),
      I5 => i2s_lrclk_div_cnt_reg(11),
      O => i2s_lrclk_toggle0_carry_i_1_n_0
    );
i2s_lrclk_toggle0_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => i2s_lrclk_div_cnt_reg(6),
      I1 => i2s_lrclk_div(6),
      I2 => i2s_lrclk_div_cnt_reg(7),
      I3 => i2s_lrclk_div(7),
      I4 => i2s_lrclk_div(8),
      I5 => i2s_lrclk_div_cnt_reg(8),
      O => i2s_lrclk_toggle0_carry_i_2_n_0
    );
i2s_lrclk_toggle0_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => i2s_lrclk_div_cnt_reg(3),
      I1 => i2s_lrclk_div(3),
      I2 => i2s_lrclk_div_cnt_reg(4),
      I3 => i2s_lrclk_div(4),
      I4 => i2s_lrclk_div(5),
      I5 => i2s_lrclk_div_cnt_reg(5),
      O => i2s_lrclk_toggle0_carry_i_3_n_0
    );
i2s_lrclk_toggle0_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => i2s_lrclk_div_cnt_reg(0),
      I1 => i2s_lrclk_div(0),
      I2 => i2s_lrclk_div_cnt_reg(1),
      I3 => i2s_lrclk_div(1),
      I4 => i2s_lrclk_div(2),
      I5 => i2s_lrclk_div_cnt_reg(2),
      O => i2s_lrclk_toggle0_carry_i_4_n_0
    );
\i2s_mclk_div[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400000"
    )
        port map (
      I0 => p_4_in(0),
      I1 => s_axi_wstrb(0),
      I2 => s_axi_awaddr_q(3),
      I3 => s_axi_awaddr_q(4),
      I4 => \i2s_chan_en[7]_i_2_n_0\,
      I5 => s_axi_awaddr_q(2),
      O => i2s_mclk_div_1
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
      INIT => X"6A"
    )
        port map (
      I0 => i2s_mclk_div_cnt_reg(2),
      I1 => i2s_mclk_div_cnt_reg(1),
      I2 => i2s_mclk_div_cnt_reg(0),
      O => \p_0_in__1\(2)
    );
\i2s_mclk_div_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => i2s_mclk_div_cnt_reg(3),
      I1 => i2s_mclk_div_cnt_reg(0),
      I2 => i2s_mclk_div_cnt_reg(1),
      I3 => i2s_mclk_div_cnt_reg(2),
      O => \p_0_in__1\(3)
    );
\i2s_mclk_div_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => i2s_mclk_div_cnt_reg(4),
      I1 => i2s_mclk_div_cnt_reg(3),
      I2 => i2s_mclk_div_cnt_reg(2),
      I3 => i2s_mclk_div_cnt_reg(1),
      I4 => i2s_mclk_div_cnt_reg(0),
      O => \p_0_in__1\(4)
    );
\i2s_mclk_div_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => i2s_mclk_div_cnt_reg(5),
      I1 => i2s_mclk_div_cnt_reg(0),
      I2 => i2s_mclk_div_cnt_reg(1),
      I3 => i2s_mclk_div_cnt_reg(2),
      I4 => i2s_mclk_div_cnt_reg(3),
      I5 => i2s_mclk_div_cnt_reg(4),
      O => \p_0_in__1\(5)
    );
\i2s_mclk_div_cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i2s_mclk_div_cnt_reg(6),
      I1 => \i2s_mclk_div_cnt[7]_i_3_n_0\,
      O => \p_0_in__1\(6)
    );
\i2s_mclk_div_cnt[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => i2s_mclk_i_2_n_0,
      I1 => p_4_in(0),
      O => \i2s_mclk_div_cnt[7]_i_1_n_0\
    );
\i2s_mclk_div_cnt[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => i2s_mclk_div_cnt_reg(7),
      I1 => \i2s_mclk_div_cnt[7]_i_3_n_0\,
      I2 => i2s_mclk_div_cnt_reg(6),
      O => \p_0_in__1\(7)
    );
\i2s_mclk_div_cnt[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => i2s_mclk_div_cnt_reg(5),
      I1 => i2s_mclk_div_cnt_reg(0),
      I2 => i2s_mclk_div_cnt_reg(1),
      I3 => i2s_mclk_div_cnt_reg(2),
      I4 => i2s_mclk_div_cnt_reg(3),
      I5 => i2s_mclk_div_cnt_reg(4),
      O => \i2s_mclk_div_cnt[7]_i_3_n_0\
    );
\i2s_mclk_div_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_4_in(0),
      D => \p_0_in__1\(0),
      Q => i2s_mclk_div_cnt_reg(0),
      R => \i2s_mclk_div_cnt[7]_i_1_n_0\
    );
\i2s_mclk_div_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_4_in(0),
      D => \p_0_in__1\(1),
      Q => i2s_mclk_div_cnt_reg(1),
      R => \i2s_mclk_div_cnt[7]_i_1_n_0\
    );
\i2s_mclk_div_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_4_in(0),
      D => \p_0_in__1\(2),
      Q => i2s_mclk_div_cnt_reg(2),
      R => \i2s_mclk_div_cnt[7]_i_1_n_0\
    );
\i2s_mclk_div_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_4_in(0),
      D => \p_0_in__1\(3),
      Q => i2s_mclk_div_cnt_reg(3),
      R => \i2s_mclk_div_cnt[7]_i_1_n_0\
    );
\i2s_mclk_div_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_4_in(0),
      D => \p_0_in__1\(4),
      Q => i2s_mclk_div_cnt_reg(4),
      R => \i2s_mclk_div_cnt[7]_i_1_n_0\
    );
\i2s_mclk_div_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_4_in(0),
      D => \p_0_in__1\(5),
      Q => i2s_mclk_div_cnt_reg(5),
      R => \i2s_mclk_div_cnt[7]_i_1_n_0\
    );
\i2s_mclk_div_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_4_in(0),
      D => \p_0_in__1\(6),
      Q => i2s_mclk_div_cnt_reg(6),
      R => \i2s_mclk_div_cnt[7]_i_1_n_0\
    );
\i2s_mclk_div_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_4_in(0),
      D => \p_0_in__1\(7),
      Q => i2s_mclk_div_cnt_reg(7),
      R => \i2s_mclk_div_cnt[7]_i_1_n_0\
    );
\i2s_mclk_div_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_mclk_div_1,
      D => s_axi_wdata(0),
      Q => i2s_mclk_div(0),
      R => p_0_in
    );
\i2s_mclk_div_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_mclk_div_1,
      D => s_axi_wdata(1),
      Q => i2s_mclk_div(1),
      R => p_0_in
    );
\i2s_mclk_div_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_mclk_div_1,
      D => s_axi_wdata(2),
      Q => i2s_mclk_div(2),
      R => p_0_in
    );
\i2s_mclk_div_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_mclk_div_1,
      D => s_axi_wdata(3),
      Q => i2s_mclk_div(3),
      R => p_0_in
    );
\i2s_mclk_div_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_mclk_div_1,
      D => s_axi_wdata(4),
      Q => i2s_mclk_div(4),
      R => p_0_in
    );
\i2s_mclk_div_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_mclk_div_1,
      D => s_axi_wdata(5),
      Q => i2s_mclk_div(5),
      R => p_0_in
    );
\i2s_mclk_div_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_mclk_div_1,
      D => s_axi_wdata(6),
      Q => i2s_mclk_div(6),
      R => p_0_in
    );
\i2s_mclk_div_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_mclk_div_1,
      D => s_axi_wdata(7),
      Q => i2s_mclk_div(7),
      R => p_0_in
    );
i2s_mclk_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \^i2s_mclk\,
      I1 => i2s_mclk_i_2_n_0,
      I2 => p_4_in(0),
      O => i2s_mclk_i_1_n_0
    );
i2s_mclk_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4004000000004004"
    )
        port map (
      I0 => i2s_mclk_i_3_n_0,
      I1 => i2s_mclk_i_4_n_0,
      I2 => i2s_mclk_div_cnt_reg(7),
      I3 => i2s_mclk_div(7),
      I4 => i2s_mclk_div_cnt_reg(6),
      I5 => i2s_mclk_div(6),
      O => i2s_mclk_i_2_n_0
    );
i2s_mclk_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => i2s_mclk_div(0),
      I1 => i2s_mclk_div_cnt_reg(0),
      I2 => i2s_mclk_div_cnt_reg(2),
      I3 => i2s_mclk_div(2),
      I4 => i2s_mclk_div_cnt_reg(1),
      I5 => i2s_mclk_div(1),
      O => i2s_mclk_i_3_n_0
    );
i2s_mclk_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => i2s_mclk_div(3),
      I1 => i2s_mclk_div_cnt_reg(3),
      I2 => i2s_mclk_div_cnt_reg(4),
      I3 => i2s_mclk_div(4),
      I4 => i2s_mclk_div_cnt_reg(5),
      I5 => i2s_mclk_div(5),
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
i2s_pause_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(2),
      I1 => i2s_pause14_out,
      I2 => p_4_in(2),
      O => i2s_pause_i_1_n_0
    );
i2s_pause_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i2s_pause_i_1_n_0,
      Q => p_4_in(2),
      R => p_0_in
    );
i2s_paused_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAEFFAAAAA200"
    )
        port map (
      I0 => p_4_in(2),
      I1 => \i2s_fsm_state__0\(1),
      I2 => i2s_paused_i_2_n_0,
      I3 => i2s_paused_i_3_n_0,
      I4 => i2s_paused_i_4_n_0,
      I5 => p_4_in(3),
      O => i2s_paused_i_1_n_0
    );
i2s_paused_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => i2s_bclk_i_2_n_0,
      I1 => \^i2s_bclk_reg_0\,
      I2 => \i2s_chan_cnt[2]_i_4_n_0\,
      I3 => p_4_in(2),
      I4 => \i2s_chan_cnt[2]_i_5_n_0\,
      O => i2s_paused_i_2_n_0
    );
i2s_paused_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i2s_fsm_state__0\(0),
      I1 => \i2s_fsm_state__0\(2),
      O => i2s_paused_i_3_n_0
    );
i2s_paused_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02FF"
    )
        port map (
      I0 => \i2s_fsm_state__0\(2),
      I1 => \i2s_fsm_state__0\(1),
      I2 => \i2s_fsm_state__0\(0),
      I3 => p_4_in(1),
      O => i2s_paused_i_4_n_0
    );
i2s_paused_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i2s_paused_i_1_n_0,
      Q => p_4_in(3),
      R => '0'
    );
\i2s_sdata_in_sr[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20222000"
    )
        port map (
      I0 => m_axis_tvalid_i_3_n_0,
      I1 => \i2s_fsm_state__0\(2),
      I2 => i2s_sdata_out_int_reg_n_0,
      I3 => p_4_in(4),
      I4 => i2s_sdata_in,
      O => i2s_sdata_in_sr(0)
    );
\i2s_sdata_in_sr[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => m_axis_tvalid_i_3_n_0,
      I1 => \i2s_fsm_state__0\(2),
      I2 => \i2s_sdata_in_sr_reg_n_0_[9]\,
      O => i2s_sdata_in_sr(10)
    );
\i2s_sdata_in_sr[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => m_axis_tvalid_i_3_n_0,
      I1 => \i2s_fsm_state__0\(2),
      I2 => \i2s_sdata_in_sr_reg_n_0_[10]\,
      O => i2s_sdata_in_sr(11)
    );
\i2s_sdata_in_sr[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => m_axis_tvalid_i_3_n_0,
      I1 => \i2s_fsm_state__0\(2),
      I2 => \i2s_sdata_in_sr_reg_n_0_[11]\,
      O => i2s_sdata_in_sr(12)
    );
\i2s_sdata_in_sr[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => m_axis_tvalid_i_3_n_0,
      I1 => \i2s_fsm_state__0\(2),
      I2 => \i2s_sdata_in_sr_reg_n_0_[12]\,
      O => i2s_sdata_in_sr(13)
    );
\i2s_sdata_in_sr[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => m_axis_tvalid_i_3_n_0,
      I1 => \i2s_fsm_state__0\(2),
      I2 => \i2s_sdata_in_sr_reg_n_0_[13]\,
      O => i2s_sdata_in_sr(14)
    );
\i2s_sdata_in_sr[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => m_axis_tvalid_i_3_n_0,
      I1 => \i2s_fsm_state__0\(2),
      I2 => \i2s_sdata_in_sr_reg_n_0_[14]\,
      O => i2s_sdata_in_sr(15)
    );
\i2s_sdata_in_sr[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => m_axis_tvalid_i_3_n_0,
      I1 => \i2s_fsm_state__0\(2),
      I2 => \i2s_sdata_in_sr_reg_n_0_[15]\,
      O => i2s_sdata_in_sr(16)
    );
\i2s_sdata_in_sr[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => m_axis_tvalid_i_3_n_0,
      I1 => \i2s_fsm_state__0\(2),
      I2 => \i2s_sdata_in_sr_reg_n_0_[16]\,
      O => i2s_sdata_in_sr(17)
    );
\i2s_sdata_in_sr[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => m_axis_tvalid_i_3_n_0,
      I1 => \i2s_fsm_state__0\(2),
      I2 => \i2s_sdata_in_sr_reg_n_0_[17]\,
      O => i2s_sdata_in_sr(18)
    );
\i2s_sdata_in_sr[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => m_axis_tvalid_i_3_n_0,
      I1 => \i2s_fsm_state__0\(2),
      I2 => \i2s_sdata_in_sr_reg_n_0_[18]\,
      O => i2s_sdata_in_sr(19)
    );
\i2s_sdata_in_sr[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => m_axis_tvalid_i_3_n_0,
      I1 => \i2s_fsm_state__0\(2),
      I2 => \i2s_sdata_in_sr_reg_n_0_[0]\,
      O => i2s_sdata_in_sr(1)
    );
\i2s_sdata_in_sr[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => m_axis_tvalid_i_3_n_0,
      I1 => \i2s_fsm_state__0\(2),
      I2 => \i2s_sdata_in_sr_reg_n_0_[19]\,
      O => i2s_sdata_in_sr(20)
    );
\i2s_sdata_in_sr[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => m_axis_tvalid_i_3_n_0,
      I1 => \i2s_fsm_state__0\(2),
      I2 => \i2s_sdata_in_sr_reg_n_0_[20]\,
      O => i2s_sdata_in_sr(21)
    );
\i2s_sdata_in_sr[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => m_axis_tvalid_i_3_n_0,
      I1 => \i2s_fsm_state__0\(2),
      I2 => \i2s_sdata_in_sr_reg_n_0_[21]\,
      O => i2s_sdata_in_sr(22)
    );
\i2s_sdata_in_sr[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => m_axis_tvalid_i_3_n_0,
      I1 => \i2s_fsm_state__0\(2),
      I2 => \i2s_sdata_in_sr_reg_n_0_[22]\,
      O => i2s_sdata_in_sr(23)
    );
\i2s_sdata_in_sr[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => m_axis_tvalid_i_3_n_0,
      I1 => \i2s_fsm_state__0\(2),
      I2 => \i2s_sdata_in_sr_reg_n_0_[23]\,
      O => i2s_sdata_in_sr(24)
    );
\i2s_sdata_in_sr[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => m_axis_tvalid_i_3_n_0,
      I1 => \i2s_fsm_state__0\(2),
      I2 => \i2s_sdata_in_sr_reg_n_0_[24]\,
      O => i2s_sdata_in_sr(25)
    );
\i2s_sdata_in_sr[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => m_axis_tvalid_i_3_n_0,
      I1 => \i2s_fsm_state__0\(2),
      I2 => \i2s_sdata_in_sr_reg_n_0_[25]\,
      O => i2s_sdata_in_sr(26)
    );
\i2s_sdata_in_sr[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => m_axis_tvalid_i_3_n_0,
      I1 => \i2s_fsm_state__0\(2),
      I2 => \i2s_sdata_in_sr_reg_n_0_[26]\,
      O => i2s_sdata_in_sr(27)
    );
\i2s_sdata_in_sr[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => m_axis_tvalid_i_3_n_0,
      I1 => \i2s_fsm_state__0\(2),
      I2 => \i2s_sdata_in_sr_reg_n_0_[27]\,
      O => i2s_sdata_in_sr(28)
    );
\i2s_sdata_in_sr[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => m_axis_tvalid_i_3_n_0,
      I1 => \i2s_fsm_state__0\(2),
      I2 => \i2s_sdata_in_sr_reg_n_0_[28]\,
      O => i2s_sdata_in_sr(29)
    );
\i2s_sdata_in_sr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => m_axis_tvalid_i_3_n_0,
      I1 => \i2s_fsm_state__0\(2),
      I2 => \i2s_sdata_in_sr_reg_n_0_[1]\,
      O => i2s_sdata_in_sr(2)
    );
\i2s_sdata_in_sr[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAAE"
    )
        port map (
      I0 => m_axis_tvalid_i_4_n_0,
      I1 => \i2s_fsm_state__0\(2),
      I2 => \i2s_fsm_state__0\(1),
      I3 => \i2s_fsm_state__0\(0),
      O => \i2s_sdata_in_sr[30]_i_1_n_0\
    );
\i2s_sdata_in_sr[30]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => m_axis_tvalid_i_3_n_0,
      I1 => \i2s_fsm_state__0\(2),
      I2 => \i2s_sdata_in_sr_reg_n_0_[29]\,
      O => i2s_sdata_in_sr(30)
    );
\i2s_sdata_in_sr[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => m_axis_tvalid_i_3_n_0,
      I1 => \i2s_fsm_state__0\(2),
      I2 => \i2s_sdata_in_sr_reg_n_0_[2]\,
      O => i2s_sdata_in_sr(3)
    );
\i2s_sdata_in_sr[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => m_axis_tvalid_i_3_n_0,
      I1 => \i2s_fsm_state__0\(2),
      I2 => \i2s_sdata_in_sr_reg_n_0_[3]\,
      O => i2s_sdata_in_sr(4)
    );
\i2s_sdata_in_sr[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => m_axis_tvalid_i_3_n_0,
      I1 => \i2s_fsm_state__0\(2),
      I2 => \i2s_sdata_in_sr_reg_n_0_[4]\,
      O => i2s_sdata_in_sr(5)
    );
\i2s_sdata_in_sr[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => m_axis_tvalid_i_3_n_0,
      I1 => \i2s_fsm_state__0\(2),
      I2 => \i2s_sdata_in_sr_reg_n_0_[5]\,
      O => i2s_sdata_in_sr(6)
    );
\i2s_sdata_in_sr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => m_axis_tvalid_i_3_n_0,
      I1 => \i2s_fsm_state__0\(2),
      I2 => \i2s_sdata_in_sr_reg_n_0_[6]\,
      O => i2s_sdata_in_sr(7)
    );
\i2s_sdata_in_sr[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => m_axis_tvalid_i_3_n_0,
      I1 => \i2s_fsm_state__0\(2),
      I2 => \i2s_sdata_in_sr_reg_n_0_[7]\,
      O => i2s_sdata_in_sr(8)
    );
\i2s_sdata_in_sr[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => m_axis_tvalid_i_3_n_0,
      I1 => \i2s_fsm_state__0\(2),
      I2 => \i2s_sdata_in_sr_reg_n_0_[8]\,
      O => i2s_sdata_in_sr(9)
    );
\i2s_sdata_in_sr_bit_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axis_tvalid_i_4_n_0,
      I1 => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[0]\,
      O => i2s_sdata_in_sr_bit_cnt(0)
    );
\i2s_sdata_in_sr_bit_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => m_axis_tvalid_i_4_n_0,
      I1 => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[0]\,
      I2 => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[1]\,
      O => i2s_sdata_in_sr_bit_cnt(1)
    );
\i2s_sdata_in_sr_bit_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => m_axis_tvalid_i_4_n_0,
      I1 => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[1]\,
      I2 => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[0]\,
      I3 => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[2]\,
      O => i2s_sdata_in_sr_bit_cnt(2)
    );
\i2s_sdata_in_sr_bit_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => m_axis_tvalid_i_4_n_0,
      I1 => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[0]\,
      I2 => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[1]\,
      I3 => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[2]\,
      I4 => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[3]\,
      O => i2s_sdata_in_sr_bit_cnt(3)
    );
\i2s_sdata_in_sr_bit_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => m_axis_tvalid_i_4_n_0,
      I1 => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[2]\,
      I2 => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[1]\,
      I3 => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[0]\,
      I4 => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[3]\,
      I5 => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[4]\,
      O => i2s_sdata_in_sr_bit_cnt(4)
    );
\i2s_sdata_in_sr_bit_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF000F8888"
    )
        port map (
      I0 => \^m_axis_tvalid_reg_0\,
      I1 => m_axis_tready,
      I2 => \i2s_fsm_state__0\(0),
      I3 => \i2s_fsm_state__0\(1),
      I4 => \i2s_fsm_state__0\(2),
      I5 => m_axis_tvalid_i_4_n_0,
      O => \i2s_sdata_in_sr_bit_cnt[5]_i_1_n_0\
    );
\i2s_sdata_in_sr_bit_cnt[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => p_0_in_0,
      I1 => \m_axis_tdata_reg[31]_i_6_n_0\,
      I2 => i2s_bclk_i_2_n_0,
      I3 => \^i2s_bclk_reg_0\,
      I4 => \m_axis_tdata[31]_i_4_n_0\,
      I5 => m_axis_tvalid_i_3_n_0,
      O => i2s_sdata_in_sr_bit_cnt(5)
    );
\i2s_sdata_in_sr_bit_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_in_sr_bit_cnt(0),
      Q => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[0]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_in_sr_bit_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_in_sr_bit_cnt(1),
      Q => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[1]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_in_sr_bit_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_in_sr_bit_cnt(2),
      Q => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[2]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_in_sr_bit_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_in_sr_bit_cnt(3),
      Q => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[3]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_in_sr_bit_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_in_sr_bit_cnt(4),
      Q => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[4]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_in_sr_bit_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_in_sr_bit_cnt(5),
      Q => p_0_in_0,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_in_sr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(0),
      Q => \i2s_sdata_in_sr_reg_n_0_[0]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_in_sr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(10),
      Q => \i2s_sdata_in_sr_reg_n_0_[10]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_in_sr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(11),
      Q => \i2s_sdata_in_sr_reg_n_0_[11]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_in_sr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(12),
      Q => \i2s_sdata_in_sr_reg_n_0_[12]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_in_sr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(13),
      Q => \i2s_sdata_in_sr_reg_n_0_[13]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_in_sr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(14),
      Q => \i2s_sdata_in_sr_reg_n_0_[14]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_in_sr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(15),
      Q => \i2s_sdata_in_sr_reg_n_0_[15]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_in_sr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(16),
      Q => \i2s_sdata_in_sr_reg_n_0_[16]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_in_sr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(17),
      Q => \i2s_sdata_in_sr_reg_n_0_[17]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_in_sr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(18),
      Q => \i2s_sdata_in_sr_reg_n_0_[18]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_in_sr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(19),
      Q => \i2s_sdata_in_sr_reg_n_0_[19]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_in_sr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(1),
      Q => \i2s_sdata_in_sr_reg_n_0_[1]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_in_sr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(20),
      Q => \i2s_sdata_in_sr_reg_n_0_[20]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_in_sr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(21),
      Q => \i2s_sdata_in_sr_reg_n_0_[21]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_in_sr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(22),
      Q => \i2s_sdata_in_sr_reg_n_0_[22]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_in_sr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(23),
      Q => \i2s_sdata_in_sr_reg_n_0_[23]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_in_sr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(24),
      Q => \i2s_sdata_in_sr_reg_n_0_[24]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_in_sr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(25),
      Q => \i2s_sdata_in_sr_reg_n_0_[25]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_in_sr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(26),
      Q => \i2s_sdata_in_sr_reg_n_0_[26]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_in_sr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(27),
      Q => \i2s_sdata_in_sr_reg_n_0_[27]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_in_sr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(28),
      Q => \i2s_sdata_in_sr_reg_n_0_[28]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_in_sr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(29),
      Q => \i2s_sdata_in_sr_reg_n_0_[29]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_in_sr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(2),
      Q => \i2s_sdata_in_sr_reg_n_0_[2]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_in_sr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(30),
      Q => \i2s_sdata_in_sr_reg_n_0_[30]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_in_sr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(3),
      Q => \i2s_sdata_in_sr_reg_n_0_[3]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_in_sr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(4),
      Q => \i2s_sdata_in_sr_reg_n_0_[4]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_in_sr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(5),
      Q => \i2s_sdata_in_sr_reg_n_0_[5]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_in_sr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(6),
      Q => \i2s_sdata_in_sr_reg_n_0_[6]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_in_sr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(7),
      Q => \i2s_sdata_in_sr_reg_n_0_[7]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_in_sr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(8),
      Q => \i2s_sdata_in_sr_reg_n_0_[8]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_in_sr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(9),
      Q => \i2s_sdata_in_sr_reg_n_0_[9]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
i2s_sdata_out_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i2s_sdata_in,
      I1 => p_4_in(4),
      I2 => i2s_sdata_out_int_reg_n_0,
      O => i2s_sdata_out
    );
i2s_sdata_out_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAE00A200000000"
    )
        port map (
      I0 => i2s_sdata_out_int_reg_n_0,
      I1 => i2s_sdata_out_int_i_2_n_0,
      I2 => i2s_sdata_out_int_i_3_n_0,
      I3 => \m_axis_tdata[31]_i_7_n_0\,
      I4 => i2s_sdata_out_int,
      I5 => p_4_in(1),
      O => i2s_sdata_out_int_i_1_n_0
    );
i2s_sdata_out_int_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \i2s_fsm_state__0\(0),
      I1 => \^i2s_bclk_reg_0\,
      I2 => i2s_bclk_i_2_n_0,
      O => i2s_sdata_out_int_i_2_n_0
    );
i2s_sdata_out_int_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FDDD"
    )
        port map (
      I0 => \i2s_fsm_state__0\(1),
      I1 => \i2s_fsm_state__0\(2),
      I2 => s_axis_tready_i_10_n_0,
      I3 => \m_axis_tdata_reg[31]_i_6_n_0\,
      O => i2s_sdata_out_int_i_3_n_0
    );
i2s_sdata_out_int_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \m_axis_tdata_reg[31]_i_6_n_0\,
      I1 => \i2s_sdata_out_sr_reg_n_0_[31]\,
      I2 => \i2s_fsm_state__0\(2),
      O => i2s_sdata_out_int
    );
i2s_sdata_out_int_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i2s_sdata_out_int_i_1_n_0,
      Q => i2s_sdata_out_int_reg_n_0,
      R => '0'
    );
\i2s_sdata_out_sr[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axis_tdata(0),
      I1 => \i2s_sdata_out_sr_bit_cnt[5]_i_3_n_0\,
      I2 => \i2s_fsm_state__0\(2),
      O => i2s_sdata_out_sr(0)
    );
\i2s_sdata_out_sr[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => s_axis_tdata(10),
      I1 => \i2s_fsm_state__0\(2),
      I2 => \i2s_sdata_out_sr_bit_cnt[5]_i_3_n_0\,
      I3 => \i2s_sdata_out_sr_reg_n_0_[9]\,
      O => i2s_sdata_out_sr(10)
    );
\i2s_sdata_out_sr[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => s_axis_tdata(11),
      I1 => \i2s_fsm_state__0\(2),
      I2 => \i2s_sdata_out_sr_bit_cnt[5]_i_3_n_0\,
      I3 => \i2s_sdata_out_sr_reg_n_0_[10]\,
      O => i2s_sdata_out_sr(11)
    );
\i2s_sdata_out_sr[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => s_axis_tdata(12),
      I1 => \i2s_fsm_state__0\(2),
      I2 => \i2s_sdata_out_sr_bit_cnt[5]_i_3_n_0\,
      I3 => \i2s_sdata_out_sr_reg_n_0_[11]\,
      O => i2s_sdata_out_sr(12)
    );
\i2s_sdata_out_sr[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => s_axis_tdata(13),
      I1 => \i2s_fsm_state__0\(2),
      I2 => \i2s_sdata_out_sr_bit_cnt[5]_i_3_n_0\,
      I3 => \i2s_sdata_out_sr_reg_n_0_[12]\,
      O => i2s_sdata_out_sr(13)
    );
\i2s_sdata_out_sr[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => s_axis_tdata(14),
      I1 => \i2s_fsm_state__0\(2),
      I2 => \i2s_sdata_out_sr_bit_cnt[5]_i_3_n_0\,
      I3 => \i2s_sdata_out_sr_reg_n_0_[13]\,
      O => i2s_sdata_out_sr(14)
    );
\i2s_sdata_out_sr[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => s_axis_tdata(15),
      I1 => \i2s_fsm_state__0\(2),
      I2 => \i2s_sdata_out_sr_bit_cnt[5]_i_3_n_0\,
      I3 => \i2s_sdata_out_sr_reg_n_0_[14]\,
      O => i2s_sdata_out_sr(15)
    );
\i2s_sdata_out_sr[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => s_axis_tdata(16),
      I1 => \i2s_fsm_state__0\(2),
      I2 => \i2s_sdata_out_sr_bit_cnt[5]_i_3_n_0\,
      I3 => \i2s_sdata_out_sr_reg_n_0_[15]\,
      O => i2s_sdata_out_sr(16)
    );
\i2s_sdata_out_sr[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => s_axis_tdata(17),
      I1 => \i2s_fsm_state__0\(2),
      I2 => \i2s_sdata_out_sr_bit_cnt[5]_i_3_n_0\,
      I3 => \i2s_sdata_out_sr_reg_n_0_[16]\,
      O => i2s_sdata_out_sr(17)
    );
\i2s_sdata_out_sr[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => s_axis_tdata(18),
      I1 => \i2s_fsm_state__0\(2),
      I2 => \i2s_sdata_out_sr_bit_cnt[5]_i_3_n_0\,
      I3 => \i2s_sdata_out_sr_reg_n_0_[17]\,
      O => i2s_sdata_out_sr(18)
    );
\i2s_sdata_out_sr[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => s_axis_tdata(19),
      I1 => \i2s_fsm_state__0\(2),
      I2 => \i2s_sdata_out_sr_bit_cnt[5]_i_3_n_0\,
      I3 => \i2s_sdata_out_sr_reg_n_0_[18]\,
      O => i2s_sdata_out_sr(19)
    );
\i2s_sdata_out_sr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => s_axis_tdata(1),
      I1 => \i2s_fsm_state__0\(2),
      I2 => \i2s_sdata_out_sr_bit_cnt[5]_i_3_n_0\,
      I3 => \i2s_sdata_out_sr_reg_n_0_[0]\,
      O => i2s_sdata_out_sr(1)
    );
\i2s_sdata_out_sr[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => s_axis_tdata(20),
      I1 => \i2s_fsm_state__0\(2),
      I2 => \i2s_sdata_out_sr_bit_cnt[5]_i_3_n_0\,
      I3 => \i2s_sdata_out_sr_reg_n_0_[19]\,
      O => i2s_sdata_out_sr(20)
    );
\i2s_sdata_out_sr[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => s_axis_tdata(21),
      I1 => \i2s_fsm_state__0\(2),
      I2 => \i2s_sdata_out_sr_bit_cnt[5]_i_3_n_0\,
      I3 => \i2s_sdata_out_sr_reg_n_0_[20]\,
      O => i2s_sdata_out_sr(21)
    );
\i2s_sdata_out_sr[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => s_axis_tdata(22),
      I1 => \i2s_fsm_state__0\(2),
      I2 => \i2s_sdata_out_sr_bit_cnt[5]_i_3_n_0\,
      I3 => \i2s_sdata_out_sr_reg_n_0_[21]\,
      O => i2s_sdata_out_sr(22)
    );
\i2s_sdata_out_sr[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => s_axis_tdata(23),
      I1 => \i2s_fsm_state__0\(2),
      I2 => \i2s_sdata_out_sr_bit_cnt[5]_i_3_n_0\,
      I3 => \i2s_sdata_out_sr_reg_n_0_[22]\,
      O => i2s_sdata_out_sr(23)
    );
\i2s_sdata_out_sr[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => s_axis_tdata(24),
      I1 => \i2s_fsm_state__0\(2),
      I2 => \i2s_sdata_out_sr_bit_cnt[5]_i_3_n_0\,
      I3 => \i2s_sdata_out_sr_reg_n_0_[23]\,
      O => i2s_sdata_out_sr(24)
    );
\i2s_sdata_out_sr[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => s_axis_tdata(25),
      I1 => \i2s_fsm_state__0\(2),
      I2 => \i2s_sdata_out_sr_bit_cnt[5]_i_3_n_0\,
      I3 => \i2s_sdata_out_sr_reg_n_0_[24]\,
      O => i2s_sdata_out_sr(25)
    );
\i2s_sdata_out_sr[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => s_axis_tdata(26),
      I1 => \i2s_fsm_state__0\(2),
      I2 => \i2s_sdata_out_sr_bit_cnt[5]_i_3_n_0\,
      I3 => \i2s_sdata_out_sr_reg_n_0_[25]\,
      O => i2s_sdata_out_sr(26)
    );
\i2s_sdata_out_sr[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => s_axis_tdata(27),
      I1 => \i2s_fsm_state__0\(2),
      I2 => \i2s_sdata_out_sr_bit_cnt[5]_i_3_n_0\,
      I3 => \i2s_sdata_out_sr_reg_n_0_[26]\,
      O => i2s_sdata_out_sr(27)
    );
\i2s_sdata_out_sr[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => s_axis_tdata(28),
      I1 => \i2s_fsm_state__0\(2),
      I2 => \i2s_sdata_out_sr_bit_cnt[5]_i_3_n_0\,
      I3 => \i2s_sdata_out_sr_reg_n_0_[27]\,
      O => i2s_sdata_out_sr(28)
    );
\i2s_sdata_out_sr[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => s_axis_tdata(29),
      I1 => \i2s_fsm_state__0\(2),
      I2 => \i2s_sdata_out_sr_bit_cnt[5]_i_3_n_0\,
      I3 => \i2s_sdata_out_sr_reg_n_0_[28]\,
      O => i2s_sdata_out_sr(29)
    );
\i2s_sdata_out_sr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => s_axis_tdata(2),
      I1 => \i2s_fsm_state__0\(2),
      I2 => \i2s_sdata_out_sr_bit_cnt[5]_i_3_n_0\,
      I3 => \i2s_sdata_out_sr_reg_n_0_[1]\,
      O => i2s_sdata_out_sr(2)
    );
\i2s_sdata_out_sr[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => s_axis_tdata(30),
      I1 => \i2s_fsm_state__0\(2),
      I2 => \i2s_sdata_out_sr_bit_cnt[5]_i_3_n_0\,
      I3 => \i2s_sdata_out_sr_reg_n_0_[29]\,
      O => i2s_sdata_out_sr(30)
    );
\i2s_sdata_out_sr[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => s_axis_tdata(31),
      I1 => \i2s_fsm_state__0\(2),
      I2 => \i2s_sdata_out_sr_bit_cnt[5]_i_3_n_0\,
      I3 => \i2s_sdata_out_sr_reg_n_0_[30]\,
      O => i2s_sdata_out_sr(31)
    );
\i2s_sdata_out_sr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => s_axis_tdata(3),
      I1 => \i2s_fsm_state__0\(2),
      I2 => \i2s_sdata_out_sr_bit_cnt[5]_i_3_n_0\,
      I3 => \i2s_sdata_out_sr_reg_n_0_[2]\,
      O => i2s_sdata_out_sr(3)
    );
\i2s_sdata_out_sr[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => s_axis_tdata(4),
      I1 => \i2s_fsm_state__0\(2),
      I2 => \i2s_sdata_out_sr_bit_cnt[5]_i_3_n_0\,
      I3 => \i2s_sdata_out_sr_reg_n_0_[3]\,
      O => i2s_sdata_out_sr(4)
    );
\i2s_sdata_out_sr[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => s_axis_tdata(5),
      I1 => \i2s_fsm_state__0\(2),
      I2 => \i2s_sdata_out_sr_bit_cnt[5]_i_3_n_0\,
      I3 => \i2s_sdata_out_sr_reg_n_0_[4]\,
      O => i2s_sdata_out_sr(5)
    );
\i2s_sdata_out_sr[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => s_axis_tdata(6),
      I1 => \i2s_fsm_state__0\(2),
      I2 => \i2s_sdata_out_sr_bit_cnt[5]_i_3_n_0\,
      I3 => \i2s_sdata_out_sr_reg_n_0_[5]\,
      O => i2s_sdata_out_sr(6)
    );
\i2s_sdata_out_sr[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => s_axis_tdata(7),
      I1 => \i2s_fsm_state__0\(2),
      I2 => \i2s_sdata_out_sr_bit_cnt[5]_i_3_n_0\,
      I3 => \i2s_sdata_out_sr_reg_n_0_[6]\,
      O => i2s_sdata_out_sr(7)
    );
\i2s_sdata_out_sr[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => s_axis_tdata(8),
      I1 => \i2s_fsm_state__0\(2),
      I2 => \i2s_sdata_out_sr_bit_cnt[5]_i_3_n_0\,
      I3 => \i2s_sdata_out_sr_reg_n_0_[7]\,
      O => i2s_sdata_out_sr(8)
    );
\i2s_sdata_out_sr[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => s_axis_tdata(9),
      I1 => \i2s_fsm_state__0\(2),
      I2 => \i2s_sdata_out_sr_bit_cnt[5]_i_3_n_0\,
      I3 => \i2s_sdata_out_sr_reg_n_0_[8]\,
      O => i2s_sdata_out_sr(9)
    );
\i2s_sdata_out_sr_bit_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[0]\,
      I1 => s_axis_tready_i_4_n_0,
      O => i2s_sdata_out_sr_bit_cnt(0)
    );
\i2s_sdata_out_sr_bit_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => s_axis_tready_i_4_n_0,
      I1 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[0]\,
      I2 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[1]\,
      O => i2s_sdata_out_sr_bit_cnt(1)
    );
\i2s_sdata_out_sr_bit_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5401"
    )
        port map (
      I0 => s_axis_tready_i_4_n_0,
      I1 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[1]\,
      I2 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[0]\,
      I3 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[2]\,
      O => i2s_sdata_out_sr_bit_cnt(2)
    );
\i2s_sdata_out_sr_bit_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55540001"
    )
        port map (
      I0 => s_axis_tready_i_4_n_0,
      I1 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[2]\,
      I2 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[0]\,
      I3 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[1]\,
      I4 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[3]\,
      O => i2s_sdata_out_sr_bit_cnt(3)
    );
\i2s_sdata_out_sr_bit_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFE0001"
    )
        port map (
      I0 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[3]\,
      I1 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[1]\,
      I2 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[0]\,
      I3 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[2]\,
      I4 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[4]\,
      I5 => s_axis_tready_i_4_n_0,
      O => i2s_sdata_out_sr_bit_cnt(4)
    );
\i2s_sdata_out_sr_bit_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1F1010101F1F1F1F"
    )
        port map (
      I0 => \i2s_fsm_state__0\(1),
      I1 => \i2s_fsm_state__0\(0),
      I2 => \i2s_fsm_state__0\(2),
      I3 => s_axis_tvalid,
      I4 => \^s_axis_tready_reg_0\,
      I5 => \i2s_sdata_out_sr_bit_cnt[5]_i_3_n_0\,
      O => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\
    );
\i2s_sdata_out_sr_bit_cnt[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5454545454545445"
    )
        port map (
      I0 => \i2s_fsm_state__0\(2),
      I1 => \i2s_sdata_out_sr_bit_cnt[5]_i_3_n_0\,
      I2 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[5]\,
      I3 => \i2s_sdata_out_sr_bit_cnt[5]_i_4_n_0\,
      I4 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[4]\,
      I5 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[3]\,
      O => \i2s_sdata_out_sr_bit_cnt[5]_i_2_n_0\
    );
\i2s_sdata_out_sr_bit_cnt[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFFFFFFFFFF"
    )
        port map (
      I0 => \^i2s_bclk_reg_0\,
      I1 => i2s_bclk_i_2_n_0,
      I2 => \i2s_fsm_state__0\(0),
      I3 => \i2s_fsm_state__0\(1),
      I4 => s_axis_tready_i_10_n_0,
      I5 => \m_axis_tdata_reg[31]_i_6_n_0\,
      O => \i2s_sdata_out_sr_bit_cnt[5]_i_3_n_0\
    );
\i2s_sdata_out_sr_bit_cnt[5]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[2]\,
      I1 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[0]\,
      I2 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[1]\,
      O => \i2s_sdata_out_sr_bit_cnt[5]_i_4_n_0\
    );
\i2s_sdata_out_sr_bit_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr_bit_cnt(0),
      Q => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[0]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_out_sr_bit_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr_bit_cnt(1),
      Q => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[1]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_out_sr_bit_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr_bit_cnt(2),
      Q => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[2]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_out_sr_bit_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr_bit_cnt(3),
      Q => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[3]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_out_sr_bit_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr_bit_cnt(4),
      Q => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[4]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_out_sr_bit_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => \i2s_sdata_out_sr_bit_cnt[5]_i_2_n_0\,
      Q => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[5]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_out_sr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(0),
      Q => \i2s_sdata_out_sr_reg_n_0_[0]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_out_sr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(10),
      Q => \i2s_sdata_out_sr_reg_n_0_[10]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_out_sr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(11),
      Q => \i2s_sdata_out_sr_reg_n_0_[11]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_out_sr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(12),
      Q => \i2s_sdata_out_sr_reg_n_0_[12]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_out_sr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(13),
      Q => \i2s_sdata_out_sr_reg_n_0_[13]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_out_sr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(14),
      Q => \i2s_sdata_out_sr_reg_n_0_[14]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_out_sr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(15),
      Q => \i2s_sdata_out_sr_reg_n_0_[15]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_out_sr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(16),
      Q => \i2s_sdata_out_sr_reg_n_0_[16]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_out_sr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(17),
      Q => \i2s_sdata_out_sr_reg_n_0_[17]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_out_sr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(18),
      Q => \i2s_sdata_out_sr_reg_n_0_[18]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_out_sr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(19),
      Q => \i2s_sdata_out_sr_reg_n_0_[19]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_out_sr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(1),
      Q => \i2s_sdata_out_sr_reg_n_0_[1]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_out_sr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(20),
      Q => \i2s_sdata_out_sr_reg_n_0_[20]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_out_sr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(21),
      Q => \i2s_sdata_out_sr_reg_n_0_[21]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_out_sr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(22),
      Q => \i2s_sdata_out_sr_reg_n_0_[22]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_out_sr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(23),
      Q => \i2s_sdata_out_sr_reg_n_0_[23]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_out_sr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(24),
      Q => \i2s_sdata_out_sr_reg_n_0_[24]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_out_sr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(25),
      Q => \i2s_sdata_out_sr_reg_n_0_[25]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_out_sr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(26),
      Q => \i2s_sdata_out_sr_reg_n_0_[26]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_out_sr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(27),
      Q => \i2s_sdata_out_sr_reg_n_0_[27]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_out_sr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(28),
      Q => \i2s_sdata_out_sr_reg_n_0_[28]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_out_sr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(29),
      Q => \i2s_sdata_out_sr_reg_n_0_[29]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_out_sr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(2),
      Q => \i2s_sdata_out_sr_reg_n_0_[2]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_out_sr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(30),
      Q => \i2s_sdata_out_sr_reg_n_0_[30]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_out_sr_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(31),
      Q => \i2s_sdata_out_sr_reg_n_0_[31]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_out_sr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(3),
      Q => \i2s_sdata_out_sr_reg_n_0_[3]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_out_sr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(4),
      Q => \i2s_sdata_out_sr_reg_n_0_[4]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_out_sr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(5),
      Q => \i2s_sdata_out_sr_reg_n_0_[5]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_out_sr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(6),
      Q => \i2s_sdata_out_sr_reg_n_0_[6]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_out_sr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(7),
      Q => \i2s_sdata_out_sr_reg_n_0_[7]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_out_sr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(8),
      Q => \i2s_sdata_out_sr_reg_n_0_[8]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\i2s_sdata_out_sr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(9),
      Q => \i2s_sdata_out_sr_reg_n_0_[9]\,
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\m_axis_tdata[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => i2s_sdata_in,
      I1 => p_4_in(4),
      I2 => i2s_sdata_out_int_reg_n_0,
      I3 => \i2s_fsm_state__0\(2),
      O => m_axis_tdata0_in(0)
    );
\m_axis_tdata[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i2s_sdata_in_sr_reg_n_0_[9]\,
      I1 => \i2s_fsm_state__0\(2),
      O => m_axis_tdata0_in(10)
    );
\m_axis_tdata[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i2s_sdata_in_sr_reg_n_0_[10]\,
      I1 => \i2s_fsm_state__0\(2),
      O => m_axis_tdata0_in(11)
    );
\m_axis_tdata[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i2s_sdata_in_sr_reg_n_0_[11]\,
      I1 => \i2s_fsm_state__0\(2),
      O => m_axis_tdata0_in(12)
    );
\m_axis_tdata[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i2s_sdata_in_sr_reg_n_0_[12]\,
      I1 => \i2s_fsm_state__0\(2),
      O => m_axis_tdata0_in(13)
    );
\m_axis_tdata[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i2s_sdata_in_sr_reg_n_0_[13]\,
      I1 => \i2s_fsm_state__0\(2),
      O => m_axis_tdata0_in(14)
    );
\m_axis_tdata[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i2s_sdata_in_sr_reg_n_0_[14]\,
      I1 => \i2s_fsm_state__0\(2),
      O => m_axis_tdata0_in(15)
    );
\m_axis_tdata[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i2s_sdata_in_sr_reg_n_0_[15]\,
      I1 => \i2s_fsm_state__0\(2),
      O => m_axis_tdata0_in(16)
    );
\m_axis_tdata[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i2s_sdata_in_sr_reg_n_0_[16]\,
      I1 => \i2s_fsm_state__0\(2),
      O => m_axis_tdata0_in(17)
    );
\m_axis_tdata[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i2s_sdata_in_sr_reg_n_0_[17]\,
      I1 => \i2s_fsm_state__0\(2),
      O => m_axis_tdata0_in(18)
    );
\m_axis_tdata[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i2s_sdata_in_sr_reg_n_0_[18]\,
      I1 => \i2s_fsm_state__0\(2),
      O => m_axis_tdata0_in(19)
    );
\m_axis_tdata[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i2s_sdata_in_sr_reg_n_0_[0]\,
      I1 => \i2s_fsm_state__0\(2),
      O => m_axis_tdata0_in(1)
    );
\m_axis_tdata[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i2s_sdata_in_sr_reg_n_0_[19]\,
      I1 => \i2s_fsm_state__0\(2),
      O => m_axis_tdata0_in(20)
    );
\m_axis_tdata[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i2s_sdata_in_sr_reg_n_0_[20]\,
      I1 => \i2s_fsm_state__0\(2),
      O => m_axis_tdata0_in(21)
    );
\m_axis_tdata[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i2s_sdata_in_sr_reg_n_0_[21]\,
      I1 => \i2s_fsm_state__0\(2),
      O => m_axis_tdata0_in(22)
    );
\m_axis_tdata[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i2s_sdata_in_sr_reg_n_0_[22]\,
      I1 => \i2s_fsm_state__0\(2),
      O => m_axis_tdata0_in(23)
    );
\m_axis_tdata[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i2s_sdata_in_sr_reg_n_0_[23]\,
      I1 => \i2s_fsm_state__0\(2),
      O => m_axis_tdata0_in(24)
    );
\m_axis_tdata[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i2s_sdata_in_sr_reg_n_0_[24]\,
      I1 => \i2s_fsm_state__0\(2),
      O => m_axis_tdata0_in(25)
    );
\m_axis_tdata[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i2s_sdata_in_sr_reg_n_0_[25]\,
      I1 => \i2s_fsm_state__0\(2),
      O => m_axis_tdata0_in(26)
    );
\m_axis_tdata[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i2s_sdata_in_sr_reg_n_0_[26]\,
      I1 => \i2s_fsm_state__0\(2),
      O => m_axis_tdata0_in(27)
    );
\m_axis_tdata[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i2s_sdata_in_sr_reg_n_0_[27]\,
      I1 => \i2s_fsm_state__0\(2),
      O => m_axis_tdata0_in(28)
    );
\m_axis_tdata[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i2s_sdata_in_sr_reg_n_0_[28]\,
      I1 => \i2s_fsm_state__0\(2),
      O => m_axis_tdata0_in(29)
    );
\m_axis_tdata[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i2s_sdata_in_sr_reg_n_0_[1]\,
      I1 => \i2s_fsm_state__0\(2),
      O => m_axis_tdata0_in(2)
    );
\m_axis_tdata[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i2s_sdata_in_sr_reg_n_0_[29]\,
      I1 => \i2s_fsm_state__0\(2),
      O => m_axis_tdata0_in(30)
    );
\m_axis_tdata[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_4_in(1),
      O => \m_axis_tdata[31]_i_1_n_0\
    );
\m_axis_tdata[31]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFFFFFF22F2"
    )
        port map (
      I0 => i2s_bclk_div_cnt_reg(4),
      I1 => i2s_bclk_div(4),
      I2 => i2s_bclk_div(6),
      I3 => i2s_bclk_div_cnt_reg(6),
      I4 => i2s_bclk_div_cnt_reg(0),
      I5 => i2s_bclk_div(0),
      O => \m_axis_tdata[31]_i_10_n_0\
    );
\m_axis_tdata[31]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i2s_bclk_div_cnt_reg(3),
      I1 => i2s_bclk_div(3),
      O => \m_axis_tdata[31]_i_11_n_0\
    );
\m_axis_tdata[31]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5DFFFF5D"
    )
        port map (
      I0 => p_4_in(0),
      I1 => i2s_bclk_div_cnt_reg(2),
      I2 => i2s_bclk_div(2),
      I3 => i2s_bclk_div(1),
      I4 => i2s_bclk_div_cnt_reg(1),
      O => \m_axis_tdata[31]_i_12_n_0\
    );
\m_axis_tdata[31]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_4_in(11),
      I1 => p_4_in(10),
      I2 => \i2s_chan_cnt_reg_n_0_[1]\,
      I3 => p_4_in(9),
      I4 => \i2s_chan_cnt_reg_n_0_[0]\,
      I5 => p_4_in(8),
      O => \m_axis_tdata[31]_i_13_n_0\
    );
\m_axis_tdata[31]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_4_in(15),
      I1 => p_4_in(14),
      I2 => \i2s_chan_cnt_reg_n_0_[1]\,
      I3 => p_4_in(13),
      I4 => \i2s_chan_cnt_reg_n_0_[0]\,
      I5 => p_4_in(12),
      O => \m_axis_tdata[31]_i_14_n_0\
    );
\m_axis_tdata[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00001000"
    )
        port map (
      I0 => m_axis_tvalid_i_3_n_0,
      I1 => \m_axis_tdata[31]_i_4_n_0\,
      I2 => \m_axis_tdata[31]_i_5_n_0\,
      I3 => \m_axis_tdata_reg[31]_i_6_n_0\,
      I4 => p_0_in_0,
      I5 => \m_axis_tdata[31]_i_7_n_0\,
      O => \m_axis_tdata[31]_i_2_n_0\
    );
\m_axis_tdata[31]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i2s_sdata_in_sr_reg_n_0_[30]\,
      I1 => \i2s_fsm_state__0\(2),
      O => m_axis_tdata0_in(31)
    );
\m_axis_tdata[31]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => \i2s_fsm_state__0\(2),
      I1 => \i2s_fsm_state__0\(0),
      I2 => \i2s_fsm_state__0\(1),
      O => \m_axis_tdata[31]_i_4_n_0\
    );
\m_axis_tdata[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^i2s_bclk_reg_0\,
      I1 => \m_axis_tdata[31]_i_8_n_0\,
      I2 => \m_axis_tdata[31]_i_9_n_0\,
      I3 => \m_axis_tdata[31]_i_10_n_0\,
      I4 => \m_axis_tdata[31]_i_11_n_0\,
      I5 => \m_axis_tdata[31]_i_12_n_0\,
      O => \m_axis_tdata[31]_i_5_n_0\
    );
\m_axis_tdata[31]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \i2s_fsm_state__0\(0),
      I1 => \i2s_fsm_state__0\(1),
      I2 => \i2s_fsm_state__0\(2),
      O => \m_axis_tdata[31]_i_7_n_0\
    );
\m_axis_tdata[31]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => i2s_bclk_div(6),
      I1 => i2s_bclk_div_cnt_reg(6),
      I2 => i2s_bclk_div(7),
      I3 => i2s_bclk_div_cnt_reg(7),
      I4 => i2s_bclk_div(2),
      I5 => i2s_bclk_div_cnt_reg(2),
      O => \m_axis_tdata[31]_i_8_n_0\
    );
\m_axis_tdata[31]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2FF22FF2FFFF2FF2"
    )
        port map (
      I0 => i2s_bclk_div_cnt_reg(7),
      I1 => i2s_bclk_div(7),
      I2 => i2s_bclk_div(5),
      I3 => i2s_bclk_div_cnt_reg(5),
      I4 => i2s_bclk_div(4),
      I5 => i2s_bclk_div_cnt_reg(4),
      O => \m_axis_tdata[31]_i_9_n_0\
    );
\m_axis_tdata[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i2s_sdata_in_sr_reg_n_0_[2]\,
      I1 => \i2s_fsm_state__0\(2),
      O => m_axis_tdata0_in(3)
    );
\m_axis_tdata[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i2s_sdata_in_sr_reg_n_0_[3]\,
      I1 => \i2s_fsm_state__0\(2),
      O => m_axis_tdata0_in(4)
    );
\m_axis_tdata[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i2s_sdata_in_sr_reg_n_0_[4]\,
      I1 => \i2s_fsm_state__0\(2),
      O => m_axis_tdata0_in(5)
    );
\m_axis_tdata[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i2s_sdata_in_sr_reg_n_0_[5]\,
      I1 => \i2s_fsm_state__0\(2),
      O => m_axis_tdata0_in(6)
    );
\m_axis_tdata[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i2s_sdata_in_sr_reg_n_0_[6]\,
      I1 => \i2s_fsm_state__0\(2),
      O => m_axis_tdata0_in(7)
    );
\m_axis_tdata[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i2s_sdata_in_sr_reg_n_0_[7]\,
      I1 => \i2s_fsm_state__0\(2),
      O => m_axis_tdata0_in(8)
    );
\m_axis_tdata[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i2s_sdata_in_sr_reg_n_0_[8]\,
      I1 => \i2s_fsm_state__0\(2),
      O => m_axis_tdata0_in(9)
    );
\m_axis_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_2_n_0\,
      D => m_axis_tdata0_in(0),
      Q => m_axis_tdata(0),
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\m_axis_tdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_2_n_0\,
      D => m_axis_tdata0_in(10),
      Q => m_axis_tdata(10),
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\m_axis_tdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_2_n_0\,
      D => m_axis_tdata0_in(11),
      Q => m_axis_tdata(11),
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\m_axis_tdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_2_n_0\,
      D => m_axis_tdata0_in(12),
      Q => m_axis_tdata(12),
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\m_axis_tdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_2_n_0\,
      D => m_axis_tdata0_in(13),
      Q => m_axis_tdata(13),
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\m_axis_tdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_2_n_0\,
      D => m_axis_tdata0_in(14),
      Q => m_axis_tdata(14),
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\m_axis_tdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_2_n_0\,
      D => m_axis_tdata0_in(15),
      Q => m_axis_tdata(15),
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\m_axis_tdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_2_n_0\,
      D => m_axis_tdata0_in(16),
      Q => m_axis_tdata(16),
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\m_axis_tdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_2_n_0\,
      D => m_axis_tdata0_in(17),
      Q => m_axis_tdata(17),
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\m_axis_tdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_2_n_0\,
      D => m_axis_tdata0_in(18),
      Q => m_axis_tdata(18),
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\m_axis_tdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_2_n_0\,
      D => m_axis_tdata0_in(19),
      Q => m_axis_tdata(19),
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\m_axis_tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_2_n_0\,
      D => m_axis_tdata0_in(1),
      Q => m_axis_tdata(1),
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\m_axis_tdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_2_n_0\,
      D => m_axis_tdata0_in(20),
      Q => m_axis_tdata(20),
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\m_axis_tdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_2_n_0\,
      D => m_axis_tdata0_in(21),
      Q => m_axis_tdata(21),
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\m_axis_tdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_2_n_0\,
      D => m_axis_tdata0_in(22),
      Q => m_axis_tdata(22),
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\m_axis_tdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_2_n_0\,
      D => m_axis_tdata0_in(23),
      Q => m_axis_tdata(23),
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\m_axis_tdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_2_n_0\,
      D => m_axis_tdata0_in(24),
      Q => m_axis_tdata(24),
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\m_axis_tdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_2_n_0\,
      D => m_axis_tdata0_in(25),
      Q => m_axis_tdata(25),
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\m_axis_tdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_2_n_0\,
      D => m_axis_tdata0_in(26),
      Q => m_axis_tdata(26),
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\m_axis_tdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_2_n_0\,
      D => m_axis_tdata0_in(27),
      Q => m_axis_tdata(27),
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\m_axis_tdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_2_n_0\,
      D => m_axis_tdata0_in(28),
      Q => m_axis_tdata(28),
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\m_axis_tdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_2_n_0\,
      D => m_axis_tdata0_in(29),
      Q => m_axis_tdata(29),
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\m_axis_tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_2_n_0\,
      D => m_axis_tdata0_in(2),
      Q => m_axis_tdata(2),
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\m_axis_tdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_2_n_0\,
      D => m_axis_tdata0_in(30),
      Q => m_axis_tdata(30),
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\m_axis_tdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_2_n_0\,
      D => m_axis_tdata0_in(31),
      Q => m_axis_tdata(31),
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\m_axis_tdata_reg[31]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axis_tdata[31]_i_13_n_0\,
      I1 => \m_axis_tdata[31]_i_14_n_0\,
      O => \m_axis_tdata_reg[31]_i_6_n_0\,
      S => \i2s_chan_cnt_reg_n_0_[2]\
    );
\m_axis_tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_2_n_0\,
      D => m_axis_tdata0_in(3),
      Q => m_axis_tdata(3),
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\m_axis_tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_2_n_0\,
      D => m_axis_tdata0_in(4),
      Q => m_axis_tdata(4),
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\m_axis_tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_2_n_0\,
      D => m_axis_tdata0_in(5),
      Q => m_axis_tdata(5),
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\m_axis_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_2_n_0\,
      D => m_axis_tdata0_in(6),
      Q => m_axis_tdata(6),
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\m_axis_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_2_n_0\,
      D => m_axis_tdata0_in(7),
      Q => m_axis_tdata(7),
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\m_axis_tdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_2_n_0\,
      D => m_axis_tdata0_in(8),
      Q => m_axis_tdata(8),
      R => \m_axis_tdata[31]_i_1_n_0\
    );
\m_axis_tdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_2_n_0\,
      D => m_axis_tdata0_in(9),
      Q => m_axis_tdata(9),
      R => \m_axis_tdata[31]_i_1_n_0\
    );
m_axis_tvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02FE020200000000"
    )
        port map (
      I0 => \^m_axis_tvalid_reg_0\,
      I1 => \m_axis_tdata[31]_i_2_n_0\,
      I2 => m_axis_tvalid_i_2_n_0,
      I3 => m_axis_tvalid_i_3_n_0,
      I4 => m_axis_tvalid_i_4_n_0,
      I5 => p_4_in(1),
      O => m_axis_tvalid_i_1_n_0
    );
m_axis_tvalid_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \i2s_fsm_state__0\(2),
      I1 => m_axis_tready,
      I2 => \^m_axis_tvalid_reg_0\,
      O => m_axis_tvalid_i_2_n_0
    );
m_axis_tvalid_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[4]\,
      I1 => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[3]\,
      I2 => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[0]\,
      I3 => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[1]\,
      I4 => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[2]\,
      O => m_axis_tvalid_i_3_n_0
    );
m_axis_tvalid_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000040000"
    )
        port map (
      I0 => \i2s_fsm_state__0\(2),
      I1 => m_axis_tvalid_i_5_n_0,
      I2 => \^i2s_bclk_reg_0\,
      I3 => i2s_bclk_i_2_n_0,
      I4 => \m_axis_tdata_reg[31]_i_6_n_0\,
      I5 => p_0_in_0,
      O => m_axis_tvalid_i_4_n_0
    );
m_axis_tvalid_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \i2s_fsm_state__0\(1),
      I1 => \i2s_fsm_state__0\(0),
      O => m_axis_tvalid_i_5_n_0
    );
m_axis_tvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_axis_tvalid_i_1_n_0,
      Q => \^m_axis_tvalid_reg_0\,
      R => '0'
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
      INIT => X"FFFF88880FFF8888"
    )
        port map (
      I0 => s_axi_bready,
      I1 => \^s_axi_bvalid\,
      I2 => s_axi_awvalid,
      I3 => s_axi_wvalid,
      I4 => s_axi_aw_en_reg_n_0,
      I5 => \^s_axi_awready\,
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
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => \^s_axi_awready\,
      I2 => s_axi_aw_en_reg_n_0,
      I3 => s_axi_wvalid,
      I4 => s_axi_awvalid,
      I5 => s_axi_awaddr_q(2),
      O => \s_axi_awaddr_q[2]_i_1_n_0\
    );
\s_axi_awaddr_q[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => s_axi_awaddr(1),
      I1 => \^s_axi_awready\,
      I2 => s_axi_aw_en_reg_n_0,
      I3 => s_axi_wvalid,
      I4 => s_axi_awvalid,
      I5 => s_axi_awaddr_q(3),
      O => \s_axi_awaddr_q[3]_i_1_n_0\
    );
\s_axi_awaddr_q[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => \^s_axi_awready\,
      I2 => s_axi_aw_en_reg_n_0,
      I3 => s_axi_wvalid,
      I4 => s_axi_awvalid,
      I5 => s_axi_awaddr_q(4),
      O => \s_axi_awaddr_q[4]_i_1_n_0\
    );
\s_axi_awaddr_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_axi_awaddr_q[2]_i_1_n_0\,
      Q => s_axi_awaddr_q(2),
      R => p_0_in
    );
\s_axi_awaddr_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_axi_awaddr_q[3]_i_1_n_0\,
      Q => s_axi_awaddr_q(3),
      R => p_0_in
    );
\s_axi_awaddr_q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_axi_awaddr_q[4]_i_1_n_0\,
      Q => s_axi_awaddr_q(4),
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
      INIT => X"4000"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => s_axi_aw_en_reg_n_0,
      I2 => s_axi_wvalid,
      I3 => s_axi_awvalid,
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
      INIT => X"FFFF0400"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => i2s_lrclk_div(0),
      I4 => \s_axi_rdata[0]_i_2_n_0\,
      O => s_axi_rdata_3(0)
    );
\s_axi_rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E0E0C0002020C00"
    )
        port map (
      I0 => p_4_in(0),
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => i2s_mclk_div(0),
      I4 => sel0(0),
      I5 => i2s_bclk_div(0),
      O => \s_axi_rdata[0]_i_2_n_0\
    );
\s_axi_rdata[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02300200"
    )
        port map (
      I0 => p_4_in(10),
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => sel0(0),
      I4 => i2s_lrclk_div(10),
      O => s_axi_rdata_3(10)
    );
\s_axi_rdata[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02300200"
    )
        port map (
      I0 => p_4_in(11),
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => sel0(0),
      I4 => i2s_lrclk_div(11),
      O => s_axi_rdata_3(11)
    );
\s_axi_rdata[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02300200"
    )
        port map (
      I0 => p_4_in(12),
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => sel0(0),
      I4 => i2s_lrclk_div(12),
      O => s_axi_rdata_3(12)
    );
\s_axi_rdata[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02300200"
    )
        port map (
      I0 => p_4_in(13),
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => sel0(0),
      I4 => i2s_lrclk_div(13),
      O => s_axi_rdata_3(13)
    );
\s_axi_rdata[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02300200"
    )
        port map (
      I0 => p_4_in(14),
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => sel0(0),
      I4 => i2s_lrclk_div(14),
      O => s_axi_rdata_3(14)
    );
\s_axi_rdata[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02300200"
    )
        port map (
      I0 => p_4_in(15),
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => sel0(0),
      I4 => i2s_lrclk_div(15),
      O => s_axi_rdata_3(15)
    );
\s_axi_rdata[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1011"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(1),
      I2 => i2s_chan_max(0),
      I3 => sel0(0),
      O => s_axi_rdata_3(16)
    );
\s_axi_rdata[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => i2s_chan_max(1),
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => sel0(0),
      O => s_axi_rdata_3(17)
    );
\s_axi_rdata[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => i2s_chan_max(2),
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => sel0(0),
      O => s_axi_rdata_3(18)
    );
\s_axi_rdata[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0400"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => i2s_lrclk_div(1),
      I4 => \s_axi_rdata[1]_i_2_n_0\,
      O => s_axi_rdata_3(1)
    );
\s_axi_rdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E0E0C0002020C00"
    )
        port map (
      I0 => p_4_in(1),
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => i2s_mclk_div(1),
      I4 => sel0(0),
      I5 => i2s_bclk_div(1),
      O => \s_axi_rdata[1]_i_2_n_0\
    );
\s_axi_rdata[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => p_4_in(20),
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => sel0(0),
      O => s_axi_rdata_3(20)
    );
\s_axi_rdata[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0400"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => i2s_lrclk_div(2),
      I4 => \s_axi_rdata[2]_i_2_n_0\,
      O => s_axi_rdata_3(2)
    );
\s_axi_rdata[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E0E0C0002020C00"
    )
        port map (
      I0 => p_4_in(2),
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => i2s_mclk_div(2),
      I4 => sel0(0),
      I5 => i2s_bclk_div(2),
      O => \s_axi_rdata[2]_i_2_n_0\
    );
\s_axi_rdata[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0400"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => i2s_lrclk_div(3),
      I4 => \s_axi_rdata[3]_i_2_n_0\,
      O => s_axi_rdata_3(3)
    );
\s_axi_rdata[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E0E0C0002020C00"
    )
        port map (
      I0 => p_4_in(3),
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => i2s_mclk_div(3),
      I4 => sel0(0),
      I5 => i2s_bclk_div(3),
      O => \s_axi_rdata[3]_i_2_n_0\
    );
\s_axi_rdata[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0400"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => i2s_lrclk_div(4),
      I4 => \s_axi_rdata[4]_i_2_n_0\,
      O => s_axi_rdata_3(4)
    );
\s_axi_rdata[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E0E0C0002020C00"
    )
        port map (
      I0 => p_4_in(4),
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => i2s_mclk_div(4),
      I4 => sel0(0),
      I5 => i2s_bclk_div(4),
      O => \s_axi_rdata[4]_i_2_n_0\
    );
\s_axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C0C2C2000002C20"
    )
        port map (
      I0 => i2s_lrclk_div(5),
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => i2s_mclk_div(5),
      I4 => sel0(0),
      I5 => i2s_bclk_div(5),
      O => s_axi_rdata_3(5)
    );
\s_axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C0C2C2000002C20"
    )
        port map (
      I0 => i2s_lrclk_div(6),
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => i2s_mclk_div(6),
      I4 => sel0(0),
      I5 => i2s_bclk_div(6),
      O => s_axi_rdata_3(6)
    );
\s_axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C002C2C0C002020"
    )
        port map (
      I0 => i2s_lrclk_div(7),
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => i2s_bclk_div(7),
      I4 => sel0(0),
      I5 => i2s_mclk_div(7),
      O => s_axi_rdata_3(7)
    );
\s_axi_rdata[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02300200"
    )
        port map (
      I0 => p_4_in(8),
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => sel0(0),
      I4 => i2s_lrclk_div(8),
      O => s_axi_rdata_3(8)
    );
\s_axi_rdata[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02300200"
    )
        port map (
      I0 => p_4_in(9),
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => sel0(0),
      I4 => i2s_lrclk_div(9),
      O => s_axi_rdata_3(9)
    );
\s_axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => s_axi_rdata_3(0),
      Q => s_axi_rdata(0),
      R => p_0_in
    );
\s_axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => s_axi_rdata_3(10),
      Q => s_axi_rdata(10),
      R => p_0_in
    );
\s_axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => s_axi_rdata_3(11),
      Q => s_axi_rdata(11),
      R => p_0_in
    );
\s_axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => s_axi_rdata_3(12),
      Q => s_axi_rdata(12),
      R => p_0_in
    );
\s_axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => s_axi_rdata_3(13),
      Q => s_axi_rdata(13),
      R => p_0_in
    );
\s_axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => s_axi_rdata_3(14),
      Q => s_axi_rdata(14),
      R => p_0_in
    );
\s_axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => s_axi_rdata_3(15),
      Q => s_axi_rdata(15),
      R => p_0_in
    );
\s_axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => s_axi_rdata_3(16),
      Q => s_axi_rdata(16),
      R => p_0_in
    );
\s_axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => s_axi_rdata_3(17),
      Q => s_axi_rdata(17),
      R => p_0_in
    );
\s_axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => s_axi_rdata_3(18),
      Q => s_axi_rdata(18),
      R => p_0_in
    );
\s_axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => s_axi_rdata_3(1),
      Q => s_axi_rdata(1),
      R => p_0_in
    );
\s_axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => s_axi_rdata_3(20),
      Q => s_axi_rdata(19),
      R => p_0_in
    );
\s_axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => s_axi_rdata_3(2),
      Q => s_axi_rdata(2),
      R => p_0_in
    );
\s_axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => s_axi_rdata_3(3),
      Q => s_axi_rdata(3),
      R => p_0_in
    );
\s_axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => s_axi_rdata_3(4),
      Q => s_axi_rdata(4),
      R => p_0_in
    );
\s_axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => s_axi_rdata_3(5),
      Q => s_axi_rdata(5),
      R => p_0_in
    );
\s_axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => s_axi_rdata_3(6),
      Q => s_axi_rdata(6),
      R => p_0_in
    );
\s_axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => s_axi_rdata_3(7),
      Q => s_axi_rdata(7),
      R => p_0_in
    );
\s_axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => s_axi_rdata_3(8),
      Q => s_axi_rdata(8),
      R => p_0_in
    );
\s_axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => s_axi_rdata_3(9),
      Q => s_axi_rdata(9),
      R => p_0_in
    );
s_axi_reg_rden: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => s_axi_arvalid,
      I2 => \^s_axi_rvalid\,
      O => \s_axi_reg_rden__0\
    );
s_axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \^s_axi_arready\,
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
      I2 => s_axi_wvalid,
      I3 => s_axi_awvalid,
      O => s_axi_wready0
    );
s_axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axi_wready0,
      Q => \^s_axi_wready\,
      R => p_0_in
    );
s_axis_tready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEE22E200000000"
    )
        port map (
      I0 => \^s_axis_tready_reg_0\,
      I1 => s_axis_tready_i_2_n_0,
      I2 => s_axis_tready_i_3_n_0,
      I3 => s_axis_tready_i_4_n_0,
      I4 => s_axis_tready_i_5_n_0,
      I5 => p_4_in(1),
      O => s_axis_tready_i_1_n_0
    );
s_axis_tready_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[0]\,
      I1 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[1]\,
      I2 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[5]\,
      I3 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[2]\,
      I4 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[4]\,
      I5 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[3]\,
      O => s_axis_tready_i_10_n_0
    );
s_axis_tready_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEEEEEEAAAAAAAA"
    )
        port map (
      I0 => s_axis_tready_i_6_n_0,
      I1 => s_axis_tready_i_7_n_0,
      I2 => s_axis_tready_i_8_n_0,
      I3 => \m_axis_tdata_reg[31]_i_6_n_0\,
      I4 => s_axis_tready_i_9_n_0,
      I5 => i2s_paused_i_3_n_0,
      O => s_axis_tready_i_2_n_0
    );
s_axis_tready_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[1]\,
      I1 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[5]\,
      I2 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[2]\,
      I3 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[4]\,
      I4 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[3]\,
      O => s_axis_tready_i_3_n_0
    );
s_axis_tready_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFFFFFFFFFF"
    )
        port map (
      I0 => \i2s_fsm_state__0\(2),
      I1 => \m_axis_tdata_reg[31]_i_6_n_0\,
      I2 => s_axis_tready_i_10_n_0,
      I3 => m_axis_tvalid_i_5_n_0,
      I4 => i2s_bclk_i_2_n_0,
      I5 => \^i2s_bclk_reg_0\,
      O => s_axis_tready_i_4_n_0
    );
s_axis_tready_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => \i2s_fsm_state__0\(0),
      I1 => \i2s_fsm_state__0\(2),
      I2 => \^s_axis_tready_reg_0\,
      I3 => s_axis_tready_i_10_n_0,
      I4 => \i2s_fsm_state__0\(1),
      O => s_axis_tready_i_5_n_0
    );
s_axis_tready_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005555F404"
    )
        port map (
      I0 => \i2s_fsm_state__0\(1),
      I1 => s_axis_tready_i_10_n_0,
      I2 => \^s_axis_tready_reg_0\,
      I3 => s_axis_tvalid,
      I4 => \i2s_fsm_state__0\(2),
      I5 => \i2s_fsm_state__0\(0),
      O => s_axis_tready_i_6_n_0
    );
s_axis_tready_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s_axis_tready_reg_0\,
      I1 => s_axis_tvalid,
      O => s_axis_tready_i_7_n_0
    );
s_axis_tready_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => \m_axis_tdata[31]_i_8_n_0\,
      I1 => \m_axis_tdata[31]_i_9_n_0\,
      I2 => \m_axis_tdata[31]_i_10_n_0\,
      I3 => \m_axis_tdata[31]_i_11_n_0\,
      I4 => \m_axis_tdata[31]_i_12_n_0\,
      I5 => \^i2s_bclk_reg_0\,
      O => s_axis_tready_i_8_n_0
    );
s_axis_tready_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s_axis_tready_i_3_n_0,
      I1 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[0]\,
      I2 => \i2s_fsm_state__0\(1),
      O => s_axis_tready_i_9_n_0
    );
s_axis_tready_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tready_i_1_n_0,
      Q => \^s_axis_tready_reg_0\,
      R => '0'
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
