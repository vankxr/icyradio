-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Mon Oct  2 00:11:18 2023
-- Host        : xubuntu-dev running 64-bit Ubuntu 20.04.6 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top icyradio_rst_pulse_gen_0_1 -prefix
--               icyradio_rst_pulse_gen_0_1_ icyradio_rst_pulse_gen_0_1_stub.vhdl
-- Design      : icyradio_rst_pulse_gen_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity icyradio_rst_pulse_gen_0_1 is
  Port ( 
    clk : in STD_LOGIC;
    trigger : in STD_LOGIC;
    rst_out : out STD_LOGIC
  );

end icyradio_rst_pulse_gen_0_1;

architecture stub of icyradio_rst_pulse_gen_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,trigger,rst_out";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "rst_pulse_gen,Vivado 2021.1";
begin
end;
