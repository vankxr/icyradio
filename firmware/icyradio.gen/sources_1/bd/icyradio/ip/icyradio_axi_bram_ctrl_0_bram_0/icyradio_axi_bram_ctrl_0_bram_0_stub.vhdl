-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Sat Sep 25 13:08:13 2021
-- Host        : jsilva-kubuntu running 64-bit Ubuntu 20.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub {/media/joao/SSD
--               Data/Development/icyradio/firmware/icyradio/icyradio.gen/sources_1/bd/icyradio/ip/icyradio_axi_bram_ctrl_0_bram_0/icyradio_axi_bram_ctrl_0_bram_0_stub.vhdl}
-- Design      : icyradio_axi_bram_ctrl_0_bram_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a75tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity icyradio_axi_bram_ctrl_0_bram_0 is
  Port ( 
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rsta_busy : out STD_LOGIC
  );

end icyradio_axi_bram_ctrl_0_bram_0;

architecture stub of icyradio_axi_bram_ctrl_0_bram_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clka,rsta,ena,wea[3:0],addra[31:0],dina[31:0],douta[31:0],rsta_busy";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "blk_mem_gen_v8_4_4,Vivado 2020.2";
begin
end;
