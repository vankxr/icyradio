-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Sun Oct  8 19:58:36 2023
-- Host        : xubuntu-dev running 64-bit Ubuntu 20.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/joao/icyradio/firmware/icyradio.gen/sources_1/bd/icyradio/ip/icyradio_axi_rf_timestamping_0_0/icyradio_axi_rf_timestamping_0_0_sim_netlist.vhdl
-- Design      : icyradio_axi_rf_timestamping_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_rf_timestamping_0_0_axi_rf_timestamping is
  port (
    s_axi_wready : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rvalid_reg_0 : out STD_LOGIC;
    rx_enable_reg_0 : out STD_LOGIC;
    tx_enable : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    aclk : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    rx_data_ready : in STD_LOGIC;
    tx_data_ready : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    rx_dma_xfer_req : in STD_LOGIC;
    tx_dma_data_ready : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    tx_fifo_underflow : in STD_LOGIC;
    rx_fifo_overflow : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_axi_rf_timestamping_0_0_axi_rf_timestamping : entity is "axi_rf_timestamping";
end icyradio_axi_rf_timestamping_0_0_axi_rf_timestamping;

architecture STRUCTURE of icyradio_axi_rf_timestamping_0_0_axi_rf_timestamping is
  signal cnt0 : STD_LOGIC_VECTOR ( 63 downto 1 );
  signal \cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[10]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[11]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[12]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[13]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[14]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[15]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[16]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[17]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[18]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[19]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[20]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[21]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[22]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[23]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[24]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[25]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[26]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[27]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[28]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[29]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[30]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[31]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[32]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[32]_i_3_n_0\ : STD_LOGIC;
  signal \cnt[33]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[33]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[34]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[34]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[35]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[35]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[36]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[36]_i_3_n_0\ : STD_LOGIC;
  signal \cnt[37]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[37]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[38]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[38]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[39]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[39]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[40]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[41]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[42]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[43]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[44]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[45]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[46]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[47]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[47]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[48]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[49]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[50]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[51]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[52]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[53]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[54]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[55]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[55]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[56]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[57]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[58]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[59]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[60]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[61]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[62]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[63]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[63]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[63]_i_4_n_0\ : STD_LOGIC;
  signal \cnt[63]_i_5_n_0\ : STD_LOGIC;
  signal \cnt[63]_i_6_n_0\ : STD_LOGIC;
  signal \cnt[63]_i_7_n_0\ : STD_LOGIC;
  signal \cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[8]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[9]_i_1_n_0\ : STD_LOGIC;
  signal cnt_en_i_1_n_0 : STD_LOGIC;
  signal cnt_en_q : STD_LOGIC;
  signal cnt_en_q_i_1_n_0 : STD_LOGIC;
  signal cnt_latch_arm_req_i_1_n_0 : STD_LOGIC;
  signal cnt_latch_arm_req_i_2_n_0 : STD_LOGIC;
  signal cnt_latch_armed0 : STD_LOGIC;
  signal cnt_latch_armed_i_1_n_0 : STD_LOGIC;
  signal cnt_latch_valid_i_1_n_0 : STD_LOGIC;
  signal cnt_latched0 : STD_LOGIC;
  signal \cnt_latched_reg_n_0_[0]\ : STD_LOGIC;
  signal \cnt_latched_reg_n_0_[10]\ : STD_LOGIC;
  signal \cnt_latched_reg_n_0_[11]\ : STD_LOGIC;
  signal \cnt_latched_reg_n_0_[12]\ : STD_LOGIC;
  signal \cnt_latched_reg_n_0_[13]\ : STD_LOGIC;
  signal \cnt_latched_reg_n_0_[14]\ : STD_LOGIC;
  signal \cnt_latched_reg_n_0_[15]\ : STD_LOGIC;
  signal \cnt_latched_reg_n_0_[16]\ : STD_LOGIC;
  signal \cnt_latched_reg_n_0_[17]\ : STD_LOGIC;
  signal \cnt_latched_reg_n_0_[18]\ : STD_LOGIC;
  signal \cnt_latched_reg_n_0_[19]\ : STD_LOGIC;
  signal \cnt_latched_reg_n_0_[1]\ : STD_LOGIC;
  signal \cnt_latched_reg_n_0_[20]\ : STD_LOGIC;
  signal \cnt_latched_reg_n_0_[21]\ : STD_LOGIC;
  signal \cnt_latched_reg_n_0_[22]\ : STD_LOGIC;
  signal \cnt_latched_reg_n_0_[23]\ : STD_LOGIC;
  signal \cnt_latched_reg_n_0_[24]\ : STD_LOGIC;
  signal \cnt_latched_reg_n_0_[25]\ : STD_LOGIC;
  signal \cnt_latched_reg_n_0_[26]\ : STD_LOGIC;
  signal \cnt_latched_reg_n_0_[27]\ : STD_LOGIC;
  signal \cnt_latched_reg_n_0_[28]\ : STD_LOGIC;
  signal \cnt_latched_reg_n_0_[29]\ : STD_LOGIC;
  signal \cnt_latched_reg_n_0_[2]\ : STD_LOGIC;
  signal \cnt_latched_reg_n_0_[30]\ : STD_LOGIC;
  signal \cnt_latched_reg_n_0_[31]\ : STD_LOGIC;
  signal \cnt_latched_reg_n_0_[3]\ : STD_LOGIC;
  signal \cnt_latched_reg_n_0_[4]\ : STD_LOGIC;
  signal \cnt_latched_reg_n_0_[5]\ : STD_LOGIC;
  signal \cnt_latched_reg_n_0_[6]\ : STD_LOGIC;
  signal \cnt_latched_reg_n_0_[7]\ : STD_LOGIC;
  signal \cnt_latched_reg_n_0_[8]\ : STD_LOGIC;
  signal \cnt_latched_reg_n_0_[9]\ : STD_LOGIC;
  signal cnt_rd_buf : STD_LOGIC;
  signal \cnt_rd_buf_reg_n_0_[0]\ : STD_LOGIC;
  signal \cnt_rd_buf_reg_n_0_[10]\ : STD_LOGIC;
  signal \cnt_rd_buf_reg_n_0_[11]\ : STD_LOGIC;
  signal \cnt_rd_buf_reg_n_0_[12]\ : STD_LOGIC;
  signal \cnt_rd_buf_reg_n_0_[13]\ : STD_LOGIC;
  signal \cnt_rd_buf_reg_n_0_[14]\ : STD_LOGIC;
  signal \cnt_rd_buf_reg_n_0_[15]\ : STD_LOGIC;
  signal \cnt_rd_buf_reg_n_0_[16]\ : STD_LOGIC;
  signal \cnt_rd_buf_reg_n_0_[17]\ : STD_LOGIC;
  signal \cnt_rd_buf_reg_n_0_[18]\ : STD_LOGIC;
  signal \cnt_rd_buf_reg_n_0_[19]\ : STD_LOGIC;
  signal \cnt_rd_buf_reg_n_0_[1]\ : STD_LOGIC;
  signal \cnt_rd_buf_reg_n_0_[20]\ : STD_LOGIC;
  signal \cnt_rd_buf_reg_n_0_[21]\ : STD_LOGIC;
  signal \cnt_rd_buf_reg_n_0_[22]\ : STD_LOGIC;
  signal \cnt_rd_buf_reg_n_0_[23]\ : STD_LOGIC;
  signal \cnt_rd_buf_reg_n_0_[24]\ : STD_LOGIC;
  signal \cnt_rd_buf_reg_n_0_[25]\ : STD_LOGIC;
  signal \cnt_rd_buf_reg_n_0_[26]\ : STD_LOGIC;
  signal \cnt_rd_buf_reg_n_0_[27]\ : STD_LOGIC;
  signal \cnt_rd_buf_reg_n_0_[28]\ : STD_LOGIC;
  signal \cnt_rd_buf_reg_n_0_[29]\ : STD_LOGIC;
  signal \cnt_rd_buf_reg_n_0_[2]\ : STD_LOGIC;
  signal \cnt_rd_buf_reg_n_0_[30]\ : STD_LOGIC;
  signal \cnt_rd_buf_reg_n_0_[31]\ : STD_LOGIC;
  signal \cnt_rd_buf_reg_n_0_[3]\ : STD_LOGIC;
  signal \cnt_rd_buf_reg_n_0_[4]\ : STD_LOGIC;
  signal \cnt_rd_buf_reg_n_0_[5]\ : STD_LOGIC;
  signal \cnt_rd_buf_reg_n_0_[6]\ : STD_LOGIC;
  signal \cnt_rd_buf_reg_n_0_[7]\ : STD_LOGIC;
  signal \cnt_rd_buf_reg_n_0_[8]\ : STD_LOGIC;
  signal \cnt_rd_buf_reg_n_0_[9]\ : STD_LOGIC;
  signal \cnt_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_reg[20]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_reg[20]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_reg[28]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_reg[28]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_reg[28]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_reg[32]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_reg[32]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_reg[32]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_reg[32]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_reg[36]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_reg[36]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_reg[36]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_reg[36]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_reg[40]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_reg[40]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_reg[40]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_reg[40]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_reg[44]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_reg[44]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_reg[44]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_reg[44]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_reg[48]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_reg[48]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_reg[48]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_reg[48]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_reg[52]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_reg[52]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_reg[52]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_reg[52]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_reg[56]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_reg[56]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_reg[56]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_reg[56]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_reg[60]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_reg[60]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_reg[60]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_reg[60]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_reg[63]_i_3_n_2\ : STD_LOGIC;
  signal \cnt_reg[63]_i_3_n_3\ : STD_LOGIC;
  signal \cnt_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[10]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[11]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[12]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[13]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[14]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[15]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[16]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[17]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[18]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[19]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[20]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[21]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[22]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[23]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[24]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[25]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[26]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[27]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[28]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[29]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[30]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[31]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[8]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[9]\ : STD_LOGIC;
  signal \cnt_rx[15]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_rx[23]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_rx[31]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_rx[31]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_rx[39]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_rx[47]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_rx[55]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_rx[63]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_rx[63]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_rx[7]_i_1_n_0\ : STD_LOGIC;
  signal cnt_rx_en_i_1_n_0 : STD_LOGIC;
  signal \cnt_rx_reg_n_0_[0]\ : STD_LOGIC;
  signal \cnt_rx_reg_n_0_[10]\ : STD_LOGIC;
  signal \cnt_rx_reg_n_0_[11]\ : STD_LOGIC;
  signal \cnt_rx_reg_n_0_[12]\ : STD_LOGIC;
  signal \cnt_rx_reg_n_0_[13]\ : STD_LOGIC;
  signal \cnt_rx_reg_n_0_[14]\ : STD_LOGIC;
  signal \cnt_rx_reg_n_0_[15]\ : STD_LOGIC;
  signal \cnt_rx_reg_n_0_[16]\ : STD_LOGIC;
  signal \cnt_rx_reg_n_0_[17]\ : STD_LOGIC;
  signal \cnt_rx_reg_n_0_[18]\ : STD_LOGIC;
  signal \cnt_rx_reg_n_0_[19]\ : STD_LOGIC;
  signal \cnt_rx_reg_n_0_[1]\ : STD_LOGIC;
  signal \cnt_rx_reg_n_0_[20]\ : STD_LOGIC;
  signal \cnt_rx_reg_n_0_[21]\ : STD_LOGIC;
  signal \cnt_rx_reg_n_0_[22]\ : STD_LOGIC;
  signal \cnt_rx_reg_n_0_[23]\ : STD_LOGIC;
  signal \cnt_rx_reg_n_0_[24]\ : STD_LOGIC;
  signal \cnt_rx_reg_n_0_[25]\ : STD_LOGIC;
  signal \cnt_rx_reg_n_0_[26]\ : STD_LOGIC;
  signal \cnt_rx_reg_n_0_[27]\ : STD_LOGIC;
  signal \cnt_rx_reg_n_0_[28]\ : STD_LOGIC;
  signal \cnt_rx_reg_n_0_[29]\ : STD_LOGIC;
  signal \cnt_rx_reg_n_0_[2]\ : STD_LOGIC;
  signal \cnt_rx_reg_n_0_[30]\ : STD_LOGIC;
  signal \cnt_rx_reg_n_0_[31]\ : STD_LOGIC;
  signal \cnt_rx_reg_n_0_[3]\ : STD_LOGIC;
  signal \cnt_rx_reg_n_0_[4]\ : STD_LOGIC;
  signal \cnt_rx_reg_n_0_[5]\ : STD_LOGIC;
  signal \cnt_rx_reg_n_0_[6]\ : STD_LOGIC;
  signal \cnt_rx_reg_n_0_[7]\ : STD_LOGIC;
  signal \cnt_rx_reg_n_0_[8]\ : STD_LOGIC;
  signal \cnt_rx_reg_n_0_[9]\ : STD_LOGIC;
  signal \cnt_tx[15]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_tx[23]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_tx[31]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_tx[31]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_tx[39]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_tx[47]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_tx[55]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_tx[63]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_tx[63]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_tx[7]_i_1_n_0\ : STD_LOGIC;
  signal cnt_tx_en_i_1_n_0 : STD_LOGIC;
  signal \cnt_tx_reg_n_0_[0]\ : STD_LOGIC;
  signal \cnt_tx_reg_n_0_[10]\ : STD_LOGIC;
  signal \cnt_tx_reg_n_0_[11]\ : STD_LOGIC;
  signal \cnt_tx_reg_n_0_[12]\ : STD_LOGIC;
  signal \cnt_tx_reg_n_0_[13]\ : STD_LOGIC;
  signal \cnt_tx_reg_n_0_[14]\ : STD_LOGIC;
  signal \cnt_tx_reg_n_0_[15]\ : STD_LOGIC;
  signal \cnt_tx_reg_n_0_[16]\ : STD_LOGIC;
  signal \cnt_tx_reg_n_0_[17]\ : STD_LOGIC;
  signal \cnt_tx_reg_n_0_[18]\ : STD_LOGIC;
  signal \cnt_tx_reg_n_0_[19]\ : STD_LOGIC;
  signal \cnt_tx_reg_n_0_[1]\ : STD_LOGIC;
  signal \cnt_tx_reg_n_0_[20]\ : STD_LOGIC;
  signal \cnt_tx_reg_n_0_[21]\ : STD_LOGIC;
  signal \cnt_tx_reg_n_0_[22]\ : STD_LOGIC;
  signal \cnt_tx_reg_n_0_[23]\ : STD_LOGIC;
  signal \cnt_tx_reg_n_0_[24]\ : STD_LOGIC;
  signal \cnt_tx_reg_n_0_[25]\ : STD_LOGIC;
  signal \cnt_tx_reg_n_0_[26]\ : STD_LOGIC;
  signal \cnt_tx_reg_n_0_[27]\ : STD_LOGIC;
  signal \cnt_tx_reg_n_0_[28]\ : STD_LOGIC;
  signal \cnt_tx_reg_n_0_[29]\ : STD_LOGIC;
  signal \cnt_tx_reg_n_0_[2]\ : STD_LOGIC;
  signal \cnt_tx_reg_n_0_[30]\ : STD_LOGIC;
  signal \cnt_tx_reg_n_0_[31]\ : STD_LOGIC;
  signal \cnt_tx_reg_n_0_[3]\ : STD_LOGIC;
  signal \cnt_tx_reg_n_0_[4]\ : STD_LOGIC;
  signal \cnt_tx_reg_n_0_[5]\ : STD_LOGIC;
  signal \cnt_tx_reg_n_0_[6]\ : STD_LOGIC;
  signal \cnt_tx_reg_n_0_[7]\ : STD_LOGIC;
  signal \cnt_tx_reg_n_0_[8]\ : STD_LOGIC;
  signal \cnt_tx_reg_n_0_[9]\ : STD_LOGIC;
  signal data5 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data7 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data9 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal p_4_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_6_in : STD_LOGIC_VECTOR ( 27 downto 18 );
  signal rx_data_ready_ovr_en : STD_LOGIC;
  signal rx_data_ready_ovr_val_reg_n_0 : STD_LOGIC;
  signal rx_data_ready_stky : STD_LOGIC;
  signal rx_data_ready_stky_i_1_n_0 : STD_LOGIC;
  signal rx_dma_xfer_req_ovr_en : STD_LOGIC;
  signal rx_dma_xfer_req_ovr_val : STD_LOGIC;
  signal rx_dma_xfer_req_stky : STD_LOGIC;
  signal rx_dma_xfer_req_stky_i_1_n_0 : STD_LOGIC;
  signal rx_enable1 : STD_LOGIC;
  signal \rx_enable1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \rx_enable1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \rx_enable1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \rx_enable1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \rx_enable1_carry__0_n_0\ : STD_LOGIC;
  signal \rx_enable1_carry__0_n_1\ : STD_LOGIC;
  signal \rx_enable1_carry__0_n_2\ : STD_LOGIC;
  signal \rx_enable1_carry__0_n_3\ : STD_LOGIC;
  signal \rx_enable1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \rx_enable1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \rx_enable1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \rx_enable1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \rx_enable1_carry__1_n_0\ : STD_LOGIC;
  signal \rx_enable1_carry__1_n_1\ : STD_LOGIC;
  signal \rx_enable1_carry__1_n_2\ : STD_LOGIC;
  signal \rx_enable1_carry__1_n_3\ : STD_LOGIC;
  signal \rx_enable1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \rx_enable1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \rx_enable1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \rx_enable1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \rx_enable1_carry__2_n_0\ : STD_LOGIC;
  signal \rx_enable1_carry__2_n_1\ : STD_LOGIC;
  signal \rx_enable1_carry__2_n_2\ : STD_LOGIC;
  signal \rx_enable1_carry__2_n_3\ : STD_LOGIC;
  signal \rx_enable1_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \rx_enable1_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \rx_enable1_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \rx_enable1_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \rx_enable1_carry__3_n_0\ : STD_LOGIC;
  signal \rx_enable1_carry__3_n_1\ : STD_LOGIC;
  signal \rx_enable1_carry__3_n_2\ : STD_LOGIC;
  signal \rx_enable1_carry__3_n_3\ : STD_LOGIC;
  signal \rx_enable1_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \rx_enable1_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \rx_enable1_carry__4_n_3\ : STD_LOGIC;
  signal rx_enable1_carry_i_1_n_0 : STD_LOGIC;
  signal rx_enable1_carry_i_2_n_0 : STD_LOGIC;
  signal rx_enable1_carry_i_3_n_0 : STD_LOGIC;
  signal rx_enable1_carry_i_4_n_0 : STD_LOGIC;
  signal rx_enable1_carry_n_0 : STD_LOGIC;
  signal rx_enable1_carry_n_1 : STD_LOGIC;
  signal rx_enable1_carry_n_2 : STD_LOGIC;
  signal rx_enable1_carry_n_3 : STD_LOGIC;
  signal rx_enable_i_1_n_0 : STD_LOGIC;
  signal rx_enable_i_2_n_0 : STD_LOGIC;
  signal rx_enable_i_3_n_0 : STD_LOGIC;
  signal rx_enable_i_4_n_0 : STD_LOGIC;
  signal \^rx_enable_reg_0\ : STD_LOGIC;
  signal rx_fifo_overflow_stky : STD_LOGIC;
  signal rx_fifo_overflow_stky_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal s_axi_arready0 : STD_LOGIC;
  signal s_axi_aw_en_i_1_n_0 : STD_LOGIC;
  signal s_axi_aw_en_reg_n_0 : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal s_axi_awready0 : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal s_axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \s_axi_rdata[0]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[0]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[10]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[10]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[10]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[11]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[11]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[11]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[12]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[12]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[12]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[12]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[13]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[13]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[13]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[13]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[14]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[14]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[14]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[14]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[15]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[15]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[15]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[15]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[16]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[16]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[16]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[16]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[17]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[17]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[17]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[17]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[18]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[18]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[18]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[18]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[19]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[19]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[19]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[19]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[1]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[1]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[20]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[20]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[20]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[21]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[21]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[21]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[21]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[22]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[22]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[22]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[23]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[23]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[23]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[24]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[24]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[24]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[25]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[25]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[25]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[26]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[26]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[26]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[27]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[27]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[27]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[27]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[28]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[28]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[28]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[29]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[29]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[29]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[2]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[2]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[30]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[30]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[30]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[31]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[31]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[31]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[3]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[3]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[4]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[4]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[5]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[5]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[6]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[6]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[7]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[7]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[8]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[8]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[8]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[9]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[9]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[9]_i_3_n_0\ : STD_LOGIC;
  signal s_axi_reg_rden : STD_LOGIC;
  signal s_axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_rvalid_reg_0\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal s_axi_wready0 : STD_LOGIC;
  signal tx_data_ready_ovr_en : STD_LOGIC;
  signal tx_data_ready_ovr_val : STD_LOGIC;
  signal tx_data_ready_stky : STD_LOGIC;
  signal tx_data_ready_stky_i_1_n_0 : STD_LOGIC;
  signal tx_dma_data_ready_ovr_en : STD_LOGIC;
  signal tx_dma_data_ready_ovr_en_i_2_n_0 : STD_LOGIC;
  signal tx_dma_data_ready_ovr_en_reg_n_0 : STD_LOGIC;
  signal tx_dma_data_ready_ovr_val : STD_LOGIC;
  signal tx_dma_data_ready_stky : STD_LOGIC;
  signal tx_dma_data_ready_stky_i_1_n_0 : STD_LOGIC;
  signal \^tx_enable\ : STD_LOGIC;
  signal tx_enable1 : STD_LOGIC;
  signal \tx_enable1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \tx_enable1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \tx_enable1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \tx_enable1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \tx_enable1_carry__0_n_0\ : STD_LOGIC;
  signal \tx_enable1_carry__0_n_1\ : STD_LOGIC;
  signal \tx_enable1_carry__0_n_2\ : STD_LOGIC;
  signal \tx_enable1_carry__0_n_3\ : STD_LOGIC;
  signal \tx_enable1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \tx_enable1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \tx_enable1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \tx_enable1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \tx_enable1_carry__1_n_0\ : STD_LOGIC;
  signal \tx_enable1_carry__1_n_1\ : STD_LOGIC;
  signal \tx_enable1_carry__1_n_2\ : STD_LOGIC;
  signal \tx_enable1_carry__1_n_3\ : STD_LOGIC;
  signal \tx_enable1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \tx_enable1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \tx_enable1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \tx_enable1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \tx_enable1_carry__2_n_0\ : STD_LOGIC;
  signal \tx_enable1_carry__2_n_1\ : STD_LOGIC;
  signal \tx_enable1_carry__2_n_2\ : STD_LOGIC;
  signal \tx_enable1_carry__2_n_3\ : STD_LOGIC;
  signal \tx_enable1_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \tx_enable1_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \tx_enable1_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \tx_enable1_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \tx_enable1_carry__3_n_0\ : STD_LOGIC;
  signal \tx_enable1_carry__3_n_1\ : STD_LOGIC;
  signal \tx_enable1_carry__3_n_2\ : STD_LOGIC;
  signal \tx_enable1_carry__3_n_3\ : STD_LOGIC;
  signal \tx_enable1_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \tx_enable1_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \tx_enable1_carry__4_n_3\ : STD_LOGIC;
  signal tx_enable1_carry_i_1_n_0 : STD_LOGIC;
  signal tx_enable1_carry_i_2_n_0 : STD_LOGIC;
  signal tx_enable1_carry_i_3_n_0 : STD_LOGIC;
  signal tx_enable1_carry_i_4_n_0 : STD_LOGIC;
  signal tx_enable1_carry_n_0 : STD_LOGIC;
  signal tx_enable1_carry_n_1 : STD_LOGIC;
  signal tx_enable1_carry_n_2 : STD_LOGIC;
  signal tx_enable1_carry_n_3 : STD_LOGIC;
  signal tx_enable_i_1_n_0 : STD_LOGIC;
  signal tx_enable_i_2_n_0 : STD_LOGIC;
  signal tx_enable_i_3_n_0 : STD_LOGIC;
  signal tx_enable_i_4_n_0 : STD_LOGIC;
  signal tx_fifo_underflow_stky : STD_LOGIC;
  signal tx_fifo_underflow_stky_i_1_n_0 : STD_LOGIC;
  signal \NLW_cnt_reg[63]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_cnt_reg[63]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_rx_enable1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rx_enable1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rx_enable1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rx_enable1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rx_enable1_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rx_enable1_carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_rx_enable1_carry__4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_tx_enable1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_tx_enable1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_tx_enable1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_tx_enable1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_tx_enable1_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_tx_enable1_carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_tx_enable1_carry__4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt[39]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cnt[47]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt[63]_i_5\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cnt[63]_i_7\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of cnt_en_i_1 : label is "soft_lutpair3";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \cnt_reg[12]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_reg[16]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_reg[20]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_reg[24]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_reg[28]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_reg[32]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_reg[36]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_reg[40]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_reg[44]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_reg[48]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_reg[4]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_reg[52]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_reg[56]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_reg[60]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_reg[63]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_reg[8]_i_2\ : label is 35;
  attribute SOFT_HLUTNM of \cnt_rx[31]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt_rx[63]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt_tx[31]_i_2\ : label is "soft_lutpair2";
  attribute X_INTERFACE_IGNORE : string;
  attribute X_INTERFACE_IGNORE of rx_enable_reg : label is "true";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s_axi_arready_reg : label is "xilinx.com:interface:aximm:1.0 s_axi ARREADY";
  attribute X_INTERFACE_INFO of s_axi_awready_reg : label is "xilinx.com:interface:aximm:1.0 s_axi AWREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid_reg : label is "xilinx.com:interface:aximm:1.0 s_axi BVALID";
  attribute SOFT_HLUTNM of \s_axi_rdata[21]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \s_axi_rdata[27]_i_3\ : label is "soft_lutpair4";
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
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[19]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[1]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[20]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[21]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[22]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[23]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[24]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[25]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[26]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[27]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[28]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[29]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[2]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[30]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[31]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[3]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[4]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[5]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[6]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[7]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[8]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[9]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of s_axi_rvalid_reg : label is "xilinx.com:interface:aximm:1.0 s_axi RVALID";
  attribute X_INTERFACE_INFO of s_axi_wready_reg : label is "xilinx.com:interface:aximm:1.0 s_axi WREADY";
  attribute SOFT_HLUTNM of tx_dma_data_ready_ovr_en_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of tx_enable_i_2 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of tx_enable_i_3 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of tx_enable_i_4 : label is "soft_lutpair6";
  attribute X_INTERFACE_IGNORE of tx_enable_reg : label is "true";
begin
  rx_enable_reg_0 <= \^rx_enable_reg_0\;
  s_axi_arready <= \^s_axi_arready\;
  s_axi_awready <= \^s_axi_awready\;
  s_axi_bvalid <= \^s_axi_bvalid\;
  s_axi_rvalid_reg_0 <= \^s_axi_rvalid_reg_0\;
  s_axi_wready <= \^s_axi_wready\;
  tx_enable <= \^tx_enable\;
\cnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08FF0808"
    )
        port map (
      I0 => p_6_in(24),
      I1 => cnt_en_q,
      I2 => \cnt_reg_n_0_[0]\,
      I3 => \cnt[32]_i_3_n_0\,
      I4 => \cnt[63]_i_4_n_0\,
      O => \cnt[0]_i_1_n_0\
    );
\cnt[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F4444444444444"
    )
        port map (
      I0 => \cnt[63]_i_2_n_0\,
      I1 => cnt0(10),
      I2 => s_axi_wdata(10),
      I3 => \cnt[47]_i_2_n_0\,
      I4 => \cnt[63]_i_4_n_0\,
      I5 => \cnt[63]_i_6_n_0\,
      O => \cnt[10]_i_1_n_0\
    );
\cnt[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F4444444444444"
    )
        port map (
      I0 => \cnt[63]_i_2_n_0\,
      I1 => cnt0(11),
      I2 => s_axi_wdata(11),
      I3 => \cnt[47]_i_2_n_0\,
      I4 => \cnt[63]_i_4_n_0\,
      I5 => \cnt[63]_i_6_n_0\,
      O => \cnt[11]_i_1_n_0\
    );
\cnt[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F4444444444444"
    )
        port map (
      I0 => \cnt[63]_i_2_n_0\,
      I1 => cnt0(12),
      I2 => s_axi_wdata(12),
      I3 => \cnt[47]_i_2_n_0\,
      I4 => \cnt[63]_i_4_n_0\,
      I5 => \cnt[63]_i_6_n_0\,
      O => \cnt[12]_i_1_n_0\
    );
\cnt[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F4444444444444"
    )
        port map (
      I0 => \cnt[63]_i_2_n_0\,
      I1 => cnt0(13),
      I2 => s_axi_wdata(13),
      I3 => \cnt[47]_i_2_n_0\,
      I4 => \cnt[63]_i_4_n_0\,
      I5 => \cnt[63]_i_6_n_0\,
      O => \cnt[13]_i_1_n_0\
    );
\cnt[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F4444444444444"
    )
        port map (
      I0 => \cnt[63]_i_2_n_0\,
      I1 => cnt0(14),
      I2 => s_axi_wdata(14),
      I3 => \cnt[47]_i_2_n_0\,
      I4 => \cnt[63]_i_4_n_0\,
      I5 => \cnt[63]_i_6_n_0\,
      O => \cnt[14]_i_1_n_0\
    );
\cnt[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F4444444444444"
    )
        port map (
      I0 => \cnt[63]_i_2_n_0\,
      I1 => cnt0(15),
      I2 => s_axi_wdata(15),
      I3 => \cnt[47]_i_2_n_0\,
      I4 => \cnt[63]_i_4_n_0\,
      I5 => \cnt[63]_i_6_n_0\,
      O => \cnt[15]_i_1_n_0\
    );
\cnt[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F4444444444444"
    )
        port map (
      I0 => \cnt[63]_i_2_n_0\,
      I1 => cnt0(16),
      I2 => s_axi_wdata(16),
      I3 => \cnt[55]_i_2_n_0\,
      I4 => \cnt[63]_i_4_n_0\,
      I5 => \cnt[63]_i_6_n_0\,
      O => \cnt[16]_i_1_n_0\
    );
\cnt[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F4444444444444"
    )
        port map (
      I0 => \cnt[63]_i_2_n_0\,
      I1 => cnt0(17),
      I2 => s_axi_wdata(17),
      I3 => \cnt[55]_i_2_n_0\,
      I4 => \cnt[63]_i_4_n_0\,
      I5 => \cnt[63]_i_6_n_0\,
      O => \cnt[17]_i_1_n_0\
    );
\cnt[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F4444444444444"
    )
        port map (
      I0 => \cnt[63]_i_2_n_0\,
      I1 => cnt0(18),
      I2 => s_axi_wdata(18),
      I3 => \cnt[55]_i_2_n_0\,
      I4 => \cnt[63]_i_4_n_0\,
      I5 => \cnt[63]_i_6_n_0\,
      O => \cnt[18]_i_1_n_0\
    );
\cnt[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F4444444444444"
    )
        port map (
      I0 => \cnt[63]_i_2_n_0\,
      I1 => cnt0(19),
      I2 => s_axi_wdata(19),
      I3 => \cnt[55]_i_2_n_0\,
      I4 => \cnt[63]_i_4_n_0\,
      I5 => \cnt[63]_i_6_n_0\,
      O => \cnt[19]_i_1_n_0\
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8080"
    )
        port map (
      I0 => p_6_in(24),
      I1 => cnt_en_q,
      I2 => cnt0(1),
      I3 => \cnt[33]_i_2_n_0\,
      I4 => \cnt[63]_i_4_n_0\,
      O => \cnt[1]_i_1_n_0\
    );
\cnt[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F4444444444444"
    )
        port map (
      I0 => \cnt[63]_i_2_n_0\,
      I1 => cnt0(20),
      I2 => s_axi_wdata(20),
      I3 => \cnt[55]_i_2_n_0\,
      I4 => \cnt[63]_i_4_n_0\,
      I5 => \cnt[63]_i_6_n_0\,
      O => \cnt[20]_i_1_n_0\
    );
\cnt[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F4444444444444"
    )
        port map (
      I0 => \cnt[63]_i_2_n_0\,
      I1 => cnt0(21),
      I2 => s_axi_wdata(21),
      I3 => \cnt[55]_i_2_n_0\,
      I4 => \cnt[63]_i_4_n_0\,
      I5 => \cnt[63]_i_6_n_0\,
      O => \cnt[21]_i_1_n_0\
    );
\cnt[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F4444444444444"
    )
        port map (
      I0 => \cnt[63]_i_2_n_0\,
      I1 => cnt0(22),
      I2 => s_axi_wdata(22),
      I3 => \cnt[55]_i_2_n_0\,
      I4 => \cnt[63]_i_4_n_0\,
      I5 => \cnt[63]_i_6_n_0\,
      O => \cnt[22]_i_1_n_0\
    );
\cnt[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F4444444444444"
    )
        port map (
      I0 => \cnt[63]_i_2_n_0\,
      I1 => cnt0(23),
      I2 => s_axi_wdata(23),
      I3 => \cnt[55]_i_2_n_0\,
      I4 => \cnt[63]_i_4_n_0\,
      I5 => \cnt[63]_i_6_n_0\,
      O => \cnt[23]_i_1_n_0\
    );
\cnt[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F4444444444444"
    )
        port map (
      I0 => \cnt[63]_i_2_n_0\,
      I1 => cnt0(24),
      I2 => s_axi_wdata(24),
      I3 => \cnt[63]_i_5_n_0\,
      I4 => \cnt[63]_i_4_n_0\,
      I5 => \cnt[63]_i_6_n_0\,
      O => \cnt[24]_i_1_n_0\
    );
\cnt[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F4444444444444"
    )
        port map (
      I0 => \cnt[63]_i_2_n_0\,
      I1 => cnt0(25),
      I2 => s_axi_wdata(25),
      I3 => \cnt[63]_i_5_n_0\,
      I4 => \cnt[63]_i_4_n_0\,
      I5 => \cnt[63]_i_6_n_0\,
      O => \cnt[25]_i_1_n_0\
    );
\cnt[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F4444444444444"
    )
        port map (
      I0 => \cnt[63]_i_2_n_0\,
      I1 => cnt0(26),
      I2 => s_axi_wdata(26),
      I3 => \cnt[63]_i_5_n_0\,
      I4 => \cnt[63]_i_4_n_0\,
      I5 => \cnt[63]_i_6_n_0\,
      O => \cnt[26]_i_1_n_0\
    );
\cnt[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F4444444444444"
    )
        port map (
      I0 => \cnt[63]_i_2_n_0\,
      I1 => cnt0(27),
      I2 => s_axi_wdata(27),
      I3 => \cnt[63]_i_5_n_0\,
      I4 => \cnt[63]_i_4_n_0\,
      I5 => \cnt[63]_i_6_n_0\,
      O => \cnt[27]_i_1_n_0\
    );
\cnt[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F4444444444444"
    )
        port map (
      I0 => \cnt[63]_i_2_n_0\,
      I1 => cnt0(28),
      I2 => s_axi_wdata(28),
      I3 => \cnt[63]_i_5_n_0\,
      I4 => \cnt[63]_i_4_n_0\,
      I5 => \cnt[63]_i_6_n_0\,
      O => \cnt[28]_i_1_n_0\
    );
\cnt[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F4444444444444"
    )
        port map (
      I0 => \cnt[63]_i_2_n_0\,
      I1 => cnt0(29),
      I2 => s_axi_wdata(29),
      I3 => \cnt[63]_i_5_n_0\,
      I4 => \cnt[63]_i_4_n_0\,
      I5 => \cnt[63]_i_6_n_0\,
      O => \cnt[29]_i_1_n_0\
    );
\cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8080"
    )
        port map (
      I0 => p_6_in(24),
      I1 => cnt_en_q,
      I2 => cnt0(2),
      I3 => \cnt[34]_i_2_n_0\,
      I4 => \cnt[63]_i_4_n_0\,
      O => \cnt[2]_i_1_n_0\
    );
\cnt[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F4444444444444"
    )
        port map (
      I0 => \cnt[63]_i_2_n_0\,
      I1 => cnt0(30),
      I2 => s_axi_wdata(30),
      I3 => \cnt[63]_i_5_n_0\,
      I4 => \cnt[63]_i_4_n_0\,
      I5 => \cnt[63]_i_6_n_0\,
      O => \cnt[30]_i_1_n_0\
    );
\cnt[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F4444444444444"
    )
        port map (
      I0 => \cnt[63]_i_2_n_0\,
      I1 => cnt0(31),
      I2 => s_axi_wdata(31),
      I3 => \cnt[63]_i_5_n_0\,
      I4 => \cnt[63]_i_4_n_0\,
      I5 => \cnt[63]_i_6_n_0\,
      O => \cnt[31]_i_1_n_0\
    );
\cnt[32]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"808080FF"
    )
        port map (
      I0 => p_6_in(24),
      I1 => cnt_en_q,
      I2 => cnt0(32),
      I3 => \cnt[32]_i_3_n_0\,
      I4 => \cnt[63]_i_4_n_0\,
      O => \cnt[32]_i_1_n_0\
    );
\cnt[32]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFFFFFF"
    )
        port map (
      I0 => \cnt[63]_i_7_n_0\,
      I1 => p_6_in(24),
      I2 => p_4_in(1),
      I3 => p_4_in(2),
      I4 => s_axi_wdata(0),
      I5 => s_axi_wstrb(0),
      O => \cnt[32]_i_3_n_0\
    );
\cnt[33]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"808080FF"
    )
        port map (
      I0 => p_6_in(24),
      I1 => cnt_en_q,
      I2 => cnt0(33),
      I3 => \cnt[33]_i_2_n_0\,
      I4 => \cnt[63]_i_4_n_0\,
      O => \cnt[33]_i_1_n_0\
    );
\cnt[33]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFFFFFF"
    )
        port map (
      I0 => \cnt[63]_i_7_n_0\,
      I1 => p_6_in(24),
      I2 => p_4_in(1),
      I3 => p_4_in(2),
      I4 => s_axi_wdata(1),
      I5 => s_axi_wstrb(0),
      O => \cnt[33]_i_2_n_0\
    );
\cnt[34]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"808080FF"
    )
        port map (
      I0 => p_6_in(24),
      I1 => cnt_en_q,
      I2 => cnt0(34),
      I3 => \cnt[34]_i_2_n_0\,
      I4 => \cnt[63]_i_4_n_0\,
      O => \cnt[34]_i_1_n_0\
    );
\cnt[34]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFFFFFF"
    )
        port map (
      I0 => \cnt[63]_i_7_n_0\,
      I1 => p_6_in(24),
      I2 => p_4_in(1),
      I3 => p_4_in(2),
      I4 => s_axi_wdata(2),
      I5 => s_axi_wstrb(0),
      O => \cnt[34]_i_2_n_0\
    );
\cnt[35]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"808080FF"
    )
        port map (
      I0 => p_6_in(24),
      I1 => cnt_en_q,
      I2 => cnt0(35),
      I3 => \cnt[35]_i_2_n_0\,
      I4 => \cnt[63]_i_4_n_0\,
      O => \cnt[35]_i_1_n_0\
    );
\cnt[35]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFFFFFF"
    )
        port map (
      I0 => \cnt[63]_i_7_n_0\,
      I1 => p_6_in(24),
      I2 => p_4_in(1),
      I3 => p_4_in(2),
      I4 => s_axi_wdata(3),
      I5 => s_axi_wstrb(0),
      O => \cnt[35]_i_2_n_0\
    );
\cnt[36]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"808080FF"
    )
        port map (
      I0 => p_6_in(24),
      I1 => cnt_en_q,
      I2 => cnt0(36),
      I3 => \cnt[36]_i_3_n_0\,
      I4 => \cnt[63]_i_4_n_0\,
      O => \cnt[36]_i_1_n_0\
    );
\cnt[36]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFFFFFF"
    )
        port map (
      I0 => \cnt[63]_i_7_n_0\,
      I1 => p_6_in(24),
      I2 => p_4_in(1),
      I3 => p_4_in(2),
      I4 => s_axi_wdata(4),
      I5 => s_axi_wstrb(0),
      O => \cnt[36]_i_3_n_0\
    );
\cnt[37]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"808080FF"
    )
        port map (
      I0 => p_6_in(24),
      I1 => cnt_en_q,
      I2 => cnt0(37),
      I3 => \cnt[37]_i_2_n_0\,
      I4 => \cnt[63]_i_4_n_0\,
      O => \cnt[37]_i_1_n_0\
    );
\cnt[37]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFFFFFF"
    )
        port map (
      I0 => \cnt[63]_i_7_n_0\,
      I1 => p_6_in(24),
      I2 => p_4_in(1),
      I3 => p_4_in(2),
      I4 => s_axi_wdata(5),
      I5 => s_axi_wstrb(0),
      O => \cnt[37]_i_2_n_0\
    );
\cnt[38]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"808080FF"
    )
        port map (
      I0 => p_6_in(24),
      I1 => cnt_en_q,
      I2 => cnt0(38),
      I3 => \cnt[38]_i_2_n_0\,
      I4 => \cnt[63]_i_4_n_0\,
      O => \cnt[38]_i_1_n_0\
    );
\cnt[38]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFFFFFF"
    )
        port map (
      I0 => \cnt[63]_i_7_n_0\,
      I1 => p_6_in(24),
      I2 => p_4_in(1),
      I3 => p_4_in(2),
      I4 => s_axi_wstrb(0),
      I5 => s_axi_wdata(6),
      O => \cnt[38]_i_2_n_0\
    );
\cnt[39]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"808080FF80808080"
    )
        port map (
      I0 => p_6_in(24),
      I1 => cnt_en_q,
      I2 => cnt0(39),
      I3 => \cnt[63]_i_4_n_0\,
      I4 => \cnt[39]_i_2_n_0\,
      I5 => \cnt[63]_i_6_n_0\,
      O => \cnt[39]_i_1_n_0\
    );
\cnt[39]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => p_6_in(24),
      I1 => s_axi_wdata(7),
      I2 => s_axi_wstrb(0),
      O => \cnt[39]_i_2_n_0\
    );
\cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8080"
    )
        port map (
      I0 => p_6_in(24),
      I1 => cnt_en_q,
      I2 => cnt0(3),
      I3 => \cnt[35]_i_2_n_0\,
      I4 => \cnt[63]_i_4_n_0\,
      O => \cnt[3]_i_1_n_0\
    );
\cnt[40]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444F4444444444"
    )
        port map (
      I0 => \cnt[63]_i_2_n_0\,
      I1 => cnt0(40),
      I2 => \cnt[63]_i_4_n_0\,
      I3 => s_axi_wdata(8),
      I4 => \cnt[47]_i_2_n_0\,
      I5 => \cnt[63]_i_6_n_0\,
      O => \cnt[40]_i_1_n_0\
    );
\cnt[41]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444F4444444444"
    )
        port map (
      I0 => \cnt[63]_i_2_n_0\,
      I1 => cnt0(41),
      I2 => \cnt[63]_i_4_n_0\,
      I3 => s_axi_wdata(9),
      I4 => \cnt[47]_i_2_n_0\,
      I5 => \cnt[63]_i_6_n_0\,
      O => \cnt[41]_i_1_n_0\
    );
\cnt[42]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444F4444444444"
    )
        port map (
      I0 => \cnt[63]_i_2_n_0\,
      I1 => cnt0(42),
      I2 => \cnt[63]_i_4_n_0\,
      I3 => s_axi_wdata(10),
      I4 => \cnt[47]_i_2_n_0\,
      I5 => \cnt[63]_i_6_n_0\,
      O => \cnt[42]_i_1_n_0\
    );
\cnt[43]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444F4444444444"
    )
        port map (
      I0 => \cnt[63]_i_2_n_0\,
      I1 => cnt0(43),
      I2 => \cnt[63]_i_4_n_0\,
      I3 => s_axi_wdata(11),
      I4 => \cnt[47]_i_2_n_0\,
      I5 => \cnt[63]_i_6_n_0\,
      O => \cnt[43]_i_1_n_0\
    );
\cnt[44]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444F4444444444"
    )
        port map (
      I0 => \cnt[63]_i_2_n_0\,
      I1 => cnt0(44),
      I2 => \cnt[63]_i_4_n_0\,
      I3 => s_axi_wdata(12),
      I4 => \cnt[47]_i_2_n_0\,
      I5 => \cnt[63]_i_6_n_0\,
      O => \cnt[44]_i_1_n_0\
    );
\cnt[45]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444F4444444444"
    )
        port map (
      I0 => \cnt[63]_i_2_n_0\,
      I1 => cnt0(45),
      I2 => \cnt[63]_i_4_n_0\,
      I3 => s_axi_wdata(13),
      I4 => \cnt[47]_i_2_n_0\,
      I5 => \cnt[63]_i_6_n_0\,
      O => \cnt[45]_i_1_n_0\
    );
\cnt[46]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444F4444444444"
    )
        port map (
      I0 => \cnt[63]_i_2_n_0\,
      I1 => cnt0(46),
      I2 => \cnt[63]_i_4_n_0\,
      I3 => s_axi_wdata(14),
      I4 => \cnt[47]_i_2_n_0\,
      I5 => \cnt[63]_i_6_n_0\,
      O => \cnt[46]_i_1_n_0\
    );
\cnt[47]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444F4444444444"
    )
        port map (
      I0 => \cnt[63]_i_2_n_0\,
      I1 => cnt0(47),
      I2 => \cnt[63]_i_4_n_0\,
      I3 => s_axi_wdata(15),
      I4 => \cnt[47]_i_2_n_0\,
      I5 => \cnt[63]_i_6_n_0\,
      O => \cnt[47]_i_1_n_0\
    );
\cnt[47]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => p_6_in(24),
      I1 => s_axi_wstrb(1),
      O => \cnt[47]_i_2_n_0\
    );
\cnt[48]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444F4444444444"
    )
        port map (
      I0 => \cnt[63]_i_2_n_0\,
      I1 => cnt0(48),
      I2 => \cnt[63]_i_4_n_0\,
      I3 => s_axi_wdata(16),
      I4 => \cnt[55]_i_2_n_0\,
      I5 => \cnt[63]_i_6_n_0\,
      O => \cnt[48]_i_1_n_0\
    );
\cnt[49]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444F4444444444"
    )
        port map (
      I0 => \cnt[63]_i_2_n_0\,
      I1 => cnt0(49),
      I2 => \cnt[63]_i_4_n_0\,
      I3 => s_axi_wdata(17),
      I4 => \cnt[55]_i_2_n_0\,
      I5 => \cnt[63]_i_6_n_0\,
      O => \cnt[49]_i_1_n_0\
    );
\cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8080"
    )
        port map (
      I0 => p_6_in(24),
      I1 => cnt_en_q,
      I2 => cnt0(4),
      I3 => \cnt[36]_i_3_n_0\,
      I4 => \cnt[63]_i_4_n_0\,
      O => \cnt[4]_i_1_n_0\
    );
\cnt[50]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444F4444444444"
    )
        port map (
      I0 => \cnt[63]_i_2_n_0\,
      I1 => cnt0(50),
      I2 => \cnt[63]_i_4_n_0\,
      I3 => s_axi_wdata(18),
      I4 => \cnt[55]_i_2_n_0\,
      I5 => \cnt[63]_i_6_n_0\,
      O => \cnt[50]_i_1_n_0\
    );
\cnt[51]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444F4444444444"
    )
        port map (
      I0 => \cnt[63]_i_2_n_0\,
      I1 => cnt0(51),
      I2 => \cnt[63]_i_4_n_0\,
      I3 => s_axi_wdata(19),
      I4 => \cnt[55]_i_2_n_0\,
      I5 => \cnt[63]_i_6_n_0\,
      O => \cnt[51]_i_1_n_0\
    );
\cnt[52]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444F4444444444"
    )
        port map (
      I0 => \cnt[63]_i_2_n_0\,
      I1 => cnt0(52),
      I2 => \cnt[63]_i_4_n_0\,
      I3 => s_axi_wdata(20),
      I4 => \cnt[55]_i_2_n_0\,
      I5 => \cnt[63]_i_6_n_0\,
      O => \cnt[52]_i_1_n_0\
    );
\cnt[53]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444F4444444444"
    )
        port map (
      I0 => \cnt[63]_i_2_n_0\,
      I1 => cnt0(53),
      I2 => \cnt[63]_i_4_n_0\,
      I3 => s_axi_wdata(21),
      I4 => \cnt[55]_i_2_n_0\,
      I5 => \cnt[63]_i_6_n_0\,
      O => \cnt[53]_i_1_n_0\
    );
\cnt[54]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444F4444444444"
    )
        port map (
      I0 => \cnt[63]_i_2_n_0\,
      I1 => cnt0(54),
      I2 => \cnt[63]_i_4_n_0\,
      I3 => s_axi_wdata(22),
      I4 => \cnt[55]_i_2_n_0\,
      I5 => \cnt[63]_i_6_n_0\,
      O => \cnt[54]_i_1_n_0\
    );
\cnt[55]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444F4444444444"
    )
        port map (
      I0 => \cnt[63]_i_2_n_0\,
      I1 => cnt0(55),
      I2 => \cnt[63]_i_4_n_0\,
      I3 => s_axi_wdata(23),
      I4 => \cnt[55]_i_2_n_0\,
      I5 => \cnt[63]_i_6_n_0\,
      O => \cnt[55]_i_1_n_0\
    );
\cnt[55]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => p_6_in(24),
      I1 => s_axi_wstrb(2),
      O => \cnt[55]_i_2_n_0\
    );
\cnt[56]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444F4444444444"
    )
        port map (
      I0 => \cnt[63]_i_2_n_0\,
      I1 => cnt0(56),
      I2 => \cnt[63]_i_4_n_0\,
      I3 => s_axi_wdata(24),
      I4 => \cnt[63]_i_5_n_0\,
      I5 => \cnt[63]_i_6_n_0\,
      O => \cnt[56]_i_1_n_0\
    );
\cnt[57]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444F4444444444"
    )
        port map (
      I0 => \cnt[63]_i_2_n_0\,
      I1 => cnt0(57),
      I2 => \cnt[63]_i_4_n_0\,
      I3 => s_axi_wdata(25),
      I4 => \cnt[63]_i_5_n_0\,
      I5 => \cnt[63]_i_6_n_0\,
      O => \cnt[57]_i_1_n_0\
    );
\cnt[58]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444F4444444444"
    )
        port map (
      I0 => \cnt[63]_i_2_n_0\,
      I1 => cnt0(58),
      I2 => \cnt[63]_i_4_n_0\,
      I3 => s_axi_wdata(26),
      I4 => \cnt[63]_i_5_n_0\,
      I5 => \cnt[63]_i_6_n_0\,
      O => \cnt[58]_i_1_n_0\
    );
\cnt[59]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444F4444444444"
    )
        port map (
      I0 => \cnt[63]_i_2_n_0\,
      I1 => cnt0(59),
      I2 => \cnt[63]_i_4_n_0\,
      I3 => s_axi_wdata(27),
      I4 => \cnt[63]_i_5_n_0\,
      I5 => \cnt[63]_i_6_n_0\,
      O => \cnt[59]_i_1_n_0\
    );
\cnt[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8080"
    )
        port map (
      I0 => p_6_in(24),
      I1 => cnt_en_q,
      I2 => cnt0(5),
      I3 => \cnt[37]_i_2_n_0\,
      I4 => \cnt[63]_i_4_n_0\,
      O => \cnt[5]_i_1_n_0\
    );
\cnt[60]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444F4444444444"
    )
        port map (
      I0 => \cnt[63]_i_2_n_0\,
      I1 => cnt0(60),
      I2 => \cnt[63]_i_4_n_0\,
      I3 => s_axi_wdata(28),
      I4 => \cnt[63]_i_5_n_0\,
      I5 => \cnt[63]_i_6_n_0\,
      O => \cnt[60]_i_1_n_0\
    );
\cnt[61]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444F4444444444"
    )
        port map (
      I0 => \cnt[63]_i_2_n_0\,
      I1 => cnt0(61),
      I2 => \cnt[63]_i_4_n_0\,
      I3 => s_axi_wdata(29),
      I4 => \cnt[63]_i_5_n_0\,
      I5 => \cnt[63]_i_6_n_0\,
      O => \cnt[61]_i_1_n_0\
    );
\cnt[62]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444F4444444444"
    )
        port map (
      I0 => \cnt[63]_i_2_n_0\,
      I1 => cnt0(62),
      I2 => \cnt[63]_i_4_n_0\,
      I3 => s_axi_wdata(30),
      I4 => \cnt[63]_i_5_n_0\,
      I5 => \cnt[63]_i_6_n_0\,
      O => \cnt[62]_i_1_n_0\
    );
\cnt[63]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444F4444444444"
    )
        port map (
      I0 => \cnt[63]_i_2_n_0\,
      I1 => cnt0(63),
      I2 => \cnt[63]_i_4_n_0\,
      I3 => s_axi_wdata(31),
      I4 => \cnt[63]_i_5_n_0\,
      I5 => \cnt[63]_i_6_n_0\,
      O => \cnt[63]_i_1_n_0\
    );
\cnt[63]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => p_6_in(24),
      I1 => cnt_en_q,
      O => \cnt[63]_i_2_n_0\
    );
\cnt[63]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => p_4_in(2),
      I1 => p_4_in(1),
      I2 => p_4_in(0),
      O => \cnt[63]_i_4_n_0\
    );
\cnt[63]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => p_6_in(24),
      I1 => s_axi_wstrb(3),
      O => \cnt[63]_i_5_n_0\
    );
\cnt[63]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_4_in(1),
      I1 => p_4_in(2),
      I2 => \cnt[63]_i_7_n_0\,
      O => \cnt[63]_i_6_n_0\
    );
\cnt[63]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => p_4_in(3),
      I1 => \^s_axi_wready\,
      I2 => \^s_axi_awready\,
      I3 => s_axi_wvalid,
      I4 => s_axi_awvalid,
      O => \cnt[63]_i_7_n_0\
    );
\cnt[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8080"
    )
        port map (
      I0 => p_6_in(24),
      I1 => cnt_en_q,
      I2 => cnt0(6),
      I3 => \cnt[38]_i_2_n_0\,
      I4 => \cnt[63]_i_4_n_0\,
      O => \cnt[6]_i_1_n_0\
    );
\cnt[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80FF808080808080"
    )
        port map (
      I0 => p_6_in(24),
      I1 => cnt_en_q,
      I2 => cnt0(7),
      I3 => \cnt[39]_i_2_n_0\,
      I4 => \cnt[63]_i_4_n_0\,
      I5 => \cnt[63]_i_6_n_0\,
      O => \cnt[7]_i_1_n_0\
    );
\cnt[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F4444444444444"
    )
        port map (
      I0 => \cnt[63]_i_2_n_0\,
      I1 => cnt0(8),
      I2 => s_axi_wdata(8),
      I3 => \cnt[47]_i_2_n_0\,
      I4 => \cnt[63]_i_4_n_0\,
      I5 => \cnt[63]_i_6_n_0\,
      O => \cnt[8]_i_1_n_0\
    );
\cnt[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F4444444444444"
    )
        port map (
      I0 => \cnt[63]_i_2_n_0\,
      I1 => cnt0(9),
      I2 => s_axi_wdata(9),
      I3 => \cnt[47]_i_2_n_0\,
      I4 => \cnt[63]_i_4_n_0\,
      I5 => \cnt[63]_i_6_n_0\,
      O => \cnt[9]_i_1_n_0\
    );
cnt_en_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBF0400"
    )
        port map (
      I0 => tx_enable_i_3_n_0,
      I1 => s_axi_wstrb(1),
      I2 => s_axi_wdata(9),
      I3 => s_axi_wdata(8),
      I4 => p_6_in(24),
      O => cnt_en_i_1_n_0
    );
cnt_en_q_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE000000"
    )
        port map (
      I0 => rx_data_ready,
      I1 => tx_data_ready,
      I2 => cnt_en_q,
      I3 => p_6_in(24),
      I4 => aresetn,
      O => cnt_en_q_i_1_n_0
    );
cnt_en_q_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => cnt_en_q_i_1_n_0,
      Q => cnt_en_q,
      R => '0'
    );
cnt_en_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => cnt_en_i_1_n_0,
      Q => p_6_in(24),
      R => p_0_in
    );
cnt_latch_arm_req_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55550D5500000C00"
    )
        port map (
      I0 => cnt_latch_arm_req_i_2_n_0,
      I1 => s_axi_wdata(10),
      I2 => s_axi_wdata(11),
      I3 => s_axi_wstrb(1),
      I4 => tx_enable_i_3_n_0,
      I5 => p_6_in(25),
      O => cnt_latch_arm_req_i_1_n_0
    );
cnt_latch_arm_req_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007F00"
    )
        port map (
      I0 => \s_axi_rdata[15]_i_3_n_0\,
      I1 => \s_axi_rdata[13]_i_3_n_0\,
      I2 => \^rx_enable_reg_0\,
      I3 => p_6_in(25),
      I4 => p_6_in(27),
      O => cnt_latch_arm_req_i_2_n_0
    );
cnt_latch_arm_req_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => cnt_latch_arm_req_i_1_n_0,
      Q => p_6_in(25),
      R => p_0_in
    );
cnt_latch_armed_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => p_6_in(26),
      I1 => cnt_latch_armed0,
      I2 => aresetn,
      I3 => p_6_in(27),
      O => cnt_latch_armed_i_1_n_0
    );
cnt_latch_armed_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAA2A2A2AAAAAAA"
    )
        port map (
      I0 => p_6_in(25),
      I1 => \^rx_enable_reg_0\,
      I2 => \s_axi_rdata[13]_i_3_n_0\,
      I3 => rx_data_ready_ovr_val_reg_n_0,
      I4 => rx_data_ready_ovr_en,
      I5 => rx_data_ready,
      O => cnt_latch_armed0
    );
cnt_latch_armed_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => cnt_latch_armed_i_1_n_0,
      Q => p_6_in(26),
      R => '0'
    );
cnt_latch_valid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3FFFFFFF2AAAAAAA"
    )
        port map (
      I0 => cnt_latched0,
      I1 => \p_0_in__0\(2),
      I2 => \p_0_in__0\(3),
      I3 => \p_0_in__0\(1),
      I4 => s_axi_reg_rden,
      I5 => p_6_in(27),
      O => cnt_latch_valid_i_1_n_0
    );
cnt_latch_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => cnt_latch_valid_i_1_n_0,
      Q => p_6_in(27),
      R => p_0_in
    );
\cnt_latched[63]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \^rx_enable_reg_0\,
      I1 => \s_axi_rdata[13]_i_3_n_0\,
      I2 => \s_axi_rdata[15]_i_3_n_0\,
      I3 => p_6_in(26),
      I4 => p_6_in(27),
      O => cnt_latched0
    );
\cnt_latched_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_latched0,
      D => \cnt_reg_n_0_[0]\,
      Q => \cnt_latched_reg_n_0_[0]\,
      R => p_0_in
    );
\cnt_latched_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_latched0,
      D => \cnt_reg_n_0_[10]\,
      Q => \cnt_latched_reg_n_0_[10]\,
      R => p_0_in
    );
\cnt_latched_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_latched0,
      D => \cnt_reg_n_0_[11]\,
      Q => \cnt_latched_reg_n_0_[11]\,
      R => p_0_in
    );
\cnt_latched_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_latched0,
      D => \cnt_reg_n_0_[12]\,
      Q => \cnt_latched_reg_n_0_[12]\,
      R => p_0_in
    );
\cnt_latched_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_latched0,
      D => \cnt_reg_n_0_[13]\,
      Q => \cnt_latched_reg_n_0_[13]\,
      R => p_0_in
    );
\cnt_latched_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_latched0,
      D => \cnt_reg_n_0_[14]\,
      Q => \cnt_latched_reg_n_0_[14]\,
      R => p_0_in
    );
\cnt_latched_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_latched0,
      D => \cnt_reg_n_0_[15]\,
      Q => \cnt_latched_reg_n_0_[15]\,
      R => p_0_in
    );
\cnt_latched_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_latched0,
      D => \cnt_reg_n_0_[16]\,
      Q => \cnt_latched_reg_n_0_[16]\,
      R => p_0_in
    );
\cnt_latched_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_latched0,
      D => \cnt_reg_n_0_[17]\,
      Q => \cnt_latched_reg_n_0_[17]\,
      R => p_0_in
    );
\cnt_latched_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_latched0,
      D => \cnt_reg_n_0_[18]\,
      Q => \cnt_latched_reg_n_0_[18]\,
      R => p_0_in
    );
\cnt_latched_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_latched0,
      D => \cnt_reg_n_0_[19]\,
      Q => \cnt_latched_reg_n_0_[19]\,
      R => p_0_in
    );
\cnt_latched_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_latched0,
      D => \cnt_reg_n_0_[1]\,
      Q => \cnt_latched_reg_n_0_[1]\,
      R => p_0_in
    );
\cnt_latched_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_latched0,
      D => \cnt_reg_n_0_[20]\,
      Q => \cnt_latched_reg_n_0_[20]\,
      R => p_0_in
    );
\cnt_latched_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_latched0,
      D => \cnt_reg_n_0_[21]\,
      Q => \cnt_latched_reg_n_0_[21]\,
      R => p_0_in
    );
\cnt_latched_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_latched0,
      D => \cnt_reg_n_0_[22]\,
      Q => \cnt_latched_reg_n_0_[22]\,
      R => p_0_in
    );
\cnt_latched_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_latched0,
      D => \cnt_reg_n_0_[23]\,
      Q => \cnt_latched_reg_n_0_[23]\,
      R => p_0_in
    );
\cnt_latched_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_latched0,
      D => \cnt_reg_n_0_[24]\,
      Q => \cnt_latched_reg_n_0_[24]\,
      R => p_0_in
    );
\cnt_latched_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_latched0,
      D => \cnt_reg_n_0_[25]\,
      Q => \cnt_latched_reg_n_0_[25]\,
      R => p_0_in
    );
\cnt_latched_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_latched0,
      D => \cnt_reg_n_0_[26]\,
      Q => \cnt_latched_reg_n_0_[26]\,
      R => p_0_in
    );
\cnt_latched_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_latched0,
      D => \cnt_reg_n_0_[27]\,
      Q => \cnt_latched_reg_n_0_[27]\,
      R => p_0_in
    );
\cnt_latched_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_latched0,
      D => \cnt_reg_n_0_[28]\,
      Q => \cnt_latched_reg_n_0_[28]\,
      R => p_0_in
    );
\cnt_latched_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_latched0,
      D => \cnt_reg_n_0_[29]\,
      Q => \cnt_latched_reg_n_0_[29]\,
      R => p_0_in
    );
\cnt_latched_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_latched0,
      D => \cnt_reg_n_0_[2]\,
      Q => \cnt_latched_reg_n_0_[2]\,
      R => p_0_in
    );
\cnt_latched_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_latched0,
      D => \cnt_reg_n_0_[30]\,
      Q => \cnt_latched_reg_n_0_[30]\,
      R => p_0_in
    );
\cnt_latched_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_latched0,
      D => \cnt_reg_n_0_[31]\,
      Q => \cnt_latched_reg_n_0_[31]\,
      R => p_0_in
    );
\cnt_latched_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_latched0,
      D => p_1_in(0),
      Q => data9(0),
      R => p_0_in
    );
\cnt_latched_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_latched0,
      D => p_1_in(1),
      Q => data9(1),
      R => p_0_in
    );
\cnt_latched_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_latched0,
      D => p_1_in(2),
      Q => data9(2),
      R => p_0_in
    );
\cnt_latched_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_latched0,
      D => p_1_in(3),
      Q => data9(3),
      R => p_0_in
    );
\cnt_latched_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_latched0,
      D => p_1_in(4),
      Q => data9(4),
      R => p_0_in
    );
\cnt_latched_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_latched0,
      D => p_1_in(5),
      Q => data9(5),
      R => p_0_in
    );
\cnt_latched_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_latched0,
      D => p_1_in(6),
      Q => data9(6),
      R => p_0_in
    );
\cnt_latched_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_latched0,
      D => p_1_in(7),
      Q => data9(7),
      R => p_0_in
    );
\cnt_latched_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_latched0,
      D => \cnt_reg_n_0_[3]\,
      Q => \cnt_latched_reg_n_0_[3]\,
      R => p_0_in
    );
\cnt_latched_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_latched0,
      D => p_1_in(8),
      Q => data9(8),
      R => p_0_in
    );
\cnt_latched_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_latched0,
      D => p_1_in(9),
      Q => data9(9),
      R => p_0_in
    );
\cnt_latched_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_latched0,
      D => p_1_in(10),
      Q => data9(10),
      R => p_0_in
    );
\cnt_latched_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_latched0,
      D => p_1_in(11),
      Q => data9(11),
      R => p_0_in
    );
\cnt_latched_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_latched0,
      D => p_1_in(12),
      Q => data9(12),
      R => p_0_in
    );
\cnt_latched_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_latched0,
      D => p_1_in(13),
      Q => data9(13),
      R => p_0_in
    );
\cnt_latched_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_latched0,
      D => p_1_in(14),
      Q => data9(14),
      R => p_0_in
    );
\cnt_latched_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_latched0,
      D => p_1_in(15),
      Q => data9(15),
      R => p_0_in
    );
\cnt_latched_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_latched0,
      D => p_1_in(16),
      Q => data9(16),
      R => p_0_in
    );
\cnt_latched_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_latched0,
      D => p_1_in(17),
      Q => data9(17),
      R => p_0_in
    );
\cnt_latched_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_latched0,
      D => \cnt_reg_n_0_[4]\,
      Q => \cnt_latched_reg_n_0_[4]\,
      R => p_0_in
    );
\cnt_latched_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_latched0,
      D => p_1_in(18),
      Q => data9(18),
      R => p_0_in
    );
\cnt_latched_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_latched0,
      D => p_1_in(19),
      Q => data9(19),
      R => p_0_in
    );
\cnt_latched_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_latched0,
      D => p_1_in(20),
      Q => data9(20),
      R => p_0_in
    );
\cnt_latched_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_latched0,
      D => p_1_in(21),
      Q => data9(21),
      R => p_0_in
    );
\cnt_latched_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_latched0,
      D => p_1_in(22),
      Q => data9(22),
      R => p_0_in
    );
\cnt_latched_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_latched0,
      D => p_1_in(23),
      Q => data9(23),
      R => p_0_in
    );
\cnt_latched_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_latched0,
      D => p_1_in(24),
      Q => data9(24),
      R => p_0_in
    );
\cnt_latched_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_latched0,
      D => p_1_in(25),
      Q => data9(25),
      R => p_0_in
    );
\cnt_latched_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_latched0,
      D => p_1_in(26),
      Q => data9(26),
      R => p_0_in
    );
\cnt_latched_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_latched0,
      D => p_1_in(27),
      Q => data9(27),
      R => p_0_in
    );
\cnt_latched_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_latched0,
      D => \cnt_reg_n_0_[5]\,
      Q => \cnt_latched_reg_n_0_[5]\,
      R => p_0_in
    );
\cnt_latched_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_latched0,
      D => p_1_in(28),
      Q => data9(28),
      R => p_0_in
    );
\cnt_latched_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_latched0,
      D => p_1_in(29),
      Q => data9(29),
      R => p_0_in
    );
\cnt_latched_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_latched0,
      D => p_1_in(30),
      Q => data9(30),
      R => p_0_in
    );
\cnt_latched_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_latched0,
      D => p_1_in(31),
      Q => data9(31),
      R => p_0_in
    );
\cnt_latched_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_latched0,
      D => \cnt_reg_n_0_[6]\,
      Q => \cnt_latched_reg_n_0_[6]\,
      R => p_0_in
    );
\cnt_latched_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_latched0,
      D => \cnt_reg_n_0_[7]\,
      Q => \cnt_latched_reg_n_0_[7]\,
      R => p_0_in
    );
\cnt_latched_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_latched0,
      D => \cnt_reg_n_0_[8]\,
      Q => \cnt_latched_reg_n_0_[8]\,
      R => p_0_in
    );
\cnt_latched_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_latched0,
      D => \cnt_reg_n_0_[9]\,
      Q => \cnt_latched_reg_n_0_[9]\,
      R => p_0_in
    );
\cnt_rd_buf[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => s_axi_reg_rden,
      I1 => \p_0_in__0\(2),
      I2 => \p_0_in__0\(3),
      I3 => \p_0_in__0\(1),
      I4 => \p_0_in__0\(0),
      O => cnt_rd_buf
    );
\cnt_rd_buf_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_rd_buf,
      D => p_1_in(0),
      Q => \cnt_rd_buf_reg_n_0_[0]\,
      R => p_0_in
    );
\cnt_rd_buf_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_rd_buf,
      D => p_1_in(10),
      Q => \cnt_rd_buf_reg_n_0_[10]\,
      R => p_0_in
    );
\cnt_rd_buf_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_rd_buf,
      D => p_1_in(11),
      Q => \cnt_rd_buf_reg_n_0_[11]\,
      R => p_0_in
    );
\cnt_rd_buf_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_rd_buf,
      D => p_1_in(12),
      Q => \cnt_rd_buf_reg_n_0_[12]\,
      R => p_0_in
    );
\cnt_rd_buf_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_rd_buf,
      D => p_1_in(13),
      Q => \cnt_rd_buf_reg_n_0_[13]\,
      R => p_0_in
    );
\cnt_rd_buf_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_rd_buf,
      D => p_1_in(14),
      Q => \cnt_rd_buf_reg_n_0_[14]\,
      R => p_0_in
    );
\cnt_rd_buf_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_rd_buf,
      D => p_1_in(15),
      Q => \cnt_rd_buf_reg_n_0_[15]\,
      R => p_0_in
    );
\cnt_rd_buf_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_rd_buf,
      D => p_1_in(16),
      Q => \cnt_rd_buf_reg_n_0_[16]\,
      R => p_0_in
    );
\cnt_rd_buf_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_rd_buf,
      D => p_1_in(17),
      Q => \cnt_rd_buf_reg_n_0_[17]\,
      R => p_0_in
    );
\cnt_rd_buf_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_rd_buf,
      D => p_1_in(18),
      Q => \cnt_rd_buf_reg_n_0_[18]\,
      R => p_0_in
    );
\cnt_rd_buf_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_rd_buf,
      D => p_1_in(19),
      Q => \cnt_rd_buf_reg_n_0_[19]\,
      R => p_0_in
    );
\cnt_rd_buf_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_rd_buf,
      D => p_1_in(1),
      Q => \cnt_rd_buf_reg_n_0_[1]\,
      R => p_0_in
    );
\cnt_rd_buf_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_rd_buf,
      D => p_1_in(20),
      Q => \cnt_rd_buf_reg_n_0_[20]\,
      R => p_0_in
    );
\cnt_rd_buf_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_rd_buf,
      D => p_1_in(21),
      Q => \cnt_rd_buf_reg_n_0_[21]\,
      R => p_0_in
    );
\cnt_rd_buf_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_rd_buf,
      D => p_1_in(22),
      Q => \cnt_rd_buf_reg_n_0_[22]\,
      R => p_0_in
    );
\cnt_rd_buf_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_rd_buf,
      D => p_1_in(23),
      Q => \cnt_rd_buf_reg_n_0_[23]\,
      R => p_0_in
    );
\cnt_rd_buf_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_rd_buf,
      D => p_1_in(24),
      Q => \cnt_rd_buf_reg_n_0_[24]\,
      R => p_0_in
    );
\cnt_rd_buf_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_rd_buf,
      D => p_1_in(25),
      Q => \cnt_rd_buf_reg_n_0_[25]\,
      R => p_0_in
    );
\cnt_rd_buf_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_rd_buf,
      D => p_1_in(26),
      Q => \cnt_rd_buf_reg_n_0_[26]\,
      R => p_0_in
    );
\cnt_rd_buf_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_rd_buf,
      D => p_1_in(27),
      Q => \cnt_rd_buf_reg_n_0_[27]\,
      R => p_0_in
    );
\cnt_rd_buf_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_rd_buf,
      D => p_1_in(28),
      Q => \cnt_rd_buf_reg_n_0_[28]\,
      R => p_0_in
    );
\cnt_rd_buf_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_rd_buf,
      D => p_1_in(29),
      Q => \cnt_rd_buf_reg_n_0_[29]\,
      R => p_0_in
    );
\cnt_rd_buf_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_rd_buf,
      D => p_1_in(2),
      Q => \cnt_rd_buf_reg_n_0_[2]\,
      R => p_0_in
    );
\cnt_rd_buf_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_rd_buf,
      D => p_1_in(30),
      Q => \cnt_rd_buf_reg_n_0_[30]\,
      R => p_0_in
    );
\cnt_rd_buf_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_rd_buf,
      D => p_1_in(31),
      Q => \cnt_rd_buf_reg_n_0_[31]\,
      R => p_0_in
    );
\cnt_rd_buf_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_rd_buf,
      D => p_1_in(3),
      Q => \cnt_rd_buf_reg_n_0_[3]\,
      R => p_0_in
    );
\cnt_rd_buf_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_rd_buf,
      D => p_1_in(4),
      Q => \cnt_rd_buf_reg_n_0_[4]\,
      R => p_0_in
    );
\cnt_rd_buf_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_rd_buf,
      D => p_1_in(5),
      Q => \cnt_rd_buf_reg_n_0_[5]\,
      R => p_0_in
    );
\cnt_rd_buf_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_rd_buf,
      D => p_1_in(6),
      Q => \cnt_rd_buf_reg_n_0_[6]\,
      R => p_0_in
    );
\cnt_rd_buf_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_rd_buf,
      D => p_1_in(7),
      Q => \cnt_rd_buf_reg_n_0_[7]\,
      R => p_0_in
    );
\cnt_rd_buf_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_rd_buf,
      D => p_1_in(8),
      Q => \cnt_rd_buf_reg_n_0_[8]\,
      R => p_0_in
    );
\cnt_rd_buf_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cnt_rd_buf,
      D => p_1_in(9),
      Q => \cnt_rd_buf_reg_n_0_[9]\,
      R => p_0_in
    );
\cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[0]_i_1_n_0\,
      Q => \cnt_reg_n_0_[0]\,
      R => p_0_in
    );
\cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[10]_i_1_n_0\,
      Q => \cnt_reg_n_0_[10]\,
      R => p_0_in
    );
\cnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[11]_i_1_n_0\,
      Q => \cnt_reg_n_0_[11]\,
      R => p_0_in
    );
\cnt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[12]_i_1_n_0\,
      Q => \cnt_reg_n_0_[12]\,
      R => p_0_in
    );
\cnt_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[8]_i_2_n_0\,
      CO(3) => \cnt_reg[12]_i_2_n_0\,
      CO(2) => \cnt_reg[12]_i_2_n_1\,
      CO(1) => \cnt_reg[12]_i_2_n_2\,
      CO(0) => \cnt_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt0(12 downto 9),
      S(3) => \cnt_reg_n_0_[12]\,
      S(2) => \cnt_reg_n_0_[11]\,
      S(1) => \cnt_reg_n_0_[10]\,
      S(0) => \cnt_reg_n_0_[9]\
    );
\cnt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[13]_i_1_n_0\,
      Q => \cnt_reg_n_0_[13]\,
      R => p_0_in
    );
\cnt_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[14]_i_1_n_0\,
      Q => \cnt_reg_n_0_[14]\,
      R => p_0_in
    );
\cnt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[15]_i_1_n_0\,
      Q => \cnt_reg_n_0_[15]\,
      R => p_0_in
    );
\cnt_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[16]_i_1_n_0\,
      Q => \cnt_reg_n_0_[16]\,
      R => p_0_in
    );
\cnt_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[12]_i_2_n_0\,
      CO(3) => \cnt_reg[16]_i_2_n_0\,
      CO(2) => \cnt_reg[16]_i_2_n_1\,
      CO(1) => \cnt_reg[16]_i_2_n_2\,
      CO(0) => \cnt_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt0(16 downto 13),
      S(3) => \cnt_reg_n_0_[16]\,
      S(2) => \cnt_reg_n_0_[15]\,
      S(1) => \cnt_reg_n_0_[14]\,
      S(0) => \cnt_reg_n_0_[13]\
    );
\cnt_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[17]_i_1_n_0\,
      Q => \cnt_reg_n_0_[17]\,
      R => p_0_in
    );
\cnt_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[18]_i_1_n_0\,
      Q => \cnt_reg_n_0_[18]\,
      R => p_0_in
    );
\cnt_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[19]_i_1_n_0\,
      Q => \cnt_reg_n_0_[19]\,
      R => p_0_in
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[1]_i_1_n_0\,
      Q => \cnt_reg_n_0_[1]\,
      R => p_0_in
    );
\cnt_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[20]_i_1_n_0\,
      Q => \cnt_reg_n_0_[20]\,
      R => p_0_in
    );
\cnt_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[16]_i_2_n_0\,
      CO(3) => \cnt_reg[20]_i_2_n_0\,
      CO(2) => \cnt_reg[20]_i_2_n_1\,
      CO(1) => \cnt_reg[20]_i_2_n_2\,
      CO(0) => \cnt_reg[20]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt0(20 downto 17),
      S(3) => \cnt_reg_n_0_[20]\,
      S(2) => \cnt_reg_n_0_[19]\,
      S(1) => \cnt_reg_n_0_[18]\,
      S(0) => \cnt_reg_n_0_[17]\
    );
\cnt_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[21]_i_1_n_0\,
      Q => \cnt_reg_n_0_[21]\,
      R => p_0_in
    );
\cnt_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[22]_i_1_n_0\,
      Q => \cnt_reg_n_0_[22]\,
      R => p_0_in
    );
\cnt_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[23]_i_1_n_0\,
      Q => \cnt_reg_n_0_[23]\,
      R => p_0_in
    );
\cnt_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[24]_i_1_n_0\,
      Q => \cnt_reg_n_0_[24]\,
      R => p_0_in
    );
\cnt_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[20]_i_2_n_0\,
      CO(3) => \cnt_reg[24]_i_2_n_0\,
      CO(2) => \cnt_reg[24]_i_2_n_1\,
      CO(1) => \cnt_reg[24]_i_2_n_2\,
      CO(0) => \cnt_reg[24]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt0(24 downto 21),
      S(3) => \cnt_reg_n_0_[24]\,
      S(2) => \cnt_reg_n_0_[23]\,
      S(1) => \cnt_reg_n_0_[22]\,
      S(0) => \cnt_reg_n_0_[21]\
    );
\cnt_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[25]_i_1_n_0\,
      Q => \cnt_reg_n_0_[25]\,
      R => p_0_in
    );
\cnt_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[26]_i_1_n_0\,
      Q => \cnt_reg_n_0_[26]\,
      R => p_0_in
    );
\cnt_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[27]_i_1_n_0\,
      Q => \cnt_reg_n_0_[27]\,
      R => p_0_in
    );
\cnt_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[28]_i_1_n_0\,
      Q => \cnt_reg_n_0_[28]\,
      R => p_0_in
    );
\cnt_reg[28]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[24]_i_2_n_0\,
      CO(3) => \cnt_reg[28]_i_2_n_0\,
      CO(2) => \cnt_reg[28]_i_2_n_1\,
      CO(1) => \cnt_reg[28]_i_2_n_2\,
      CO(0) => \cnt_reg[28]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt0(28 downto 25),
      S(3) => \cnt_reg_n_0_[28]\,
      S(2) => \cnt_reg_n_0_[27]\,
      S(1) => \cnt_reg_n_0_[26]\,
      S(0) => \cnt_reg_n_0_[25]\
    );
\cnt_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[29]_i_1_n_0\,
      Q => \cnt_reg_n_0_[29]\,
      R => p_0_in
    );
\cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[2]_i_1_n_0\,
      Q => \cnt_reg_n_0_[2]\,
      R => p_0_in
    );
\cnt_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[30]_i_1_n_0\,
      Q => \cnt_reg_n_0_[30]\,
      R => p_0_in
    );
\cnt_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[31]_i_1_n_0\,
      Q => \cnt_reg_n_0_[31]\,
      R => p_0_in
    );
\cnt_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[32]_i_1_n_0\,
      Q => p_1_in(0),
      R => p_0_in
    );
\cnt_reg[32]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[28]_i_2_n_0\,
      CO(3) => \cnt_reg[32]_i_2_n_0\,
      CO(2) => \cnt_reg[32]_i_2_n_1\,
      CO(1) => \cnt_reg[32]_i_2_n_2\,
      CO(0) => \cnt_reg[32]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt0(32 downto 29),
      S(3) => p_1_in(0),
      S(2) => \cnt_reg_n_0_[31]\,
      S(1) => \cnt_reg_n_0_[30]\,
      S(0) => \cnt_reg_n_0_[29]\
    );
\cnt_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[33]_i_1_n_0\,
      Q => p_1_in(1),
      R => p_0_in
    );
\cnt_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[34]_i_1_n_0\,
      Q => p_1_in(2),
      R => p_0_in
    );
\cnt_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[35]_i_1_n_0\,
      Q => p_1_in(3),
      R => p_0_in
    );
\cnt_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[36]_i_1_n_0\,
      Q => p_1_in(4),
      R => p_0_in
    );
\cnt_reg[36]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[32]_i_2_n_0\,
      CO(3) => \cnt_reg[36]_i_2_n_0\,
      CO(2) => \cnt_reg[36]_i_2_n_1\,
      CO(1) => \cnt_reg[36]_i_2_n_2\,
      CO(0) => \cnt_reg[36]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt0(36 downto 33),
      S(3 downto 0) => p_1_in(4 downto 1)
    );
\cnt_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[37]_i_1_n_0\,
      Q => p_1_in(5),
      R => p_0_in
    );
\cnt_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[38]_i_1_n_0\,
      Q => p_1_in(6),
      R => p_0_in
    );
\cnt_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[39]_i_1_n_0\,
      Q => p_1_in(7),
      R => p_0_in
    );
\cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[3]_i_1_n_0\,
      Q => \cnt_reg_n_0_[3]\,
      R => p_0_in
    );
\cnt_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[40]_i_1_n_0\,
      Q => p_1_in(8),
      R => p_0_in
    );
\cnt_reg[40]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[36]_i_2_n_0\,
      CO(3) => \cnt_reg[40]_i_2_n_0\,
      CO(2) => \cnt_reg[40]_i_2_n_1\,
      CO(1) => \cnt_reg[40]_i_2_n_2\,
      CO(0) => \cnt_reg[40]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt0(40 downto 37),
      S(3 downto 0) => p_1_in(8 downto 5)
    );
\cnt_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[41]_i_1_n_0\,
      Q => p_1_in(9),
      R => p_0_in
    );
\cnt_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[42]_i_1_n_0\,
      Q => p_1_in(10),
      R => p_0_in
    );
\cnt_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[43]_i_1_n_0\,
      Q => p_1_in(11),
      R => p_0_in
    );
\cnt_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[44]_i_1_n_0\,
      Q => p_1_in(12),
      R => p_0_in
    );
\cnt_reg[44]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[40]_i_2_n_0\,
      CO(3) => \cnt_reg[44]_i_2_n_0\,
      CO(2) => \cnt_reg[44]_i_2_n_1\,
      CO(1) => \cnt_reg[44]_i_2_n_2\,
      CO(0) => \cnt_reg[44]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt0(44 downto 41),
      S(3 downto 0) => p_1_in(12 downto 9)
    );
\cnt_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[45]_i_1_n_0\,
      Q => p_1_in(13),
      R => p_0_in
    );
\cnt_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[46]_i_1_n_0\,
      Q => p_1_in(14),
      R => p_0_in
    );
\cnt_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[47]_i_1_n_0\,
      Q => p_1_in(15),
      R => p_0_in
    );
\cnt_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[48]_i_1_n_0\,
      Q => p_1_in(16),
      R => p_0_in
    );
\cnt_reg[48]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[44]_i_2_n_0\,
      CO(3) => \cnt_reg[48]_i_2_n_0\,
      CO(2) => \cnt_reg[48]_i_2_n_1\,
      CO(1) => \cnt_reg[48]_i_2_n_2\,
      CO(0) => \cnt_reg[48]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt0(48 downto 45),
      S(3 downto 0) => p_1_in(16 downto 13)
    );
\cnt_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[49]_i_1_n_0\,
      Q => p_1_in(17),
      R => p_0_in
    );
\cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[4]_i_1_n_0\,
      Q => \cnt_reg_n_0_[4]\,
      R => p_0_in
    );
\cnt_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cnt_reg[4]_i_2_n_0\,
      CO(2) => \cnt_reg[4]_i_2_n_1\,
      CO(1) => \cnt_reg[4]_i_2_n_2\,
      CO(0) => \cnt_reg[4]_i_2_n_3\,
      CYINIT => \cnt_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt0(4 downto 1),
      S(3) => \cnt_reg_n_0_[4]\,
      S(2) => \cnt_reg_n_0_[3]\,
      S(1) => \cnt_reg_n_0_[2]\,
      S(0) => \cnt_reg_n_0_[1]\
    );
\cnt_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[50]_i_1_n_0\,
      Q => p_1_in(18),
      R => p_0_in
    );
\cnt_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[51]_i_1_n_0\,
      Q => p_1_in(19),
      R => p_0_in
    );
\cnt_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[52]_i_1_n_0\,
      Q => p_1_in(20),
      R => p_0_in
    );
\cnt_reg[52]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[48]_i_2_n_0\,
      CO(3) => \cnt_reg[52]_i_2_n_0\,
      CO(2) => \cnt_reg[52]_i_2_n_1\,
      CO(1) => \cnt_reg[52]_i_2_n_2\,
      CO(0) => \cnt_reg[52]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt0(52 downto 49),
      S(3 downto 0) => p_1_in(20 downto 17)
    );
\cnt_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[53]_i_1_n_0\,
      Q => p_1_in(21),
      R => p_0_in
    );
\cnt_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[54]_i_1_n_0\,
      Q => p_1_in(22),
      R => p_0_in
    );
\cnt_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[55]_i_1_n_0\,
      Q => p_1_in(23),
      R => p_0_in
    );
\cnt_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[56]_i_1_n_0\,
      Q => p_1_in(24),
      R => p_0_in
    );
\cnt_reg[56]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[52]_i_2_n_0\,
      CO(3) => \cnt_reg[56]_i_2_n_0\,
      CO(2) => \cnt_reg[56]_i_2_n_1\,
      CO(1) => \cnt_reg[56]_i_2_n_2\,
      CO(0) => \cnt_reg[56]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt0(56 downto 53),
      S(3 downto 0) => p_1_in(24 downto 21)
    );
\cnt_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[57]_i_1_n_0\,
      Q => p_1_in(25),
      R => p_0_in
    );
\cnt_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[58]_i_1_n_0\,
      Q => p_1_in(26),
      R => p_0_in
    );
\cnt_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[59]_i_1_n_0\,
      Q => p_1_in(27),
      R => p_0_in
    );
\cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[5]_i_1_n_0\,
      Q => \cnt_reg_n_0_[5]\,
      R => p_0_in
    );
\cnt_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[60]_i_1_n_0\,
      Q => p_1_in(28),
      R => p_0_in
    );
\cnt_reg[60]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[56]_i_2_n_0\,
      CO(3) => \cnt_reg[60]_i_2_n_0\,
      CO(2) => \cnt_reg[60]_i_2_n_1\,
      CO(1) => \cnt_reg[60]_i_2_n_2\,
      CO(0) => \cnt_reg[60]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt0(60 downto 57),
      S(3 downto 0) => p_1_in(28 downto 25)
    );
\cnt_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[61]_i_1_n_0\,
      Q => p_1_in(29),
      R => p_0_in
    );
\cnt_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[62]_i_1_n_0\,
      Q => p_1_in(30),
      R => p_0_in
    );
\cnt_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[63]_i_1_n_0\,
      Q => p_1_in(31),
      R => p_0_in
    );
\cnt_reg[63]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[60]_i_2_n_0\,
      CO(3 downto 2) => \NLW_cnt_reg[63]_i_3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \cnt_reg[63]_i_3_n_2\,
      CO(0) => \cnt_reg[63]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_cnt_reg[63]_i_3_O_UNCONNECTED\(3),
      O(2 downto 0) => cnt0(63 downto 61),
      S(3) => '0',
      S(2 downto 0) => p_1_in(31 downto 29)
    );
\cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[6]_i_1_n_0\,
      Q => \cnt_reg_n_0_[6]\,
      R => p_0_in
    );
\cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[7]_i_1_n_0\,
      Q => \cnt_reg_n_0_[7]\,
      R => p_0_in
    );
\cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[8]_i_1_n_0\,
      Q => \cnt_reg_n_0_[8]\,
      R => p_0_in
    );
\cnt_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[4]_i_2_n_0\,
      CO(3) => \cnt_reg[8]_i_2_n_0\,
      CO(2) => \cnt_reg[8]_i_2_n_1\,
      CO(1) => \cnt_reg[8]_i_2_n_2\,
      CO(0) => \cnt_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt0(8 downto 5),
      S(3) => \cnt_reg_n_0_[8]\,
      S(2) => \cnt_reg_n_0_[7]\,
      S(1) => \cnt_reg_n_0_[6]\,
      S(0) => \cnt_reg_n_0_[5]\
    );
\cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[9]_i_1_n_0\,
      Q => \cnt_reg_n_0_[9]\,
      R => p_0_in
    );
\cnt_rx[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_6_in(19),
      I1 => s_axi_wstrb(1),
      I2 => \cnt_rx[31]_i_2_n_0\,
      O => \cnt_rx[15]_i_1_n_0\
    );
\cnt_rx[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_6_in(19),
      I1 => s_axi_wstrb(2),
      I2 => \cnt_rx[31]_i_2_n_0\,
      O => \cnt_rx[23]_i_1_n_0\
    );
\cnt_rx[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_6_in(19),
      I1 => s_axi_wstrb(3),
      I2 => \cnt_rx[31]_i_2_n_0\,
      O => \cnt_rx[31]_i_1_n_0\
    );
\cnt_rx[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF7F"
    )
        port map (
      I0 => tx_dma_data_ready_ovr_en_i_2_n_0,
      I1 => p_4_in(3),
      I2 => p_4_in(2),
      I3 => p_4_in(1),
      I4 => p_4_in(0),
      O => \cnt_rx[31]_i_2_n_0\
    );
\cnt_rx[39]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_axi_wstrb(0),
      I1 => p_6_in(19),
      I2 => \cnt_rx[63]_i_2_n_0\,
      O => \cnt_rx[39]_i_1_n_0\
    );
\cnt_rx[47]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_6_in(19),
      I1 => s_axi_wstrb(1),
      I2 => \cnt_rx[63]_i_2_n_0\,
      O => \cnt_rx[47]_i_1_n_0\
    );
\cnt_rx[55]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_6_in(19),
      I1 => s_axi_wstrb(2),
      I2 => \cnt_rx[63]_i_2_n_0\,
      O => \cnt_rx[55]_i_1_n_0\
    );
\cnt_rx[63]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_6_in(19),
      I1 => s_axi_wstrb(3),
      I2 => \cnt_rx[63]_i_2_n_0\,
      O => \cnt_rx[63]_i_1_n_0\
    );
\cnt_rx[63]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFFFFFF"
    )
        port map (
      I0 => p_4_in(0),
      I1 => p_4_in(1),
      I2 => tx_dma_data_ready_ovr_en_i_2_n_0,
      I3 => p_4_in(2),
      I4 => p_4_in(3),
      O => \cnt_rx[63]_i_2_n_0\
    );
\cnt_rx[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_axi_wstrb(0),
      I1 => p_6_in(19),
      I2 => \cnt_rx[31]_i_2_n_0\,
      O => \cnt_rx[7]_i_1_n_0\
    );
cnt_rx_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444400F44444"
    )
        port map (
      I0 => rx_enable1,
      I1 => p_6_in(19),
      I2 => s_axi_wdata(6),
      I3 => s_axi_wdata(7),
      I4 => s_axi_wstrb(0),
      I5 => tx_enable_i_3_n_0,
      O => cnt_rx_en_i_1_n_0
    );
cnt_rx_en_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => cnt_rx_en_i_1_n_0,
      Q => p_6_in(19),
      R => p_0_in
    );
\cnt_rx_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_rx[7]_i_1_n_0\,
      D => s_axi_wdata(0),
      Q => \cnt_rx_reg_n_0_[0]\,
      R => p_0_in
    );
\cnt_rx_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_rx[15]_i_1_n_0\,
      D => s_axi_wdata(10),
      Q => \cnt_rx_reg_n_0_[10]\,
      R => p_0_in
    );
\cnt_rx_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_rx[15]_i_1_n_0\,
      D => s_axi_wdata(11),
      Q => \cnt_rx_reg_n_0_[11]\,
      R => p_0_in
    );
\cnt_rx_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_rx[15]_i_1_n_0\,
      D => s_axi_wdata(12),
      Q => \cnt_rx_reg_n_0_[12]\,
      R => p_0_in
    );
\cnt_rx_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_rx[15]_i_1_n_0\,
      D => s_axi_wdata(13),
      Q => \cnt_rx_reg_n_0_[13]\,
      R => p_0_in
    );
\cnt_rx_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_rx[15]_i_1_n_0\,
      D => s_axi_wdata(14),
      Q => \cnt_rx_reg_n_0_[14]\,
      R => p_0_in
    );
\cnt_rx_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_rx[15]_i_1_n_0\,
      D => s_axi_wdata(15),
      Q => \cnt_rx_reg_n_0_[15]\,
      R => p_0_in
    );
\cnt_rx_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_rx[23]_i_1_n_0\,
      D => s_axi_wdata(16),
      Q => \cnt_rx_reg_n_0_[16]\,
      R => p_0_in
    );
\cnt_rx_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_rx[23]_i_1_n_0\,
      D => s_axi_wdata(17),
      Q => \cnt_rx_reg_n_0_[17]\,
      R => p_0_in
    );
\cnt_rx_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_rx[23]_i_1_n_0\,
      D => s_axi_wdata(18),
      Q => \cnt_rx_reg_n_0_[18]\,
      R => p_0_in
    );
\cnt_rx_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_rx[23]_i_1_n_0\,
      D => s_axi_wdata(19),
      Q => \cnt_rx_reg_n_0_[19]\,
      R => p_0_in
    );
\cnt_rx_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_rx[7]_i_1_n_0\,
      D => s_axi_wdata(1),
      Q => \cnt_rx_reg_n_0_[1]\,
      R => p_0_in
    );
\cnt_rx_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_rx[23]_i_1_n_0\,
      D => s_axi_wdata(20),
      Q => \cnt_rx_reg_n_0_[20]\,
      R => p_0_in
    );
\cnt_rx_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_rx[23]_i_1_n_0\,
      D => s_axi_wdata(21),
      Q => \cnt_rx_reg_n_0_[21]\,
      R => p_0_in
    );
\cnt_rx_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_rx[23]_i_1_n_0\,
      D => s_axi_wdata(22),
      Q => \cnt_rx_reg_n_0_[22]\,
      R => p_0_in
    );
\cnt_rx_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_rx[23]_i_1_n_0\,
      D => s_axi_wdata(23),
      Q => \cnt_rx_reg_n_0_[23]\,
      R => p_0_in
    );
\cnt_rx_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_rx[31]_i_1_n_0\,
      D => s_axi_wdata(24),
      Q => \cnt_rx_reg_n_0_[24]\,
      R => p_0_in
    );
\cnt_rx_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_rx[31]_i_1_n_0\,
      D => s_axi_wdata(25),
      Q => \cnt_rx_reg_n_0_[25]\,
      R => p_0_in
    );
\cnt_rx_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_rx[31]_i_1_n_0\,
      D => s_axi_wdata(26),
      Q => \cnt_rx_reg_n_0_[26]\,
      R => p_0_in
    );
\cnt_rx_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_rx[31]_i_1_n_0\,
      D => s_axi_wdata(27),
      Q => \cnt_rx_reg_n_0_[27]\,
      R => p_0_in
    );
\cnt_rx_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_rx[31]_i_1_n_0\,
      D => s_axi_wdata(28),
      Q => \cnt_rx_reg_n_0_[28]\,
      R => p_0_in
    );
\cnt_rx_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_rx[31]_i_1_n_0\,
      D => s_axi_wdata(29),
      Q => \cnt_rx_reg_n_0_[29]\,
      R => p_0_in
    );
\cnt_rx_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_rx[7]_i_1_n_0\,
      D => s_axi_wdata(2),
      Q => \cnt_rx_reg_n_0_[2]\,
      R => p_0_in
    );
\cnt_rx_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_rx[31]_i_1_n_0\,
      D => s_axi_wdata(30),
      Q => \cnt_rx_reg_n_0_[30]\,
      R => p_0_in
    );
\cnt_rx_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_rx[31]_i_1_n_0\,
      D => s_axi_wdata(31),
      Q => \cnt_rx_reg_n_0_[31]\,
      R => p_0_in
    );
\cnt_rx_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_rx[39]_i_1_n_0\,
      D => s_axi_wdata(0),
      Q => data7(0),
      R => p_0_in
    );
\cnt_rx_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_rx[39]_i_1_n_0\,
      D => s_axi_wdata(1),
      Q => data7(1),
      R => p_0_in
    );
\cnt_rx_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_rx[39]_i_1_n_0\,
      D => s_axi_wdata(2),
      Q => data7(2),
      R => p_0_in
    );
\cnt_rx_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_rx[39]_i_1_n_0\,
      D => s_axi_wdata(3),
      Q => data7(3),
      R => p_0_in
    );
\cnt_rx_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_rx[39]_i_1_n_0\,
      D => s_axi_wdata(4),
      Q => data7(4),
      R => p_0_in
    );
\cnt_rx_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_rx[39]_i_1_n_0\,
      D => s_axi_wdata(5),
      Q => data7(5),
      R => p_0_in
    );
\cnt_rx_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_rx[39]_i_1_n_0\,
      D => s_axi_wdata(6),
      Q => data7(6),
      R => p_0_in
    );
\cnt_rx_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_rx[39]_i_1_n_0\,
      D => s_axi_wdata(7),
      Q => data7(7),
      R => p_0_in
    );
\cnt_rx_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_rx[7]_i_1_n_0\,
      D => s_axi_wdata(3),
      Q => \cnt_rx_reg_n_0_[3]\,
      R => p_0_in
    );
\cnt_rx_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_rx[47]_i_1_n_0\,
      D => s_axi_wdata(8),
      Q => data7(8),
      R => p_0_in
    );
\cnt_rx_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_rx[47]_i_1_n_0\,
      D => s_axi_wdata(9),
      Q => data7(9),
      R => p_0_in
    );
\cnt_rx_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_rx[47]_i_1_n_0\,
      D => s_axi_wdata(10),
      Q => data7(10),
      R => p_0_in
    );
\cnt_rx_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_rx[47]_i_1_n_0\,
      D => s_axi_wdata(11),
      Q => data7(11),
      R => p_0_in
    );
\cnt_rx_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_rx[47]_i_1_n_0\,
      D => s_axi_wdata(12),
      Q => data7(12),
      R => p_0_in
    );
\cnt_rx_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_rx[47]_i_1_n_0\,
      D => s_axi_wdata(13),
      Q => data7(13),
      R => p_0_in
    );
\cnt_rx_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_rx[47]_i_1_n_0\,
      D => s_axi_wdata(14),
      Q => data7(14),
      R => p_0_in
    );
\cnt_rx_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_rx[47]_i_1_n_0\,
      D => s_axi_wdata(15),
      Q => data7(15),
      R => p_0_in
    );
\cnt_rx_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_rx[55]_i_1_n_0\,
      D => s_axi_wdata(16),
      Q => data7(16),
      R => p_0_in
    );
\cnt_rx_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_rx[55]_i_1_n_0\,
      D => s_axi_wdata(17),
      Q => data7(17),
      R => p_0_in
    );
\cnt_rx_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_rx[7]_i_1_n_0\,
      D => s_axi_wdata(4),
      Q => \cnt_rx_reg_n_0_[4]\,
      R => p_0_in
    );
\cnt_rx_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_rx[55]_i_1_n_0\,
      D => s_axi_wdata(18),
      Q => data7(18),
      R => p_0_in
    );
\cnt_rx_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_rx[55]_i_1_n_0\,
      D => s_axi_wdata(19),
      Q => data7(19),
      R => p_0_in
    );
\cnt_rx_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_rx[55]_i_1_n_0\,
      D => s_axi_wdata(20),
      Q => data7(20),
      R => p_0_in
    );
\cnt_rx_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_rx[55]_i_1_n_0\,
      D => s_axi_wdata(21),
      Q => data7(21),
      R => p_0_in
    );
\cnt_rx_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_rx[55]_i_1_n_0\,
      D => s_axi_wdata(22),
      Q => data7(22),
      R => p_0_in
    );
\cnt_rx_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_rx[55]_i_1_n_0\,
      D => s_axi_wdata(23),
      Q => data7(23),
      R => p_0_in
    );
\cnt_rx_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_rx[63]_i_1_n_0\,
      D => s_axi_wdata(24),
      Q => data7(24),
      R => p_0_in
    );
\cnt_rx_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_rx[63]_i_1_n_0\,
      D => s_axi_wdata(25),
      Q => data7(25),
      R => p_0_in
    );
\cnt_rx_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_rx[63]_i_1_n_0\,
      D => s_axi_wdata(26),
      Q => data7(26),
      R => p_0_in
    );
\cnt_rx_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_rx[63]_i_1_n_0\,
      D => s_axi_wdata(27),
      Q => data7(27),
      R => p_0_in
    );
\cnt_rx_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_rx[7]_i_1_n_0\,
      D => s_axi_wdata(5),
      Q => \cnt_rx_reg_n_0_[5]\,
      R => p_0_in
    );
\cnt_rx_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_rx[63]_i_1_n_0\,
      D => s_axi_wdata(28),
      Q => data7(28),
      R => p_0_in
    );
\cnt_rx_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_rx[63]_i_1_n_0\,
      D => s_axi_wdata(29),
      Q => data7(29),
      R => p_0_in
    );
\cnt_rx_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_rx[63]_i_1_n_0\,
      D => s_axi_wdata(30),
      Q => data7(30),
      R => p_0_in
    );
\cnt_rx_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_rx[63]_i_1_n_0\,
      D => s_axi_wdata(31),
      Q => data7(31),
      R => p_0_in
    );
\cnt_rx_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_rx[7]_i_1_n_0\,
      D => s_axi_wdata(6),
      Q => \cnt_rx_reg_n_0_[6]\,
      R => p_0_in
    );
\cnt_rx_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_rx[7]_i_1_n_0\,
      D => s_axi_wdata(7),
      Q => \cnt_rx_reg_n_0_[7]\,
      R => p_0_in
    );
\cnt_rx_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_rx[15]_i_1_n_0\,
      D => s_axi_wdata(8),
      Q => \cnt_rx_reg_n_0_[8]\,
      R => p_0_in
    );
\cnt_rx_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_rx[15]_i_1_n_0\,
      D => s_axi_wdata(9),
      Q => \cnt_rx_reg_n_0_[9]\,
      R => p_0_in
    );
\cnt_tx[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => p_6_in(18),
      I1 => p_4_in(3),
      I2 => s_axi_wstrb(1),
      I3 => \cnt_tx[31]_i_2_n_0\,
      O => \cnt_tx[15]_i_1_n_0\
    );
\cnt_tx[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => p_6_in(18),
      I1 => p_4_in(3),
      I2 => s_axi_wstrb(2),
      I3 => \cnt_tx[31]_i_2_n_0\,
      O => \cnt_tx[23]_i_1_n_0\
    );
\cnt_tx[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => p_6_in(18),
      I1 => p_4_in(3),
      I2 => s_axi_wstrb(3),
      I3 => \cnt_tx[31]_i_2_n_0\,
      O => \cnt_tx[31]_i_1_n_0\
    );
\cnt_tx[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => tx_dma_data_ready_ovr_en_i_2_n_0,
      I1 => p_4_in(2),
      I2 => p_4_in(1),
      I3 => p_4_in(0),
      O => \cnt_tx[31]_i_2_n_0\
    );
\cnt_tx[39]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \cnt_tx[63]_i_2_n_0\,
      I1 => p_6_in(18),
      I2 => p_4_in(3),
      I3 => s_axi_wstrb(0),
      O => \cnt_tx[39]_i_1_n_0\
    );
\cnt_tx[47]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \cnt_tx[63]_i_2_n_0\,
      I1 => p_6_in(18),
      I2 => p_4_in(3),
      I3 => s_axi_wstrb(1),
      O => \cnt_tx[47]_i_1_n_0\
    );
\cnt_tx[55]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \cnt_tx[63]_i_2_n_0\,
      I1 => p_6_in(18),
      I2 => p_4_in(3),
      I3 => s_axi_wstrb(2),
      O => \cnt_tx[55]_i_1_n_0\
    );
\cnt_tx[63]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => p_6_in(18),
      I1 => p_4_in(3),
      I2 => s_axi_wstrb(3),
      I3 => \cnt_tx[63]_i_2_n_0\,
      O => \cnt_tx[63]_i_1_n_0\
    );
\cnt_tx[63]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => tx_dma_data_ready_ovr_en_i_2_n_0,
      I1 => p_4_in(0),
      I2 => p_4_in(2),
      I3 => p_4_in(1),
      O => \cnt_tx[63]_i_2_n_0\
    );
\cnt_tx[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => p_6_in(18),
      I1 => p_4_in(3),
      I2 => s_axi_wstrb(0),
      I3 => \cnt_tx[31]_i_2_n_0\,
      O => \cnt_tx[7]_i_1_n_0\
    );
cnt_tx_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"444444440044F444"
    )
        port map (
      I0 => tx_enable1,
      I1 => p_6_in(18),
      I2 => s_axi_wdata(4),
      I3 => s_axi_wstrb(0),
      I4 => s_axi_wdata(5),
      I5 => tx_enable_i_3_n_0,
      O => cnt_tx_en_i_1_n_0
    );
cnt_tx_en_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => cnt_tx_en_i_1_n_0,
      Q => p_6_in(18),
      R => p_0_in
    );
\cnt_tx_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_tx[7]_i_1_n_0\,
      D => s_axi_wdata(0),
      Q => \cnt_tx_reg_n_0_[0]\,
      R => p_0_in
    );
\cnt_tx_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_tx[15]_i_1_n_0\,
      D => s_axi_wdata(10),
      Q => \cnt_tx_reg_n_0_[10]\,
      R => p_0_in
    );
\cnt_tx_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_tx[15]_i_1_n_0\,
      D => s_axi_wdata(11),
      Q => \cnt_tx_reg_n_0_[11]\,
      R => p_0_in
    );
\cnt_tx_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_tx[15]_i_1_n_0\,
      D => s_axi_wdata(12),
      Q => \cnt_tx_reg_n_0_[12]\,
      R => p_0_in
    );
\cnt_tx_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_tx[15]_i_1_n_0\,
      D => s_axi_wdata(13),
      Q => \cnt_tx_reg_n_0_[13]\,
      R => p_0_in
    );
\cnt_tx_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_tx[15]_i_1_n_0\,
      D => s_axi_wdata(14),
      Q => \cnt_tx_reg_n_0_[14]\,
      R => p_0_in
    );
\cnt_tx_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_tx[15]_i_1_n_0\,
      D => s_axi_wdata(15),
      Q => \cnt_tx_reg_n_0_[15]\,
      R => p_0_in
    );
\cnt_tx_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_tx[23]_i_1_n_0\,
      D => s_axi_wdata(16),
      Q => \cnt_tx_reg_n_0_[16]\,
      R => p_0_in
    );
\cnt_tx_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_tx[23]_i_1_n_0\,
      D => s_axi_wdata(17),
      Q => \cnt_tx_reg_n_0_[17]\,
      R => p_0_in
    );
\cnt_tx_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_tx[23]_i_1_n_0\,
      D => s_axi_wdata(18),
      Q => \cnt_tx_reg_n_0_[18]\,
      R => p_0_in
    );
\cnt_tx_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_tx[23]_i_1_n_0\,
      D => s_axi_wdata(19),
      Q => \cnt_tx_reg_n_0_[19]\,
      R => p_0_in
    );
\cnt_tx_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_tx[7]_i_1_n_0\,
      D => s_axi_wdata(1),
      Q => \cnt_tx_reg_n_0_[1]\,
      R => p_0_in
    );
\cnt_tx_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_tx[23]_i_1_n_0\,
      D => s_axi_wdata(20),
      Q => \cnt_tx_reg_n_0_[20]\,
      R => p_0_in
    );
\cnt_tx_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_tx[23]_i_1_n_0\,
      D => s_axi_wdata(21),
      Q => \cnt_tx_reg_n_0_[21]\,
      R => p_0_in
    );
\cnt_tx_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_tx[23]_i_1_n_0\,
      D => s_axi_wdata(22),
      Q => \cnt_tx_reg_n_0_[22]\,
      R => p_0_in
    );
\cnt_tx_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_tx[23]_i_1_n_0\,
      D => s_axi_wdata(23),
      Q => \cnt_tx_reg_n_0_[23]\,
      R => p_0_in
    );
\cnt_tx_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_tx[31]_i_1_n_0\,
      D => s_axi_wdata(24),
      Q => \cnt_tx_reg_n_0_[24]\,
      R => p_0_in
    );
\cnt_tx_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_tx[31]_i_1_n_0\,
      D => s_axi_wdata(25),
      Q => \cnt_tx_reg_n_0_[25]\,
      R => p_0_in
    );
\cnt_tx_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_tx[31]_i_1_n_0\,
      D => s_axi_wdata(26),
      Q => \cnt_tx_reg_n_0_[26]\,
      R => p_0_in
    );
\cnt_tx_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_tx[31]_i_1_n_0\,
      D => s_axi_wdata(27),
      Q => \cnt_tx_reg_n_0_[27]\,
      R => p_0_in
    );
\cnt_tx_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_tx[31]_i_1_n_0\,
      D => s_axi_wdata(28),
      Q => \cnt_tx_reg_n_0_[28]\,
      R => p_0_in
    );
\cnt_tx_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_tx[31]_i_1_n_0\,
      D => s_axi_wdata(29),
      Q => \cnt_tx_reg_n_0_[29]\,
      R => p_0_in
    );
\cnt_tx_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_tx[7]_i_1_n_0\,
      D => s_axi_wdata(2),
      Q => \cnt_tx_reg_n_0_[2]\,
      R => p_0_in
    );
\cnt_tx_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_tx[31]_i_1_n_0\,
      D => s_axi_wdata(30),
      Q => \cnt_tx_reg_n_0_[30]\,
      R => p_0_in
    );
\cnt_tx_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_tx[31]_i_1_n_0\,
      D => s_axi_wdata(31),
      Q => \cnt_tx_reg_n_0_[31]\,
      R => p_0_in
    );
\cnt_tx_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_tx[39]_i_1_n_0\,
      D => s_axi_wdata(0),
      Q => data5(0),
      R => p_0_in
    );
\cnt_tx_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_tx[39]_i_1_n_0\,
      D => s_axi_wdata(1),
      Q => data5(1),
      R => p_0_in
    );
\cnt_tx_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_tx[39]_i_1_n_0\,
      D => s_axi_wdata(2),
      Q => data5(2),
      R => p_0_in
    );
\cnt_tx_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_tx[39]_i_1_n_0\,
      D => s_axi_wdata(3),
      Q => data5(3),
      R => p_0_in
    );
\cnt_tx_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_tx[39]_i_1_n_0\,
      D => s_axi_wdata(4),
      Q => data5(4),
      R => p_0_in
    );
\cnt_tx_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_tx[39]_i_1_n_0\,
      D => s_axi_wdata(5),
      Q => data5(5),
      R => p_0_in
    );
\cnt_tx_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_tx[39]_i_1_n_0\,
      D => s_axi_wdata(6),
      Q => data5(6),
      R => p_0_in
    );
\cnt_tx_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_tx[39]_i_1_n_0\,
      D => s_axi_wdata(7),
      Q => data5(7),
      R => p_0_in
    );
\cnt_tx_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_tx[7]_i_1_n_0\,
      D => s_axi_wdata(3),
      Q => \cnt_tx_reg_n_0_[3]\,
      R => p_0_in
    );
\cnt_tx_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_tx[47]_i_1_n_0\,
      D => s_axi_wdata(8),
      Q => data5(8),
      R => p_0_in
    );
\cnt_tx_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_tx[47]_i_1_n_0\,
      D => s_axi_wdata(9),
      Q => data5(9),
      R => p_0_in
    );
\cnt_tx_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_tx[47]_i_1_n_0\,
      D => s_axi_wdata(10),
      Q => data5(10),
      R => p_0_in
    );
\cnt_tx_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_tx[47]_i_1_n_0\,
      D => s_axi_wdata(11),
      Q => data5(11),
      R => p_0_in
    );
\cnt_tx_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_tx[47]_i_1_n_0\,
      D => s_axi_wdata(12),
      Q => data5(12),
      R => p_0_in
    );
\cnt_tx_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_tx[47]_i_1_n_0\,
      D => s_axi_wdata(13),
      Q => data5(13),
      R => p_0_in
    );
\cnt_tx_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_tx[47]_i_1_n_0\,
      D => s_axi_wdata(14),
      Q => data5(14),
      R => p_0_in
    );
\cnt_tx_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_tx[47]_i_1_n_0\,
      D => s_axi_wdata(15),
      Q => data5(15),
      R => p_0_in
    );
\cnt_tx_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_tx[55]_i_1_n_0\,
      D => s_axi_wdata(16),
      Q => data5(16),
      R => p_0_in
    );
\cnt_tx_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_tx[55]_i_1_n_0\,
      D => s_axi_wdata(17),
      Q => data5(17),
      R => p_0_in
    );
\cnt_tx_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_tx[7]_i_1_n_0\,
      D => s_axi_wdata(4),
      Q => \cnt_tx_reg_n_0_[4]\,
      R => p_0_in
    );
\cnt_tx_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_tx[55]_i_1_n_0\,
      D => s_axi_wdata(18),
      Q => data5(18),
      R => p_0_in
    );
\cnt_tx_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_tx[55]_i_1_n_0\,
      D => s_axi_wdata(19),
      Q => data5(19),
      R => p_0_in
    );
\cnt_tx_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_tx[55]_i_1_n_0\,
      D => s_axi_wdata(20),
      Q => data5(20),
      R => p_0_in
    );
\cnt_tx_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_tx[55]_i_1_n_0\,
      D => s_axi_wdata(21),
      Q => data5(21),
      R => p_0_in
    );
\cnt_tx_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_tx[55]_i_1_n_0\,
      D => s_axi_wdata(22),
      Q => data5(22),
      R => p_0_in
    );
\cnt_tx_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_tx[55]_i_1_n_0\,
      D => s_axi_wdata(23),
      Q => data5(23),
      R => p_0_in
    );
\cnt_tx_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_tx[63]_i_1_n_0\,
      D => s_axi_wdata(24),
      Q => data5(24),
      R => p_0_in
    );
\cnt_tx_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_tx[63]_i_1_n_0\,
      D => s_axi_wdata(25),
      Q => data5(25),
      R => p_0_in
    );
\cnt_tx_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_tx[63]_i_1_n_0\,
      D => s_axi_wdata(26),
      Q => data5(26),
      R => p_0_in
    );
\cnt_tx_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_tx[63]_i_1_n_0\,
      D => s_axi_wdata(27),
      Q => data5(27),
      R => p_0_in
    );
\cnt_tx_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_tx[7]_i_1_n_0\,
      D => s_axi_wdata(5),
      Q => \cnt_tx_reg_n_0_[5]\,
      R => p_0_in
    );
\cnt_tx_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_tx[63]_i_1_n_0\,
      D => s_axi_wdata(28),
      Q => data5(28),
      R => p_0_in
    );
\cnt_tx_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_tx[63]_i_1_n_0\,
      D => s_axi_wdata(29),
      Q => data5(29),
      R => p_0_in
    );
\cnt_tx_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_tx[63]_i_1_n_0\,
      D => s_axi_wdata(30),
      Q => data5(30),
      R => p_0_in
    );
\cnt_tx_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_tx[63]_i_1_n_0\,
      D => s_axi_wdata(31),
      Q => data5(31),
      R => p_0_in
    );
\cnt_tx_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_tx[7]_i_1_n_0\,
      D => s_axi_wdata(6),
      Q => \cnt_tx_reg_n_0_[6]\,
      R => p_0_in
    );
\cnt_tx_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_tx[7]_i_1_n_0\,
      D => s_axi_wdata(7),
      Q => \cnt_tx_reg_n_0_[7]\,
      R => p_0_in
    );
\cnt_tx_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_tx[15]_i_1_n_0\,
      D => s_axi_wdata(8),
      Q => \cnt_tx_reg_n_0_[8]\,
      R => p_0_in
    );
\cnt_tx_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \cnt_tx[15]_i_1_n_0\,
      D => s_axi_wdata(9),
      Q => \cnt_tx_reg_n_0_[9]\,
      R => p_0_in
    );
rx_data_ready_ovr_en_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tx_dma_data_ready_ovr_en,
      D => s_axi_wdata(6),
      Q => rx_data_ready_ovr_en,
      R => p_0_in
    );
rx_data_ready_ovr_val_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tx_dma_data_ready_ovr_en,
      D => s_axi_wdata(7),
      Q => rx_data_ready_ovr_val_reg_n_0,
      R => p_0_in
    );
rx_data_ready_stky_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFFFE200E2E2"
    )
        port map (
      I0 => rx_data_ready,
      I1 => rx_data_ready_ovr_en,
      I2 => rx_data_ready_ovr_val_reg_n_0,
      I3 => \s_axi_rdata[21]_i_3_n_0\,
      I4 => s_axi_reg_rden,
      I5 => rx_data_ready_stky,
      O => rx_data_ready_stky_i_1_n_0
    );
rx_data_ready_stky_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => rx_data_ready_stky_i_1_n_0,
      Q => rx_data_ready_stky,
      R => p_0_in
    );
rx_dma_xfer_req_ovr_en_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tx_dma_data_ready_ovr_en,
      D => s_axi_wdata(2),
      Q => rx_dma_xfer_req_ovr_en,
      R => p_0_in
    );
rx_dma_xfer_req_ovr_val_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tx_dma_data_ready_ovr_en,
      D => s_axi_wdata(3),
      Q => rx_dma_xfer_req_ovr_val,
      R => p_0_in
    );
rx_dma_xfer_req_stky_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFFFE200E2E2"
    )
        port map (
      I0 => rx_dma_xfer_req,
      I1 => rx_dma_xfer_req_ovr_en,
      I2 => rx_dma_xfer_req_ovr_val,
      I3 => \s_axi_rdata[21]_i_3_n_0\,
      I4 => s_axi_reg_rden,
      I5 => rx_dma_xfer_req_stky,
      O => rx_dma_xfer_req_stky_i_1_n_0
    );
rx_dma_xfer_req_stky_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => rx_dma_xfer_req_stky_i_1_n_0,
      Q => rx_dma_xfer_req_stky,
      R => p_0_in
    );
rx_enable1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => rx_enable1_carry_n_0,
      CO(2) => rx_enable1_carry_n_1,
      CO(1) => rx_enable1_carry_n_2,
      CO(0) => rx_enable1_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_rx_enable1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => rx_enable1_carry_i_1_n_0,
      S(2) => rx_enable1_carry_i_2_n_0,
      S(1) => rx_enable1_carry_i_3_n_0,
      S(0) => rx_enable1_carry_i_4_n_0
    );
\rx_enable1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => rx_enable1_carry_n_0,
      CO(3) => \rx_enable1_carry__0_n_0\,
      CO(2) => \rx_enable1_carry__0_n_1\,
      CO(1) => \rx_enable1_carry__0_n_2\,
      CO(0) => \rx_enable1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_rx_enable1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \rx_enable1_carry__0_i_1_n_0\,
      S(2) => \rx_enable1_carry__0_i_2_n_0\,
      S(1) => \rx_enable1_carry__0_i_3_n_0\,
      S(0) => \rx_enable1_carry__0_i_4_n_0\
    );
\rx_enable1_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \cnt_rx_reg_n_0_[23]\,
      I1 => \cnt_reg_n_0_[23]\,
      I2 => \cnt_reg_n_0_[22]\,
      I3 => \cnt_rx_reg_n_0_[22]\,
      I4 => \cnt_reg_n_0_[21]\,
      I5 => \cnt_rx_reg_n_0_[21]\,
      O => \rx_enable1_carry__0_i_1_n_0\
    );
\rx_enable1_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \cnt_rx_reg_n_0_[20]\,
      I1 => \cnt_reg_n_0_[20]\,
      I2 => \cnt_reg_n_0_[19]\,
      I3 => \cnt_rx_reg_n_0_[19]\,
      I4 => \cnt_reg_n_0_[18]\,
      I5 => \cnt_rx_reg_n_0_[18]\,
      O => \rx_enable1_carry__0_i_2_n_0\
    );
\rx_enable1_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \cnt_rx_reg_n_0_[17]\,
      I1 => \cnt_reg_n_0_[17]\,
      I2 => \cnt_reg_n_0_[16]\,
      I3 => \cnt_rx_reg_n_0_[16]\,
      I4 => \cnt_reg_n_0_[15]\,
      I5 => \cnt_rx_reg_n_0_[15]\,
      O => \rx_enable1_carry__0_i_3_n_0\
    );
\rx_enable1_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \cnt_rx_reg_n_0_[14]\,
      I1 => \cnt_reg_n_0_[14]\,
      I2 => \cnt_reg_n_0_[12]\,
      I3 => \cnt_rx_reg_n_0_[12]\,
      I4 => \cnt_reg_n_0_[13]\,
      I5 => \cnt_rx_reg_n_0_[13]\,
      O => \rx_enable1_carry__0_i_4_n_0\
    );
\rx_enable1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rx_enable1_carry__0_n_0\,
      CO(3) => \rx_enable1_carry__1_n_0\,
      CO(2) => \rx_enable1_carry__1_n_1\,
      CO(1) => \rx_enable1_carry__1_n_2\,
      CO(0) => \rx_enable1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_rx_enable1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \rx_enable1_carry__1_i_1_n_0\,
      S(2) => \rx_enable1_carry__1_i_2_n_0\,
      S(1) => \rx_enable1_carry__1_i_3_n_0\,
      S(0) => \rx_enable1_carry__1_i_4_n_0\
    );
\rx_enable1_carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_1_in(3),
      I1 => data7(3),
      I2 => p_1_in(1),
      I3 => data7(1),
      I4 => data7(2),
      I5 => p_1_in(2),
      O => \rx_enable1_carry__1_i_1_n_0\
    );
\rx_enable1_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \cnt_rx_reg_n_0_[31]\,
      I1 => \cnt_reg_n_0_[31]\,
      I2 => p_1_in(0),
      I3 => data7(0),
      I4 => \cnt_reg_n_0_[30]\,
      I5 => \cnt_rx_reg_n_0_[30]\,
      O => \rx_enable1_carry__1_i_2_n_0\
    );
\rx_enable1_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \cnt_rx_reg_n_0_[29]\,
      I1 => \cnt_reg_n_0_[29]\,
      I2 => \cnt_reg_n_0_[27]\,
      I3 => \cnt_rx_reg_n_0_[27]\,
      I4 => \cnt_reg_n_0_[28]\,
      I5 => \cnt_rx_reg_n_0_[28]\,
      O => \rx_enable1_carry__1_i_3_n_0\
    );
\rx_enable1_carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \cnt_rx_reg_n_0_[26]\,
      I1 => \cnt_reg_n_0_[26]\,
      I2 => \cnt_reg_n_0_[24]\,
      I3 => \cnt_rx_reg_n_0_[24]\,
      I4 => \cnt_reg_n_0_[25]\,
      I5 => \cnt_rx_reg_n_0_[25]\,
      O => \rx_enable1_carry__1_i_4_n_0\
    );
\rx_enable1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \rx_enable1_carry__1_n_0\,
      CO(3) => \rx_enable1_carry__2_n_0\,
      CO(2) => \rx_enable1_carry__2_n_1\,
      CO(1) => \rx_enable1_carry__2_n_2\,
      CO(0) => \rx_enable1_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_rx_enable1_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \rx_enable1_carry__2_i_1_n_0\,
      S(2) => \rx_enable1_carry__2_i_2_n_0\,
      S(1) => \rx_enable1_carry__2_i_3_n_0\,
      S(0) => \rx_enable1_carry__2_i_4_n_0\
    );
\rx_enable1_carry__2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => data7(15),
      I1 => p_1_in(15),
      I2 => p_1_in(13),
      I3 => data7(13),
      I4 => p_1_in(14),
      I5 => data7(14),
      O => \rx_enable1_carry__2_i_1_n_0\
    );
\rx_enable1_carry__2_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => data7(12),
      I1 => p_1_in(12),
      I2 => p_1_in(11),
      I3 => data7(11),
      I4 => p_1_in(10),
      I5 => data7(10),
      O => \rx_enable1_carry__2_i_2_n_0\
    );
\rx_enable1_carry__2_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => data7(9),
      I1 => p_1_in(9),
      I2 => p_1_in(7),
      I3 => data7(7),
      I4 => p_1_in(8),
      I5 => data7(8),
      O => \rx_enable1_carry__2_i_3_n_0\
    );
\rx_enable1_carry__2_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => data7(6),
      I1 => p_1_in(6),
      I2 => p_1_in(4),
      I3 => data7(4),
      I4 => p_1_in(5),
      I5 => data7(5),
      O => \rx_enable1_carry__2_i_4_n_0\
    );
\rx_enable1_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \rx_enable1_carry__2_n_0\,
      CO(3) => \rx_enable1_carry__3_n_0\,
      CO(2) => \rx_enable1_carry__3_n_1\,
      CO(1) => \rx_enable1_carry__3_n_2\,
      CO(0) => \rx_enable1_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_rx_enable1_carry__3_O_UNCONNECTED\(3 downto 0),
      S(3) => \rx_enable1_carry__3_i_1_n_0\,
      S(2) => \rx_enable1_carry__3_i_2_n_0\,
      S(1) => \rx_enable1_carry__3_i_3_n_0\,
      S(0) => \rx_enable1_carry__3_i_4_n_0\
    );
\rx_enable1_carry__3_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => data7(27),
      I1 => p_1_in(27),
      I2 => p_1_in(25),
      I3 => data7(25),
      I4 => p_1_in(26),
      I5 => data7(26),
      O => \rx_enable1_carry__3_i_1_n_0\
    );
\rx_enable1_carry__3_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_1_in(24),
      I1 => data7(24),
      I2 => p_1_in(22),
      I3 => data7(22),
      I4 => data7(23),
      I5 => p_1_in(23),
      O => \rx_enable1_carry__3_i_2_n_0\
    );
\rx_enable1_carry__3_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_1_in(21),
      I1 => data7(21),
      I2 => p_1_in(19),
      I3 => data7(19),
      I4 => data7(20),
      I5 => p_1_in(20),
      O => \rx_enable1_carry__3_i_3_n_0\
    );
\rx_enable1_carry__3_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_1_in(16),
      I1 => data7(16),
      I2 => p_1_in(17),
      I3 => data7(17),
      I4 => data7(18),
      I5 => p_1_in(18),
      O => \rx_enable1_carry__3_i_4_n_0\
    );
\rx_enable1_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \rx_enable1_carry__3_n_0\,
      CO(3 downto 2) => \NLW_rx_enable1_carry__4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => rx_enable1,
      CO(0) => \rx_enable1_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_rx_enable1_carry__4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \rx_enable1_carry__4_i_1_n_0\,
      S(0) => \rx_enable1_carry__4_i_2_n_0\
    );
\rx_enable1_carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data7(31),
      I1 => p_1_in(31),
      O => \rx_enable1_carry__4_i_1_n_0\
    );
\rx_enable1_carry__4_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_1_in(30),
      I1 => data7(30),
      I2 => p_1_in(28),
      I3 => data7(28),
      I4 => data7(29),
      I5 => p_1_in(29),
      O => \rx_enable1_carry__4_i_2_n_0\
    );
rx_enable1_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \cnt_rx_reg_n_0_[11]\,
      I1 => \cnt_reg_n_0_[11]\,
      I2 => \cnt_reg_n_0_[10]\,
      I3 => \cnt_rx_reg_n_0_[10]\,
      I4 => \cnt_reg_n_0_[9]\,
      I5 => \cnt_rx_reg_n_0_[9]\,
      O => rx_enable1_carry_i_1_n_0
    );
rx_enable1_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \cnt_rx_reg_n_0_[8]\,
      I1 => \cnt_reg_n_0_[8]\,
      I2 => \cnt_reg_n_0_[6]\,
      I3 => \cnt_rx_reg_n_0_[6]\,
      I4 => \cnt_reg_n_0_[7]\,
      I5 => \cnt_rx_reg_n_0_[7]\,
      O => rx_enable1_carry_i_2_n_0
    );
rx_enable1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \cnt_reg_n_0_[3]\,
      I1 => \cnt_rx_reg_n_0_[3]\,
      I2 => \cnt_reg_n_0_[4]\,
      I3 => \cnt_rx_reg_n_0_[4]\,
      I4 => \cnt_rx_reg_n_0_[5]\,
      I5 => \cnt_reg_n_0_[5]\,
      O => rx_enable1_carry_i_3_n_0
    );
rx_enable1_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \cnt_rx_reg_n_0_[1]\,
      I1 => \cnt_reg_n_0_[1]\,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => \cnt_rx_reg_n_0_[2]\,
      I4 => \cnt_reg_n_0_[0]\,
      I5 => \cnt_rx_reg_n_0_[0]\,
      O => rx_enable1_carry_i_4_n_0
    );
rx_enable_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8CCCC888"
    )
        port map (
      I0 => rx_enable_i_2_n_0,
      I1 => rx_enable_i_3_n_0,
      I2 => p_6_in(19),
      I3 => rx_enable1,
      I4 => \^rx_enable_reg_0\,
      O => rx_enable_i_1_n_0
    );
rx_enable_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010000000000"
    )
        port map (
      I0 => rx_enable_i_4_n_0,
      I1 => p_4_in(3),
      I2 => p_4_in(2),
      I3 => s_axi_wdata(2),
      I4 => p_6_in(19),
      I5 => s_axi_wstrb(0),
      O => rx_enable_i_2_n_0
    );
rx_enable_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFFFFFFFFFF"
    )
        port map (
      I0 => rx_enable_i_4_n_0,
      I1 => p_4_in(3),
      I2 => p_4_in(2),
      I3 => s_axi_wdata(3),
      I4 => p_6_in(19),
      I5 => s_axi_wstrb(0),
      O => rx_enable_i_3_n_0
    );
rx_enable_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFFFFFFFFFF"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => \^s_axi_awready\,
      I2 => s_axi_wvalid,
      I3 => s_axi_awvalid,
      I4 => p_4_in(1),
      I5 => p_4_in(0),
      O => rx_enable_i_4_n_0
    );
rx_enable_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => rx_enable_i_1_n_0,
      Q => \^rx_enable_reg_0\,
      R => p_0_in
    );
rx_fifo_overflow_stky_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFCFFFAAAA8AAA"
    )
        port map (
      I0 => rx_fifo_overflow,
      I1 => \s_axi_rdata[21]_i_3_n_0\,
      I2 => s_axi_arvalid,
      I3 => \^s_axi_arready\,
      I4 => \^s_axi_rvalid_reg_0\,
      I5 => rx_fifo_overflow_stky,
      O => rx_fifo_overflow_stky_i_1_n_0
    );
rx_fifo_overflow_stky_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => rx_fifo_overflow_stky_i_1_n_0,
      Q => rx_fifo_overflow_stky,
      R => p_0_in
    );
\s_axi_araddr_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_arready0,
      D => s_axi_araddr(0),
      Q => \p_0_in__0\(0),
      R => p_0_in
    );
\s_axi_araddr_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_arready0,
      D => s_axi_araddr(1),
      Q => \p_0_in__0\(1),
      R => p_0_in
    );
\s_axi_araddr_q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_arready0,
      D => s_axi_araddr(2),
      Q => \p_0_in__0\(2),
      R => p_0_in
    );
\s_axi_araddr_q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_arready0,
      D => s_axi_araddr(3),
      Q => \p_0_in__0\(3),
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
\s_axi_awaddr_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_awready0,
      D => s_axi_awaddr(0),
      Q => p_4_in(0),
      R => p_0_in
    );
\s_axi_awaddr_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_awready0,
      D => s_axi_awaddr(1),
      Q => p_4_in(1),
      R => p_0_in
    );
\s_axi_awaddr_q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_awready0,
      D => s_axi_awaddr(2),
      Q => p_4_in(2),
      R => p_0_in
    );
\s_axi_awaddr_q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_awready0,
      D => s_axi_awaddr(3),
      Q => p_4_in(3),
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
\s_axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAE0C0CFF0C0C0C"
    )
        port map (
      I0 => \s_axi_rdata[0]_i_2_n_0\,
      I1 => tx_dma_data_ready_ovr_en_reg_n_0,
      I2 => \s_axi_rdata[21]_i_3_n_0\,
      I3 => \s_axi_rdata[0]_i_3_n_0\,
      I4 => \p_0_in__0\(3),
      I5 => \p_0_in__0\(2),
      O => \s_axi_rdata[0]_i_1_n_0\
    );
\s_axi_rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data9(0),
      I1 => \cnt_latched_reg_n_0_[0]\,
      I2 => \p_0_in__0\(1),
      I3 => data7(0),
      I4 => \p_0_in__0\(0),
      I5 => \cnt_rx_reg_n_0_[0]\,
      O => \s_axi_rdata[0]_i_2_n_0\
    );
\s_axi_rdata[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data5(0),
      I1 => \cnt_tx_reg_n_0_[0]\,
      I2 => \p_0_in__0\(1),
      I3 => \cnt_rd_buf_reg_n_0_[0]\,
      I4 => \p_0_in__0\(0),
      I5 => \cnt_reg_n_0_[0]\,
      O => \s_axi_rdata[0]_i_3_n_0\
    );
\s_axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAE0C0CFF0C0C0C"
    )
        port map (
      I0 => \s_axi_rdata[10]_i_2_n_0\,
      I1 => tx_data_ready,
      I2 => \s_axi_rdata[21]_i_3_n_0\,
      I3 => \s_axi_rdata[10]_i_3_n_0\,
      I4 => \p_0_in__0\(3),
      I5 => \p_0_in__0\(2),
      O => \s_axi_rdata[10]_i_1_n_0\
    );
\s_axi_rdata[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data9(10),
      I1 => \cnt_latched_reg_n_0_[10]\,
      I2 => \p_0_in__0\(1),
      I3 => data7(10),
      I4 => \p_0_in__0\(0),
      I5 => \cnt_rx_reg_n_0_[10]\,
      O => \s_axi_rdata[10]_i_2_n_0\
    );
\s_axi_rdata[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data5(10),
      I1 => \cnt_tx_reg_n_0_[10]\,
      I2 => \p_0_in__0\(1),
      I3 => \cnt_rd_buf_reg_n_0_[10]\,
      I4 => \p_0_in__0\(0),
      I5 => \cnt_reg_n_0_[10]\,
      O => \s_axi_rdata[10]_i_3_n_0\
    );
\s_axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAE0C0CFF0C0C0C"
    )
        port map (
      I0 => \s_axi_rdata[11]_i_2_n_0\,
      I1 => rx_data_ready,
      I2 => \s_axi_rdata[21]_i_3_n_0\,
      I3 => \s_axi_rdata[11]_i_3_n_0\,
      I4 => \p_0_in__0\(3),
      I5 => \p_0_in__0\(2),
      O => \s_axi_rdata[11]_i_1_n_0\
    );
\s_axi_rdata[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data9(11),
      I1 => \cnt_latched_reg_n_0_[11]\,
      I2 => \p_0_in__0\(1),
      I3 => data7(11),
      I4 => \p_0_in__0\(0),
      I5 => \cnt_rx_reg_n_0_[11]\,
      O => \s_axi_rdata[11]_i_2_n_0\
    );
\s_axi_rdata[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data5(11),
      I1 => \cnt_tx_reg_n_0_[11]\,
      I2 => \p_0_in__0\(1),
      I3 => \cnt_rd_buf_reg_n_0_[11]\,
      I4 => \p_0_in__0\(0),
      I5 => \cnt_reg_n_0_[11]\,
      O => \s_axi_rdata[11]_i_3_n_0\
    );
\s_axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAE0C0CFF0C0C0C"
    )
        port map (
      I0 => \s_axi_rdata[12]_i_2_n_0\,
      I1 => \s_axi_rdata[12]_i_3_n_0\,
      I2 => \s_axi_rdata[21]_i_3_n_0\,
      I3 => \s_axi_rdata[12]_i_4_n_0\,
      I4 => \p_0_in__0\(3),
      I5 => \p_0_in__0\(2),
      O => \s_axi_rdata[12]_i_1_n_0\
    );
\s_axi_rdata[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data9(12),
      I1 => \cnt_latched_reg_n_0_[12]\,
      I2 => \p_0_in__0\(1),
      I3 => data7(12),
      I4 => \p_0_in__0\(0),
      I5 => \cnt_rx_reg_n_0_[12]\,
      O => \s_axi_rdata[12]_i_2_n_0\
    );
\s_axi_rdata[12]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tx_dma_data_ready_ovr_val,
      I1 => tx_dma_data_ready_ovr_en_reg_n_0,
      I2 => tx_dma_data_ready,
      O => \s_axi_rdata[12]_i_3_n_0\
    );
\s_axi_rdata[12]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data5(12),
      I1 => \cnt_tx_reg_n_0_[12]\,
      I2 => \p_0_in__0\(1),
      I3 => \cnt_rd_buf_reg_n_0_[12]\,
      I4 => \p_0_in__0\(0),
      I5 => \cnt_reg_n_0_[12]\,
      O => \s_axi_rdata[12]_i_4_n_0\
    );
\s_axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAE0C0CFF0C0C0C"
    )
        port map (
      I0 => \s_axi_rdata[13]_i_2_n_0\,
      I1 => \s_axi_rdata[13]_i_3_n_0\,
      I2 => \s_axi_rdata[21]_i_3_n_0\,
      I3 => \s_axi_rdata[13]_i_4_n_0\,
      I4 => \p_0_in__0\(3),
      I5 => \p_0_in__0\(2),
      O => \s_axi_rdata[13]_i_1_n_0\
    );
\s_axi_rdata[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data9(13),
      I1 => \cnt_latched_reg_n_0_[13]\,
      I2 => \p_0_in__0\(1),
      I3 => data7(13),
      I4 => \p_0_in__0\(0),
      I5 => \cnt_rx_reg_n_0_[13]\,
      O => \s_axi_rdata[13]_i_2_n_0\
    );
\s_axi_rdata[13]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_dma_xfer_req_ovr_val,
      I1 => rx_dma_xfer_req_ovr_en,
      I2 => rx_dma_xfer_req,
      O => \s_axi_rdata[13]_i_3_n_0\
    );
\s_axi_rdata[13]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data5(13),
      I1 => \cnt_tx_reg_n_0_[13]\,
      I2 => \p_0_in__0\(1),
      I3 => \cnt_rd_buf_reg_n_0_[13]\,
      I4 => \p_0_in__0\(0),
      I5 => \cnt_reg_n_0_[13]\,
      O => \s_axi_rdata[13]_i_4_n_0\
    );
\s_axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAE0C0CFF0C0C0C"
    )
        port map (
      I0 => \s_axi_rdata[14]_i_2_n_0\,
      I1 => \s_axi_rdata[14]_i_3_n_0\,
      I2 => \s_axi_rdata[21]_i_3_n_0\,
      I3 => \s_axi_rdata[14]_i_4_n_0\,
      I4 => \p_0_in__0\(3),
      I5 => \p_0_in__0\(2),
      O => \s_axi_rdata[14]_i_1_n_0\
    );
\s_axi_rdata[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data9(14),
      I1 => \cnt_latched_reg_n_0_[14]\,
      I2 => \p_0_in__0\(1),
      I3 => data7(14),
      I4 => \p_0_in__0\(0),
      I5 => \cnt_rx_reg_n_0_[14]\,
      O => \s_axi_rdata[14]_i_2_n_0\
    );
\s_axi_rdata[14]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tx_data_ready_ovr_val,
      I1 => tx_data_ready_ovr_en,
      I2 => tx_data_ready,
      O => \s_axi_rdata[14]_i_3_n_0\
    );
\s_axi_rdata[14]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data5(14),
      I1 => \cnt_tx_reg_n_0_[14]\,
      I2 => \p_0_in__0\(1),
      I3 => \cnt_rd_buf_reg_n_0_[14]\,
      I4 => \p_0_in__0\(0),
      I5 => \cnt_reg_n_0_[14]\,
      O => \s_axi_rdata[14]_i_4_n_0\
    );
\s_axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAE0C0CFF0C0C0C"
    )
        port map (
      I0 => \s_axi_rdata[15]_i_2_n_0\,
      I1 => \s_axi_rdata[15]_i_3_n_0\,
      I2 => \s_axi_rdata[21]_i_3_n_0\,
      I3 => \s_axi_rdata[15]_i_4_n_0\,
      I4 => \p_0_in__0\(3),
      I5 => \p_0_in__0\(2),
      O => \s_axi_rdata[15]_i_1_n_0\
    );
\s_axi_rdata[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data9(15),
      I1 => \cnt_latched_reg_n_0_[15]\,
      I2 => \p_0_in__0\(1),
      I3 => data7(15),
      I4 => \p_0_in__0\(0),
      I5 => \cnt_rx_reg_n_0_[15]\,
      O => \s_axi_rdata[15]_i_2_n_0\
    );
\s_axi_rdata[15]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_data_ready_ovr_val_reg_n_0,
      I1 => rx_data_ready_ovr_en,
      I2 => rx_data_ready,
      O => \s_axi_rdata[15]_i_3_n_0\
    );
\s_axi_rdata[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data5(15),
      I1 => \cnt_tx_reg_n_0_[15]\,
      I2 => \p_0_in__0\(1),
      I3 => \cnt_rd_buf_reg_n_0_[15]\,
      I4 => \p_0_in__0\(0),
      I5 => \cnt_reg_n_0_[15]\,
      O => \s_axi_rdata[15]_i_4_n_0\
    );
\s_axi_rdata[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EECCFCCC"
    )
        port map (
      I0 => \s_axi_rdata[16]_i_2_n_0\,
      I1 => \s_axi_rdata[16]_i_3_n_0\,
      I2 => \s_axi_rdata[16]_i_4_n_0\,
      I3 => \p_0_in__0\(3),
      I4 => \p_0_in__0\(2),
      O => \s_axi_rdata[16]_i_1_n_0\
    );
\s_axi_rdata[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data9(16),
      I1 => \cnt_latched_reg_n_0_[16]\,
      I2 => \p_0_in__0\(1),
      I3 => data7(16),
      I4 => \p_0_in__0\(0),
      I5 => \cnt_rx_reg_n_0_[16]\,
      O => \s_axi_rdata[16]_i_2_n_0\
    );
\s_axi_rdata[16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0011101100001011"
    )
        port map (
      I0 => \p_0_in__0\(2),
      I1 => \p_0_in__0\(3),
      I2 => \^tx_enable\,
      I3 => \p_0_in__0\(0),
      I4 => \p_0_in__0\(1),
      I5 => tx_dma_data_ready_stky,
      O => \s_axi_rdata[16]_i_3_n_0\
    );
\s_axi_rdata[16]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data5(16),
      I1 => \cnt_tx_reg_n_0_[16]\,
      I2 => \p_0_in__0\(1),
      I3 => \cnt_rd_buf_reg_n_0_[16]\,
      I4 => \p_0_in__0\(0),
      I5 => \cnt_reg_n_0_[16]\,
      O => \s_axi_rdata[16]_i_4_n_0\
    );
\s_axi_rdata[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EECCFCCC"
    )
        port map (
      I0 => \s_axi_rdata[17]_i_2_n_0\,
      I1 => \s_axi_rdata[17]_i_3_n_0\,
      I2 => \s_axi_rdata[17]_i_4_n_0\,
      I3 => \p_0_in__0\(3),
      I4 => \p_0_in__0\(2),
      O => \s_axi_rdata[17]_i_1_n_0\
    );
\s_axi_rdata[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data9(17),
      I1 => \cnt_latched_reg_n_0_[17]\,
      I2 => \p_0_in__0\(1),
      I3 => data7(17),
      I4 => \p_0_in__0\(0),
      I5 => \cnt_rx_reg_n_0_[17]\,
      O => \s_axi_rdata[17]_i_2_n_0\
    );
\s_axi_rdata[17]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002C00000020"
    )
        port map (
      I0 => \^rx_enable_reg_0\,
      I1 => \p_0_in__0\(1),
      I2 => \p_0_in__0\(0),
      I3 => \p_0_in__0\(2),
      I4 => \p_0_in__0\(3),
      I5 => rx_dma_xfer_req_stky,
      O => \s_axi_rdata[17]_i_3_n_0\
    );
\s_axi_rdata[17]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data5(17),
      I1 => \cnt_tx_reg_n_0_[17]\,
      I2 => \p_0_in__0\(1),
      I3 => \cnt_rd_buf_reg_n_0_[17]\,
      I4 => \p_0_in__0\(0),
      I5 => \cnt_reg_n_0_[17]\,
      O => \s_axi_rdata[17]_i_4_n_0\
    );
\s_axi_rdata[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EECCFCCC"
    )
        port map (
      I0 => \s_axi_rdata[18]_i_2_n_0\,
      I1 => \s_axi_rdata[18]_i_3_n_0\,
      I2 => \s_axi_rdata[18]_i_4_n_0\,
      I3 => \p_0_in__0\(3),
      I4 => \p_0_in__0\(2),
      O => \s_axi_rdata[18]_i_1_n_0\
    );
\s_axi_rdata[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data9(18),
      I1 => \cnt_latched_reg_n_0_[18]\,
      I2 => \p_0_in__0\(1),
      I3 => data7(18),
      I4 => \p_0_in__0\(0),
      I5 => \cnt_rx_reg_n_0_[18]\,
      O => \s_axi_rdata[18]_i_2_n_0\
    );
\s_axi_rdata[18]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002C00000020"
    )
        port map (
      I0 => p_6_in(18),
      I1 => \p_0_in__0\(1),
      I2 => \p_0_in__0\(0),
      I3 => \p_0_in__0\(2),
      I4 => \p_0_in__0\(3),
      I5 => tx_data_ready_stky,
      O => \s_axi_rdata[18]_i_3_n_0\
    );
\s_axi_rdata[18]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data5(18),
      I1 => \cnt_tx_reg_n_0_[18]\,
      I2 => \p_0_in__0\(1),
      I3 => \cnt_rd_buf_reg_n_0_[18]\,
      I4 => \p_0_in__0\(0),
      I5 => \cnt_reg_n_0_[18]\,
      O => \s_axi_rdata[18]_i_4_n_0\
    );
\s_axi_rdata[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EECCFCCC"
    )
        port map (
      I0 => \s_axi_rdata[19]_i_2_n_0\,
      I1 => \s_axi_rdata[19]_i_3_n_0\,
      I2 => \s_axi_rdata[19]_i_4_n_0\,
      I3 => \p_0_in__0\(3),
      I4 => \p_0_in__0\(2),
      O => \s_axi_rdata[19]_i_1_n_0\
    );
\s_axi_rdata[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data9(19),
      I1 => \cnt_latched_reg_n_0_[19]\,
      I2 => \p_0_in__0\(1),
      I3 => data7(19),
      I4 => \p_0_in__0\(0),
      I5 => \cnt_rx_reg_n_0_[19]\,
      O => \s_axi_rdata[19]_i_2_n_0\
    );
\s_axi_rdata[19]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002C00000020"
    )
        port map (
      I0 => p_6_in(19),
      I1 => \p_0_in__0\(1),
      I2 => \p_0_in__0\(0),
      I3 => \p_0_in__0\(2),
      I4 => \p_0_in__0\(3),
      I5 => rx_data_ready_stky,
      O => \s_axi_rdata[19]_i_3_n_0\
    );
\s_axi_rdata[19]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data5(19),
      I1 => \cnt_tx_reg_n_0_[19]\,
      I2 => \p_0_in__0\(1),
      I3 => \cnt_rd_buf_reg_n_0_[19]\,
      I4 => \p_0_in__0\(0),
      I5 => \cnt_reg_n_0_[19]\,
      O => \s_axi_rdata[19]_i_4_n_0\
    );
\s_axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAE0C0CFF0C0C0C"
    )
        port map (
      I0 => \s_axi_rdata[1]_i_2_n_0\,
      I1 => tx_dma_data_ready_ovr_val,
      I2 => \s_axi_rdata[21]_i_3_n_0\,
      I3 => \s_axi_rdata[1]_i_3_n_0\,
      I4 => \p_0_in__0\(3),
      I5 => \p_0_in__0\(2),
      O => \s_axi_rdata[1]_i_1_n_0\
    );
\s_axi_rdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data9(1),
      I1 => \cnt_latched_reg_n_0_[1]\,
      I2 => \p_0_in__0\(1),
      I3 => data7(1),
      I4 => \p_0_in__0\(0),
      I5 => \cnt_rx_reg_n_0_[1]\,
      O => \s_axi_rdata[1]_i_2_n_0\
    );
\s_axi_rdata[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data5(1),
      I1 => \cnt_tx_reg_n_0_[1]\,
      I2 => \p_0_in__0\(1),
      I3 => \cnt_rd_buf_reg_n_0_[1]\,
      I4 => \p_0_in__0\(0),
      I5 => \cnt_reg_n_0_[1]\,
      O => \s_axi_rdata[1]_i_3_n_0\
    );
\s_axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAE0C0CFF0C0C0C"
    )
        port map (
      I0 => \s_axi_rdata[20]_i_2_n_0\,
      I1 => tx_fifo_underflow_stky,
      I2 => \s_axi_rdata[21]_i_3_n_0\,
      I3 => \s_axi_rdata[20]_i_3_n_0\,
      I4 => \p_0_in__0\(3),
      I5 => \p_0_in__0\(2),
      O => \s_axi_rdata[20]_i_1_n_0\
    );
\s_axi_rdata[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data9(20),
      I1 => \cnt_latched_reg_n_0_[20]\,
      I2 => \p_0_in__0\(1),
      I3 => data7(20),
      I4 => \p_0_in__0\(0),
      I5 => \cnt_rx_reg_n_0_[20]\,
      O => \s_axi_rdata[20]_i_2_n_0\
    );
\s_axi_rdata[20]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data5(20),
      I1 => \cnt_tx_reg_n_0_[20]\,
      I2 => \p_0_in__0\(1),
      I3 => \cnt_rd_buf_reg_n_0_[20]\,
      I4 => \p_0_in__0\(0),
      I5 => \cnt_reg_n_0_[20]\,
      O => \s_axi_rdata[20]_i_3_n_0\
    );
\s_axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAE0C0CFF0C0C0C"
    )
        port map (
      I0 => \s_axi_rdata[21]_i_2_n_0\,
      I1 => rx_fifo_overflow_stky,
      I2 => \s_axi_rdata[21]_i_3_n_0\,
      I3 => \s_axi_rdata[21]_i_4_n_0\,
      I4 => \p_0_in__0\(3),
      I5 => \p_0_in__0\(2),
      O => \s_axi_rdata[21]_i_1_n_0\
    );
\s_axi_rdata[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data9(21),
      I1 => \cnt_latched_reg_n_0_[21]\,
      I2 => \p_0_in__0\(1),
      I3 => data7(21),
      I4 => \p_0_in__0\(0),
      I5 => \cnt_rx_reg_n_0_[21]\,
      O => \s_axi_rdata[21]_i_2_n_0\
    );
\s_axi_rdata[21]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \p_0_in__0\(1),
      I1 => \p_0_in__0\(0),
      I2 => \p_0_in__0\(2),
      I3 => \p_0_in__0\(3),
      O => \s_axi_rdata[21]_i_3_n_0\
    );
\s_axi_rdata[21]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data5(21),
      I1 => \cnt_tx_reg_n_0_[21]\,
      I2 => \p_0_in__0\(1),
      I3 => \cnt_rd_buf_reg_n_0_[21]\,
      I4 => \p_0_in__0\(0),
      I5 => \cnt_reg_n_0_[21]\,
      O => \s_axi_rdata[21]_i_4_n_0\
    );
\s_axi_rdata[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C808"
    )
        port map (
      I0 => \s_axi_rdata[22]_i_2_n_0\,
      I1 => \p_0_in__0\(3),
      I2 => \p_0_in__0\(2),
      I3 => \s_axi_rdata[22]_i_3_n_0\,
      O => \s_axi_rdata[22]_i_1_n_0\
    );
\s_axi_rdata[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data5(22),
      I1 => \cnt_tx_reg_n_0_[22]\,
      I2 => \p_0_in__0\(1),
      I3 => \cnt_rd_buf_reg_n_0_[22]\,
      I4 => \p_0_in__0\(0),
      I5 => \cnt_reg_n_0_[22]\,
      O => \s_axi_rdata[22]_i_2_n_0\
    );
\s_axi_rdata[22]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data9(22),
      I1 => \cnt_latched_reg_n_0_[22]\,
      I2 => \p_0_in__0\(1),
      I3 => data7(22),
      I4 => \p_0_in__0\(0),
      I5 => \cnt_rx_reg_n_0_[22]\,
      O => \s_axi_rdata[22]_i_3_n_0\
    );
\s_axi_rdata[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C808"
    )
        port map (
      I0 => \s_axi_rdata[23]_i_2_n_0\,
      I1 => \p_0_in__0\(3),
      I2 => \p_0_in__0\(2),
      I3 => \s_axi_rdata[23]_i_3_n_0\,
      O => \s_axi_rdata[23]_i_1_n_0\
    );
\s_axi_rdata[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data5(23),
      I1 => \cnt_tx_reg_n_0_[23]\,
      I2 => \p_0_in__0\(1),
      I3 => \cnt_rd_buf_reg_n_0_[23]\,
      I4 => \p_0_in__0\(0),
      I5 => \cnt_reg_n_0_[23]\,
      O => \s_axi_rdata[23]_i_2_n_0\
    );
\s_axi_rdata[23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data9(23),
      I1 => \cnt_latched_reg_n_0_[23]\,
      I2 => \p_0_in__0\(1),
      I3 => data7(23),
      I4 => \p_0_in__0\(0),
      I5 => \cnt_rx_reg_n_0_[23]\,
      O => \s_axi_rdata[23]_i_3_n_0\
    );
\s_axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAE0C0CFF0C0C0C"
    )
        port map (
      I0 => \s_axi_rdata[24]_i_2_n_0\,
      I1 => p_6_in(24),
      I2 => \s_axi_rdata[27]_i_3_n_0\,
      I3 => \s_axi_rdata[24]_i_3_n_0\,
      I4 => \p_0_in__0\(3),
      I5 => \p_0_in__0\(2),
      O => \s_axi_rdata[24]_i_1_n_0\
    );
\s_axi_rdata[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data9(24),
      I1 => \cnt_latched_reg_n_0_[24]\,
      I2 => \p_0_in__0\(1),
      I3 => data7(24),
      I4 => \p_0_in__0\(0),
      I5 => \cnt_rx_reg_n_0_[24]\,
      O => \s_axi_rdata[24]_i_2_n_0\
    );
\s_axi_rdata[24]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data5(24),
      I1 => \cnt_tx_reg_n_0_[24]\,
      I2 => \p_0_in__0\(1),
      I3 => \cnt_rd_buf_reg_n_0_[24]\,
      I4 => \p_0_in__0\(0),
      I5 => \cnt_reg_n_0_[24]\,
      O => \s_axi_rdata[24]_i_3_n_0\
    );
\s_axi_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CA00CA00FFFFCA00"
    )
        port map (
      I0 => \s_axi_rdata[25]_i_2_n_0\,
      I1 => \s_axi_rdata[25]_i_3_n_0\,
      I2 => \p_0_in__0\(2),
      I3 => \p_0_in__0\(3),
      I4 => p_6_in(25),
      I5 => \s_axi_rdata[27]_i_3_n_0\,
      O => \s_axi_rdata[25]_i_1_n_0\
    );
\s_axi_rdata[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data5(25),
      I1 => \cnt_tx_reg_n_0_[25]\,
      I2 => \p_0_in__0\(1),
      I3 => \cnt_rd_buf_reg_n_0_[25]\,
      I4 => \p_0_in__0\(0),
      I5 => \cnt_reg_n_0_[25]\,
      O => \s_axi_rdata[25]_i_2_n_0\
    );
\s_axi_rdata[25]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data9(25),
      I1 => \cnt_latched_reg_n_0_[25]\,
      I2 => \p_0_in__0\(1),
      I3 => data7(25),
      I4 => \p_0_in__0\(0),
      I5 => \cnt_rx_reg_n_0_[25]\,
      O => \s_axi_rdata[25]_i_3_n_0\
    );
\s_axi_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAE0C0CFF0C0C0C"
    )
        port map (
      I0 => \s_axi_rdata[26]_i_2_n_0\,
      I1 => p_6_in(26),
      I2 => \s_axi_rdata[27]_i_3_n_0\,
      I3 => \s_axi_rdata[26]_i_3_n_0\,
      I4 => \p_0_in__0\(3),
      I5 => \p_0_in__0\(2),
      O => \s_axi_rdata[26]_i_1_n_0\
    );
\s_axi_rdata[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data9(26),
      I1 => \cnt_latched_reg_n_0_[26]\,
      I2 => \p_0_in__0\(1),
      I3 => data7(26),
      I4 => \p_0_in__0\(0),
      I5 => \cnt_rx_reg_n_0_[26]\,
      O => \s_axi_rdata[26]_i_2_n_0\
    );
\s_axi_rdata[26]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data5(26),
      I1 => \cnt_tx_reg_n_0_[26]\,
      I2 => \p_0_in__0\(1),
      I3 => \cnt_rd_buf_reg_n_0_[26]\,
      I4 => \p_0_in__0\(0),
      I5 => \cnt_reg_n_0_[26]\,
      O => \s_axi_rdata[26]_i_3_n_0\
    );
\s_axi_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAE0C0CFF0C0C0C"
    )
        port map (
      I0 => \s_axi_rdata[27]_i_2_n_0\,
      I1 => p_6_in(27),
      I2 => \s_axi_rdata[27]_i_3_n_0\,
      I3 => \s_axi_rdata[27]_i_4_n_0\,
      I4 => \p_0_in__0\(3),
      I5 => \p_0_in__0\(2),
      O => \s_axi_rdata[27]_i_1_n_0\
    );
\s_axi_rdata[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data9(27),
      I1 => \cnt_latched_reg_n_0_[27]\,
      I2 => \p_0_in__0\(1),
      I3 => data7(27),
      I4 => \p_0_in__0\(0),
      I5 => \cnt_rx_reg_n_0_[27]\,
      O => \s_axi_rdata[27]_i_2_n_0\
    );
\s_axi_rdata[27]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \p_0_in__0\(2),
      I1 => \p_0_in__0\(3),
      I2 => \p_0_in__0\(0),
      I3 => \p_0_in__0\(1),
      O => \s_axi_rdata[27]_i_3_n_0\
    );
\s_axi_rdata[27]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data5(27),
      I1 => \cnt_tx_reg_n_0_[27]\,
      I2 => \p_0_in__0\(1),
      I3 => \cnt_rd_buf_reg_n_0_[27]\,
      I4 => \p_0_in__0\(0),
      I5 => \cnt_reg_n_0_[27]\,
      O => \s_axi_rdata[27]_i_4_n_0\
    );
\s_axi_rdata[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C808"
    )
        port map (
      I0 => \s_axi_rdata[28]_i_2_n_0\,
      I1 => \p_0_in__0\(3),
      I2 => \p_0_in__0\(2),
      I3 => \s_axi_rdata[28]_i_3_n_0\,
      O => \s_axi_rdata[28]_i_1_n_0\
    );
\s_axi_rdata[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data5(28),
      I1 => \cnt_tx_reg_n_0_[28]\,
      I2 => \p_0_in__0\(1),
      I3 => \cnt_rd_buf_reg_n_0_[28]\,
      I4 => \p_0_in__0\(0),
      I5 => \cnt_reg_n_0_[28]\,
      O => \s_axi_rdata[28]_i_2_n_0\
    );
\s_axi_rdata[28]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data9(28),
      I1 => \cnt_latched_reg_n_0_[28]\,
      I2 => \p_0_in__0\(1),
      I3 => data7(28),
      I4 => \p_0_in__0\(0),
      I5 => \cnt_rx_reg_n_0_[28]\,
      O => \s_axi_rdata[28]_i_3_n_0\
    );
\s_axi_rdata[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C808"
    )
        port map (
      I0 => \s_axi_rdata[29]_i_2_n_0\,
      I1 => \p_0_in__0\(3),
      I2 => \p_0_in__0\(2),
      I3 => \s_axi_rdata[29]_i_3_n_0\,
      O => \s_axi_rdata[29]_i_1_n_0\
    );
\s_axi_rdata[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data5(29),
      I1 => \cnt_tx_reg_n_0_[29]\,
      I2 => \p_0_in__0\(1),
      I3 => \cnt_rd_buf_reg_n_0_[29]\,
      I4 => \p_0_in__0\(0),
      I5 => \cnt_reg_n_0_[29]\,
      O => \s_axi_rdata[29]_i_2_n_0\
    );
\s_axi_rdata[29]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data9(29),
      I1 => \cnt_latched_reg_n_0_[29]\,
      I2 => \p_0_in__0\(1),
      I3 => data7(29),
      I4 => \p_0_in__0\(0),
      I5 => \cnt_rx_reg_n_0_[29]\,
      O => \s_axi_rdata[29]_i_3_n_0\
    );
\s_axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAE0C0CFF0C0C0C"
    )
        port map (
      I0 => \s_axi_rdata[2]_i_2_n_0\,
      I1 => rx_dma_xfer_req_ovr_en,
      I2 => \s_axi_rdata[21]_i_3_n_0\,
      I3 => \s_axi_rdata[2]_i_3_n_0\,
      I4 => \p_0_in__0\(3),
      I5 => \p_0_in__0\(2),
      O => \s_axi_rdata[2]_i_1_n_0\
    );
\s_axi_rdata[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data9(2),
      I1 => \cnt_latched_reg_n_0_[2]\,
      I2 => \p_0_in__0\(1),
      I3 => data7(2),
      I4 => \p_0_in__0\(0),
      I5 => \cnt_rx_reg_n_0_[2]\,
      O => \s_axi_rdata[2]_i_2_n_0\
    );
\s_axi_rdata[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data5(2),
      I1 => \cnt_tx_reg_n_0_[2]\,
      I2 => \p_0_in__0\(1),
      I3 => \cnt_rd_buf_reg_n_0_[2]\,
      I4 => \p_0_in__0\(0),
      I5 => \cnt_reg_n_0_[2]\,
      O => \s_axi_rdata[2]_i_3_n_0\
    );
\s_axi_rdata[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C808"
    )
        port map (
      I0 => \s_axi_rdata[30]_i_2_n_0\,
      I1 => \p_0_in__0\(3),
      I2 => \p_0_in__0\(2),
      I3 => \s_axi_rdata[30]_i_3_n_0\,
      O => \s_axi_rdata[30]_i_1_n_0\
    );
\s_axi_rdata[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data5(30),
      I1 => \cnt_tx_reg_n_0_[30]\,
      I2 => \p_0_in__0\(1),
      I3 => \cnt_rd_buf_reg_n_0_[30]\,
      I4 => \p_0_in__0\(0),
      I5 => \cnt_reg_n_0_[30]\,
      O => \s_axi_rdata[30]_i_2_n_0\
    );
\s_axi_rdata[30]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data9(30),
      I1 => \cnt_latched_reg_n_0_[30]\,
      I2 => \p_0_in__0\(1),
      I3 => data7(30),
      I4 => \p_0_in__0\(0),
      I5 => \cnt_rx_reg_n_0_[30]\,
      O => \s_axi_rdata[30]_i_3_n_0\
    );
\s_axi_rdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \^s_axi_arready\,
      I2 => \^s_axi_rvalid_reg_0\,
      O => s_axi_reg_rden
    );
\s_axi_rdata[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C808"
    )
        port map (
      I0 => \s_axi_rdata[31]_i_3_n_0\,
      I1 => \p_0_in__0\(3),
      I2 => \p_0_in__0\(2),
      I3 => \s_axi_rdata[31]_i_4_n_0\,
      O => \s_axi_rdata[31]_i_2_n_0\
    );
\s_axi_rdata[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data5(31),
      I1 => \cnt_tx_reg_n_0_[31]\,
      I2 => \p_0_in__0\(1),
      I3 => \cnt_rd_buf_reg_n_0_[31]\,
      I4 => \p_0_in__0\(0),
      I5 => \cnt_reg_n_0_[31]\,
      O => \s_axi_rdata[31]_i_3_n_0\
    );
\s_axi_rdata[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data9(31),
      I1 => \cnt_latched_reg_n_0_[31]\,
      I2 => \p_0_in__0\(1),
      I3 => data7(31),
      I4 => \p_0_in__0\(0),
      I5 => \cnt_rx_reg_n_0_[31]\,
      O => \s_axi_rdata[31]_i_4_n_0\
    );
\s_axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAE0C0CFF0C0C0C"
    )
        port map (
      I0 => \s_axi_rdata[3]_i_2_n_0\,
      I1 => rx_dma_xfer_req_ovr_val,
      I2 => \s_axi_rdata[21]_i_3_n_0\,
      I3 => \s_axi_rdata[3]_i_3_n_0\,
      I4 => \p_0_in__0\(3),
      I5 => \p_0_in__0\(2),
      O => \s_axi_rdata[3]_i_1_n_0\
    );
\s_axi_rdata[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data9(3),
      I1 => \cnt_latched_reg_n_0_[3]\,
      I2 => \p_0_in__0\(1),
      I3 => data7(3),
      I4 => \p_0_in__0\(0),
      I5 => \cnt_rx_reg_n_0_[3]\,
      O => \s_axi_rdata[3]_i_2_n_0\
    );
\s_axi_rdata[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data5(3),
      I1 => \cnt_tx_reg_n_0_[3]\,
      I2 => \p_0_in__0\(1),
      I3 => \cnt_rd_buf_reg_n_0_[3]\,
      I4 => \p_0_in__0\(0),
      I5 => \cnt_reg_n_0_[3]\,
      O => \s_axi_rdata[3]_i_3_n_0\
    );
\s_axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAE0C0CFF0C0C0C"
    )
        port map (
      I0 => \s_axi_rdata[4]_i_2_n_0\,
      I1 => tx_data_ready_ovr_en,
      I2 => \s_axi_rdata[21]_i_3_n_0\,
      I3 => \s_axi_rdata[4]_i_3_n_0\,
      I4 => \p_0_in__0\(3),
      I5 => \p_0_in__0\(2),
      O => \s_axi_rdata[4]_i_1_n_0\
    );
\s_axi_rdata[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data9(4),
      I1 => \cnt_latched_reg_n_0_[4]\,
      I2 => \p_0_in__0\(1),
      I3 => data7(4),
      I4 => \p_0_in__0\(0),
      I5 => \cnt_rx_reg_n_0_[4]\,
      O => \s_axi_rdata[4]_i_2_n_0\
    );
\s_axi_rdata[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data5(4),
      I1 => \cnt_tx_reg_n_0_[4]\,
      I2 => \p_0_in__0\(1),
      I3 => \cnt_rd_buf_reg_n_0_[4]\,
      I4 => \p_0_in__0\(0),
      I5 => \cnt_reg_n_0_[4]\,
      O => \s_axi_rdata[4]_i_3_n_0\
    );
\s_axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAE0C0CFF0C0C0C"
    )
        port map (
      I0 => \s_axi_rdata[5]_i_2_n_0\,
      I1 => tx_data_ready_ovr_val,
      I2 => \s_axi_rdata[21]_i_3_n_0\,
      I3 => \s_axi_rdata[5]_i_3_n_0\,
      I4 => \p_0_in__0\(3),
      I5 => \p_0_in__0\(2),
      O => \s_axi_rdata[5]_i_1_n_0\
    );
\s_axi_rdata[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data9(5),
      I1 => \cnt_latched_reg_n_0_[5]\,
      I2 => \p_0_in__0\(1),
      I3 => data7(5),
      I4 => \p_0_in__0\(0),
      I5 => \cnt_rx_reg_n_0_[5]\,
      O => \s_axi_rdata[5]_i_2_n_0\
    );
\s_axi_rdata[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data5(5),
      I1 => \cnt_tx_reg_n_0_[5]\,
      I2 => \p_0_in__0\(1),
      I3 => \cnt_rd_buf_reg_n_0_[5]\,
      I4 => \p_0_in__0\(0),
      I5 => \cnt_reg_n_0_[5]\,
      O => \s_axi_rdata[5]_i_3_n_0\
    );
\s_axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAE0C0CFF0C0C0C"
    )
        port map (
      I0 => \s_axi_rdata[6]_i_2_n_0\,
      I1 => rx_data_ready_ovr_en,
      I2 => \s_axi_rdata[21]_i_3_n_0\,
      I3 => \s_axi_rdata[6]_i_3_n_0\,
      I4 => \p_0_in__0\(3),
      I5 => \p_0_in__0\(2),
      O => \s_axi_rdata[6]_i_1_n_0\
    );
\s_axi_rdata[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data9(6),
      I1 => \cnt_latched_reg_n_0_[6]\,
      I2 => \p_0_in__0\(1),
      I3 => data7(6),
      I4 => \p_0_in__0\(0),
      I5 => \cnt_rx_reg_n_0_[6]\,
      O => \s_axi_rdata[6]_i_2_n_0\
    );
\s_axi_rdata[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data5(6),
      I1 => \cnt_tx_reg_n_0_[6]\,
      I2 => \p_0_in__0\(1),
      I3 => \cnt_rd_buf_reg_n_0_[6]\,
      I4 => \p_0_in__0\(0),
      I5 => \cnt_reg_n_0_[6]\,
      O => \s_axi_rdata[6]_i_3_n_0\
    );
\s_axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAE0C0CFF0C0C0C"
    )
        port map (
      I0 => \s_axi_rdata[7]_i_2_n_0\,
      I1 => rx_data_ready_ovr_val_reg_n_0,
      I2 => \s_axi_rdata[21]_i_3_n_0\,
      I3 => \s_axi_rdata[7]_i_3_n_0\,
      I4 => \p_0_in__0\(3),
      I5 => \p_0_in__0\(2),
      O => \s_axi_rdata[7]_i_1_n_0\
    );
\s_axi_rdata[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data9(7),
      I1 => \cnt_latched_reg_n_0_[7]\,
      I2 => \p_0_in__0\(1),
      I3 => data7(7),
      I4 => \p_0_in__0\(0),
      I5 => \cnt_rx_reg_n_0_[7]\,
      O => \s_axi_rdata[7]_i_2_n_0\
    );
\s_axi_rdata[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data5(7),
      I1 => \cnt_tx_reg_n_0_[7]\,
      I2 => \p_0_in__0\(1),
      I3 => \cnt_rd_buf_reg_n_0_[7]\,
      I4 => \p_0_in__0\(0),
      I5 => \cnt_reg_n_0_[7]\,
      O => \s_axi_rdata[7]_i_3_n_0\
    );
\s_axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAE0C0CFF0C0C0C"
    )
        port map (
      I0 => \s_axi_rdata[8]_i_2_n_0\,
      I1 => tx_dma_data_ready,
      I2 => \s_axi_rdata[21]_i_3_n_0\,
      I3 => \s_axi_rdata[8]_i_3_n_0\,
      I4 => \p_0_in__0\(3),
      I5 => \p_0_in__0\(2),
      O => \s_axi_rdata[8]_i_1_n_0\
    );
\s_axi_rdata[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data9(8),
      I1 => \cnt_latched_reg_n_0_[8]\,
      I2 => \p_0_in__0\(1),
      I3 => data7(8),
      I4 => \p_0_in__0\(0),
      I5 => \cnt_rx_reg_n_0_[8]\,
      O => \s_axi_rdata[8]_i_2_n_0\
    );
\s_axi_rdata[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data5(8),
      I1 => \cnt_tx_reg_n_0_[8]\,
      I2 => \p_0_in__0\(1),
      I3 => \cnt_rd_buf_reg_n_0_[8]\,
      I4 => \p_0_in__0\(0),
      I5 => \cnt_reg_n_0_[8]\,
      O => \s_axi_rdata[8]_i_3_n_0\
    );
\s_axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAE0C0CFF0C0C0C"
    )
        port map (
      I0 => \s_axi_rdata[9]_i_2_n_0\,
      I1 => rx_dma_xfer_req,
      I2 => \s_axi_rdata[21]_i_3_n_0\,
      I3 => \s_axi_rdata[9]_i_3_n_0\,
      I4 => \p_0_in__0\(3),
      I5 => \p_0_in__0\(2),
      O => \s_axi_rdata[9]_i_1_n_0\
    );
\s_axi_rdata[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data9(9),
      I1 => \cnt_latched_reg_n_0_[9]\,
      I2 => \p_0_in__0\(1),
      I3 => data7(9),
      I4 => \p_0_in__0\(0),
      I5 => \cnt_rx_reg_n_0_[9]\,
      O => \s_axi_rdata[9]_i_2_n_0\
    );
\s_axi_rdata[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data5(9),
      I1 => \cnt_tx_reg_n_0_[9]\,
      I2 => \p_0_in__0\(1),
      I3 => \cnt_rd_buf_reg_n_0_[9]\,
      I4 => \p_0_in__0\(0),
      I5 => \cnt_reg_n_0_[9]\,
      O => \s_axi_rdata[9]_i_3_n_0\
    );
\s_axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_reg_rden,
      D => \s_axi_rdata[0]_i_1_n_0\,
      Q => s_axi_rdata(0),
      R => p_0_in
    );
\s_axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_reg_rden,
      D => \s_axi_rdata[10]_i_1_n_0\,
      Q => s_axi_rdata(10),
      R => p_0_in
    );
\s_axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_reg_rden,
      D => \s_axi_rdata[11]_i_1_n_0\,
      Q => s_axi_rdata(11),
      R => p_0_in
    );
\s_axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_reg_rden,
      D => \s_axi_rdata[12]_i_1_n_0\,
      Q => s_axi_rdata(12),
      R => p_0_in
    );
\s_axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_reg_rden,
      D => \s_axi_rdata[13]_i_1_n_0\,
      Q => s_axi_rdata(13),
      R => p_0_in
    );
\s_axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_reg_rden,
      D => \s_axi_rdata[14]_i_1_n_0\,
      Q => s_axi_rdata(14),
      R => p_0_in
    );
\s_axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_reg_rden,
      D => \s_axi_rdata[15]_i_1_n_0\,
      Q => s_axi_rdata(15),
      R => p_0_in
    );
\s_axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_reg_rden,
      D => \s_axi_rdata[16]_i_1_n_0\,
      Q => s_axi_rdata(16),
      R => p_0_in
    );
\s_axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_reg_rden,
      D => \s_axi_rdata[17]_i_1_n_0\,
      Q => s_axi_rdata(17),
      R => p_0_in
    );
\s_axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_reg_rden,
      D => \s_axi_rdata[18]_i_1_n_0\,
      Q => s_axi_rdata(18),
      R => p_0_in
    );
\s_axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_reg_rden,
      D => \s_axi_rdata[19]_i_1_n_0\,
      Q => s_axi_rdata(19),
      R => p_0_in
    );
\s_axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_reg_rden,
      D => \s_axi_rdata[1]_i_1_n_0\,
      Q => s_axi_rdata(1),
      R => p_0_in
    );
\s_axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_reg_rden,
      D => \s_axi_rdata[20]_i_1_n_0\,
      Q => s_axi_rdata(20),
      R => p_0_in
    );
\s_axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_reg_rden,
      D => \s_axi_rdata[21]_i_1_n_0\,
      Q => s_axi_rdata(21),
      R => p_0_in
    );
\s_axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_reg_rden,
      D => \s_axi_rdata[22]_i_1_n_0\,
      Q => s_axi_rdata(22),
      R => p_0_in
    );
\s_axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_reg_rden,
      D => \s_axi_rdata[23]_i_1_n_0\,
      Q => s_axi_rdata(23),
      R => p_0_in
    );
\s_axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_reg_rden,
      D => \s_axi_rdata[24]_i_1_n_0\,
      Q => s_axi_rdata(24),
      R => p_0_in
    );
\s_axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_reg_rden,
      D => \s_axi_rdata[25]_i_1_n_0\,
      Q => s_axi_rdata(25),
      R => p_0_in
    );
\s_axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_reg_rden,
      D => \s_axi_rdata[26]_i_1_n_0\,
      Q => s_axi_rdata(26),
      R => p_0_in
    );
\s_axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_reg_rden,
      D => \s_axi_rdata[27]_i_1_n_0\,
      Q => s_axi_rdata(27),
      R => p_0_in
    );
\s_axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_reg_rden,
      D => \s_axi_rdata[28]_i_1_n_0\,
      Q => s_axi_rdata(28),
      R => p_0_in
    );
\s_axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_reg_rden,
      D => \s_axi_rdata[29]_i_1_n_0\,
      Q => s_axi_rdata(29),
      R => p_0_in
    );
\s_axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_reg_rden,
      D => \s_axi_rdata[2]_i_1_n_0\,
      Q => s_axi_rdata(2),
      R => p_0_in
    );
\s_axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_reg_rden,
      D => \s_axi_rdata[30]_i_1_n_0\,
      Q => s_axi_rdata(30),
      R => p_0_in
    );
\s_axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_reg_rden,
      D => \s_axi_rdata[31]_i_2_n_0\,
      Q => s_axi_rdata(31),
      R => p_0_in
    );
\s_axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_reg_rden,
      D => \s_axi_rdata[3]_i_1_n_0\,
      Q => s_axi_rdata(3),
      R => p_0_in
    );
\s_axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_reg_rden,
      D => \s_axi_rdata[4]_i_1_n_0\,
      Q => s_axi_rdata(4),
      R => p_0_in
    );
\s_axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_reg_rden,
      D => \s_axi_rdata[5]_i_1_n_0\,
      Q => s_axi_rdata(5),
      R => p_0_in
    );
\s_axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_reg_rden,
      D => \s_axi_rdata[6]_i_1_n_0\,
      Q => s_axi_rdata(6),
      R => p_0_in
    );
\s_axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_reg_rden,
      D => \s_axi_rdata[7]_i_1_n_0\,
      Q => s_axi_rdata(7),
      R => p_0_in
    );
\s_axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_reg_rden,
      D => \s_axi_rdata[8]_i_1_n_0\,
      Q => s_axi_rdata(8),
      R => p_0_in
    );
\s_axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_reg_rden,
      D => \s_axi_rdata[9]_i_1_n_0\,
      Q => s_axi_rdata(9),
      R => p_0_in
    );
s_axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7444"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \^s_axi_rvalid_reg_0\,
      I2 => \^s_axi_arready\,
      I3 => s_axi_arvalid,
      O => s_axi_rvalid_i_1_n_0
    );
s_axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axi_rvalid_i_1_n_0,
      Q => \^s_axi_rvalid_reg_0\,
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
tx_data_ready_ovr_en_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tx_dma_data_ready_ovr_en,
      D => s_axi_wdata(4),
      Q => tx_data_ready_ovr_en,
      R => p_0_in
    );
tx_data_ready_ovr_val_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tx_dma_data_ready_ovr_en,
      D => s_axi_wdata(5),
      Q => tx_data_ready_ovr_val,
      R => p_0_in
    );
tx_data_ready_stky_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBBBB000B0"
    )
        port map (
      I0 => \s_axi_rdata[21]_i_3_n_0\,
      I1 => s_axi_reg_rden,
      I2 => tx_data_ready,
      I3 => tx_data_ready_ovr_en,
      I4 => tx_data_ready_ovr_val,
      I5 => tx_data_ready_stky,
      O => tx_data_ready_stky_i_1_n_0
    );
tx_data_ready_stky_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tx_data_ready_stky_i_1_n_0,
      Q => tx_data_ready_stky,
      R => p_0_in
    );
tx_dma_data_ready_ovr_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => tx_dma_data_ready_ovr_en_i_2_n_0,
      I1 => p_4_in(3),
      I2 => s_axi_wstrb(0),
      I3 => p_4_in(0),
      I4 => p_4_in(2),
      I5 => p_4_in(1),
      O => tx_dma_data_ready_ovr_en
    );
tx_dma_data_ready_ovr_en_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      I2 => \^s_axi_awready\,
      I3 => \^s_axi_wready\,
      O => tx_dma_data_ready_ovr_en_i_2_n_0
    );
tx_dma_data_ready_ovr_en_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tx_dma_data_ready_ovr_en,
      D => s_axi_wdata(0),
      Q => tx_dma_data_ready_ovr_en_reg_n_0,
      R => p_0_in
    );
tx_dma_data_ready_ovr_val_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tx_dma_data_ready_ovr_en,
      D => s_axi_wdata(1),
      Q => tx_dma_data_ready_ovr_val,
      R => p_0_in
    );
tx_dma_data_ready_stky_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFFFE200E2E2"
    )
        port map (
      I0 => tx_dma_data_ready,
      I1 => tx_dma_data_ready_ovr_en_reg_n_0,
      I2 => tx_dma_data_ready_ovr_val,
      I3 => \s_axi_rdata[21]_i_3_n_0\,
      I4 => s_axi_reg_rden,
      I5 => tx_dma_data_ready_stky,
      O => tx_dma_data_ready_stky_i_1_n_0
    );
tx_dma_data_ready_stky_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tx_dma_data_ready_stky_i_1_n_0,
      Q => tx_dma_data_ready_stky,
      R => p_0_in
    );
tx_enable1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => tx_enable1_carry_n_0,
      CO(2) => tx_enable1_carry_n_1,
      CO(1) => tx_enable1_carry_n_2,
      CO(0) => tx_enable1_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_tx_enable1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => tx_enable1_carry_i_1_n_0,
      S(2) => tx_enable1_carry_i_2_n_0,
      S(1) => tx_enable1_carry_i_3_n_0,
      S(0) => tx_enable1_carry_i_4_n_0
    );
\tx_enable1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => tx_enable1_carry_n_0,
      CO(3) => \tx_enable1_carry__0_n_0\,
      CO(2) => \tx_enable1_carry__0_n_1\,
      CO(1) => \tx_enable1_carry__0_n_2\,
      CO(0) => \tx_enable1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_tx_enable1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \tx_enable1_carry__0_i_1_n_0\,
      S(2) => \tx_enable1_carry__0_i_2_n_0\,
      S(1) => \tx_enable1_carry__0_i_3_n_0\,
      S(0) => \tx_enable1_carry__0_i_4_n_0\
    );
\tx_enable1_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \cnt_tx_reg_n_0_[23]\,
      I1 => \cnt_reg_n_0_[23]\,
      I2 => \cnt_reg_n_0_[21]\,
      I3 => \cnt_tx_reg_n_0_[21]\,
      I4 => \cnt_reg_n_0_[22]\,
      I5 => \cnt_tx_reg_n_0_[22]\,
      O => \tx_enable1_carry__0_i_1_n_0\
    );
\tx_enable1_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \cnt_tx_reg_n_0_[20]\,
      I1 => \cnt_reg_n_0_[20]\,
      I2 => \cnt_reg_n_0_[18]\,
      I3 => \cnt_tx_reg_n_0_[18]\,
      I4 => \cnt_reg_n_0_[19]\,
      I5 => \cnt_tx_reg_n_0_[19]\,
      O => \tx_enable1_carry__0_i_2_n_0\
    );
\tx_enable1_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \cnt_tx_reg_n_0_[17]\,
      I1 => \cnt_reg_n_0_[17]\,
      I2 => \cnt_reg_n_0_[15]\,
      I3 => \cnt_tx_reg_n_0_[15]\,
      I4 => \cnt_reg_n_0_[16]\,
      I5 => \cnt_tx_reg_n_0_[16]\,
      O => \tx_enable1_carry__0_i_3_n_0\
    );
\tx_enable1_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \cnt_tx_reg_n_0_[14]\,
      I1 => \cnt_reg_n_0_[14]\,
      I2 => \cnt_reg_n_0_[12]\,
      I3 => \cnt_tx_reg_n_0_[12]\,
      I4 => \cnt_reg_n_0_[13]\,
      I5 => \cnt_tx_reg_n_0_[13]\,
      O => \tx_enable1_carry__0_i_4_n_0\
    );
\tx_enable1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \tx_enable1_carry__0_n_0\,
      CO(3) => \tx_enable1_carry__1_n_0\,
      CO(2) => \tx_enable1_carry__1_n_1\,
      CO(1) => \tx_enable1_carry__1_n_2\,
      CO(0) => \tx_enable1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_tx_enable1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \tx_enable1_carry__1_i_1_n_0\,
      S(2) => \tx_enable1_carry__1_i_2_n_0\,
      S(1) => \tx_enable1_carry__1_i_3_n_0\,
      S(0) => \tx_enable1_carry__1_i_4_n_0\
    );
\tx_enable1_carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_1_in(2),
      I1 => data5(2),
      I2 => p_1_in(1),
      I3 => data5(1),
      I4 => data5(3),
      I5 => p_1_in(3),
      O => \tx_enable1_carry__1_i_1_n_0\
    );
\tx_enable1_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \cnt_tx_reg_n_0_[31]\,
      I1 => \cnt_reg_n_0_[31]\,
      I2 => p_1_in(0),
      I3 => data5(0),
      I4 => \cnt_reg_n_0_[30]\,
      I5 => \cnt_tx_reg_n_0_[30]\,
      O => \tx_enable1_carry__1_i_2_n_0\
    );
\tx_enable1_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \cnt_tx_reg_n_0_[29]\,
      I1 => \cnt_reg_n_0_[29]\,
      I2 => \cnt_reg_n_0_[27]\,
      I3 => \cnt_tx_reg_n_0_[27]\,
      I4 => \cnt_reg_n_0_[28]\,
      I5 => \cnt_tx_reg_n_0_[28]\,
      O => \tx_enable1_carry__1_i_3_n_0\
    );
\tx_enable1_carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \cnt_tx_reg_n_0_[26]\,
      I1 => \cnt_reg_n_0_[26]\,
      I2 => \cnt_reg_n_0_[24]\,
      I3 => \cnt_tx_reg_n_0_[24]\,
      I4 => \cnt_reg_n_0_[25]\,
      I5 => \cnt_tx_reg_n_0_[25]\,
      O => \tx_enable1_carry__1_i_4_n_0\
    );
\tx_enable1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \tx_enable1_carry__1_n_0\,
      CO(3) => \tx_enable1_carry__2_n_0\,
      CO(2) => \tx_enable1_carry__2_n_1\,
      CO(1) => \tx_enable1_carry__2_n_2\,
      CO(0) => \tx_enable1_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_tx_enable1_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \tx_enable1_carry__2_i_1_n_0\,
      S(2) => \tx_enable1_carry__2_i_2_n_0\,
      S(1) => \tx_enable1_carry__2_i_3_n_0\,
      S(0) => \tx_enable1_carry__2_i_4_n_0\
    );
\tx_enable1_carry__2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => data5(15),
      I1 => p_1_in(15),
      I2 => p_1_in(13),
      I3 => data5(13),
      I4 => p_1_in(14),
      I5 => data5(14),
      O => \tx_enable1_carry__2_i_1_n_0\
    );
\tx_enable1_carry__2_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => data5(12),
      I1 => p_1_in(12),
      I2 => p_1_in(10),
      I3 => data5(10),
      I4 => p_1_in(11),
      I5 => data5(11),
      O => \tx_enable1_carry__2_i_2_n_0\
    );
\tx_enable1_carry__2_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => data5(9),
      I1 => p_1_in(9),
      I2 => p_1_in(8),
      I3 => data5(8),
      I4 => p_1_in(7),
      I5 => data5(7),
      O => \tx_enable1_carry__2_i_3_n_0\
    );
\tx_enable1_carry__2_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => data5(6),
      I1 => p_1_in(6),
      I2 => p_1_in(4),
      I3 => data5(4),
      I4 => p_1_in(5),
      I5 => data5(5),
      O => \tx_enable1_carry__2_i_4_n_0\
    );
\tx_enable1_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \tx_enable1_carry__2_n_0\,
      CO(3) => \tx_enable1_carry__3_n_0\,
      CO(2) => \tx_enable1_carry__3_n_1\,
      CO(1) => \tx_enable1_carry__3_n_2\,
      CO(0) => \tx_enable1_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_tx_enable1_carry__3_O_UNCONNECTED\(3 downto 0),
      S(3) => \tx_enable1_carry__3_i_1_n_0\,
      S(2) => \tx_enable1_carry__3_i_2_n_0\,
      S(1) => \tx_enable1_carry__3_i_3_n_0\,
      S(0) => \tx_enable1_carry__3_i_4_n_0\
    );
\tx_enable1_carry__3_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => data5(27),
      I1 => p_1_in(27),
      I2 => p_1_in(25),
      I3 => data5(25),
      I4 => p_1_in(26),
      I5 => data5(26),
      O => \tx_enable1_carry__3_i_1_n_0\
    );
\tx_enable1_carry__3_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_1_in(22),
      I1 => data5(22),
      I2 => p_1_in(23),
      I3 => data5(23),
      I4 => data5(24),
      I5 => p_1_in(24),
      O => \tx_enable1_carry__3_i_2_n_0\
    );
\tx_enable1_carry__3_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_1_in(19),
      I1 => data5(19),
      I2 => p_1_in(20),
      I3 => data5(20),
      I4 => data5(21),
      I5 => p_1_in(21),
      O => \tx_enable1_carry__3_i_3_n_0\
    );
\tx_enable1_carry__3_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_1_in(18),
      I1 => data5(18),
      I2 => p_1_in(16),
      I3 => data5(16),
      I4 => data5(17),
      I5 => p_1_in(17),
      O => \tx_enable1_carry__3_i_4_n_0\
    );
\tx_enable1_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \tx_enable1_carry__3_n_0\,
      CO(3 downto 2) => \NLW_tx_enable1_carry__4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => tx_enable1,
      CO(0) => \tx_enable1_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_tx_enable1_carry__4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \tx_enable1_carry__4_i_1_n_0\,
      S(0) => \tx_enable1_carry__4_i_2_n_0\
    );
\tx_enable1_carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data5(31),
      I1 => p_1_in(31),
      O => \tx_enable1_carry__4_i_1_n_0\
    );
\tx_enable1_carry__4_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_1_in(28),
      I1 => data5(28),
      I2 => p_1_in(29),
      I3 => data5(29),
      I4 => data5(30),
      I5 => p_1_in(30),
      O => \tx_enable1_carry__4_i_2_n_0\
    );
tx_enable1_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \cnt_tx_reg_n_0_[11]\,
      I1 => \cnt_reg_n_0_[11]\,
      I2 => \cnt_reg_n_0_[9]\,
      I3 => \cnt_tx_reg_n_0_[9]\,
      I4 => \cnt_reg_n_0_[10]\,
      I5 => \cnt_tx_reg_n_0_[10]\,
      O => tx_enable1_carry_i_1_n_0
    );
tx_enable1_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \cnt_tx_reg_n_0_[8]\,
      I1 => \cnt_reg_n_0_[8]\,
      I2 => \cnt_reg_n_0_[6]\,
      I3 => \cnt_tx_reg_n_0_[6]\,
      I4 => \cnt_reg_n_0_[7]\,
      I5 => \cnt_tx_reg_n_0_[7]\,
      O => tx_enable1_carry_i_2_n_0
    );
tx_enable1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \cnt_reg_n_0_[5]\,
      I1 => \cnt_tx_reg_n_0_[5]\,
      I2 => \cnt_reg_n_0_[3]\,
      I3 => \cnt_tx_reg_n_0_[3]\,
      I4 => \cnt_tx_reg_n_0_[4]\,
      I5 => \cnt_reg_n_0_[4]\,
      O => tx_enable1_carry_i_3_n_0
    );
tx_enable1_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \cnt_tx_reg_n_0_[1]\,
      I1 => \cnt_reg_n_0_[1]\,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => \cnt_tx_reg_n_0_[2]\,
      I4 => \cnt_reg_n_0_[0]\,
      I5 => \cnt_tx_reg_n_0_[0]\,
      O => tx_enable1_carry_i_4_n_0
    );
tx_enable_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FCFFFCFF100010"
    )
        port map (
      I0 => tx_enable_i_2_n_0,
      I1 => tx_enable_i_3_n_0,
      I2 => tx_enable_i_4_n_0,
      I3 => p_6_in(18),
      I4 => tx_enable1,
      I5 => \^tx_enable\,
      O => tx_enable_i_1_n_0
    );
tx_enable_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => s_axi_wstrb(0),
      O => tx_enable_i_2_n_0
    );
tx_enable_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEFFFFF"
    )
        port map (
      I0 => p_4_in(2),
      I1 => p_4_in(3),
      I2 => p_4_in(0),
      I3 => p_4_in(1),
      I4 => tx_dma_data_ready_ovr_en_i_2_n_0,
      O => tx_enable_i_3_n_0
    );
tx_enable_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => s_axi_wdata(1),
      I1 => s_axi_wstrb(0),
      O => tx_enable_i_4_n_0
    );
tx_enable_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tx_enable_i_1_n_0,
      Q => \^tx_enable\,
      R => p_0_in
    );
tx_fifo_underflow_stky_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFCFFFAAAA8AAA"
    )
        port map (
      I0 => tx_fifo_underflow,
      I1 => \s_axi_rdata[21]_i_3_n_0\,
      I2 => s_axi_arvalid,
      I3 => \^s_axi_arready\,
      I4 => \^s_axi_rvalid_reg_0\,
      I5 => tx_fifo_underflow_stky,
      O => tx_fifo_underflow_stky_i_1_n_0
    );
tx_fifo_underflow_stky_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tx_fifo_underflow_stky_i_1_n_0,
      Q => tx_fifo_underflow_stky,
      R => p_0_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_rf_timestamping_0_0 is
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
    tx_dma_data_ready : in STD_LOGIC;
    rx_dma_xfer_req : in STD_LOGIC;
    tx_data_ready : in STD_LOGIC;
    rx_data_ready : in STD_LOGIC;
    tx_fifo_underflow : in STD_LOGIC;
    rx_fifo_overflow : in STD_LOGIC;
    tx_enable : out STD_LOGIC;
    rx_enable : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of icyradio_axi_rf_timestamping_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of icyradio_axi_rf_timestamping_0_0 : entity is "icyradio_axi_rf_timestamping_0_0,axi_rf_timestamping,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of icyradio_axi_rf_timestamping_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of icyradio_axi_rf_timestamping_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of icyradio_axi_rf_timestamping_0_0 : entity is "axi_rf_timestamping,Vivado 2021.1";
end icyradio_axi_rf_timestamping_0_0;

architecture STRUCTURE of icyradio_axi_rf_timestamping_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN icyradio_axi_ad9361_2_l_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_IGNORE : string;
  attribute X_INTERFACE_IGNORE of rx_data_ready : signal is "true";
  attribute X_INTERFACE_IGNORE of rx_dma_xfer_req : signal is "true";
  attribute X_INTERFACE_IGNORE of rx_fifo_overflow : signal is "true";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 s_axi ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi BREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi BVALID";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 s_axi RREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_rready : signal is "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 6, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN icyradio_axi_ad9361_2_l_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi RVALID";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi WVALID";
  attribute X_INTERFACE_IGNORE of tx_data_ready : signal is "true";
  attribute X_INTERFACE_IGNORE of tx_dma_data_ready : signal is "true";
  attribute X_INTERFACE_IGNORE of tx_fifo_underflow : signal is "true";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axi ARADDR";
  attribute X_INTERFACE_INFO of s_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 s_axi ARPROT";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi AWADDR";
  attribute X_INTERFACE_INFO of s_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 s_axi AWPROT";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi BRESP";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axi RRESP";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi WDATA";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axi WSTRB";
begin
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.icyradio_axi_rf_timestamping_0_0_axi_rf_timestamping
     port map (
      aclk => aclk,
      aresetn => aresetn,
      rx_data_ready => rx_data_ready,
      rx_dma_xfer_req => rx_dma_xfer_req,
      rx_enable_reg_0 => rx_enable,
      rx_fifo_overflow => rx_fifo_overflow,
      s_axi_araddr(3 downto 0) => s_axi_araddr(5 downto 2),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(3 downto 0) => s_axi_awaddr(5 downto 2),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid_reg_0 => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      tx_data_ready => tx_data_ready,
      tx_dma_data_ready => tx_dma_data_ready,
      tx_enable => tx_enable,
      tx_fifo_underflow => tx_fifo_underflow
    );
end STRUCTURE;
