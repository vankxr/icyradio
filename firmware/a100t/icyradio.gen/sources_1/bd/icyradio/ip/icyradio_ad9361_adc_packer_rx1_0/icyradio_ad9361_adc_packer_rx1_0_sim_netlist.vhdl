-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Wed Mar 27 12:07:05 2024
-- Host        : node4-dev running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/joao/icyradio/firmware/a100t/icyradio.gen/sources_1/bd/icyradio/ip/icyradio_ad9361_adc_packer_rx1_0/icyradio_ad9361_adc_packer_rx1_0_sim_netlist.vhdl
-- Design      : icyradio_ad9361_adc_packer_rx1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_ad9361_adc_packer_rx1_0_pack_interconnect is
  port (
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    fifo_wr_data_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    p_0_in : in STD_LOGIC;
    fifo_wr_data_1 : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_ad9361_adc_packer_rx1_0_pack_interconnect : entity is "pack_interconnect";
end icyradio_ad9361_adc_packer_rx1_0_pack_interconnect;

architecture STRUCTURE of icyradio_ad9361_adc_packer_rx1_0_pack_interconnect is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \packed_fifo_wr_data[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \packed_fifo_wr_data[10]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \packed_fifo_wr_data[11]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \packed_fifo_wr_data[12]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \packed_fifo_wr_data[13]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \packed_fifo_wr_data[14]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \packed_fifo_wr_data[15]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \packed_fifo_wr_data[16]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \packed_fifo_wr_data[17]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \packed_fifo_wr_data[18]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \packed_fifo_wr_data[19]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \packed_fifo_wr_data[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \packed_fifo_wr_data[20]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \packed_fifo_wr_data[21]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \packed_fifo_wr_data[22]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \packed_fifo_wr_data[23]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \packed_fifo_wr_data[24]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \packed_fifo_wr_data[25]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \packed_fifo_wr_data[26]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \packed_fifo_wr_data[27]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \packed_fifo_wr_data[28]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \packed_fifo_wr_data[29]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \packed_fifo_wr_data[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \packed_fifo_wr_data[30]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \packed_fifo_wr_data[31]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \packed_fifo_wr_data[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \packed_fifo_wr_data[4]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \packed_fifo_wr_data[5]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \packed_fifo_wr_data[6]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \packed_fifo_wr_data[7]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \packed_fifo_wr_data[8]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \packed_fifo_wr_data[9]_i_1\ : label is "soft_lutpair9";
begin
\packed_fifo_wr_data[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_wr_data_0(0),
      I1 => p_0_in,
      I2 => fifo_wr_data_1(0),
      O => D(0)
    );
\packed_fifo_wr_data[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_wr_data_0(10),
      I1 => p_0_in,
      I2 => fifo_wr_data_1(10),
      O => D(10)
    );
\packed_fifo_wr_data[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_wr_data_0(11),
      I1 => p_0_in,
      I2 => fifo_wr_data_1(11),
      O => D(11)
    );
\packed_fifo_wr_data[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_wr_data_0(12),
      I1 => p_0_in,
      I2 => fifo_wr_data_1(12),
      O => D(12)
    );
\packed_fifo_wr_data[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_wr_data_0(13),
      I1 => p_0_in,
      I2 => fifo_wr_data_1(13),
      O => D(13)
    );
\packed_fifo_wr_data[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_wr_data_0(14),
      I1 => p_0_in,
      I2 => fifo_wr_data_1(14),
      O => D(14)
    );
\packed_fifo_wr_data[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_wr_data_0(15),
      I1 => p_0_in,
      I2 => fifo_wr_data_1(15),
      O => D(15)
    );
\packed_fifo_wr_data[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_wr_data_1(0),
      I1 => p_0_in,
      I2 => fifo_wr_data_0(0),
      O => D(16)
    );
\packed_fifo_wr_data[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_wr_data_1(1),
      I1 => p_0_in,
      I2 => fifo_wr_data_0(1),
      O => D(17)
    );
\packed_fifo_wr_data[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_wr_data_1(2),
      I1 => p_0_in,
      I2 => fifo_wr_data_0(2),
      O => D(18)
    );
\packed_fifo_wr_data[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_wr_data_1(3),
      I1 => p_0_in,
      I2 => fifo_wr_data_0(3),
      O => D(19)
    );
\packed_fifo_wr_data[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_wr_data_0(1),
      I1 => p_0_in,
      I2 => fifo_wr_data_1(1),
      O => D(1)
    );
\packed_fifo_wr_data[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_wr_data_1(4),
      I1 => p_0_in,
      I2 => fifo_wr_data_0(4),
      O => D(20)
    );
\packed_fifo_wr_data[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_wr_data_1(5),
      I1 => p_0_in,
      I2 => fifo_wr_data_0(5),
      O => D(21)
    );
\packed_fifo_wr_data[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_wr_data_1(6),
      I1 => p_0_in,
      I2 => fifo_wr_data_0(6),
      O => D(22)
    );
\packed_fifo_wr_data[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_wr_data_1(7),
      I1 => p_0_in,
      I2 => fifo_wr_data_0(7),
      O => D(23)
    );
\packed_fifo_wr_data[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_wr_data_1(8),
      I1 => p_0_in,
      I2 => fifo_wr_data_0(8),
      O => D(24)
    );
\packed_fifo_wr_data[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_wr_data_1(9),
      I1 => p_0_in,
      I2 => fifo_wr_data_0(9),
      O => D(25)
    );
\packed_fifo_wr_data[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_wr_data_1(10),
      I1 => p_0_in,
      I2 => fifo_wr_data_0(10),
      O => D(26)
    );
\packed_fifo_wr_data[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_wr_data_1(11),
      I1 => p_0_in,
      I2 => fifo_wr_data_0(11),
      O => D(27)
    );
\packed_fifo_wr_data[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_wr_data_1(12),
      I1 => p_0_in,
      I2 => fifo_wr_data_0(12),
      O => D(28)
    );
\packed_fifo_wr_data[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_wr_data_1(13),
      I1 => p_0_in,
      I2 => fifo_wr_data_0(13),
      O => D(29)
    );
\packed_fifo_wr_data[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_wr_data_0(2),
      I1 => p_0_in,
      I2 => fifo_wr_data_1(2),
      O => D(2)
    );
\packed_fifo_wr_data[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_wr_data_1(14),
      I1 => p_0_in,
      I2 => fifo_wr_data_0(14),
      O => D(30)
    );
\packed_fifo_wr_data[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_wr_data_1(15),
      I1 => p_0_in,
      I2 => fifo_wr_data_0(15),
      O => D(31)
    );
\packed_fifo_wr_data[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_wr_data_0(3),
      I1 => p_0_in,
      I2 => fifo_wr_data_1(3),
      O => D(3)
    );
\packed_fifo_wr_data[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_wr_data_0(4),
      I1 => p_0_in,
      I2 => fifo_wr_data_1(4),
      O => D(4)
    );
\packed_fifo_wr_data[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_wr_data_0(5),
      I1 => p_0_in,
      I2 => fifo_wr_data_1(5),
      O => D(5)
    );
\packed_fifo_wr_data[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_wr_data_0(6),
      I1 => p_0_in,
      I2 => fifo_wr_data_1(6),
      O => D(6)
    );
\packed_fifo_wr_data[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_wr_data_0(7),
      I1 => p_0_in,
      I2 => fifo_wr_data_1(7),
      O => D(7)
    );
\packed_fifo_wr_data[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_wr_data_0(8),
      I1 => p_0_in,
      I2 => fifo_wr_data_1(8),
      O => D(8)
    );
\packed_fifo_wr_data[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_wr_data_0(9),
      I1 => p_0_in,
      I2 => fifo_wr_data_1(9),
      O => D(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_ad9361_adc_packer_rx1_0_pack_network is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    startup_ctrl : in STD_LOGIC;
    fifo_wr_en : in STD_LOGIC;
    \ctrl_reg[1]_0\ : in STD_LOGIC;
    rotate : in STD_LOGIC;
    fifo_wr_data_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    fifo_wr_data_1 : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_ad9361_adc_packer_rx1_0_pack_network : entity is "pack_network";
end icyradio_ad9361_adc_packer_rx1_0_pack_network;

architecture STRUCTURE of icyradio_ad9361_adc_packer_rx1_0_pack_network is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ctrl10 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
begin
  E(0) <= \^e\(0);
\ctrl[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ctrl_reg[1]_0\,
      I1 => rotate,
      O => ctrl10
    );
\ctrl_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^e\(0),
      D => ctrl10,
      Q => p_0_in,
      R => '0'
    );
\gen_pack.prev_valid[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => startup_ctrl,
      I1 => fifo_wr_en,
      O => \^e\(0)
    );
i_interconnect: entity work.icyradio_ad9361_adc_packer_rx1_0_pack_interconnect
     port map (
      D(31 downto 0) => D(31 downto 0),
      fifo_wr_data_0(15 downto 0) => fifo_wr_data_0(15 downto 0),
      fifo_wr_data_1(15 downto 0) => fifo_wr_data_1(15 downto 0),
      p_0_in => p_0_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_ad9361_adc_packer_rx1_0_pack_shell is
  port (
    E : out STD_LOGIC_VECTOR ( 1 downto 0 );
    fifo_wr_en_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    fifo_wr_en : in STD_LOGIC;
    enable_0 : in STD_LOGIC;
    enable_1 : in STD_LOGIC;
    reset : in STD_LOGIC;
    fifo_wr_data_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    fifo_wr_data_1 : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_ad9361_adc_packer_rx1_0_pack_shell : entity is "pack_shell";
end icyradio_ad9361_adc_packer_rx1_0_pack_shell;

architecture STRUCTURE of icyradio_ad9361_adc_packer_rx1_0_pack_shell is
  signal ce_ctrl : STD_LOGIC;
  signal enable_count : STD_LOGIC;
  signal \enable_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \enable_int[0]_i_1_n_0\ : STD_LOGIC;
  signal \enable_int[1]_i_1_n_0\ : STD_LOGIC;
  signal \enable_int_reg_n_0_[0]\ : STD_LOGIC;
  signal \enable_int_reg_n_0_[1]\ : STD_LOGIC;
  signal \gen_pack.prev_valid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gen_pack.prev_valid[0]_i_2_n_0\ : STD_LOGIC;
  signal \gen_pack.valid\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_pack.valid[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_pack.valid[1]_i_1_n_0\ : STD_LOGIC;
  signal ready : STD_LOGIC;
  signal ready_i_1_n_0 : STD_LOGIC;
  signal reset_ctrl : STD_LOGIC;
  signal \reset_ctrl0_inferred__0/i__n_0\ : STD_LOGIC;
  signal reset_ctrl_i_1_n_0 : STD_LOGIC;
  signal reset_data : STD_LOGIC;
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
  attribute SOFT_HLUTNM of \gen_pack.valid[0]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \gen_pack.valid[1]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \packed_fifo_wr_data[15]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of packed_fifo_wr_en_i_1 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \reset_ctrl0_inferred__0/i_\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of reset_ctrl_i_1 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of startup_ctrl2_i_1 : label is "soft_lutpair16";
begin
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
\gen_network[1].i_ctrl_interconnect\: entity work.icyradio_ad9361_adc_packer_rx1_0_pack_network
     port map (
      D(31 downto 0) => D(31 downto 0),
      E(0) => ce_ctrl,
      clk => clk,
      \ctrl_reg[1]_0\ => \enable_int_reg_n_0_[0]\,
      fifo_wr_data_0(15 downto 0) => fifo_wr_data_0(15 downto 0),
      fifo_wr_data_1(15 downto 0) => fifo_wr_data_1(15 downto 0),
      fifo_wr_en => fifo_wr_en,
      rotate => rotate,
      startup_ctrl => startup_ctrl
    );
\gen_pack.prev_valid[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rotate,
      I1 => enable_count,
      O => \gen_pack.prev_valid[0]_i_2_n_0\
    );
\gen_pack.prev_valid_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => ce_ctrl,
      D => \gen_pack.prev_valid[0]_i_2_n_0\,
      Q => \gen_pack.prev_valid\(0),
      R => '0'
    );
\gen_pack.valid[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \gen_pack.prev_valid\(0),
      I1 => rotate,
      O => \gen_pack.valid[0]_i_1_n_0\
    );
\gen_pack.valid[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => enable_count,
      I1 => rotate,
      O => \gen_pack.valid[1]_i_1_n_0\
    );
\gen_pack.valid_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => ce_ctrl,
      D => \gen_pack.valid[0]_i_1_n_0\,
      Q => \gen_pack.valid\(0),
      R => '0'
    );
\gen_pack.valid_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => ce_ctrl,
      D => \gen_pack.valid[1]_i_1_n_0\,
      Q => \gen_pack.valid\(1),
      R => '0'
    );
\packed_fifo_wr_data[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => fifo_wr_en,
      I1 => \gen_pack.valid\(0),
      O => E(0)
    );
\packed_fifo_wr_data[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => fifo_wr_en,
      I1 => \gen_pack.valid\(1),
      O => E(1)
    );
packed_fifo_wr_en_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => fifo_wr_en,
      I1 => ready,
      I2 => reset_data,
      O => fifo_wr_en_0
    );
ready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FEFEFE02"
    )
        port map (
      I0 => ready,
      I1 => fifo_wr_en,
      I2 => startup_ctrl,
      I3 => enable_count,
      I4 => rotate,
      I5 => reset_ctrl,
      O => ready_i_1_n_0
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
      Q => reset_data,
      R => '0'
    );
\rotate[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AA56"
    )
        port map (
      I0 => rotate,
      I1 => fifo_wr_en,
      I2 => startup_ctrl,
      I3 => enable_count,
      I4 => reset_ctrl,
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
entity icyradio_ad9361_adc_packer_rx1_0_util_cpack2_impl is
  port (
    packed_fifo_wr_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    packed_fifo_wr_en : out STD_LOGIC;
    packed_fifo_wr_sync : out STD_LOGIC;
    fifo_wr_en : in STD_LOGIC;
    enable_1 : in STD_LOGIC;
    reset : in STD_LOGIC;
    enable_0 : in STD_LOGIC;
    clk : in STD_LOGIC;
    fifo_wr_data_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    fifo_wr_data_1 : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_ad9361_adc_packer_rx1_0_util_cpack2_impl : entity is "util_cpack2_impl";
end icyradio_ad9361_adc_packer_rx1_0_util_cpack2_impl;

architecture STRUCTURE of icyradio_ad9361_adc_packer_rx1_0_util_cpack2_impl is
  signal i_pack_shell_n_0 : STD_LOGIC;
  signal i_pack_shell_n_1 : STD_LOGIC;
  signal i_pack_shell_n_2 : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
i_pack_shell: entity work.icyradio_ad9361_adc_packer_rx1_0_pack_shell
     port map (
      D(31 downto 0) => p_0_out(31 downto 0),
      E(1) => i_pack_shell_n_0,
      E(0) => i_pack_shell_n_1,
      clk => clk,
      enable_0 => enable_0,
      enable_1 => enable_1,
      fifo_wr_data_0(15 downto 0) => fifo_wr_data_0(15 downto 0),
      fifo_wr_data_1(15 downto 0) => fifo_wr_data_1(15 downto 0),
      fifo_wr_en => fifo_wr_en,
      fifo_wr_en_0 => i_pack_shell_n_2,
      reset => reset
    );
\packed_fifo_wr_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => i_pack_shell_n_1,
      D => p_0_out(0),
      Q => packed_fifo_wr_data(0),
      R => '0'
    );
\packed_fifo_wr_data_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => i_pack_shell_n_1,
      D => p_0_out(10),
      Q => packed_fifo_wr_data(10),
      R => '0'
    );
\packed_fifo_wr_data_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => i_pack_shell_n_1,
      D => p_0_out(11),
      Q => packed_fifo_wr_data(11),
      R => '0'
    );
\packed_fifo_wr_data_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => i_pack_shell_n_1,
      D => p_0_out(12),
      Q => packed_fifo_wr_data(12),
      R => '0'
    );
\packed_fifo_wr_data_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => i_pack_shell_n_1,
      D => p_0_out(13),
      Q => packed_fifo_wr_data(13),
      R => '0'
    );
\packed_fifo_wr_data_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => i_pack_shell_n_1,
      D => p_0_out(14),
      Q => packed_fifo_wr_data(14),
      R => '0'
    );
\packed_fifo_wr_data_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => i_pack_shell_n_1,
      D => p_0_out(15),
      Q => packed_fifo_wr_data(15),
      R => '0'
    );
\packed_fifo_wr_data_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => i_pack_shell_n_0,
      D => p_0_out(16),
      Q => packed_fifo_wr_data(16),
      R => '0'
    );
\packed_fifo_wr_data_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => i_pack_shell_n_0,
      D => p_0_out(17),
      Q => packed_fifo_wr_data(17),
      R => '0'
    );
\packed_fifo_wr_data_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => i_pack_shell_n_0,
      D => p_0_out(18),
      Q => packed_fifo_wr_data(18),
      R => '0'
    );
\packed_fifo_wr_data_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => i_pack_shell_n_0,
      D => p_0_out(19),
      Q => packed_fifo_wr_data(19),
      R => '0'
    );
\packed_fifo_wr_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => i_pack_shell_n_1,
      D => p_0_out(1),
      Q => packed_fifo_wr_data(1),
      R => '0'
    );
\packed_fifo_wr_data_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => i_pack_shell_n_0,
      D => p_0_out(20),
      Q => packed_fifo_wr_data(20),
      R => '0'
    );
\packed_fifo_wr_data_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => i_pack_shell_n_0,
      D => p_0_out(21),
      Q => packed_fifo_wr_data(21),
      R => '0'
    );
\packed_fifo_wr_data_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => i_pack_shell_n_0,
      D => p_0_out(22),
      Q => packed_fifo_wr_data(22),
      R => '0'
    );
\packed_fifo_wr_data_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => i_pack_shell_n_0,
      D => p_0_out(23),
      Q => packed_fifo_wr_data(23),
      R => '0'
    );
\packed_fifo_wr_data_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => i_pack_shell_n_0,
      D => p_0_out(24),
      Q => packed_fifo_wr_data(24),
      R => '0'
    );
\packed_fifo_wr_data_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => i_pack_shell_n_0,
      D => p_0_out(25),
      Q => packed_fifo_wr_data(25),
      R => '0'
    );
\packed_fifo_wr_data_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => i_pack_shell_n_0,
      D => p_0_out(26),
      Q => packed_fifo_wr_data(26),
      R => '0'
    );
\packed_fifo_wr_data_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => i_pack_shell_n_0,
      D => p_0_out(27),
      Q => packed_fifo_wr_data(27),
      R => '0'
    );
\packed_fifo_wr_data_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => i_pack_shell_n_0,
      D => p_0_out(28),
      Q => packed_fifo_wr_data(28),
      R => '0'
    );
\packed_fifo_wr_data_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => i_pack_shell_n_0,
      D => p_0_out(29),
      Q => packed_fifo_wr_data(29),
      R => '0'
    );
\packed_fifo_wr_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => i_pack_shell_n_1,
      D => p_0_out(2),
      Q => packed_fifo_wr_data(2),
      R => '0'
    );
\packed_fifo_wr_data_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => i_pack_shell_n_0,
      D => p_0_out(30),
      Q => packed_fifo_wr_data(30),
      R => '0'
    );
\packed_fifo_wr_data_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => i_pack_shell_n_0,
      D => p_0_out(31),
      Q => packed_fifo_wr_data(31),
      R => '0'
    );
\packed_fifo_wr_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => i_pack_shell_n_1,
      D => p_0_out(3),
      Q => packed_fifo_wr_data(3),
      R => '0'
    );
\packed_fifo_wr_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => i_pack_shell_n_1,
      D => p_0_out(4),
      Q => packed_fifo_wr_data(4),
      R => '0'
    );
\packed_fifo_wr_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => i_pack_shell_n_1,
      D => p_0_out(5),
      Q => packed_fifo_wr_data(5),
      R => '0'
    );
\packed_fifo_wr_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => i_pack_shell_n_1,
      D => p_0_out(6),
      Q => packed_fifo_wr_data(6),
      R => '0'
    );
\packed_fifo_wr_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => i_pack_shell_n_1,
      D => p_0_out(7),
      Q => packed_fifo_wr_data(7),
      R => '0'
    );
\packed_fifo_wr_data_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => i_pack_shell_n_1,
      D => p_0_out(8),
      Q => packed_fifo_wr_data(8),
      R => '0'
    );
\packed_fifo_wr_data_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => i_pack_shell_n_1,
      D => p_0_out(9),
      Q => packed_fifo_wr_data(9),
      R => '0'
    );
packed_fifo_wr_en_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => i_pack_shell_n_2,
      Q => packed_fifo_wr_en,
      R => '0'
    );
packed_fifo_wr_sync_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => i_pack_shell_n_2,
      Q => packed_fifo_wr_sync,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_ad9361_adc_packer_rx1_0_util_cpack2 is
  port (
    packed_fifo_wr_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    packed_fifo_wr_en : out STD_LOGIC;
    packed_fifo_wr_sync : out STD_LOGIC;
    fifo_wr_en : in STD_LOGIC;
    enable_1 : in STD_LOGIC;
    reset : in STD_LOGIC;
    enable_0 : in STD_LOGIC;
    clk : in STD_LOGIC;
    fifo_wr_data_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    fifo_wr_data_1 : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_ad9361_adc_packer_rx1_0_util_cpack2 : entity is "util_cpack2";
end icyradio_ad9361_adc_packer_rx1_0_util_cpack2;

architecture STRUCTURE of icyradio_ad9361_adc_packer_rx1_0_util_cpack2 is
begin
i_cpack: entity work.icyradio_ad9361_adc_packer_rx1_0_util_cpack2_impl
     port map (
      clk => clk,
      enable_0 => enable_0,
      enable_1 => enable_1,
      fifo_wr_data_0(15 downto 0) => fifo_wr_data_0(15 downto 0),
      fifo_wr_data_1(15 downto 0) => fifo_wr_data_1(15 downto 0),
      fifo_wr_en => fifo_wr_en,
      packed_fifo_wr_data(31 downto 0) => packed_fifo_wr_data(31 downto 0),
      packed_fifo_wr_en => packed_fifo_wr_en,
      packed_fifo_wr_sync => packed_fifo_wr_sync,
      reset => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_ad9361_adc_packer_rx1_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    enable_0 : in STD_LOGIC;
    enable_1 : in STD_LOGIC;
    fifo_wr_en : in STD_LOGIC;
    fifo_wr_overflow : out STD_LOGIC;
    fifo_wr_data_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    fifo_wr_data_1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    packed_fifo_wr_en : out STD_LOGIC;
    packed_fifo_wr_overflow : in STD_LOGIC;
    packed_fifo_wr_sync : out STD_LOGIC;
    packed_fifo_wr_data : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of icyradio_ad9361_adc_packer_rx1_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of icyradio_ad9361_adc_packer_rx1_0 : entity is "icyradio_ad9361_adc_packer_rx1_0,util_cpack2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of icyradio_ad9361_adc_packer_rx1_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of icyradio_ad9361_adc_packer_rx1_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of icyradio_ad9361_adc_packer_rx1_0 : entity is "util_cpack2,Vivado 2023.2";
end icyradio_ad9361_adc_packer_rx1_0;

architecture STRUCTURE of icyradio_ad9361_adc_packer_rx1_0 is
  signal \^packed_fifo_wr_overflow\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 packed_fifo_wr_signal_clock CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME packed_fifo_wr_signal_clock, ASSOCIATED_BUSIF packed_fifo_wr, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN icyradio_axi_ad9361_0_l_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of packed_fifo_wr_en : signal is "analog.com:interface:fifo_wr:1.0 packed_fifo_wr EN";
  attribute X_INTERFACE_INFO of packed_fifo_wr_overflow : signal is "analog.com:interface:fifo_wr:1.0 packed_fifo_wr OVERFLOW";
  attribute X_INTERFACE_INFO of packed_fifo_wr_sync : signal is "analog.com:interface:fifo_wr:1.0 packed_fifo_wr SYNC";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 packed_fifo_wr_signal_reset RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME packed_fifo_wr_signal_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of packed_fifo_wr_data : signal is "analog.com:interface:fifo_wr:1.0 packed_fifo_wr DATA";
begin
  \^packed_fifo_wr_overflow\ <= packed_fifo_wr_overflow;
  fifo_wr_overflow <= \^packed_fifo_wr_overflow\;
inst: entity work.icyradio_ad9361_adc_packer_rx1_0_util_cpack2
     port map (
      clk => clk,
      enable_0 => enable_0,
      enable_1 => enable_1,
      fifo_wr_data_0(15 downto 0) => fifo_wr_data_0(15 downto 0),
      fifo_wr_data_1(15 downto 0) => fifo_wr_data_1(15 downto 0),
      fifo_wr_en => fifo_wr_en,
      packed_fifo_wr_data(31 downto 0) => packed_fifo_wr_data(31 downto 0),
      packed_fifo_wr_en => packed_fifo_wr_en,
      packed_fifo_wr_sync => packed_fifo_wr_sync,
      reset => reset
    );
end STRUCTURE;
