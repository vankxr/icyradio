-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Wed Mar 27 12:09:43 2024
-- Host        : node4-dev running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/joao/icyradio/firmware/a100t/icyradio.gen/sources_1/bd/icyradio/ip/icyradio_startupe2_0_0/icyradio_startupe2_0_0_sim_netlist.vhdl
-- Design      : icyradio_startupe2_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_startupe2_0_0_startupe2 is
  port (
    cfg_clk : out STD_LOGIC;
    cfg_mclk : out STD_LOGIC;
    eos : out STD_LOGIC;
    preq : out STD_LOGIC;
    pack : in STD_LOGIC;
    usrcclk : in STD_LOGIC;
    usrcclk_oen : in STD_LOGIC;
    usrdone : in STD_LOGIC;
    usrdone_oen : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_startupe2_0_0_startupe2 : entity is "startupe2";
end icyradio_startupe2_0_0_startupe2;

architecture STRUCTURE of icyradio_startupe2_0_0_startupe2 is
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of STARTUPE2_inst : label is "PRIMITIVE";
begin
STARTUPE2_inst: unisim.vcomponents.STARTUPE2
    generic map(
      PROG_USR => "FALSE",
      SIM_CCLK_FREQ => 0.000000
    )
        port map (
      CFGCLK => cfg_clk,
      CFGMCLK => cfg_mclk,
      CLK => '0',
      EOS => eos,
      GSR => '0',
      GTS => '0',
      KEYCLEARB => '0',
      PACK => pack,
      PREQ => preq,
      USRCCLKO => usrcclk,
      USRCCLKTS => usrcclk_oen,
      USRDONEO => usrdone,
      USRDONETS => usrdone_oen
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_startupe2_0_0 is
  port (
    cfg_clk : out STD_LOGIC;
    cfg_mclk : out STD_LOGIC;
    eos : out STD_LOGIC;
    preq : out STD_LOGIC;
    pack : in STD_LOGIC;
    usrcclk : in STD_LOGIC;
    usrcclk_oen : in STD_LOGIC;
    usrdone : in STD_LOGIC;
    usrdone_oen : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of icyradio_startupe2_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of icyradio_startupe2_0_0 : entity is "icyradio_startupe2_0_0,startupe2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of icyradio_startupe2_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of icyradio_startupe2_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of icyradio_startupe2_0_0 : entity is "startupe2,Vivado 2023.2";
end icyradio_startupe2_0_0;

architecture STRUCTURE of icyradio_startupe2_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of cfg_clk : signal is "xilinx.com:signal:clock:1.0 cfg_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of cfg_clk : signal is "XIL_INTERFACENAME cfg_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN icyradio_startupe2_0_0_cfg_clk, INSERT_VIP 0";
begin
inst: entity work.icyradio_startupe2_0_0_startupe2
     port map (
      cfg_clk => cfg_clk,
      cfg_mclk => cfg_mclk,
      eos => eos,
      pack => pack,
      preq => preq,
      usrcclk => usrcclk,
      usrcclk_oen => usrcclk_oen,
      usrdone => usrdone,
      usrdone_oen => usrdone_oen
    );
end STRUCTURE;
