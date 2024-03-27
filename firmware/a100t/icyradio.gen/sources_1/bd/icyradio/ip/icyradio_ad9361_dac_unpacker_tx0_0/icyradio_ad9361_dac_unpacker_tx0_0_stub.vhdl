-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Wed Mar 27 12:07:04 2024
-- Host        : node4-dev running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/joao/icyradio/firmware/a100t/icyradio.gen/sources_1/bd/icyradio/ip/icyradio_ad9361_dac_unpacker_tx0_0/icyradio_ad9361_dac_unpacker_tx0_0_stub.vhdl
-- Design      : icyradio_ad9361_dac_unpacker_tx0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity icyradio_ad9361_dac_unpacker_tx0_0 is
  Port ( 
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

end icyradio_ad9361_dac_unpacker_tx0_0;

architecture stub of icyradio_ad9361_dac_unpacker_tx0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,reset,enable_0,enable_1,fifo_rd_en,fifo_rd_valid,fifo_rd_underflow,fifo_rd_data_0[15:0],fifo_rd_data_1[15:0],s_axis_valid,s_axis_ready,s_axis_data[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "util_upack2,Vivado 2023.2";
begin
end;
