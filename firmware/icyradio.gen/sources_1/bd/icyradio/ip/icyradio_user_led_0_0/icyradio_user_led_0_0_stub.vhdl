-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Fri Oct 27 00:53:44 2023
-- Host        : node4-dev running 64-bit Ubuntu 22.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/joao/icyradio/firmware/icyradio.gen/sources_1/bd/icyradio/ip/icyradio_user_led_0_0/icyradio_user_led_0_0_stub.vhdl
-- Design      : icyradio_user_led_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity icyradio_user_led_0_0 is
  Port ( 
    user_led : in STD_LOGIC
  );

end icyradio_user_led_0_0;

architecture stub of icyradio_user_led_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "user_led";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "user_led,Vivado 2021.1";
begin
end;
