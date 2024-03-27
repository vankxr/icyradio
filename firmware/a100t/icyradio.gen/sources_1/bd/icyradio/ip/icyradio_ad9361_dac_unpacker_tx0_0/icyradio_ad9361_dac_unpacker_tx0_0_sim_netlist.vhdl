-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Wed Mar 27 12:07:05 2024
-- Host        : node4-dev running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/joao/icyradio/firmware/a100t/icyradio.gen/sources_1/bd/icyradio/ip/icyradio_ad9361_dac_unpacker_tx0_0/icyradio_ad9361_dac_unpacker_tx0_0_sim_netlist.vhdl
-- Design      : icyradio_ad9361_dac_unpacker_tx0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_ad9361_dac_unpacker_tx0_0_pack_interconnect is
  port (
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    p_0_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_ad9361_dac_unpacker_tx0_0_pack_interconnect : entity is "pack_interconnect";
end icyradio_ad9361_dac_unpacker_tx0_0_pack_interconnect;

architecture STRUCTURE of icyradio_ad9361_dac_unpacker_tx0_0_pack_interconnect is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \fifo_rd_data[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \fifo_rd_data[10]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \fifo_rd_data[11]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \fifo_rd_data[12]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \fifo_rd_data[13]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \fifo_rd_data[14]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \fifo_rd_data[15]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \fifo_rd_data[16]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \fifo_rd_data[17]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \fifo_rd_data[18]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \fifo_rd_data[19]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \fifo_rd_data[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \fifo_rd_data[20]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \fifo_rd_data[21]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \fifo_rd_data[22]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \fifo_rd_data[23]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \fifo_rd_data[24]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \fifo_rd_data[25]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \fifo_rd_data[26]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \fifo_rd_data[27]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \fifo_rd_data[28]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \fifo_rd_data[29]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \fifo_rd_data[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \fifo_rd_data[30]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \fifo_rd_data[31]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \fifo_rd_data[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \fifo_rd_data[4]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \fifo_rd_data[5]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \fifo_rd_data[6]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \fifo_rd_data[7]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \fifo_rd_data[8]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \fifo_rd_data[9]_i_1\ : label is "soft_lutpair9";
begin
\fifo_rd_data[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_data(0),
      I1 => p_0_in,
      I2 => s_axis_data(16),
      O => D(0)
    );
\fifo_rd_data[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_data(10),
      I1 => p_0_in,
      I2 => s_axis_data(26),
      O => D(10)
    );
\fifo_rd_data[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_data(11),
      I1 => p_0_in,
      I2 => s_axis_data(27),
      O => D(11)
    );
\fifo_rd_data[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_data(12),
      I1 => p_0_in,
      I2 => s_axis_data(28),
      O => D(12)
    );
\fifo_rd_data[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_data(13),
      I1 => p_0_in,
      I2 => s_axis_data(29),
      O => D(13)
    );
\fifo_rd_data[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_data(14),
      I1 => p_0_in,
      I2 => s_axis_data(30),
      O => D(14)
    );
\fifo_rd_data[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_data(15),
      I1 => p_0_in,
      I2 => s_axis_data(31),
      O => D(15)
    );
\fifo_rd_data[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_data(16),
      I1 => p_0_in,
      I2 => s_axis_data(0),
      O => D(16)
    );
\fifo_rd_data[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_data(17),
      I1 => p_0_in,
      I2 => s_axis_data(1),
      O => D(17)
    );
\fifo_rd_data[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_data(18),
      I1 => p_0_in,
      I2 => s_axis_data(2),
      O => D(18)
    );
\fifo_rd_data[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_data(19),
      I1 => p_0_in,
      I2 => s_axis_data(3),
      O => D(19)
    );
\fifo_rd_data[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_data(1),
      I1 => p_0_in,
      I2 => s_axis_data(17),
      O => D(1)
    );
\fifo_rd_data[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_data(20),
      I1 => p_0_in,
      I2 => s_axis_data(4),
      O => D(20)
    );
\fifo_rd_data[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_data(21),
      I1 => p_0_in,
      I2 => s_axis_data(5),
      O => D(21)
    );
\fifo_rd_data[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_data(22),
      I1 => p_0_in,
      I2 => s_axis_data(6),
      O => D(22)
    );
\fifo_rd_data[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_data(23),
      I1 => p_0_in,
      I2 => s_axis_data(7),
      O => D(23)
    );
\fifo_rd_data[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_data(24),
      I1 => p_0_in,
      I2 => s_axis_data(8),
      O => D(24)
    );
\fifo_rd_data[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_data(25),
      I1 => p_0_in,
      I2 => s_axis_data(9),
      O => D(25)
    );
\fifo_rd_data[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_data(26),
      I1 => p_0_in,
      I2 => s_axis_data(10),
      O => D(26)
    );
\fifo_rd_data[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_data(27),
      I1 => p_0_in,
      I2 => s_axis_data(11),
      O => D(27)
    );
\fifo_rd_data[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_data(28),
      I1 => p_0_in,
      I2 => s_axis_data(12),
      O => D(28)
    );
\fifo_rd_data[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_data(29),
      I1 => p_0_in,
      I2 => s_axis_data(13),
      O => D(29)
    );
\fifo_rd_data[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_data(2),
      I1 => p_0_in,
      I2 => s_axis_data(18),
      O => D(2)
    );
\fifo_rd_data[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_data(30),
      I1 => p_0_in,
      I2 => s_axis_data(14),
      O => D(30)
    );
\fifo_rd_data[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_data(31),
      I1 => p_0_in,
      I2 => s_axis_data(15),
      O => D(31)
    );
\fifo_rd_data[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_data(3),
      I1 => p_0_in,
      I2 => s_axis_data(19),
      O => D(3)
    );
\fifo_rd_data[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_data(4),
      I1 => p_0_in,
      I2 => s_axis_data(20),
      O => D(4)
    );
\fifo_rd_data[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_data(5),
      I1 => p_0_in,
      I2 => s_axis_data(21),
      O => D(5)
    );
\fifo_rd_data[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_data(6),
      I1 => p_0_in,
      I2 => s_axis_data(22),
      O => D(6)
    );
\fifo_rd_data[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_data(7),
      I1 => p_0_in,
      I2 => s_axis_data(23),
      O => D(7)
    );
\fifo_rd_data[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_data(8),
      I1 => p_0_in,
      I2 => s_axis_data(24),
      O => D(8)
    );
\fifo_rd_data[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_data(9),
      I1 => p_0_in,
      I2 => s_axis_data(25),
      O => D(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_ad9361_dac_unpacker_tx0_0_pack_network is
  port (
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    \ctrl_reg[1]_0\ : in STD_LOGIC;
    rotate : in STD_LOGIC;
    startup_ctrl : in STD_LOGIC;
    fifo_rd_en : in STD_LOGIC;
    s_axis_valid : in STD_LOGIC;
    s_axis_data : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_ad9361_dac_unpacker_tx0_0_pack_network : entity is "pack_network";
end icyradio_ad9361_dac_unpacker_tx0_0_pack_network;

architecture STRUCTURE of icyradio_ad9361_dac_unpacker_tx0_0_pack_network is
  signal \ctrl[1]_i_1_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
begin
\ctrl[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"666F6F6F66606060"
    )
        port map (
      I0 => \ctrl_reg[1]_0\,
      I1 => rotate,
      I2 => startup_ctrl,
      I3 => fifo_rd_en,
      I4 => s_axis_valid,
      I5 => p_0_in,
      O => \ctrl[1]_i_1_n_0\
    );
\ctrl_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \ctrl[1]_i_1_n_0\,
      Q => p_0_in,
      R => '0'
    );
i_interconnect: entity work.icyradio_ad9361_dac_unpacker_tx0_0_pack_interconnect
     port map (
      D(31 downto 0) => D(31 downto 0),
      p_0_in => p_0_in,
      s_axis_data(31 downto 0) => s_axis_data(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_ad9361_dac_unpacker_tx0_0_pack_shell is
  port (
    reset_data : out STD_LOGIC;
    s_axis_ready : out STD_LOGIC;
    reset_data_reg_0 : out STD_LOGIC;
    s_axis_valid_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    fifo_rd_en : in STD_LOGIC;
    s_axis_valid : in STD_LOGIC;
    enable_0 : in STD_LOGIC;
    enable_1 : in STD_LOGIC;
    reset : in STD_LOGIC;
    s_axis_data : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_ad9361_dac_unpacker_tx0_0_pack_shell : entity is "pack_shell";
end icyradio_ad9361_dac_unpacker_tx0_0_pack_shell;

architecture STRUCTURE of icyradio_ad9361_dac_unpacker_tx0_0_pack_shell is
  signal ce_ctrl : STD_LOGIC;
  signal enable_count : STD_LOGIC;
  signal \enable_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \enable_int[0]_i_1_n_0\ : STD_LOGIC;
  signal \enable_int[1]_i_1_n_0\ : STD_LOGIC;
  signal \enable_int_reg_n_0_[0]\ : STD_LOGIC;
  signal \enable_int_reg_n_0_[1]\ : STD_LOGIC;
  signal ready : STD_LOGIC;
  signal ready_i_1_n_0 : STD_LOGIC;
  signal reset_ctrl : STD_LOGIC;
  signal \reset_ctrl0_inferred__0/i__n_0\ : STD_LOGIC;
  signal reset_ctrl_i_1_n_0 : STD_LOGIC;
  signal \^reset_data\ : STD_LOGIC;
  signal reset_data_i_1_n_0 : STD_LOGIC;
  signal rotate : STD_LOGIC;
  signal \rotate[0]_i_1_n_0\ : STD_LOGIC;
  signal startup_ctrl : STD_LOGIC;
  signal startup_ctrl2 : STD_LOGIC;
  signal startup_ctrl2_i_1_n_0 : STD_LOGIC;
  signal startup_ctrl_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \enable_count[0]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \enable_int[0]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \enable_int[1]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of fifo_rd_underflow_i_1 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of fifo_rd_valid_i_1 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of ready_i_2 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \reset_ctrl0_inferred__0/i_\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of reset_ctrl_i_1 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of s_axis_ready_INST_0 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of startup_ctrl2_i_1 : label is "soft_lutpair16";
begin
  reset_data <= \^reset_data\;
\enable_count[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \enable_int_reg_n_0_[0]\,
      I1 => \enable_int_reg_n_0_[1]\,
      O => \enable_count[0]_i_1_n_0\
    );
\enable_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \enable_count[0]_i_1_n_0\,
      Q => enable_count,
      R => '0'
    );
\enable_int[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => enable_0,
      I1 => reset,
      O => \enable_int[0]_i_1_n_0\
    );
\enable_int[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => enable_1,
      I1 => reset,
      O => \enable_int[1]_i_1_n_0\
    );
\enable_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \enable_int[0]_i_1_n_0\,
      Q => \enable_int_reg_n_0_[0]\,
      R => '0'
    );
\enable_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \enable_int[1]_i_1_n_0\,
      Q => \enable_int_reg_n_0_[1]\,
      R => '0'
    );
fifo_rd_underflow_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => s_axis_valid,
      I1 => \^reset_data\,
      I2 => fifo_rd_en,
      O => s_axis_valid_0
    );
fifo_rd_valid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^reset_data\,
      I1 => s_axis_valid,
      I2 => fifo_rd_en,
      O => reset_data_reg_0
    );
\gen_network[1].i_ctrl_interconnect\: entity work.icyradio_ad9361_dac_unpacker_tx0_0_pack_network
     port map (
      D(31 downto 0) => D(31 downto 0),
      clk => clk,
      \ctrl_reg[1]_0\ => \enable_int_reg_n_0_[0]\,
      fifo_rd_en => fifo_rd_en,
      rotate => rotate,
      s_axis_data(31 downto 0) => s_axis_data(31 downto 0),
      s_axis_valid => s_axis_valid,
      startup_ctrl => startup_ctrl
    );
ready_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EEE2"
    )
        port map (
      I0 => ready,
      I1 => ce_ctrl,
      I2 => enable_count,
      I3 => rotate,
      I4 => reset_ctrl,
      O => ready_i_1_n_0
    );
ready_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => startup_ctrl,
      I1 => fifo_rd_en,
      I2 => s_axis_valid,
      O => ce_ctrl
    );
ready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ready_i_1_n_0,
      Q => ready,
      R => '0'
    );
\reset_ctrl0_inferred__0/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => enable_0,
      I1 => \enable_int_reg_n_0_[0]\,
      I2 => enable_1,
      I3 => \enable_int_reg_n_0_[1]\,
      O => \reset_ctrl0_inferred__0/i__n_0\
    );
reset_ctrl_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7DBF"
    )
        port map (
      I0 => \enable_int_reg_n_0_[1]\,
      I1 => \enable_int_reg_n_0_[0]\,
      I2 => enable_0,
      I3 => enable_1,
      I4 => reset,
      O => reset_ctrl_i_1_n_0
    );
reset_ctrl_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => reset_ctrl_i_1_n_0,
      Q => reset_ctrl,
      R => '0'
    );
reset_data_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBEFFFFBF"
    )
        port map (
      I0 => startup_ctrl2,
      I1 => enable_0,
      I2 => \enable_int_reg_n_0_[0]\,
      I3 => enable_1,
      I4 => \enable_int_reg_n_0_[1]\,
      I5 => reset,
      O => reset_data_i_1_n_0
    );
reset_data_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => reset_data_i_1_n_0,
      Q => \^reset_data\,
      R => '0'
    );
\rotate[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAA556A"
    )
        port map (
      I0 => rotate,
      I1 => s_axis_valid,
      I2 => fifo_rd_en,
      I3 => startup_ctrl,
      I4 => enable_count,
      I5 => reset_ctrl,
      O => \rotate[0]_i_1_n_0\
    );
\rotate_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \rotate[0]_i_1_n_0\,
      Q => rotate,
      R => '0'
    );
s_axis_ready_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => ready,
      I1 => fifo_rd_en,
      I2 => s_axis_valid,
      O => s_axis_ready
    );
startup_ctrl2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007DB0"
    )
        port map (
      I0 => \enable_int_reg_n_0_[1]\,
      I1 => \enable_int_reg_n_0_[0]\,
      I2 => enable_0,
      I3 => enable_1,
      I4 => reset,
      O => startup_ctrl2_i_1_n_0
    );
startup_ctrl2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => startup_ctrl2_i_1_n_0,
      Q => startup_ctrl2,
      R => '0'
    );
startup_ctrl_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FEFEFE00"
    )
        port map (
      I0 => \reset_ctrl0_inferred__0/i__n_0\,
      I1 => reset_ctrl,
      I2 => startup_ctrl2,
      I3 => enable_0,
      I4 => enable_1,
      I5 => reset,
      O => startup_ctrl_i_1_n_0
    );
startup_ctrl_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => startup_ctrl_i_1_n_0,
      Q => startup_ctrl,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_ad9361_dac_unpacker_tx0_0_util_upack2_impl is
  port (
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_ready : out STD_LOGIC;
    fifo_rd_valid : out STD_LOGIC;
    fifo_rd_underflow : out STD_LOGIC;
    enable_1 : in STD_LOGIC;
    reset : in STD_LOGIC;
    enable_0 : in STD_LOGIC;
    clk : in STD_LOGIC;
    fifo_rd_en : in STD_LOGIC;
    s_axis_valid : in STD_LOGIC;
    s_axis_data : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_ad9361_dac_unpacker_tx0_0_util_upack2_impl : entity is "util_upack2_impl";
end icyradio_ad9361_dac_unpacker_tx0_0_util_upack2_impl;

architecture STRUCTURE of icyradio_ad9361_dac_unpacker_tx0_0_util_upack2_impl is
  signal deinterleaved_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal fifo_rd_data0_n_0 : STD_LOGIC;
  signal i_pack_shell_n_2 : STD_LOGIC;
  signal i_pack_shell_n_3 : STD_LOGIC;
  signal reset_data : STD_LOGIC;
begin
fifo_rd_data0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => reset_data,
      I1 => s_axis_valid,
      I2 => fifo_rd_en,
      O => fifo_rd_data0_n_0
    );
\fifo_rd_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_rd_en,
      D => deinterleaved_data(0),
      Q => Q(0),
      R => fifo_rd_data0_n_0
    );
\fifo_rd_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_rd_en,
      D => deinterleaved_data(10),
      Q => Q(10),
      R => fifo_rd_data0_n_0
    );
\fifo_rd_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_rd_en,
      D => deinterleaved_data(11),
      Q => Q(11),
      R => fifo_rd_data0_n_0
    );
\fifo_rd_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_rd_en,
      D => deinterleaved_data(12),
      Q => Q(12),
      R => fifo_rd_data0_n_0
    );
\fifo_rd_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_rd_en,
      D => deinterleaved_data(13),
      Q => Q(13),
      R => fifo_rd_data0_n_0
    );
\fifo_rd_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_rd_en,
      D => deinterleaved_data(14),
      Q => Q(14),
      R => fifo_rd_data0_n_0
    );
\fifo_rd_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_rd_en,
      D => deinterleaved_data(15),
      Q => Q(15),
      R => fifo_rd_data0_n_0
    );
\fifo_rd_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_rd_en,
      D => deinterleaved_data(16),
      Q => Q(16),
      R => fifo_rd_data0_n_0
    );
\fifo_rd_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_rd_en,
      D => deinterleaved_data(17),
      Q => Q(17),
      R => fifo_rd_data0_n_0
    );
\fifo_rd_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_rd_en,
      D => deinterleaved_data(18),
      Q => Q(18),
      R => fifo_rd_data0_n_0
    );
\fifo_rd_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_rd_en,
      D => deinterleaved_data(19),
      Q => Q(19),
      R => fifo_rd_data0_n_0
    );
\fifo_rd_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_rd_en,
      D => deinterleaved_data(1),
      Q => Q(1),
      R => fifo_rd_data0_n_0
    );
\fifo_rd_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_rd_en,
      D => deinterleaved_data(20),
      Q => Q(20),
      R => fifo_rd_data0_n_0
    );
\fifo_rd_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_rd_en,
      D => deinterleaved_data(21),
      Q => Q(21),
      R => fifo_rd_data0_n_0
    );
\fifo_rd_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_rd_en,
      D => deinterleaved_data(22),
      Q => Q(22),
      R => fifo_rd_data0_n_0
    );
\fifo_rd_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_rd_en,
      D => deinterleaved_data(23),
      Q => Q(23),
      R => fifo_rd_data0_n_0
    );
\fifo_rd_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_rd_en,
      D => deinterleaved_data(24),
      Q => Q(24),
      R => fifo_rd_data0_n_0
    );
\fifo_rd_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_rd_en,
      D => deinterleaved_data(25),
      Q => Q(25),
      R => fifo_rd_data0_n_0
    );
\fifo_rd_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_rd_en,
      D => deinterleaved_data(26),
      Q => Q(26),
      R => fifo_rd_data0_n_0
    );
\fifo_rd_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_rd_en,
      D => deinterleaved_data(27),
      Q => Q(27),
      R => fifo_rd_data0_n_0
    );
\fifo_rd_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_rd_en,
      D => deinterleaved_data(28),
      Q => Q(28),
      R => fifo_rd_data0_n_0
    );
\fifo_rd_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_rd_en,
      D => deinterleaved_data(29),
      Q => Q(29),
      R => fifo_rd_data0_n_0
    );
\fifo_rd_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_rd_en,
      D => deinterleaved_data(2),
      Q => Q(2),
      R => fifo_rd_data0_n_0
    );
\fifo_rd_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_rd_en,
      D => deinterleaved_data(30),
      Q => Q(30),
      R => fifo_rd_data0_n_0
    );
\fifo_rd_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_rd_en,
      D => deinterleaved_data(31),
      Q => Q(31),
      R => fifo_rd_data0_n_0
    );
\fifo_rd_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_rd_en,
      D => deinterleaved_data(3),
      Q => Q(3),
      R => fifo_rd_data0_n_0
    );
\fifo_rd_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_rd_en,
      D => deinterleaved_data(4),
      Q => Q(4),
      R => fifo_rd_data0_n_0
    );
\fifo_rd_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_rd_en,
      D => deinterleaved_data(5),
      Q => Q(5),
      R => fifo_rd_data0_n_0
    );
\fifo_rd_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_rd_en,
      D => deinterleaved_data(6),
      Q => Q(6),
      R => fifo_rd_data0_n_0
    );
\fifo_rd_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_rd_en,
      D => deinterleaved_data(7),
      Q => Q(7),
      R => fifo_rd_data0_n_0
    );
\fifo_rd_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_rd_en,
      D => deinterleaved_data(8),
      Q => Q(8),
      R => fifo_rd_data0_n_0
    );
\fifo_rd_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fifo_rd_en,
      D => deinterleaved_data(9),
      Q => Q(9),
      R => fifo_rd_data0_n_0
    );
fifo_rd_underflow_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i_pack_shell_n_3,
      Q => fifo_rd_underflow,
      R => '0'
    );
fifo_rd_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i_pack_shell_n_2,
      Q => fifo_rd_valid,
      R => '0'
    );
i_pack_shell: entity work.icyradio_ad9361_dac_unpacker_tx0_0_pack_shell
     port map (
      D(31 downto 0) => deinterleaved_data(31 downto 0),
      clk => clk,
      enable_0 => enable_0,
      enable_1 => enable_1,
      fifo_rd_en => fifo_rd_en,
      reset => reset,
      reset_data => reset_data,
      reset_data_reg_0 => i_pack_shell_n_2,
      s_axis_data(31 downto 0) => s_axis_data(31 downto 0),
      s_axis_ready => s_axis_ready,
      s_axis_valid => s_axis_valid,
      s_axis_valid_0 => i_pack_shell_n_3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_ad9361_dac_unpacker_tx0_0_util_upack2 is
  port (
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_ready : out STD_LOGIC;
    fifo_rd_valid : out STD_LOGIC;
    fifo_rd_underflow : out STD_LOGIC;
    enable_1 : in STD_LOGIC;
    reset : in STD_LOGIC;
    enable_0 : in STD_LOGIC;
    clk : in STD_LOGIC;
    fifo_rd_en : in STD_LOGIC;
    s_axis_valid : in STD_LOGIC;
    s_axis_data : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_ad9361_dac_unpacker_tx0_0_util_upack2 : entity is "util_upack2";
end icyradio_ad9361_dac_unpacker_tx0_0_util_upack2;

architecture STRUCTURE of icyradio_ad9361_dac_unpacker_tx0_0_util_upack2 is
begin
i_upack: entity work.icyradio_ad9361_dac_unpacker_tx0_0_util_upack2_impl
     port map (
      Q(31 downto 0) => Q(31 downto 0),
      clk => clk,
      enable_0 => enable_0,
      enable_1 => enable_1,
      fifo_rd_en => fifo_rd_en,
      fifo_rd_underflow => fifo_rd_underflow,
      fifo_rd_valid => fifo_rd_valid,
      reset => reset,
      s_axis_data(31 downto 0) => s_axis_data(31 downto 0),
      s_axis_ready => s_axis_ready,
      s_axis_valid => s_axis_valid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_ad9361_dac_unpacker_tx0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    enable_0 : in STD_LOGIC;
    enable_1 : in STD_LOGIC;
    fifo_rd_en : in STD_LOGIC;
    fifo_rd_valid : out STD_LOGIC;
    fifo_rd_underflow : out STD_LOGIC;
    fifo_rd_data_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    fifo_rd_data_1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_valid : in STD_LOGIC;
    s_axis_ready : out STD_LOGIC;
    s_axis_data : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of icyradio_ad9361_dac_unpacker_tx0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of icyradio_ad9361_dac_unpacker_tx0_0 : entity is "icyradio_ad9361_dac_unpacker_tx0_0,util_upack2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of icyradio_ad9361_dac_unpacker_tx0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of icyradio_ad9361_dac_unpacker_tx0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of icyradio_ad9361_dac_unpacker_tx0_0 : entity is "util_upack2,Vivado 2023.2";
end icyradio_ad9361_dac_unpacker_tx0_0;

architecture STRUCTURE of icyradio_ad9361_dac_unpacker_tx0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 s_axis_signal_clock CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME s_axis_signal_clock, ASSOCIATED_BUSIF s_axis, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN icyradio_axi_ad9361_0_l_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 s_axis_signal_reset RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME s_axis_signal_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_ready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute X_INTERFACE_INFO of s_axis_valid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute X_INTERFACE_INFO of s_axis_data : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
  attribute X_INTERFACE_PARAMETER of s_axis_data : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN icyradio_axi_ad9361_0_l_clk, LAYERED_METADATA undef, INSERT_VIP 0";
begin
inst: entity work.icyradio_ad9361_dac_unpacker_tx0_0_util_upack2
     port map (
      Q(31 downto 16) => fifo_rd_data_1(15 downto 0),
      Q(15 downto 0) => fifo_rd_data_0(15 downto 0),
      clk => clk,
      enable_0 => enable_0,
      enable_1 => enable_1,
      fifo_rd_en => fifo_rd_en,
      fifo_rd_underflow => fifo_rd_underflow,
      fifo_rd_valid => fifo_rd_valid,
      reset => reset,
      s_axis_data(31 downto 0) => s_axis_data(31 downto 0),
      s_axis_ready => s_axis_ready,
      s_axis_valid => s_axis_valid
    );
end STRUCTURE;
