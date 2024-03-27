-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Wed Mar 27 12:09:42 2024
-- Host        : node4-dev running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/joao/icyradio/firmware/a100t/icyradio.gen/sources_1/bd/icyradio/ip/icyradio_startupe2_0_0/icyradio_startupe2_0_0_stub.vhdl
-- Design      : icyradio_startupe2_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity icyradio_startupe2_0_0 is
  Port ( 
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

end icyradio_startupe2_0_0;

architecture stub of icyradio_startupe2_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "cfg_clk,cfg_mclk,eos,preq,pack,usrcclk,usrcclk_oen,usrdone,usrdone_oen";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "startupe2,Vivado 2023.2";
begin
end;
