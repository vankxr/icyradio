-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Wed Mar 27 12:07:06 2024
-- Host        : node4-dev running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/joao/icyradio/firmware/a100t/icyradio.gen/sources_1/bd/icyradio/ip/icyradio_rst_pulse_gen_0_0/icyradio_rst_pulse_gen_0_0_stub.vhdl
-- Design      : icyradio_rst_pulse_gen_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity icyradio_rst_pulse_gen_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    trigger : in STD_LOGIC;
    rst_out : out STD_LOGIC
  );

end icyradio_rst_pulse_gen_0_0;

architecture stub of icyradio_rst_pulse_gen_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,trigger,rst_out";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "rst_pulse_gen,Vivado 2023.2";
begin
end;
