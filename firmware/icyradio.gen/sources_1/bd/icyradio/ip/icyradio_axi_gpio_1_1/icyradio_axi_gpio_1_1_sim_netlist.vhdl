-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Tue Oct 10 04:49:34 2023
-- Host        : xubuntu-dev running 64-bit Ubuntu 20.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/joao/icyradio/firmware/icyradio.gen/sources_1/bd/icyradio/ip/icyradio_axi_gpio_1_1/icyradio_axi_gpio_1_1_sim_netlist.vhdl
-- Design      : icyradio_axi_gpio_1_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_gpio_1_1_axi_gpio is
  port (
    s_axi_wready : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    gpio_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_axi_gpio_1_1_axi_gpio : entity is "axi_gpio";
end icyradio_axi_gpio_1_1_axi_gpio;

architecture STRUCTURE of icyradio_axi_gpio_1_1_axi_gpio is
  signal \gpio_in_mask_reg_n_0_[0]\ : STD_LOGIC;
  signal \gpio_in_mask_reg_n_0_[1]\ : STD_LOGIC;
  signal \gpio_in_mask_reg_n_0_[24]\ : STD_LOGIC;
  signal \gpio_in_mask_reg_n_0_[25]\ : STD_LOGIC;
  signal \gpio_in_mask_reg_n_0_[26]\ : STD_LOGIC;
  signal \gpio_in_mask_reg_n_0_[27]\ : STD_LOGIC;
  signal \gpio_in_mask_reg_n_0_[28]\ : STD_LOGIC;
  signal \gpio_in_mask_reg_n_0_[29]\ : STD_LOGIC;
  signal \gpio_in_mask_reg_n_0_[2]\ : STD_LOGIC;
  signal \gpio_in_mask_reg_n_0_[30]\ : STD_LOGIC;
  signal \gpio_in_mask_reg_n_0_[31]\ : STD_LOGIC;
  signal \gpio_in_mask_reg_n_0_[3]\ : STD_LOGIC;
  signal \gpio_in_mask_reg_n_0_[4]\ : STD_LOGIC;
  signal \gpio_in_mask_reg_n_0_[5]\ : STD_LOGIC;
  signal \gpio_in_mask_reg_n_0_[6]\ : STD_LOGIC;
  signal \gpio_in_mask_reg_n_0_[7]\ : STD_LOGIC;
  signal \gpio_in_sync_reg[0]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \gpio_in_sync_reg[1]_0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^gpio_out\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \gpio_out[15]_i_1_n_0\ : STD_LOGIC;
  signal \gpio_out[23]_i_1_n_0\ : STD_LOGIC;
  signal \gpio_out[31]_i_1_n_0\ : STD_LOGIC;
  signal \gpio_out[7]_i_1_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal p_2_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_4_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_7_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_axi_araddr_q : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \s_axi_araddr_q[2]_i_1_n_0\ : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal s_axi_arready0 : STD_LOGIC;
  signal s_axi_aw_en_i_1_n_0 : STD_LOGIC;
  signal s_axi_aw_en_reg_n_0 : STD_LOGIC;
  signal \s_axi_awaddr_q[2]_i_1_n_0\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \s_axi_awready0__0\ : STD_LOGIC;
  signal s_axi_awready_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal s_axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \s_axi_rdata[0]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[10]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[11]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[12]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[13]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[14]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[15]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[16]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[17]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[18]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[19]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[1]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[20]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[21]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[22]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[23]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[24]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[25]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[26]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[27]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[28]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[29]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[2]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[30]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[3]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[4]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[5]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[6]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[7]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[8]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[9]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_reg_rden__0\ : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal s_axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal \s_axi_wready0__0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of s_axi_arready_i_1 : label is "soft_lutpair1";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s_axi_arready_reg : label is "xilinx.com:interface:aximm:1.0 s_axi ARREADY";
  attribute SOFT_HLUTNM of s_axi_awready0 : label is "soft_lutpair0";
  attribute X_INTERFACE_INFO of s_axi_awready_reg : label is "xilinx.com:interface:aximm:1.0 s_axi AWREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid_reg : label is "xilinx.com:interface:aximm:1.0 s_axi BVALID";
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
  attribute SOFT_HLUTNM of s_axi_rvalid_i_1 : label is "soft_lutpair1";
  attribute X_INTERFACE_INFO of s_axi_rvalid_reg : label is "xilinx.com:interface:aximm:1.0 s_axi RVALID";
  attribute SOFT_HLUTNM of s_axi_wready0 : label is "soft_lutpair0";
  attribute X_INTERFACE_INFO of s_axi_wready_reg : label is "xilinx.com:interface:aximm:1.0 s_axi WREADY";
begin
  gpio_out(31 downto 0) <= \^gpio_out\(31 downto 0);
  s_axi_arready <= \^s_axi_arready\;
  s_axi_awready <= \^s_axi_awready\;
  s_axi_bvalid <= \^s_axi_bvalid\;
  s_axi_rvalid <= \^s_axi_rvalid\;
  s_axi_wready <= \^s_axi_wready\;
\gpio_in_mask[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => \^s_axi_awready\,
      I3 => \^s_axi_wready\,
      I4 => s_axi_wstrb(1),
      I5 => p_0_in,
      O => p_1_in(15)
    );
\gpio_in_mask[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => \^s_axi_awready\,
      I3 => \^s_axi_wready\,
      I4 => s_axi_wstrb(2),
      I5 => p_0_in,
      O => p_1_in(23)
    );
\gpio_in_mask[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => \^s_axi_awready\,
      I3 => \^s_axi_wready\,
      I4 => s_axi_wstrb(3),
      I5 => p_0_in,
      O => p_1_in(31)
    );
\gpio_in_mask[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => \^s_axi_awready\,
      I3 => \^s_axi_wready\,
      I4 => s_axi_wstrb(0),
      I5 => p_0_in,
      O => p_1_in(7)
    );
\gpio_in_mask_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => p_1_in(7),
      D => s_axi_wdata(0),
      Q => \gpio_in_mask_reg_n_0_[0]\,
      S => s_axi_awready_i_1_n_0
    );
\gpio_in_mask_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(15),
      D => s_axi_wdata(10),
      Q => p_2_in(2),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_mask_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(15),
      D => s_axi_wdata(11),
      Q => p_2_in(3),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_mask_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(15),
      D => s_axi_wdata(12),
      Q => p_2_in(4),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_mask_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(15),
      D => s_axi_wdata(13),
      Q => p_2_in(5),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_mask_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(15),
      D => s_axi_wdata(14),
      Q => p_2_in(6),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_mask_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(15),
      D => s_axi_wdata(15),
      Q => p_2_in(7),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_mask_reg[16]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => p_1_in(23),
      D => s_axi_wdata(16),
      Q => p_4_in(0),
      S => s_axi_awready_i_1_n_0
    );
\gpio_in_mask_reg[17]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => p_1_in(23),
      D => s_axi_wdata(17),
      Q => p_4_in(1),
      S => s_axi_awready_i_1_n_0
    );
\gpio_in_mask_reg[18]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => p_1_in(23),
      D => s_axi_wdata(18),
      Q => p_4_in(2),
      S => s_axi_awready_i_1_n_0
    );
\gpio_in_mask_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(23),
      D => s_axi_wdata(19),
      Q => p_4_in(3),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_mask_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => p_1_in(7),
      D => s_axi_wdata(1),
      Q => \gpio_in_mask_reg_n_0_[1]\,
      S => s_axi_awready_i_1_n_0
    );
\gpio_in_mask_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(23),
      D => s_axi_wdata(20),
      Q => p_4_in(4),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_mask_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(23),
      D => s_axi_wdata(21),
      Q => p_4_in(5),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_mask_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(23),
      D => s_axi_wdata(22),
      Q => p_4_in(6),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_mask_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(23),
      D => s_axi_wdata(23),
      Q => p_4_in(7),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_mask_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(31),
      D => s_axi_wdata(24),
      Q => \gpio_in_mask_reg_n_0_[24]\,
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_mask_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(31),
      D => s_axi_wdata(25),
      Q => \gpio_in_mask_reg_n_0_[25]\,
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_mask_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(31),
      D => s_axi_wdata(26),
      Q => \gpio_in_mask_reg_n_0_[26]\,
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_mask_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(31),
      D => s_axi_wdata(27),
      Q => \gpio_in_mask_reg_n_0_[27]\,
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_mask_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(31),
      D => s_axi_wdata(28),
      Q => \gpio_in_mask_reg_n_0_[28]\,
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_mask_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(31),
      D => s_axi_wdata(29),
      Q => \gpio_in_mask_reg_n_0_[29]\,
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_mask_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => p_1_in(7),
      D => s_axi_wdata(2),
      Q => \gpio_in_mask_reg_n_0_[2]\,
      S => s_axi_awready_i_1_n_0
    );
\gpio_in_mask_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(31),
      D => s_axi_wdata(30),
      Q => \gpio_in_mask_reg_n_0_[30]\,
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_mask_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(31),
      D => s_axi_wdata(31),
      Q => \gpio_in_mask_reg_n_0_[31]\,
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_mask_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(7),
      D => s_axi_wdata(3),
      Q => \gpio_in_mask_reg_n_0_[3]\,
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_mask_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => p_1_in(7),
      D => s_axi_wdata(4),
      Q => \gpio_in_mask_reg_n_0_[4]\,
      S => s_axi_awready_i_1_n_0
    );
\gpio_in_mask_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => p_1_in(7),
      D => s_axi_wdata(5),
      Q => \gpio_in_mask_reg_n_0_[5]\,
      S => s_axi_awready_i_1_n_0
    );
\gpio_in_mask_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => p_1_in(7),
      D => s_axi_wdata(6),
      Q => \gpio_in_mask_reg_n_0_[6]\,
      S => s_axi_awready_i_1_n_0
    );
\gpio_in_mask_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(7),
      D => s_axi_wdata(7),
      Q => \gpio_in_mask_reg_n_0_[7]\,
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_mask_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(15),
      D => s_axi_wdata(8),
      Q => p_2_in(0),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_mask_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(15),
      D => s_axi_wdata(9),
      Q => p_2_in(1),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_sync_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => gpio_in(0),
      Q => \gpio_in_sync_reg[0]\(0),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_sync_reg[0][10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => gpio_in(10),
      Q => \gpio_in_sync_reg[0]\(10),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_sync_reg[0][11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => gpio_in(11),
      Q => \gpio_in_sync_reg[0]\(11),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_sync_reg[0][12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => gpio_in(12),
      Q => \gpio_in_sync_reg[0]\(12),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_sync_reg[0][13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => gpio_in(13),
      Q => \gpio_in_sync_reg[0]\(13),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_sync_reg[0][14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => gpio_in(14),
      Q => \gpio_in_sync_reg[0]\(14),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_sync_reg[0][15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => gpio_in(15),
      Q => \gpio_in_sync_reg[0]\(15),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_sync_reg[0][16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => gpio_in(16),
      Q => \gpio_in_sync_reg[0]\(16),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_sync_reg[0][17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => gpio_in(17),
      Q => \gpio_in_sync_reg[0]\(17),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_sync_reg[0][18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => gpio_in(18),
      Q => \gpio_in_sync_reg[0]\(18),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_sync_reg[0][19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => gpio_in(19),
      Q => \gpio_in_sync_reg[0]\(19),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_sync_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => gpio_in(1),
      Q => \gpio_in_sync_reg[0]\(1),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_sync_reg[0][20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => gpio_in(20),
      Q => \gpio_in_sync_reg[0]\(20),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_sync_reg[0][21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => gpio_in(21),
      Q => \gpio_in_sync_reg[0]\(21),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_sync_reg[0][22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => gpio_in(22),
      Q => \gpio_in_sync_reg[0]\(22),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_sync_reg[0][23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => gpio_in(23),
      Q => \gpio_in_sync_reg[0]\(23),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_sync_reg[0][24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => gpio_in(24),
      Q => \gpio_in_sync_reg[0]\(24),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_sync_reg[0][25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => gpio_in(25),
      Q => \gpio_in_sync_reg[0]\(25),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_sync_reg[0][26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => gpio_in(26),
      Q => \gpio_in_sync_reg[0]\(26),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_sync_reg[0][27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => gpio_in(27),
      Q => \gpio_in_sync_reg[0]\(27),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_sync_reg[0][28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => gpio_in(28),
      Q => \gpio_in_sync_reg[0]\(28),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_sync_reg[0][29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => gpio_in(29),
      Q => \gpio_in_sync_reg[0]\(29),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_sync_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => gpio_in(2),
      Q => \gpio_in_sync_reg[0]\(2),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_sync_reg[0][30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => gpio_in(30),
      Q => \gpio_in_sync_reg[0]\(30),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_sync_reg[0][31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => gpio_in(31),
      Q => \gpio_in_sync_reg[0]\(31),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_sync_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => gpio_in(3),
      Q => \gpio_in_sync_reg[0]\(3),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_sync_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => gpio_in(4),
      Q => \gpio_in_sync_reg[0]\(4),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_sync_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => gpio_in(5),
      Q => \gpio_in_sync_reg[0]\(5),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_sync_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => gpio_in(6),
      Q => \gpio_in_sync_reg[0]\(6),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_sync_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => gpio_in(7),
      Q => \gpio_in_sync_reg[0]\(7),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_sync_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => gpio_in(8),
      Q => \gpio_in_sync_reg[0]\(8),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_sync_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => gpio_in(9),
      Q => \gpio_in_sync_reg[0]\(9),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_sync_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gpio_in_sync_reg[0]\(0),
      Q => \gpio_in_sync_reg[1]_0\(0),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_sync_reg[1][10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gpio_in_sync_reg[0]\(10),
      Q => \gpio_in_sync_reg[1]_0\(10),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_sync_reg[1][11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gpio_in_sync_reg[0]\(11),
      Q => \gpio_in_sync_reg[1]_0\(11),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_sync_reg[1][12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gpio_in_sync_reg[0]\(12),
      Q => \gpio_in_sync_reg[1]_0\(12),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_sync_reg[1][13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gpio_in_sync_reg[0]\(13),
      Q => \gpio_in_sync_reg[1]_0\(13),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_sync_reg[1][14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gpio_in_sync_reg[0]\(14),
      Q => \gpio_in_sync_reg[1]_0\(14),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_sync_reg[1][15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gpio_in_sync_reg[0]\(15),
      Q => \gpio_in_sync_reg[1]_0\(15),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_sync_reg[1][16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gpio_in_sync_reg[0]\(16),
      Q => \gpio_in_sync_reg[1]_0\(16),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_sync_reg[1][17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gpio_in_sync_reg[0]\(17),
      Q => \gpio_in_sync_reg[1]_0\(17),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_sync_reg[1][18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gpio_in_sync_reg[0]\(18),
      Q => \gpio_in_sync_reg[1]_0\(18),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_sync_reg[1][19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gpio_in_sync_reg[0]\(19),
      Q => \gpio_in_sync_reg[1]_0\(19),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_sync_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gpio_in_sync_reg[0]\(1),
      Q => \gpio_in_sync_reg[1]_0\(1),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_sync_reg[1][20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gpio_in_sync_reg[0]\(20),
      Q => \gpio_in_sync_reg[1]_0\(20),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_sync_reg[1][21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gpio_in_sync_reg[0]\(21),
      Q => \gpio_in_sync_reg[1]_0\(21),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_sync_reg[1][22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gpio_in_sync_reg[0]\(22),
      Q => \gpio_in_sync_reg[1]_0\(22),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_sync_reg[1][23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gpio_in_sync_reg[0]\(23),
      Q => \gpio_in_sync_reg[1]_0\(23),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_sync_reg[1][24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gpio_in_sync_reg[0]\(24),
      Q => \gpio_in_sync_reg[1]_0\(24),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_sync_reg[1][25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gpio_in_sync_reg[0]\(25),
      Q => \gpio_in_sync_reg[1]_0\(25),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_sync_reg[1][26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gpio_in_sync_reg[0]\(26),
      Q => \gpio_in_sync_reg[1]_0\(26),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_sync_reg[1][27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gpio_in_sync_reg[0]\(27),
      Q => \gpio_in_sync_reg[1]_0\(27),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_sync_reg[1][28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gpio_in_sync_reg[0]\(28),
      Q => \gpio_in_sync_reg[1]_0\(28),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_sync_reg[1][29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gpio_in_sync_reg[0]\(29),
      Q => \gpio_in_sync_reg[1]_0\(29),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_sync_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gpio_in_sync_reg[0]\(2),
      Q => \gpio_in_sync_reg[1]_0\(2),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_sync_reg[1][30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gpio_in_sync_reg[0]\(30),
      Q => \gpio_in_sync_reg[1]_0\(30),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_sync_reg[1][31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gpio_in_sync_reg[0]\(31),
      Q => \gpio_in_sync_reg[1]_0\(31),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_sync_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gpio_in_sync_reg[0]\(3),
      Q => \gpio_in_sync_reg[1]_0\(3),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_sync_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gpio_in_sync_reg[0]\(4),
      Q => \gpio_in_sync_reg[1]_0\(4),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_sync_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gpio_in_sync_reg[0]\(5),
      Q => \gpio_in_sync_reg[1]_0\(5),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_sync_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gpio_in_sync_reg[0]\(6),
      Q => \gpio_in_sync_reg[1]_0\(6),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_sync_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gpio_in_sync_reg[0]\(7),
      Q => \gpio_in_sync_reg[1]_0\(7),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_sync_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gpio_in_sync_reg[0]\(8),
      Q => \gpio_in_sync_reg[1]_0\(8),
      R => s_axi_awready_i_1_n_0
    );
\gpio_in_sync_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gpio_in_sync_reg[0]\(9),
      Q => \gpio_in_sync_reg[1]_0\(9),
      R => s_axi_awready_i_1_n_0
    );
\gpio_out[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => \gpio_in_mask_reg_n_0_[0]\,
      O => p_7_out(0)
    );
\gpio_out[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_wdata(10),
      I1 => p_2_in(2),
      O => p_7_out(10)
    );
\gpio_out[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_wdata(11),
      I1 => p_2_in(3),
      O => p_7_out(11)
    );
\gpio_out[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_wdata(12),
      I1 => p_2_in(4),
      O => p_7_out(12)
    );
\gpio_out[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_wdata(13),
      I1 => p_2_in(5),
      O => p_7_out(13)
    );
\gpio_out[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_wdata(14),
      I1 => p_2_in(6),
      O => p_7_out(14)
    );
\gpio_out[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => \^s_axi_awready\,
      I3 => \^s_axi_wready\,
      I4 => p_0_in,
      I5 => s_axi_wstrb(1),
      O => \gpio_out[15]_i_1_n_0\
    );
\gpio_out[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_wdata(15),
      I1 => p_2_in(7),
      O => p_7_out(15)
    );
\gpio_out[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_wdata(16),
      I1 => p_4_in(0),
      O => p_7_out(16)
    );
\gpio_out[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_wdata(17),
      I1 => p_4_in(1),
      O => p_7_out(17)
    );
\gpio_out[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_wdata(18),
      I1 => p_4_in(2),
      O => p_7_out(18)
    );
\gpio_out[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_wdata(19),
      I1 => p_4_in(3),
      O => p_7_out(19)
    );
\gpio_out[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_wdata(1),
      I1 => \gpio_in_mask_reg_n_0_[1]\,
      O => p_7_out(1)
    );
\gpio_out[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_wdata(20),
      I1 => p_4_in(4),
      O => p_7_out(20)
    );
\gpio_out[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_wdata(21),
      I1 => p_4_in(5),
      O => p_7_out(21)
    );
\gpio_out[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_wdata(22),
      I1 => p_4_in(6),
      O => p_7_out(22)
    );
\gpio_out[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => \^s_axi_awready\,
      I3 => \^s_axi_wready\,
      I4 => p_0_in,
      I5 => s_axi_wstrb(2),
      O => \gpio_out[23]_i_1_n_0\
    );
\gpio_out[23]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_wdata(23),
      I1 => p_4_in(7),
      O => p_7_out(23)
    );
\gpio_out[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_wdata(24),
      I1 => \gpio_in_mask_reg_n_0_[24]\,
      O => p_7_out(24)
    );
\gpio_out[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_wdata(25),
      I1 => \gpio_in_mask_reg_n_0_[25]\,
      O => p_7_out(25)
    );
\gpio_out[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_wdata(26),
      I1 => \gpio_in_mask_reg_n_0_[26]\,
      O => p_7_out(26)
    );
\gpio_out[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_wdata(27),
      I1 => \gpio_in_mask_reg_n_0_[27]\,
      O => p_7_out(27)
    );
\gpio_out[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_wdata(28),
      I1 => \gpio_in_mask_reg_n_0_[28]\,
      O => p_7_out(28)
    );
\gpio_out[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_wdata(29),
      I1 => \gpio_in_mask_reg_n_0_[29]\,
      O => p_7_out(29)
    );
\gpio_out[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_wdata(2),
      I1 => \gpio_in_mask_reg_n_0_[2]\,
      O => p_7_out(2)
    );
\gpio_out[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_wdata(30),
      I1 => \gpio_in_mask_reg_n_0_[30]\,
      O => p_7_out(30)
    );
\gpio_out[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => \^s_axi_awready\,
      I3 => \^s_axi_wready\,
      I4 => p_0_in,
      I5 => s_axi_wstrb(3),
      O => \gpio_out[31]_i_1_n_0\
    );
\gpio_out[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_wdata(31),
      I1 => \gpio_in_mask_reg_n_0_[31]\,
      O => p_7_out(31)
    );
\gpio_out[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_wdata(3),
      I1 => \gpio_in_mask_reg_n_0_[3]\,
      O => p_7_out(3)
    );
\gpio_out[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_wdata(4),
      I1 => \gpio_in_mask_reg_n_0_[4]\,
      O => p_7_out(4)
    );
\gpio_out[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_wdata(5),
      I1 => \gpio_in_mask_reg_n_0_[5]\,
      O => p_7_out(5)
    );
\gpio_out[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_wdata(6),
      I1 => \gpio_in_mask_reg_n_0_[6]\,
      O => p_7_out(6)
    );
\gpio_out[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => \^s_axi_awready\,
      I3 => \^s_axi_wready\,
      I4 => p_0_in,
      I5 => s_axi_wstrb(0),
      O => \gpio_out[7]_i_1_n_0\
    );
\gpio_out[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_wdata(7),
      I1 => \gpio_in_mask_reg_n_0_[7]\,
      O => p_7_out(7)
    );
\gpio_out[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_wdata(8),
      I1 => p_2_in(0),
      O => p_7_out(8)
    );
\gpio_out[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_wdata(9),
      I1 => p_2_in(1),
      O => p_7_out(9)
    );
\gpio_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gpio_out[7]_i_1_n_0\,
      D => p_7_out(0),
      Q => \^gpio_out\(0),
      R => s_axi_awready_i_1_n_0
    );
\gpio_out_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gpio_out[15]_i_1_n_0\,
      D => p_7_out(10),
      Q => \^gpio_out\(10),
      R => s_axi_awready_i_1_n_0
    );
\gpio_out_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gpio_out[15]_i_1_n_0\,
      D => p_7_out(11),
      Q => \^gpio_out\(11),
      R => s_axi_awready_i_1_n_0
    );
\gpio_out_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gpio_out[15]_i_1_n_0\,
      D => p_7_out(12),
      Q => \^gpio_out\(12),
      R => s_axi_awready_i_1_n_0
    );
\gpio_out_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gpio_out[15]_i_1_n_0\,
      D => p_7_out(13),
      Q => \^gpio_out\(13),
      R => s_axi_awready_i_1_n_0
    );
\gpio_out_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gpio_out[15]_i_1_n_0\,
      D => p_7_out(14),
      Q => \^gpio_out\(14),
      R => s_axi_awready_i_1_n_0
    );
\gpio_out_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gpio_out[15]_i_1_n_0\,
      D => p_7_out(15),
      Q => \^gpio_out\(15),
      R => s_axi_awready_i_1_n_0
    );
\gpio_out_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gpio_out[23]_i_1_n_0\,
      D => p_7_out(16),
      Q => \^gpio_out\(16),
      R => s_axi_awready_i_1_n_0
    );
\gpio_out_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gpio_out[23]_i_1_n_0\,
      D => p_7_out(17),
      Q => \^gpio_out\(17),
      R => s_axi_awready_i_1_n_0
    );
\gpio_out_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gpio_out[23]_i_1_n_0\,
      D => p_7_out(18),
      Q => \^gpio_out\(18),
      R => s_axi_awready_i_1_n_0
    );
\gpio_out_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gpio_out[23]_i_1_n_0\,
      D => p_7_out(19),
      Q => \^gpio_out\(19),
      R => s_axi_awready_i_1_n_0
    );
\gpio_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gpio_out[7]_i_1_n_0\,
      D => p_7_out(1),
      Q => \^gpio_out\(1),
      R => s_axi_awready_i_1_n_0
    );
\gpio_out_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gpio_out[23]_i_1_n_0\,
      D => p_7_out(20),
      Q => \^gpio_out\(20),
      R => s_axi_awready_i_1_n_0
    );
\gpio_out_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gpio_out[23]_i_1_n_0\,
      D => p_7_out(21),
      Q => \^gpio_out\(21),
      R => s_axi_awready_i_1_n_0
    );
\gpio_out_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gpio_out[23]_i_1_n_0\,
      D => p_7_out(22),
      Q => \^gpio_out\(22),
      R => s_axi_awready_i_1_n_0
    );
\gpio_out_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gpio_out[23]_i_1_n_0\,
      D => p_7_out(23),
      Q => \^gpio_out\(23),
      R => s_axi_awready_i_1_n_0
    );
\gpio_out_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gpio_out[31]_i_1_n_0\,
      D => p_7_out(24),
      Q => \^gpio_out\(24),
      R => s_axi_awready_i_1_n_0
    );
\gpio_out_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gpio_out[31]_i_1_n_0\,
      D => p_7_out(25),
      Q => \^gpio_out\(25),
      R => s_axi_awready_i_1_n_0
    );
\gpio_out_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gpio_out[31]_i_1_n_0\,
      D => p_7_out(26),
      Q => \^gpio_out\(26),
      R => s_axi_awready_i_1_n_0
    );
\gpio_out_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gpio_out[31]_i_1_n_0\,
      D => p_7_out(27),
      Q => \^gpio_out\(27),
      R => s_axi_awready_i_1_n_0
    );
\gpio_out_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gpio_out[31]_i_1_n_0\,
      D => p_7_out(28),
      Q => \^gpio_out\(28),
      R => s_axi_awready_i_1_n_0
    );
\gpio_out_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gpio_out[31]_i_1_n_0\,
      D => p_7_out(29),
      Q => \^gpio_out\(29),
      R => s_axi_awready_i_1_n_0
    );
\gpio_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gpio_out[7]_i_1_n_0\,
      D => p_7_out(2),
      Q => \^gpio_out\(2),
      R => s_axi_awready_i_1_n_0
    );
\gpio_out_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gpio_out[31]_i_1_n_0\,
      D => p_7_out(30),
      Q => \^gpio_out\(30),
      R => s_axi_awready_i_1_n_0
    );
\gpio_out_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gpio_out[31]_i_1_n_0\,
      D => p_7_out(31),
      Q => \^gpio_out\(31),
      R => s_axi_awready_i_1_n_0
    );
\gpio_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gpio_out[7]_i_1_n_0\,
      D => p_7_out(3),
      Q => \^gpio_out\(3),
      R => s_axi_awready_i_1_n_0
    );
\gpio_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gpio_out[7]_i_1_n_0\,
      D => p_7_out(4),
      Q => \^gpio_out\(4),
      R => s_axi_awready_i_1_n_0
    );
\gpio_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gpio_out[7]_i_1_n_0\,
      D => p_7_out(5),
      Q => \^gpio_out\(5),
      R => s_axi_awready_i_1_n_0
    );
\gpio_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gpio_out[7]_i_1_n_0\,
      D => p_7_out(6),
      Q => \^gpio_out\(6),
      R => s_axi_awready_i_1_n_0
    );
\gpio_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gpio_out[7]_i_1_n_0\,
      D => p_7_out(7),
      Q => \^gpio_out\(7),
      R => s_axi_awready_i_1_n_0
    );
\gpio_out_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gpio_out[15]_i_1_n_0\,
      D => p_7_out(8),
      Q => \^gpio_out\(8),
      R => s_axi_awready_i_1_n_0
    );
\gpio_out_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gpio_out[15]_i_1_n_0\,
      D => p_7_out(9),
      Q => \^gpio_out\(9),
      R => s_axi_awready_i_1_n_0
    );
\s_axi_araddr_q[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_araddr(0),
      I1 => s_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => s_axi_araddr_q(2),
      O => \s_axi_araddr_q[2]_i_1_n_0\
    );
\s_axi_araddr_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_axi_araddr_q[2]_i_1_n_0\,
      Q => s_axi_araddr_q(2),
      R => s_axi_awready_i_1_n_0
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
      R => s_axi_awready_i_1_n_0
    );
s_axi_aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFC4CCC4CCC4CC"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_aw_en_reg_n_0,
      I2 => \^s_axi_awready\,
      I3 => s_axi_wvalid,
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
      S => s_axi_awready_i_1_n_0
    );
\s_axi_awaddr_q[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => s_axi_wvalid,
      I2 => \^s_axi_awready\,
      I3 => s_axi_aw_en_reg_n_0,
      I4 => s_axi_awvalid,
      I5 => p_0_in,
      O => \s_axi_awaddr_q[2]_i_1_n_0\
    );
\s_axi_awaddr_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_axi_awaddr_q[2]_i_1_n_0\,
      Q => p_0_in,
      R => s_axi_awready_i_1_n_0
    );
s_axi_awready0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => \^s_axi_awready\,
      I2 => s_axi_aw_en_reg_n_0,
      I3 => s_axi_awvalid,
      O => \s_axi_awready0__0\
    );
s_axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => s_axi_awready_i_1_n_0
    );
s_axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_axi_awready0__0\,
      Q => \^s_axi_awready\,
      R => s_axi_awready_i_1_n_0
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
      R => s_axi_awready_i_1_n_0
    );
\s_axi_rdata[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E5E0"
    )
        port map (
      I0 => s_axi_araddr_q(2),
      I1 => \gpio_in_sync_reg[1]_0\(0),
      I2 => \gpio_in_mask_reg_n_0_[0]\,
      I3 => \^gpio_out\(0),
      O => \s_axi_rdata[0]_i_1_n_0\
    );
\s_axi_rdata[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E5E0"
    )
        port map (
      I0 => s_axi_araddr_q(2),
      I1 => \gpio_in_sync_reg[1]_0\(10),
      I2 => p_2_in(2),
      I3 => \^gpio_out\(10),
      O => \s_axi_rdata[10]_i_1_n_0\
    );
\s_axi_rdata[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E5E0"
    )
        port map (
      I0 => s_axi_araddr_q(2),
      I1 => \gpio_in_sync_reg[1]_0\(11),
      I2 => p_2_in(3),
      I3 => \^gpio_out\(11),
      O => \s_axi_rdata[11]_i_1_n_0\
    );
\s_axi_rdata[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E5E0"
    )
        port map (
      I0 => s_axi_araddr_q(2),
      I1 => \gpio_in_sync_reg[1]_0\(12),
      I2 => p_2_in(4),
      I3 => \^gpio_out\(12),
      O => \s_axi_rdata[12]_i_1_n_0\
    );
\s_axi_rdata[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E5E0"
    )
        port map (
      I0 => s_axi_araddr_q(2),
      I1 => \gpio_in_sync_reg[1]_0\(13),
      I2 => p_2_in(5),
      I3 => \^gpio_out\(13),
      O => \s_axi_rdata[13]_i_1_n_0\
    );
\s_axi_rdata[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E5E0"
    )
        port map (
      I0 => s_axi_araddr_q(2),
      I1 => \gpio_in_sync_reg[1]_0\(14),
      I2 => p_2_in(6),
      I3 => \^gpio_out\(14),
      O => \s_axi_rdata[14]_i_1_n_0\
    );
\s_axi_rdata[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E5E0"
    )
        port map (
      I0 => s_axi_araddr_q(2),
      I1 => \gpio_in_sync_reg[1]_0\(15),
      I2 => p_2_in(7),
      I3 => \^gpio_out\(15),
      O => \s_axi_rdata[15]_i_1_n_0\
    );
\s_axi_rdata[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E5E0"
    )
        port map (
      I0 => s_axi_araddr_q(2),
      I1 => \gpio_in_sync_reg[1]_0\(16),
      I2 => p_4_in(0),
      I3 => \^gpio_out\(16),
      O => \s_axi_rdata[16]_i_1_n_0\
    );
\s_axi_rdata[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E5E0"
    )
        port map (
      I0 => s_axi_araddr_q(2),
      I1 => \gpio_in_sync_reg[1]_0\(17),
      I2 => p_4_in(1),
      I3 => \^gpio_out\(17),
      O => \s_axi_rdata[17]_i_1_n_0\
    );
\s_axi_rdata[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E5E0"
    )
        port map (
      I0 => s_axi_araddr_q(2),
      I1 => \gpio_in_sync_reg[1]_0\(18),
      I2 => p_4_in(2),
      I3 => \^gpio_out\(18),
      O => \s_axi_rdata[18]_i_1_n_0\
    );
\s_axi_rdata[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E5E0"
    )
        port map (
      I0 => s_axi_araddr_q(2),
      I1 => \gpio_in_sync_reg[1]_0\(19),
      I2 => p_4_in(3),
      I3 => \^gpio_out\(19),
      O => \s_axi_rdata[19]_i_1_n_0\
    );
\s_axi_rdata[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E5E0"
    )
        port map (
      I0 => s_axi_araddr_q(2),
      I1 => \gpio_in_sync_reg[1]_0\(1),
      I2 => \gpio_in_mask_reg_n_0_[1]\,
      I3 => \^gpio_out\(1),
      O => \s_axi_rdata[1]_i_1_n_0\
    );
\s_axi_rdata[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E5E0"
    )
        port map (
      I0 => s_axi_araddr_q(2),
      I1 => \gpio_in_sync_reg[1]_0\(20),
      I2 => p_4_in(4),
      I3 => \^gpio_out\(20),
      O => \s_axi_rdata[20]_i_1_n_0\
    );
\s_axi_rdata[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E5E0"
    )
        port map (
      I0 => s_axi_araddr_q(2),
      I1 => \gpio_in_sync_reg[1]_0\(21),
      I2 => p_4_in(5),
      I3 => \^gpio_out\(21),
      O => \s_axi_rdata[21]_i_1_n_0\
    );
\s_axi_rdata[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E5E0"
    )
        port map (
      I0 => s_axi_araddr_q(2),
      I1 => \gpio_in_sync_reg[1]_0\(22),
      I2 => p_4_in(6),
      I3 => \^gpio_out\(22),
      O => \s_axi_rdata[22]_i_1_n_0\
    );
\s_axi_rdata[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E5E0"
    )
        port map (
      I0 => s_axi_araddr_q(2),
      I1 => \gpio_in_sync_reg[1]_0\(23),
      I2 => p_4_in(7),
      I3 => \^gpio_out\(23),
      O => \s_axi_rdata[23]_i_1_n_0\
    );
\s_axi_rdata[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E5E0"
    )
        port map (
      I0 => s_axi_araddr_q(2),
      I1 => \gpio_in_sync_reg[1]_0\(24),
      I2 => \gpio_in_mask_reg_n_0_[24]\,
      I3 => \^gpio_out\(24),
      O => \s_axi_rdata[24]_i_1_n_0\
    );
\s_axi_rdata[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E5E0"
    )
        port map (
      I0 => s_axi_araddr_q(2),
      I1 => \gpio_in_sync_reg[1]_0\(25),
      I2 => \gpio_in_mask_reg_n_0_[25]\,
      I3 => \^gpio_out\(25),
      O => \s_axi_rdata[25]_i_1_n_0\
    );
\s_axi_rdata[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E5E0"
    )
        port map (
      I0 => s_axi_araddr_q(2),
      I1 => \gpio_in_sync_reg[1]_0\(26),
      I2 => \gpio_in_mask_reg_n_0_[26]\,
      I3 => \^gpio_out\(26),
      O => \s_axi_rdata[26]_i_1_n_0\
    );
\s_axi_rdata[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E5E0"
    )
        port map (
      I0 => s_axi_araddr_q(2),
      I1 => \gpio_in_sync_reg[1]_0\(27),
      I2 => \gpio_in_mask_reg_n_0_[27]\,
      I3 => \^gpio_out\(27),
      O => \s_axi_rdata[27]_i_1_n_0\
    );
\s_axi_rdata[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E5E0"
    )
        port map (
      I0 => s_axi_araddr_q(2),
      I1 => \gpio_in_sync_reg[1]_0\(28),
      I2 => \gpio_in_mask_reg_n_0_[28]\,
      I3 => \^gpio_out\(28),
      O => \s_axi_rdata[28]_i_1_n_0\
    );
\s_axi_rdata[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E5E0"
    )
        port map (
      I0 => s_axi_araddr_q(2),
      I1 => \gpio_in_sync_reg[1]_0\(29),
      I2 => \gpio_in_mask_reg_n_0_[29]\,
      I3 => \^gpio_out\(29),
      O => \s_axi_rdata[29]_i_1_n_0\
    );
\s_axi_rdata[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E5E0"
    )
        port map (
      I0 => s_axi_araddr_q(2),
      I1 => \gpio_in_sync_reg[1]_0\(2),
      I2 => \gpio_in_mask_reg_n_0_[2]\,
      I3 => \^gpio_out\(2),
      O => \s_axi_rdata[2]_i_1_n_0\
    );
\s_axi_rdata[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E5E0"
    )
        port map (
      I0 => s_axi_araddr_q(2),
      I1 => \gpio_in_sync_reg[1]_0\(30),
      I2 => \gpio_in_mask_reg_n_0_[30]\,
      I3 => \^gpio_out\(30),
      O => \s_axi_rdata[30]_i_1_n_0\
    );
\s_axi_rdata[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E5E0"
    )
        port map (
      I0 => s_axi_araddr_q(2),
      I1 => \gpio_in_sync_reg[1]_0\(31),
      I2 => \gpio_in_mask_reg_n_0_[31]\,
      I3 => \^gpio_out\(31),
      O => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E5E0"
    )
        port map (
      I0 => s_axi_araddr_q(2),
      I1 => \gpio_in_sync_reg[1]_0\(3),
      I2 => \gpio_in_mask_reg_n_0_[3]\,
      I3 => \^gpio_out\(3),
      O => \s_axi_rdata[3]_i_1_n_0\
    );
\s_axi_rdata[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E5E0"
    )
        port map (
      I0 => s_axi_araddr_q(2),
      I1 => \gpio_in_sync_reg[1]_0\(4),
      I2 => \gpio_in_mask_reg_n_0_[4]\,
      I3 => \^gpio_out\(4),
      O => \s_axi_rdata[4]_i_1_n_0\
    );
\s_axi_rdata[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E5E0"
    )
        port map (
      I0 => s_axi_araddr_q(2),
      I1 => \gpio_in_sync_reg[1]_0\(5),
      I2 => \gpio_in_mask_reg_n_0_[5]\,
      I3 => \^gpio_out\(5),
      O => \s_axi_rdata[5]_i_1_n_0\
    );
\s_axi_rdata[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E5E0"
    )
        port map (
      I0 => s_axi_araddr_q(2),
      I1 => \gpio_in_sync_reg[1]_0\(6),
      I2 => \gpio_in_mask_reg_n_0_[6]\,
      I3 => \^gpio_out\(6),
      O => \s_axi_rdata[6]_i_1_n_0\
    );
\s_axi_rdata[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E5E0"
    )
        port map (
      I0 => s_axi_araddr_q(2),
      I1 => \gpio_in_sync_reg[1]_0\(7),
      I2 => \gpio_in_mask_reg_n_0_[7]\,
      I3 => \^gpio_out\(7),
      O => \s_axi_rdata[7]_i_1_n_0\
    );
\s_axi_rdata[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E5E0"
    )
        port map (
      I0 => s_axi_araddr_q(2),
      I1 => \gpio_in_sync_reg[1]_0\(8),
      I2 => p_2_in(0),
      I3 => \^gpio_out\(8),
      O => \s_axi_rdata[8]_i_1_n_0\
    );
\s_axi_rdata[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E5E0"
    )
        port map (
      I0 => s_axi_araddr_q(2),
      I1 => \gpio_in_sync_reg[1]_0\(9),
      I2 => p_2_in(1),
      I3 => \^gpio_out\(9),
      O => \s_axi_rdata[9]_i_1_n_0\
    );
\s_axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => \s_axi_rdata[0]_i_1_n_0\,
      Q => s_axi_rdata(0),
      R => s_axi_awready_i_1_n_0
    );
\s_axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => \s_axi_rdata[10]_i_1_n_0\,
      Q => s_axi_rdata(10),
      R => s_axi_awready_i_1_n_0
    );
\s_axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => \s_axi_rdata[11]_i_1_n_0\,
      Q => s_axi_rdata(11),
      R => s_axi_awready_i_1_n_0
    );
\s_axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => \s_axi_rdata[12]_i_1_n_0\,
      Q => s_axi_rdata(12),
      R => s_axi_awready_i_1_n_0
    );
\s_axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => \s_axi_rdata[13]_i_1_n_0\,
      Q => s_axi_rdata(13),
      R => s_axi_awready_i_1_n_0
    );
\s_axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => \s_axi_rdata[14]_i_1_n_0\,
      Q => s_axi_rdata(14),
      R => s_axi_awready_i_1_n_0
    );
\s_axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => \s_axi_rdata[15]_i_1_n_0\,
      Q => s_axi_rdata(15),
      R => s_axi_awready_i_1_n_0
    );
\s_axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => \s_axi_rdata[16]_i_1_n_0\,
      Q => s_axi_rdata(16),
      R => s_axi_awready_i_1_n_0
    );
\s_axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => \s_axi_rdata[17]_i_1_n_0\,
      Q => s_axi_rdata(17),
      R => s_axi_awready_i_1_n_0
    );
\s_axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => \s_axi_rdata[18]_i_1_n_0\,
      Q => s_axi_rdata(18),
      R => s_axi_awready_i_1_n_0
    );
\s_axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => \s_axi_rdata[19]_i_1_n_0\,
      Q => s_axi_rdata(19),
      R => s_axi_awready_i_1_n_0
    );
\s_axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => \s_axi_rdata[1]_i_1_n_0\,
      Q => s_axi_rdata(1),
      R => s_axi_awready_i_1_n_0
    );
\s_axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => \s_axi_rdata[20]_i_1_n_0\,
      Q => s_axi_rdata(20),
      R => s_axi_awready_i_1_n_0
    );
\s_axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => \s_axi_rdata[21]_i_1_n_0\,
      Q => s_axi_rdata(21),
      R => s_axi_awready_i_1_n_0
    );
\s_axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => \s_axi_rdata[22]_i_1_n_0\,
      Q => s_axi_rdata(22),
      R => s_axi_awready_i_1_n_0
    );
\s_axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => \s_axi_rdata[23]_i_1_n_0\,
      Q => s_axi_rdata(23),
      R => s_axi_awready_i_1_n_0
    );
\s_axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => \s_axi_rdata[24]_i_1_n_0\,
      Q => s_axi_rdata(24),
      R => s_axi_awready_i_1_n_0
    );
\s_axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => \s_axi_rdata[25]_i_1_n_0\,
      Q => s_axi_rdata(25),
      R => s_axi_awready_i_1_n_0
    );
\s_axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => \s_axi_rdata[26]_i_1_n_0\,
      Q => s_axi_rdata(26),
      R => s_axi_awready_i_1_n_0
    );
\s_axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => \s_axi_rdata[27]_i_1_n_0\,
      Q => s_axi_rdata(27),
      R => s_axi_awready_i_1_n_0
    );
\s_axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => \s_axi_rdata[28]_i_1_n_0\,
      Q => s_axi_rdata(28),
      R => s_axi_awready_i_1_n_0
    );
\s_axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => \s_axi_rdata[29]_i_1_n_0\,
      Q => s_axi_rdata(29),
      R => s_axi_awready_i_1_n_0
    );
\s_axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => \s_axi_rdata[2]_i_1_n_0\,
      Q => s_axi_rdata(2),
      R => s_axi_awready_i_1_n_0
    );
\s_axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => \s_axi_rdata[30]_i_1_n_0\,
      Q => s_axi_rdata(30),
      R => s_axi_awready_i_1_n_0
    );
\s_axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => \s_axi_rdata[31]_i_1_n_0\,
      Q => s_axi_rdata(31),
      R => s_axi_awready_i_1_n_0
    );
\s_axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => \s_axi_rdata[3]_i_1_n_0\,
      Q => s_axi_rdata(3),
      R => s_axi_awready_i_1_n_0
    );
\s_axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => \s_axi_rdata[4]_i_1_n_0\,
      Q => s_axi_rdata(4),
      R => s_axi_awready_i_1_n_0
    );
\s_axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => \s_axi_rdata[5]_i_1_n_0\,
      Q => s_axi_rdata(5),
      R => s_axi_awready_i_1_n_0
    );
\s_axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => \s_axi_rdata[6]_i_1_n_0\,
      Q => s_axi_rdata(6),
      R => s_axi_awready_i_1_n_0
    );
\s_axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => \s_axi_rdata[7]_i_1_n_0\,
      Q => s_axi_rdata(7),
      R => s_axi_awready_i_1_n_0
    );
\s_axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => \s_axi_rdata[8]_i_1_n_0\,
      Q => s_axi_rdata(8),
      R => s_axi_awready_i_1_n_0
    );
\s_axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_reg_rden__0\,
      D => \s_axi_rdata[9]_i_1_n_0\,
      Q => s_axi_rdata(9),
      R => s_axi_awready_i_1_n_0
    );
s_axi_reg_rden: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \^s_axi_rvalid\,
      I2 => \^s_axi_arready\,
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
      R => s_axi_awready_i_1_n_0
    );
s_axi_wready0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      I2 => \^s_axi_wready\,
      I3 => s_axi_aw_en_reg_n_0,
      O => \s_axi_wready0__0\
    );
s_axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_axi_wready0__0\,
      Q => \^s_axi_wready\,
      R => s_axi_awready_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_gpio_1_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
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
    s_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio_in : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of icyradio_axi_gpio_1_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of icyradio_axi_gpio_1_1 : entity is "icyradio_axi_gpio_1_1,axi_gpio,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of icyradio_axi_gpio_1_1 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of icyradio_axi_gpio_1_1 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of icyradio_axi_gpio_1_1 : entity is "axi_gpio,Vivado 2021.1";
end icyradio_axi_gpio_1_1;

architecture STRUCTURE of icyradio_axi_gpio_1_1 is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET aresetn, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN icyradio_axi_pcie_0_0_axi_aclk_out, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 s_axi ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi BREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi BVALID";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 s_axi RREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_rready : signal is "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 125000000, ID_WIDTH 0, ADDR_WIDTH 3, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN icyradio_axi_pcie_0_0_axi_aclk_out, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi RVALID";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi WVALID";
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
inst: entity work.icyradio_axi_gpio_1_1_axi_gpio
     port map (
      aclk => aclk,
      aresetn => aresetn,
      gpio_in(31 downto 0) => gpio_in(31 downto 0),
      gpio_out(31 downto 0) => gpio_out(31 downto 0),
      s_axi_araddr(0) => s_axi_araddr(2),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(0) => s_axi_awaddr(2),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
