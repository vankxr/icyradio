-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Wed Mar 27 12:09:31 2024
-- Host        : node4-dev running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/joao/icyradio/firmware/a100t/icyradio.gen/sources_1/bd/icyradio/ip/icyradio_axi_gpio_1_0/icyradio_axi_gpio_1_0_sim_netlist.vhdl
-- Design      : icyradio_axi_gpio_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_gpio_1_0_xpm_cdc_array_single is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of icyradio_axi_gpio_1_0_xpm_cdc_array_single : entity is 3;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of icyradio_axi_gpio_1_0_xpm_cdc_array_single : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_axi_gpio_1_0_xpm_cdc_array_single : entity is "xpm_cdc_array_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of icyradio_axi_gpio_1_0_xpm_cdc_array_single : entity is 1;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of icyradio_axi_gpio_1_0_xpm_cdc_array_single : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of icyradio_axi_gpio_1_0_xpm_cdc_array_single : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of icyradio_axi_gpio_1_0_xpm_cdc_array_single : entity is 32;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of icyradio_axi_gpio_1_0_xpm_cdc_array_single : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of icyradio_axi_gpio_1_0_xpm_cdc_array_single : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of icyradio_axi_gpio_1_0_xpm_cdc_array_single : entity is "ARRAY_SINGLE";
end icyradio_axi_gpio_1_0_xpm_cdc_array_single;

architecture STRUCTURE of icyradio_axi_gpio_1_0_xpm_cdc_array_single is
  signal async_path_bit : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \syncstages_ff[0]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \syncstages_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \syncstages_ff[0]\ : signal is "true";
  attribute xpm_cdc of \syncstages_ff[0]\ : signal is "ARRAY_SINGLE";
  signal \syncstages_ff[1]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute RTL_KEEP of \syncstages_ff[1]\ : signal is "true";
  attribute async_reg of \syncstages_ff[1]\ : signal is "true";
  attribute xpm_cdc of \syncstages_ff[1]\ : signal is "ARRAY_SINGLE";
  signal \syncstages_ff[2]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute RTL_KEEP of \syncstages_ff[2]\ : signal is "true";
  attribute async_reg of \syncstages_ff[2]\ : signal is "true";
  attribute xpm_cdc of \syncstages_ff[2]\ : signal is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][0]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][10]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][10]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][10]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][11]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][11]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][11]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][12]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][12]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][12]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][13]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][13]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][13]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][14]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][14]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][14]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][15]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][15]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][15]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][16]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][16]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][16]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][17]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][17]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][17]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][18]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][18]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][18]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][19]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][19]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][19]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][1]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][20]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][20]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][20]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][21]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][21]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][21]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][22]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][22]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][22]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][23]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][23]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][23]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][24]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][24]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][24]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][25]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][25]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][25]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][26]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][26]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][26]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][27]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][27]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][27]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][28]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][28]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][28]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][29]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][29]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][29]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][2]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][30]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][30]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][30]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][31]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][31]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][31]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][3]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][4]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][4]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][5]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][5]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][5]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][6]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][6]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][6]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][7]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][7]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][7]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][8]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][8]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][8]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][9]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][9]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][9]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][0]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][10]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][10]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][10]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][11]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][11]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][11]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][12]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][12]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][12]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][13]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][13]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][13]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][14]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][14]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][14]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][15]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][15]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][15]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][16]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][16]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][16]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][17]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][17]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][17]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][18]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][18]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][18]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][19]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][19]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][19]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][1]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][20]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][20]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][20]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][21]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][21]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][21]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][22]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][22]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][22]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][23]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][23]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][23]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][24]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][24]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][24]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][25]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][25]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][25]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][26]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][26]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][26]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][27]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][27]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][27]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][28]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][28]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][28]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][29]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][29]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][29]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][2]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][30]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][30]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][30]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][31]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][31]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][31]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][3]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][4]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][4]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][5]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][5]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][5]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][6]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][6]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][6]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][7]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][7]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][7]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][8]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][8]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][8]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][9]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][9]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][9]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][0]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][0]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][10]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][10]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][10]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][11]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][11]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][11]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][12]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][12]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][12]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][13]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][13]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][13]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][14]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][14]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][14]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][15]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][15]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][15]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][16]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][16]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][16]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][17]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][17]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][17]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][18]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][18]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][18]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][19]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][19]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][19]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][1]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][20]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][20]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][20]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][21]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][21]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][21]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][22]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][22]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][22]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][23]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][23]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][23]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][24]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][24]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][24]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][25]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][25]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][25]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][26]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][26]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][26]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][27]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][27]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][27]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][28]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][28]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][28]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][29]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][29]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][29]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][2]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][30]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][30]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][30]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][31]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][31]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][31]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][3]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][4]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][4]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][4]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][5]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][5]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][5]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][6]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][6]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][6]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][7]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][7]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][7]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][8]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][8]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][8]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][9]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][9]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][9]\ : label is "ARRAY_SINGLE";
begin
  async_path_bit(31 downto 0) <= src_in(31 downto 0);
  dest_out(31 downto 0) <= \syncstages_ff[2]\(31 downto 0);
\syncstages_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(0),
      Q => \syncstages_ff[0]\(0),
      R => '0'
    );
\syncstages_ff_reg[0][10]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(10),
      Q => \syncstages_ff[0]\(10),
      R => '0'
    );
\syncstages_ff_reg[0][11]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(11),
      Q => \syncstages_ff[0]\(11),
      R => '0'
    );
\syncstages_ff_reg[0][12]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(12),
      Q => \syncstages_ff[0]\(12),
      R => '0'
    );
\syncstages_ff_reg[0][13]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(13),
      Q => \syncstages_ff[0]\(13),
      R => '0'
    );
\syncstages_ff_reg[0][14]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(14),
      Q => \syncstages_ff[0]\(14),
      R => '0'
    );
\syncstages_ff_reg[0][15]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(15),
      Q => \syncstages_ff[0]\(15),
      R => '0'
    );
\syncstages_ff_reg[0][16]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(16),
      Q => \syncstages_ff[0]\(16),
      R => '0'
    );
\syncstages_ff_reg[0][17]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(17),
      Q => \syncstages_ff[0]\(17),
      R => '0'
    );
\syncstages_ff_reg[0][18]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(18),
      Q => \syncstages_ff[0]\(18),
      R => '0'
    );
\syncstages_ff_reg[0][19]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(19),
      Q => \syncstages_ff[0]\(19),
      R => '0'
    );
\syncstages_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(1),
      Q => \syncstages_ff[0]\(1),
      R => '0'
    );
\syncstages_ff_reg[0][20]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(20),
      Q => \syncstages_ff[0]\(20),
      R => '0'
    );
\syncstages_ff_reg[0][21]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(21),
      Q => \syncstages_ff[0]\(21),
      R => '0'
    );
\syncstages_ff_reg[0][22]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(22),
      Q => \syncstages_ff[0]\(22),
      R => '0'
    );
\syncstages_ff_reg[0][23]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(23),
      Q => \syncstages_ff[0]\(23),
      R => '0'
    );
\syncstages_ff_reg[0][24]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(24),
      Q => \syncstages_ff[0]\(24),
      R => '0'
    );
\syncstages_ff_reg[0][25]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(25),
      Q => \syncstages_ff[0]\(25),
      R => '0'
    );
\syncstages_ff_reg[0][26]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(26),
      Q => \syncstages_ff[0]\(26),
      R => '0'
    );
\syncstages_ff_reg[0][27]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(27),
      Q => \syncstages_ff[0]\(27),
      R => '0'
    );
\syncstages_ff_reg[0][28]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(28),
      Q => \syncstages_ff[0]\(28),
      R => '0'
    );
\syncstages_ff_reg[0][29]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(29),
      Q => \syncstages_ff[0]\(29),
      R => '0'
    );
\syncstages_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(2),
      Q => \syncstages_ff[0]\(2),
      R => '0'
    );
\syncstages_ff_reg[0][30]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(30),
      Q => \syncstages_ff[0]\(30),
      R => '0'
    );
\syncstages_ff_reg[0][31]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(31),
      Q => \syncstages_ff[0]\(31),
      R => '0'
    );
\syncstages_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(3),
      Q => \syncstages_ff[0]\(3),
      R => '0'
    );
\syncstages_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(4),
      Q => \syncstages_ff[0]\(4),
      R => '0'
    );
\syncstages_ff_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(5),
      Q => \syncstages_ff[0]\(5),
      R => '0'
    );
\syncstages_ff_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(6),
      Q => \syncstages_ff[0]\(6),
      R => '0'
    );
\syncstages_ff_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(7),
      Q => \syncstages_ff[0]\(7),
      R => '0'
    );
\syncstages_ff_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(8),
      Q => \syncstages_ff[0]\(8),
      R => '0'
    );
\syncstages_ff_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(9),
      Q => \syncstages_ff[0]\(9),
      R => '0'
    );
\syncstages_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(0),
      Q => \syncstages_ff[1]\(0),
      R => '0'
    );
\syncstages_ff_reg[1][10]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(10),
      Q => \syncstages_ff[1]\(10),
      R => '0'
    );
\syncstages_ff_reg[1][11]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(11),
      Q => \syncstages_ff[1]\(11),
      R => '0'
    );
\syncstages_ff_reg[1][12]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(12),
      Q => \syncstages_ff[1]\(12),
      R => '0'
    );
\syncstages_ff_reg[1][13]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(13),
      Q => \syncstages_ff[1]\(13),
      R => '0'
    );
\syncstages_ff_reg[1][14]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(14),
      Q => \syncstages_ff[1]\(14),
      R => '0'
    );
\syncstages_ff_reg[1][15]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(15),
      Q => \syncstages_ff[1]\(15),
      R => '0'
    );
\syncstages_ff_reg[1][16]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(16),
      Q => \syncstages_ff[1]\(16),
      R => '0'
    );
\syncstages_ff_reg[1][17]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(17),
      Q => \syncstages_ff[1]\(17),
      R => '0'
    );
\syncstages_ff_reg[1][18]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(18),
      Q => \syncstages_ff[1]\(18),
      R => '0'
    );
\syncstages_ff_reg[1][19]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(19),
      Q => \syncstages_ff[1]\(19),
      R => '0'
    );
\syncstages_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(1),
      Q => \syncstages_ff[1]\(1),
      R => '0'
    );
\syncstages_ff_reg[1][20]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(20),
      Q => \syncstages_ff[1]\(20),
      R => '0'
    );
\syncstages_ff_reg[1][21]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(21),
      Q => \syncstages_ff[1]\(21),
      R => '0'
    );
\syncstages_ff_reg[1][22]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(22),
      Q => \syncstages_ff[1]\(22),
      R => '0'
    );
\syncstages_ff_reg[1][23]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(23),
      Q => \syncstages_ff[1]\(23),
      R => '0'
    );
\syncstages_ff_reg[1][24]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(24),
      Q => \syncstages_ff[1]\(24),
      R => '0'
    );
\syncstages_ff_reg[1][25]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(25),
      Q => \syncstages_ff[1]\(25),
      R => '0'
    );
\syncstages_ff_reg[1][26]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(26),
      Q => \syncstages_ff[1]\(26),
      R => '0'
    );
\syncstages_ff_reg[1][27]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(27),
      Q => \syncstages_ff[1]\(27),
      R => '0'
    );
\syncstages_ff_reg[1][28]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(28),
      Q => \syncstages_ff[1]\(28),
      R => '0'
    );
\syncstages_ff_reg[1][29]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(29),
      Q => \syncstages_ff[1]\(29),
      R => '0'
    );
\syncstages_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(2),
      Q => \syncstages_ff[1]\(2),
      R => '0'
    );
\syncstages_ff_reg[1][30]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(30),
      Q => \syncstages_ff[1]\(30),
      R => '0'
    );
\syncstages_ff_reg[1][31]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(31),
      Q => \syncstages_ff[1]\(31),
      R => '0'
    );
\syncstages_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(3),
      Q => \syncstages_ff[1]\(3),
      R => '0'
    );
\syncstages_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(4),
      Q => \syncstages_ff[1]\(4),
      R => '0'
    );
\syncstages_ff_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(5),
      Q => \syncstages_ff[1]\(5),
      R => '0'
    );
\syncstages_ff_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(6),
      Q => \syncstages_ff[1]\(6),
      R => '0'
    );
\syncstages_ff_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(7),
      Q => \syncstages_ff[1]\(7),
      R => '0'
    );
\syncstages_ff_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(8),
      Q => \syncstages_ff[1]\(8),
      R => '0'
    );
\syncstages_ff_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(9),
      Q => \syncstages_ff[1]\(9),
      R => '0'
    );
\syncstages_ff_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(0),
      Q => \syncstages_ff[2]\(0),
      R => '0'
    );
\syncstages_ff_reg[2][10]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(10),
      Q => \syncstages_ff[2]\(10),
      R => '0'
    );
\syncstages_ff_reg[2][11]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(11),
      Q => \syncstages_ff[2]\(11),
      R => '0'
    );
\syncstages_ff_reg[2][12]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(12),
      Q => \syncstages_ff[2]\(12),
      R => '0'
    );
\syncstages_ff_reg[2][13]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(13),
      Q => \syncstages_ff[2]\(13),
      R => '0'
    );
\syncstages_ff_reg[2][14]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(14),
      Q => \syncstages_ff[2]\(14),
      R => '0'
    );
\syncstages_ff_reg[2][15]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(15),
      Q => \syncstages_ff[2]\(15),
      R => '0'
    );
\syncstages_ff_reg[2][16]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(16),
      Q => \syncstages_ff[2]\(16),
      R => '0'
    );
\syncstages_ff_reg[2][17]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(17),
      Q => \syncstages_ff[2]\(17),
      R => '0'
    );
\syncstages_ff_reg[2][18]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(18),
      Q => \syncstages_ff[2]\(18),
      R => '0'
    );
\syncstages_ff_reg[2][19]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(19),
      Q => \syncstages_ff[2]\(19),
      R => '0'
    );
\syncstages_ff_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(1),
      Q => \syncstages_ff[2]\(1),
      R => '0'
    );
\syncstages_ff_reg[2][20]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(20),
      Q => \syncstages_ff[2]\(20),
      R => '0'
    );
\syncstages_ff_reg[2][21]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(21),
      Q => \syncstages_ff[2]\(21),
      R => '0'
    );
\syncstages_ff_reg[2][22]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(22),
      Q => \syncstages_ff[2]\(22),
      R => '0'
    );
\syncstages_ff_reg[2][23]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(23),
      Q => \syncstages_ff[2]\(23),
      R => '0'
    );
\syncstages_ff_reg[2][24]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(24),
      Q => \syncstages_ff[2]\(24),
      R => '0'
    );
\syncstages_ff_reg[2][25]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(25),
      Q => \syncstages_ff[2]\(25),
      R => '0'
    );
\syncstages_ff_reg[2][26]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(26),
      Q => \syncstages_ff[2]\(26),
      R => '0'
    );
\syncstages_ff_reg[2][27]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(27),
      Q => \syncstages_ff[2]\(27),
      R => '0'
    );
\syncstages_ff_reg[2][28]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(28),
      Q => \syncstages_ff[2]\(28),
      R => '0'
    );
\syncstages_ff_reg[2][29]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(29),
      Q => \syncstages_ff[2]\(29),
      R => '0'
    );
\syncstages_ff_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(2),
      Q => \syncstages_ff[2]\(2),
      R => '0'
    );
\syncstages_ff_reg[2][30]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(30),
      Q => \syncstages_ff[2]\(30),
      R => '0'
    );
\syncstages_ff_reg[2][31]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(31),
      Q => \syncstages_ff[2]\(31),
      R => '0'
    );
\syncstages_ff_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(3),
      Q => \syncstages_ff[2]\(3),
      R => '0'
    );
\syncstages_ff_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(4),
      Q => \syncstages_ff[2]\(4),
      R => '0'
    );
\syncstages_ff_reg[2][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(5),
      Q => \syncstages_ff[2]\(5),
      R => '0'
    );
\syncstages_ff_reg[2][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(6),
      Q => \syncstages_ff[2]\(6),
      R => '0'
    );
\syncstages_ff_reg[2][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(7),
      Q => \syncstages_ff[2]\(7),
      R => '0'
    );
\syncstages_ff_reg[2][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(8),
      Q => \syncstages_ff[2]\(8),
      R => '0'
    );
\syncstages_ff_reg[2][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(9),
      Q => \syncstages_ff[2]\(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_gpio_1_0_axi_gpio is
  port (
    s_axi_rvalid_reg_0 : out STD_LOGIC;
    gpio_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio_t : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awready_reg_0 : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    gpio_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    aclk : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_bready : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_axi_gpio_1_0_axi_gpio : entity is "axi_gpio";
end icyradio_axi_gpio_1_0_axi_gpio;

architecture STRUCTURE of icyradio_axi_gpio_1_0_axi_gpio is
  signal gpio_i_sync : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^gpio_o\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^gpio_t\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \gpio_t[0]_i_1_n_0\ : STD_LOGIC;
  signal \gpio_t[10]_i_1_n_0\ : STD_LOGIC;
  signal \gpio_t[11]_i_1_n_0\ : STD_LOGIC;
  signal \gpio_t[12]_i_1_n_0\ : STD_LOGIC;
  signal \gpio_t[13]_i_1_n_0\ : STD_LOGIC;
  signal \gpio_t[14]_i_1_n_0\ : STD_LOGIC;
  signal \gpio_t[15]_i_1_n_0\ : STD_LOGIC;
  signal \gpio_t[15]_i_2_n_0\ : STD_LOGIC;
  signal \gpio_t[16]_i_1_n_0\ : STD_LOGIC;
  signal \gpio_t[17]_i_1_n_0\ : STD_LOGIC;
  signal \gpio_t[18]_i_1_n_0\ : STD_LOGIC;
  signal \gpio_t[19]_i_1_n_0\ : STD_LOGIC;
  signal \gpio_t[1]_i_1_n_0\ : STD_LOGIC;
  signal \gpio_t[20]_i_1_n_0\ : STD_LOGIC;
  signal \gpio_t[21]_i_1_n_0\ : STD_LOGIC;
  signal \gpio_t[22]_i_1_n_0\ : STD_LOGIC;
  signal \gpio_t[23]_i_1_n_0\ : STD_LOGIC;
  signal \gpio_t[23]_i_2_n_0\ : STD_LOGIC;
  signal \gpio_t[24]_i_1_n_0\ : STD_LOGIC;
  signal \gpio_t[25]_i_1_n_0\ : STD_LOGIC;
  signal \gpio_t[26]_i_1_n_0\ : STD_LOGIC;
  signal \gpio_t[27]_i_1_n_0\ : STD_LOGIC;
  signal \gpio_t[28]_i_1_n_0\ : STD_LOGIC;
  signal \gpio_t[29]_i_1_n_0\ : STD_LOGIC;
  signal \gpio_t[2]_i_1_n_0\ : STD_LOGIC;
  signal \gpio_t[30]_i_1_n_0\ : STD_LOGIC;
  signal \gpio_t[31]_i_1_n_0\ : STD_LOGIC;
  signal \gpio_t[31]_i_2_n_0\ : STD_LOGIC;
  signal \gpio_t[3]_i_1_n_0\ : STD_LOGIC;
  signal \gpio_t[4]_i_1_n_0\ : STD_LOGIC;
  signal \gpio_t[5]_i_1_n_0\ : STD_LOGIC;
  signal \gpio_t[6]_i_1_n_0\ : STD_LOGIC;
  signal \gpio_t[7]_i_1_n_0\ : STD_LOGIC;
  signal \gpio_t[7]_i_2_n_0\ : STD_LOGIC;
  signal \gpio_t[8]_i_1_n_0\ : STD_LOGIC;
  signal \gpio_t[9]_i_1_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal p_2_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_axi_awready_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_awready_reg_0\ : STD_LOGIC;
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
  signal \s_axi_rdata[31]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[31]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[3]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[4]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[5]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[6]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[7]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[8]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[9]_i_1_n_0\ : STD_LOGIC;
  signal s_axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_rvalid_reg_0\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of \gpio_o_reg[0]\ : label is "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_O";
  attribute X_INTERFACE_INFO of \gpio_o_reg[10]\ : label is "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_O";
  attribute X_INTERFACE_INFO of \gpio_o_reg[11]\ : label is "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_O";
  attribute X_INTERFACE_INFO of \gpio_o_reg[12]\ : label is "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_O";
  attribute X_INTERFACE_INFO of \gpio_o_reg[13]\ : label is "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_O";
  attribute X_INTERFACE_INFO of \gpio_o_reg[14]\ : label is "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_O";
  attribute X_INTERFACE_INFO of \gpio_o_reg[15]\ : label is "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_O";
  attribute X_INTERFACE_INFO of \gpio_o_reg[16]\ : label is "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_O";
  attribute X_INTERFACE_INFO of \gpio_o_reg[17]\ : label is "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_O";
  attribute X_INTERFACE_INFO of \gpio_o_reg[18]\ : label is "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_O";
  attribute X_INTERFACE_INFO of \gpio_o_reg[19]\ : label is "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_O";
  attribute X_INTERFACE_INFO of \gpio_o_reg[1]\ : label is "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_O";
  attribute X_INTERFACE_INFO of \gpio_o_reg[20]\ : label is "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_O";
  attribute X_INTERFACE_INFO of \gpio_o_reg[21]\ : label is "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_O";
  attribute X_INTERFACE_INFO of \gpio_o_reg[22]\ : label is "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_O";
  attribute X_INTERFACE_INFO of \gpio_o_reg[23]\ : label is "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_O";
  attribute X_INTERFACE_INFO of \gpio_o_reg[24]\ : label is "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_O";
  attribute X_INTERFACE_INFO of \gpio_o_reg[25]\ : label is "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_O";
  attribute X_INTERFACE_INFO of \gpio_o_reg[26]\ : label is "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_O";
  attribute X_INTERFACE_INFO of \gpio_o_reg[27]\ : label is "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_O";
  attribute X_INTERFACE_INFO of \gpio_o_reg[28]\ : label is "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_O";
  attribute X_INTERFACE_INFO of \gpio_o_reg[29]\ : label is "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_O";
  attribute X_INTERFACE_INFO of \gpio_o_reg[2]\ : label is "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_O";
  attribute X_INTERFACE_INFO of \gpio_o_reg[30]\ : label is "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_O";
  attribute X_INTERFACE_INFO of \gpio_o_reg[31]\ : label is "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_O";
  attribute X_INTERFACE_INFO of \gpio_o_reg[3]\ : label is "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_O";
  attribute X_INTERFACE_INFO of \gpio_o_reg[4]\ : label is "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_O";
  attribute X_INTERFACE_INFO of \gpio_o_reg[5]\ : label is "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_O";
  attribute X_INTERFACE_INFO of \gpio_o_reg[6]\ : label is "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_O";
  attribute X_INTERFACE_INFO of \gpio_o_reg[7]\ : label is "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_O";
  attribute X_INTERFACE_INFO of \gpio_o_reg[8]\ : label is "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_O";
  attribute X_INTERFACE_INFO of \gpio_o_reg[9]\ : label is "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_O";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of gpio_sync : label is 3;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of gpio_sync : label is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of gpio_sync : label is 1;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of gpio_sync : label is 0;
  attribute VERSION : integer;
  attribute VERSION of gpio_sync : label is 0;
  attribute WIDTH : integer;
  attribute WIDTH of gpio_sync : label is 32;
  attribute XPM_CDC : string;
  attribute XPM_CDC of gpio_sync : label is "ARRAY_SINGLE";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of gpio_sync : label is "TRUE";
  attribute X_INTERFACE_INFO of \gpio_t_reg[0]\ : label is "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_T";
  attribute X_INTERFACE_INFO of \gpio_t_reg[10]\ : label is "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_T";
  attribute X_INTERFACE_INFO of \gpio_t_reg[11]\ : label is "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_T";
  attribute X_INTERFACE_INFO of \gpio_t_reg[12]\ : label is "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_T";
  attribute X_INTERFACE_INFO of \gpio_t_reg[13]\ : label is "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_T";
  attribute X_INTERFACE_INFO of \gpio_t_reg[14]\ : label is "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_T";
  attribute X_INTERFACE_INFO of \gpio_t_reg[15]\ : label is "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_T";
  attribute X_INTERFACE_INFO of \gpio_t_reg[16]\ : label is "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_T";
  attribute X_INTERFACE_INFO of \gpio_t_reg[17]\ : label is "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_T";
  attribute X_INTERFACE_INFO of \gpio_t_reg[18]\ : label is "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_T";
  attribute X_INTERFACE_INFO of \gpio_t_reg[19]\ : label is "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_T";
  attribute X_INTERFACE_INFO of \gpio_t_reg[1]\ : label is "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_T";
  attribute X_INTERFACE_INFO of \gpio_t_reg[20]\ : label is "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_T";
  attribute X_INTERFACE_INFO of \gpio_t_reg[21]\ : label is "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_T";
  attribute X_INTERFACE_INFO of \gpio_t_reg[22]\ : label is "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_T";
  attribute X_INTERFACE_INFO of \gpio_t_reg[23]\ : label is "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_T";
  attribute X_INTERFACE_INFO of \gpio_t_reg[24]\ : label is "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_T";
  attribute X_INTERFACE_INFO of \gpio_t_reg[25]\ : label is "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_T";
  attribute X_INTERFACE_INFO of \gpio_t_reg[26]\ : label is "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_T";
  attribute X_INTERFACE_INFO of \gpio_t_reg[27]\ : label is "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_T";
  attribute X_INTERFACE_INFO of \gpio_t_reg[28]\ : label is "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_T";
  attribute X_INTERFACE_INFO of \gpio_t_reg[29]\ : label is "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_T";
  attribute X_INTERFACE_INFO of \gpio_t_reg[2]\ : label is "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_T";
  attribute X_INTERFACE_INFO of \gpio_t_reg[30]\ : label is "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_T";
  attribute X_INTERFACE_INFO of \gpio_t_reg[31]\ : label is "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_T";
  attribute X_INTERFACE_INFO of \gpio_t_reg[3]\ : label is "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_T";
  attribute X_INTERFACE_INFO of \gpio_t_reg[4]\ : label is "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_T";
  attribute X_INTERFACE_INFO of \gpio_t_reg[5]\ : label is "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_T";
  attribute X_INTERFACE_INFO of \gpio_t_reg[6]\ : label is "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_T";
  attribute X_INTERFACE_INFO of \gpio_t_reg[7]\ : label is "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_T";
  attribute X_INTERFACE_INFO of \gpio_t_reg[8]\ : label is "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_T";
  attribute X_INTERFACE_INFO of \gpio_t_reg[9]\ : label is "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_T";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of s_axi_arready_INST_0 : label is "soft_lutpair0";
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
  attribute SOFT_HLUTNM of s_axi_rvalid_i_1 : label is "soft_lutpair0";
  attribute X_INTERFACE_INFO of s_axi_rvalid_reg : label is "xilinx.com:interface:aximm:1.0 s_axi RVALID";
begin
  gpio_o(31 downto 0) <= \^gpio_o\(31 downto 0);
  gpio_t(31 downto 0) <= \^gpio_t\(31 downto 0);
  s_axi_awready_reg_0 <= \^s_axi_awready_reg_0\;
  s_axi_bvalid <= \^s_axi_bvalid\;
  s_axi_rvalid_reg_0 <= \^s_axi_rvalid_reg_0\;
\gpio_o[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0AF8"
    )
        port map (
      I0 => \^gpio_o\(0),
      I1 => s_axi_awaddr(0),
      I2 => s_axi_wdata(0),
      I3 => s_axi_awaddr(1),
      O => p_2_in(0)
    );
\gpio_o[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0AF8"
    )
        port map (
      I0 => \^gpio_o\(10),
      I1 => s_axi_awaddr(0),
      I2 => s_axi_wdata(10),
      I3 => s_axi_awaddr(1),
      O => p_2_in(10)
    );
\gpio_o[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0AF8"
    )
        port map (
      I0 => \^gpio_o\(11),
      I1 => s_axi_awaddr(0),
      I2 => s_axi_wdata(11),
      I3 => s_axi_awaddr(1),
      O => p_2_in(11)
    );
\gpio_o[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0AF8"
    )
        port map (
      I0 => \^gpio_o\(12),
      I1 => s_axi_awaddr(0),
      I2 => s_axi_wdata(12),
      I3 => s_axi_awaddr(1),
      O => p_2_in(12)
    );
\gpio_o[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0AF8"
    )
        port map (
      I0 => \^gpio_o\(13),
      I1 => s_axi_awaddr(0),
      I2 => s_axi_wdata(13),
      I3 => s_axi_awaddr(1),
      O => p_2_in(13)
    );
\gpio_o[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0AF8"
    )
        port map (
      I0 => \^gpio_o\(14),
      I1 => s_axi_awaddr(0),
      I2 => s_axi_wdata(14),
      I3 => s_axi_awaddr(1),
      O => p_2_in(14)
    );
\gpio_o[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08880000"
    )
        port map (
      I0 => \^s_axi_awready_reg_0\,
      I1 => s_axi_awaddr(2),
      I2 => s_axi_awaddr(1),
      I3 => s_axi_awaddr(0),
      I4 => s_axi_wstrb(1),
      O => p_1_in(15)
    );
\gpio_o[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0AF8"
    )
        port map (
      I0 => \^gpio_o\(15),
      I1 => s_axi_awaddr(0),
      I2 => s_axi_wdata(15),
      I3 => s_axi_awaddr(1),
      O => p_2_in(15)
    );
\gpio_o[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0AF8"
    )
        port map (
      I0 => \^gpio_o\(16),
      I1 => s_axi_awaddr(0),
      I2 => s_axi_wdata(16),
      I3 => s_axi_awaddr(1),
      O => p_2_in(16)
    );
\gpio_o[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0AF8"
    )
        port map (
      I0 => \^gpio_o\(17),
      I1 => s_axi_awaddr(0),
      I2 => s_axi_wdata(17),
      I3 => s_axi_awaddr(1),
      O => p_2_in(17)
    );
\gpio_o[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0AF8"
    )
        port map (
      I0 => \^gpio_o\(18),
      I1 => s_axi_awaddr(0),
      I2 => s_axi_wdata(18),
      I3 => s_axi_awaddr(1),
      O => p_2_in(18)
    );
\gpio_o[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0AF8"
    )
        port map (
      I0 => \^gpio_o\(19),
      I1 => s_axi_awaddr(0),
      I2 => s_axi_wdata(19),
      I3 => s_axi_awaddr(1),
      O => p_2_in(19)
    );
\gpio_o[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0AF8"
    )
        port map (
      I0 => \^gpio_o\(1),
      I1 => s_axi_awaddr(0),
      I2 => s_axi_wdata(1),
      I3 => s_axi_awaddr(1),
      O => p_2_in(1)
    );
\gpio_o[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0AF8"
    )
        port map (
      I0 => \^gpio_o\(20),
      I1 => s_axi_awaddr(0),
      I2 => s_axi_wdata(20),
      I3 => s_axi_awaddr(1),
      O => p_2_in(20)
    );
\gpio_o[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0AF8"
    )
        port map (
      I0 => \^gpio_o\(21),
      I1 => s_axi_awaddr(0),
      I2 => s_axi_wdata(21),
      I3 => s_axi_awaddr(1),
      O => p_2_in(21)
    );
\gpio_o[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0AF8"
    )
        port map (
      I0 => \^gpio_o\(22),
      I1 => s_axi_awaddr(0),
      I2 => s_axi_wdata(22),
      I3 => s_axi_awaddr(1),
      O => p_2_in(22)
    );
\gpio_o[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08880000"
    )
        port map (
      I0 => \^s_axi_awready_reg_0\,
      I1 => s_axi_awaddr(2),
      I2 => s_axi_awaddr(1),
      I3 => s_axi_awaddr(0),
      I4 => s_axi_wstrb(2),
      O => p_1_in(23)
    );
\gpio_o[23]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0AF8"
    )
        port map (
      I0 => \^gpio_o\(23),
      I1 => s_axi_awaddr(0),
      I2 => s_axi_wdata(23),
      I3 => s_axi_awaddr(1),
      O => p_2_in(23)
    );
\gpio_o[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0AF8"
    )
        port map (
      I0 => \^gpio_o\(24),
      I1 => s_axi_awaddr(0),
      I2 => s_axi_wdata(24),
      I3 => s_axi_awaddr(1),
      O => p_2_in(24)
    );
\gpio_o[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0AF8"
    )
        port map (
      I0 => \^gpio_o\(25),
      I1 => s_axi_awaddr(0),
      I2 => s_axi_wdata(25),
      I3 => s_axi_awaddr(1),
      O => p_2_in(25)
    );
\gpio_o[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0AF8"
    )
        port map (
      I0 => \^gpio_o\(26),
      I1 => s_axi_awaddr(0),
      I2 => s_axi_wdata(26),
      I3 => s_axi_awaddr(1),
      O => p_2_in(26)
    );
\gpio_o[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0AF8"
    )
        port map (
      I0 => \^gpio_o\(27),
      I1 => s_axi_awaddr(0),
      I2 => s_axi_wdata(27),
      I3 => s_axi_awaddr(1),
      O => p_2_in(27)
    );
\gpio_o[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0AF8"
    )
        port map (
      I0 => \^gpio_o\(28),
      I1 => s_axi_awaddr(0),
      I2 => s_axi_wdata(28),
      I3 => s_axi_awaddr(1),
      O => p_2_in(28)
    );
\gpio_o[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0AF8"
    )
        port map (
      I0 => \^gpio_o\(29),
      I1 => s_axi_awaddr(0),
      I2 => s_axi_wdata(29),
      I3 => s_axi_awaddr(1),
      O => p_2_in(29)
    );
\gpio_o[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0AF8"
    )
        port map (
      I0 => \^gpio_o\(2),
      I1 => s_axi_awaddr(0),
      I2 => s_axi_wdata(2),
      I3 => s_axi_awaddr(1),
      O => p_2_in(2)
    );
\gpio_o[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0AF8"
    )
        port map (
      I0 => \^gpio_o\(30),
      I1 => s_axi_awaddr(0),
      I2 => s_axi_wdata(30),
      I3 => s_axi_awaddr(1),
      O => p_2_in(30)
    );
\gpio_o[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => p_0_in
    );
\gpio_o[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08880000"
    )
        port map (
      I0 => \^s_axi_awready_reg_0\,
      I1 => s_axi_awaddr(2),
      I2 => s_axi_awaddr(1),
      I3 => s_axi_awaddr(0),
      I4 => s_axi_wstrb(3),
      O => p_1_in(31)
    );
\gpio_o[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0AF8"
    )
        port map (
      I0 => \^gpio_o\(31),
      I1 => s_axi_awaddr(0),
      I2 => s_axi_wdata(31),
      I3 => s_axi_awaddr(1),
      O => p_2_in(31)
    );
\gpio_o[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0AF8"
    )
        port map (
      I0 => \^gpio_o\(3),
      I1 => s_axi_awaddr(0),
      I2 => s_axi_wdata(3),
      I3 => s_axi_awaddr(1),
      O => p_2_in(3)
    );
\gpio_o[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0AF8"
    )
        port map (
      I0 => \^gpio_o\(4),
      I1 => s_axi_awaddr(0),
      I2 => s_axi_wdata(4),
      I3 => s_axi_awaddr(1),
      O => p_2_in(4)
    );
\gpio_o[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0AF8"
    )
        port map (
      I0 => \^gpio_o\(5),
      I1 => s_axi_awaddr(0),
      I2 => s_axi_wdata(5),
      I3 => s_axi_awaddr(1),
      O => p_2_in(5)
    );
\gpio_o[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0AF8"
    )
        port map (
      I0 => \^gpio_o\(6),
      I1 => s_axi_awaddr(0),
      I2 => s_axi_wdata(6),
      I3 => s_axi_awaddr(1),
      O => p_2_in(6)
    );
\gpio_o[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08880000"
    )
        port map (
      I0 => \^s_axi_awready_reg_0\,
      I1 => s_axi_awaddr(2),
      I2 => s_axi_awaddr(1),
      I3 => s_axi_awaddr(0),
      I4 => s_axi_wstrb(0),
      O => p_1_in(7)
    );
\gpio_o[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0AF8"
    )
        port map (
      I0 => \^gpio_o\(7),
      I1 => s_axi_awaddr(0),
      I2 => s_axi_wdata(7),
      I3 => s_axi_awaddr(1),
      O => p_2_in(7)
    );
\gpio_o[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0AF8"
    )
        port map (
      I0 => \^gpio_o\(8),
      I1 => s_axi_awaddr(0),
      I2 => s_axi_wdata(8),
      I3 => s_axi_awaddr(1),
      O => p_2_in(8)
    );
\gpio_o[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0AF8"
    )
        port map (
      I0 => \^gpio_o\(9),
      I1 => s_axi_awaddr(0),
      I2 => s_axi_wdata(9),
      I3 => s_axi_awaddr(1),
      O => p_2_in(9)
    );
\gpio_o_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(7),
      D => p_2_in(0),
      Q => \^gpio_o\(0),
      R => p_0_in
    );
\gpio_o_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(15),
      D => p_2_in(10),
      Q => \^gpio_o\(10),
      R => p_0_in
    );
\gpio_o_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(15),
      D => p_2_in(11),
      Q => \^gpio_o\(11),
      R => p_0_in
    );
\gpio_o_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(15),
      D => p_2_in(12),
      Q => \^gpio_o\(12),
      R => p_0_in
    );
\gpio_o_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(15),
      D => p_2_in(13),
      Q => \^gpio_o\(13),
      R => p_0_in
    );
\gpio_o_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(15),
      D => p_2_in(14),
      Q => \^gpio_o\(14),
      R => p_0_in
    );
\gpio_o_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(15),
      D => p_2_in(15),
      Q => \^gpio_o\(15),
      R => p_0_in
    );
\gpio_o_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(23),
      D => p_2_in(16),
      Q => \^gpio_o\(16),
      R => p_0_in
    );
\gpio_o_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(23),
      D => p_2_in(17),
      Q => \^gpio_o\(17),
      R => p_0_in
    );
\gpio_o_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(23),
      D => p_2_in(18),
      Q => \^gpio_o\(18),
      R => p_0_in
    );
\gpio_o_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(23),
      D => p_2_in(19),
      Q => \^gpio_o\(19),
      R => p_0_in
    );
\gpio_o_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => p_1_in(7),
      D => p_2_in(1),
      Q => \^gpio_o\(1),
      S => p_0_in
    );
\gpio_o_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(23),
      D => p_2_in(20),
      Q => \^gpio_o\(20),
      R => p_0_in
    );
\gpio_o_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(23),
      D => p_2_in(21),
      Q => \^gpio_o\(21),
      R => p_0_in
    );
\gpio_o_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(23),
      D => p_2_in(22),
      Q => \^gpio_o\(22),
      R => p_0_in
    );
\gpio_o_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(23),
      D => p_2_in(23),
      Q => \^gpio_o\(23),
      R => p_0_in
    );
\gpio_o_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(31),
      D => p_2_in(24),
      Q => \^gpio_o\(24),
      R => p_0_in
    );
\gpio_o_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(31),
      D => p_2_in(25),
      Q => \^gpio_o\(25),
      R => p_0_in
    );
\gpio_o_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(31),
      D => p_2_in(26),
      Q => \^gpio_o\(26),
      R => p_0_in
    );
\gpio_o_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(31),
      D => p_2_in(27),
      Q => \^gpio_o\(27),
      R => p_0_in
    );
\gpio_o_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(31),
      D => p_2_in(28),
      Q => \^gpio_o\(28),
      R => p_0_in
    );
\gpio_o_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(31),
      D => p_2_in(29),
      Q => \^gpio_o\(29),
      R => p_0_in
    );
\gpio_o_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(7),
      D => p_2_in(2),
      Q => \^gpio_o\(2),
      R => p_0_in
    );
\gpio_o_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(31),
      D => p_2_in(30),
      Q => \^gpio_o\(30),
      R => p_0_in
    );
\gpio_o_reg[31]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => p_1_in(31),
      D => p_2_in(31),
      Q => \^gpio_o\(31),
      S => p_0_in
    );
\gpio_o_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(7),
      D => p_2_in(3),
      Q => \^gpio_o\(3),
      R => p_0_in
    );
\gpio_o_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(7),
      D => p_2_in(4),
      Q => \^gpio_o\(4),
      R => p_0_in
    );
\gpio_o_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(7),
      D => p_2_in(5),
      Q => \^gpio_o\(5),
      R => p_0_in
    );
\gpio_o_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(7),
      D => p_2_in(6),
      Q => \^gpio_o\(6),
      R => p_0_in
    );
\gpio_o_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(7),
      D => p_2_in(7),
      Q => \^gpio_o\(7),
      R => p_0_in
    );
\gpio_o_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(15),
      D => p_2_in(8),
      Q => \^gpio_o\(8),
      R => p_0_in
    );
\gpio_o_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(15),
      D => p_2_in(9),
      Q => \^gpio_o\(9),
      R => p_0_in
    );
gpio_sync: entity work.icyradio_axi_gpio_1_0_xpm_cdc_array_single
     port map (
      dest_clk => aclk,
      dest_out(31 downto 0) => gpio_i_sync(31 downto 0),
      src_clk => '0',
      src_in(31 downto 0) => gpio_i(31 downto 0)
    );
\gpio_t[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5CF0"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => \^gpio_t\(0),
      I2 => s_axi_wdata(0),
      I3 => s_axi_awaddr(1),
      O => \gpio_t[0]_i_1_n_0\
    );
\gpio_t[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5CF0"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => \^gpio_t\(10),
      I2 => s_axi_wdata(10),
      I3 => s_axi_awaddr(1),
      O => \gpio_t[10]_i_1_n_0\
    );
\gpio_t[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5CF0"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => \^gpio_t\(11),
      I2 => s_axi_wdata(11),
      I3 => s_axi_awaddr(1),
      O => \gpio_t[11]_i_1_n_0\
    );
\gpio_t[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5CF0"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => \^gpio_t\(12),
      I2 => s_axi_wdata(12),
      I3 => s_axi_awaddr(1),
      O => \gpio_t[12]_i_1_n_0\
    );
\gpio_t[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5CF0"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => \^gpio_t\(13),
      I2 => s_axi_wdata(13),
      I3 => s_axi_awaddr(1),
      O => \gpio_t[13]_i_1_n_0\
    );
\gpio_t[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5CF0"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => \^gpio_t\(14),
      I2 => s_axi_wdata(14),
      I3 => s_axi_awaddr(1),
      O => \gpio_t[14]_i_1_n_0\
    );
\gpio_t[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008880"
    )
        port map (
      I0 => \^s_axi_awready_reg_0\,
      I1 => s_axi_wstrb(1),
      I2 => s_axi_awaddr(1),
      I3 => s_axi_awaddr(0),
      I4 => s_axi_awaddr(2),
      O => \gpio_t[15]_i_1_n_0\
    );
\gpio_t[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5CF0"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => \^gpio_t\(15),
      I2 => s_axi_wdata(15),
      I3 => s_axi_awaddr(1),
      O => \gpio_t[15]_i_2_n_0\
    );
\gpio_t[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5CF0"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => \^gpio_t\(16),
      I2 => s_axi_wdata(16),
      I3 => s_axi_awaddr(1),
      O => \gpio_t[16]_i_1_n_0\
    );
\gpio_t[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5CF0"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => \^gpio_t\(17),
      I2 => s_axi_wdata(17),
      I3 => s_axi_awaddr(1),
      O => \gpio_t[17]_i_1_n_0\
    );
\gpio_t[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5CF0"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => \^gpio_t\(18),
      I2 => s_axi_wdata(18),
      I3 => s_axi_awaddr(1),
      O => \gpio_t[18]_i_1_n_0\
    );
\gpio_t[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5CF0"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => \^gpio_t\(19),
      I2 => s_axi_wdata(19),
      I3 => s_axi_awaddr(1),
      O => \gpio_t[19]_i_1_n_0\
    );
\gpio_t[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5CF0"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => \^gpio_t\(1),
      I2 => s_axi_wdata(1),
      I3 => s_axi_awaddr(1),
      O => \gpio_t[1]_i_1_n_0\
    );
\gpio_t[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5CF0"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => \^gpio_t\(20),
      I2 => s_axi_wdata(20),
      I3 => s_axi_awaddr(1),
      O => \gpio_t[20]_i_1_n_0\
    );
\gpio_t[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5CF0"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => \^gpio_t\(21),
      I2 => s_axi_wdata(21),
      I3 => s_axi_awaddr(1),
      O => \gpio_t[21]_i_1_n_0\
    );
\gpio_t[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5CF0"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => \^gpio_t\(22),
      I2 => s_axi_wdata(22),
      I3 => s_axi_awaddr(1),
      O => \gpio_t[22]_i_1_n_0\
    );
\gpio_t[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008880"
    )
        port map (
      I0 => \^s_axi_awready_reg_0\,
      I1 => s_axi_wstrb(2),
      I2 => s_axi_awaddr(1),
      I3 => s_axi_awaddr(0),
      I4 => s_axi_awaddr(2),
      O => \gpio_t[23]_i_1_n_0\
    );
\gpio_t[23]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5CF0"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => \^gpio_t\(23),
      I2 => s_axi_wdata(23),
      I3 => s_axi_awaddr(1),
      O => \gpio_t[23]_i_2_n_0\
    );
\gpio_t[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5CF0"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => \^gpio_t\(24),
      I2 => s_axi_wdata(24),
      I3 => s_axi_awaddr(1),
      O => \gpio_t[24]_i_1_n_0\
    );
\gpio_t[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5CF0"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => \^gpio_t\(25),
      I2 => s_axi_wdata(25),
      I3 => s_axi_awaddr(1),
      O => \gpio_t[25]_i_1_n_0\
    );
\gpio_t[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5CF0"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => \^gpio_t\(26),
      I2 => s_axi_wdata(26),
      I3 => s_axi_awaddr(1),
      O => \gpio_t[26]_i_1_n_0\
    );
\gpio_t[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5CF0"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => \^gpio_t\(27),
      I2 => s_axi_wdata(27),
      I3 => s_axi_awaddr(1),
      O => \gpio_t[27]_i_1_n_0\
    );
\gpio_t[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5CF0"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => \^gpio_t\(28),
      I2 => s_axi_wdata(28),
      I3 => s_axi_awaddr(1),
      O => \gpio_t[28]_i_1_n_0\
    );
\gpio_t[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5CF0"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => \^gpio_t\(29),
      I2 => s_axi_wdata(29),
      I3 => s_axi_awaddr(1),
      O => \gpio_t[29]_i_1_n_0\
    );
\gpio_t[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5CF0"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => \^gpio_t\(2),
      I2 => s_axi_wdata(2),
      I3 => s_axi_awaddr(1),
      O => \gpio_t[2]_i_1_n_0\
    );
\gpio_t[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5CF0"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => \^gpio_t\(30),
      I2 => s_axi_wdata(30),
      I3 => s_axi_awaddr(1),
      O => \gpio_t[30]_i_1_n_0\
    );
\gpio_t[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008880"
    )
        port map (
      I0 => \^s_axi_awready_reg_0\,
      I1 => s_axi_wstrb(3),
      I2 => s_axi_awaddr(1),
      I3 => s_axi_awaddr(0),
      I4 => s_axi_awaddr(2),
      O => \gpio_t[31]_i_1_n_0\
    );
\gpio_t[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5CF0"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => \^gpio_t\(31),
      I2 => s_axi_wdata(31),
      I3 => s_axi_awaddr(1),
      O => \gpio_t[31]_i_2_n_0\
    );
\gpio_t[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5CF0"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => \^gpio_t\(3),
      I2 => s_axi_wdata(3),
      I3 => s_axi_awaddr(1),
      O => \gpio_t[3]_i_1_n_0\
    );
\gpio_t[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5CF0"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => \^gpio_t\(4),
      I2 => s_axi_wdata(4),
      I3 => s_axi_awaddr(1),
      O => \gpio_t[4]_i_1_n_0\
    );
\gpio_t[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5CF0"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => \^gpio_t\(5),
      I2 => s_axi_wdata(5),
      I3 => s_axi_awaddr(1),
      O => \gpio_t[5]_i_1_n_0\
    );
\gpio_t[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5CF0"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => \^gpio_t\(6),
      I2 => s_axi_wdata(6),
      I3 => s_axi_awaddr(1),
      O => \gpio_t[6]_i_1_n_0\
    );
\gpio_t[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008880"
    )
        port map (
      I0 => \^s_axi_awready_reg_0\,
      I1 => s_axi_wstrb(0),
      I2 => s_axi_awaddr(1),
      I3 => s_axi_awaddr(0),
      I4 => s_axi_awaddr(2),
      O => \gpio_t[7]_i_1_n_0\
    );
\gpio_t[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5CF0"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => \^gpio_t\(7),
      I2 => s_axi_wdata(7),
      I3 => s_axi_awaddr(1),
      O => \gpio_t[7]_i_2_n_0\
    );
\gpio_t[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5CF0"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => \^gpio_t\(8),
      I2 => s_axi_wdata(8),
      I3 => s_axi_awaddr(1),
      O => \gpio_t[8]_i_1_n_0\
    );
\gpio_t[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5CF0"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => \^gpio_t\(9),
      I2 => s_axi_wdata(9),
      I3 => s_axi_awaddr(1),
      O => \gpio_t[9]_i_1_n_0\
    );
\gpio_t_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gpio_t[7]_i_1_n_0\,
      D => \gpio_t[0]_i_1_n_0\,
      Q => \^gpio_t\(0),
      R => p_0_in
    );
\gpio_t_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gpio_t[15]_i_1_n_0\,
      D => \gpio_t[10]_i_1_n_0\,
      Q => \^gpio_t\(10),
      R => p_0_in
    );
\gpio_t_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gpio_t[15]_i_1_n_0\,
      D => \gpio_t[11]_i_1_n_0\,
      Q => \^gpio_t\(11),
      R => p_0_in
    );
\gpio_t_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gpio_t[15]_i_1_n_0\,
      D => \gpio_t[12]_i_1_n_0\,
      Q => \^gpio_t\(12),
      R => p_0_in
    );
\gpio_t_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gpio_t[15]_i_1_n_0\,
      D => \gpio_t[13]_i_1_n_0\,
      Q => \^gpio_t\(13),
      R => p_0_in
    );
\gpio_t_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gpio_t[15]_i_1_n_0\,
      D => \gpio_t[14]_i_1_n_0\,
      Q => \^gpio_t\(14),
      R => p_0_in
    );
\gpio_t_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gpio_t[15]_i_1_n_0\,
      D => \gpio_t[15]_i_2_n_0\,
      Q => \^gpio_t\(15),
      R => p_0_in
    );
\gpio_t_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gpio_t[23]_i_1_n_0\,
      D => \gpio_t[16]_i_1_n_0\,
      Q => \^gpio_t\(16),
      R => p_0_in
    );
\gpio_t_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gpio_t[23]_i_1_n_0\,
      D => \gpio_t[17]_i_1_n_0\,
      Q => \^gpio_t\(17),
      R => p_0_in
    );
\gpio_t_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gpio_t[23]_i_1_n_0\,
      D => \gpio_t[18]_i_1_n_0\,
      Q => \^gpio_t\(18),
      R => p_0_in
    );
\gpio_t_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gpio_t[23]_i_1_n_0\,
      D => \gpio_t[19]_i_1_n_0\,
      Q => \^gpio_t\(19),
      R => p_0_in
    );
\gpio_t_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gpio_t[7]_i_1_n_0\,
      D => \gpio_t[1]_i_1_n_0\,
      Q => \^gpio_t\(1),
      R => p_0_in
    );
\gpio_t_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gpio_t[23]_i_1_n_0\,
      D => \gpio_t[20]_i_1_n_0\,
      Q => \^gpio_t\(20),
      R => p_0_in
    );
\gpio_t_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gpio_t[23]_i_1_n_0\,
      D => \gpio_t[21]_i_1_n_0\,
      Q => \^gpio_t\(21),
      R => p_0_in
    );
\gpio_t_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gpio_t[23]_i_1_n_0\,
      D => \gpio_t[22]_i_1_n_0\,
      Q => \^gpio_t\(22),
      R => p_0_in
    );
\gpio_t_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gpio_t[23]_i_1_n_0\,
      D => \gpio_t[23]_i_2_n_0\,
      Q => \^gpio_t\(23),
      R => p_0_in
    );
\gpio_t_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gpio_t[31]_i_1_n_0\,
      D => \gpio_t[24]_i_1_n_0\,
      Q => \^gpio_t\(24),
      R => p_0_in
    );
\gpio_t_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gpio_t[31]_i_1_n_0\,
      D => \gpio_t[25]_i_1_n_0\,
      Q => \^gpio_t\(25),
      R => p_0_in
    );
\gpio_t_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gpio_t[31]_i_1_n_0\,
      D => \gpio_t[26]_i_1_n_0\,
      Q => \^gpio_t\(26),
      R => p_0_in
    );
\gpio_t_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gpio_t[31]_i_1_n_0\,
      D => \gpio_t[27]_i_1_n_0\,
      Q => \^gpio_t\(27),
      R => p_0_in
    );
\gpio_t_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gpio_t[31]_i_1_n_0\,
      D => \gpio_t[28]_i_1_n_0\,
      Q => \^gpio_t\(28),
      R => p_0_in
    );
\gpio_t_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gpio_t[31]_i_1_n_0\,
      D => \gpio_t[29]_i_1_n_0\,
      Q => \^gpio_t\(29),
      R => p_0_in
    );
\gpio_t_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gpio_t[7]_i_1_n_0\,
      D => \gpio_t[2]_i_1_n_0\,
      Q => \^gpio_t\(2),
      R => p_0_in
    );
\gpio_t_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gpio_t[31]_i_1_n_0\,
      D => \gpio_t[30]_i_1_n_0\,
      Q => \^gpio_t\(30),
      R => p_0_in
    );
\gpio_t_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gpio_t[31]_i_1_n_0\,
      D => \gpio_t[31]_i_2_n_0\,
      Q => \^gpio_t\(31),
      R => p_0_in
    );
\gpio_t_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gpio_t[7]_i_1_n_0\,
      D => \gpio_t[3]_i_1_n_0\,
      Q => \^gpio_t\(3),
      R => p_0_in
    );
\gpio_t_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gpio_t[7]_i_1_n_0\,
      D => \gpio_t[4]_i_1_n_0\,
      Q => \^gpio_t\(4),
      R => p_0_in
    );
\gpio_t_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gpio_t[7]_i_1_n_0\,
      D => \gpio_t[5]_i_1_n_0\,
      Q => \^gpio_t\(5),
      R => p_0_in
    );
\gpio_t_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gpio_t[7]_i_1_n_0\,
      D => \gpio_t[6]_i_1_n_0\,
      Q => \^gpio_t\(6),
      R => p_0_in
    );
\gpio_t_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gpio_t[7]_i_1_n_0\,
      D => \gpio_t[7]_i_2_n_0\,
      Q => \^gpio_t\(7),
      R => p_0_in
    );
\gpio_t_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \gpio_t[15]_i_1_n_0\,
      D => \gpio_t[8]_i_1_n_0\,
      Q => \^gpio_t\(8),
      S => p_0_in
    );
\gpio_t_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gpio_t[15]_i_1_n_0\,
      D => \gpio_t[9]_i_1_n_0\,
      Q => \^gpio_t\(9),
      R => p_0_in
    );
s_axi_arready_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^s_axi_rvalid_reg_0\,
      O => s_axi_arready
    );
s_axi_awready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0808000800000000"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      I2 => \^s_axi_awready_reg_0\,
      I3 => \^s_axi_bvalid\,
      I4 => s_axi_bready,
      I5 => aresetn,
      O => s_axi_awready_i_1_n_0
    );
s_axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axi_awready_i_1_n_0,
      Q => \^s_axi_awready_reg_0\,
      R => '0'
    );
s_axi_bvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F200"
    )
        port map (
      I0 => \^s_axi_bvalid\,
      I1 => s_axi_bready,
      I2 => \^s_axi_awready_reg_0\,
      I3 => aresetn,
      O => s_axi_bvalid_i_1_n_0
    );
s_axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axi_bvalid_i_1_n_0,
      Q => \^s_axi_bvalid\,
      R => '0'
    );
\s_axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFA0AFA0A0A0"
    )
        port map (
      I0 => \^gpio_o\(0),
      I1 => gpio_i_sync(0),
      I2 => s_axi_araddr(2),
      I3 => \^gpio_t\(0),
      I4 => s_axi_araddr(0),
      I5 => s_axi_araddr(1),
      O => \s_axi_rdata[0]_i_1_n_0\
    );
\s_axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFA0AFA0A0A0"
    )
        port map (
      I0 => \^gpio_o\(10),
      I1 => gpio_i_sync(10),
      I2 => s_axi_araddr(2),
      I3 => \^gpio_t\(10),
      I4 => s_axi_araddr(0),
      I5 => s_axi_araddr(1),
      O => \s_axi_rdata[10]_i_1_n_0\
    );
\s_axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFA0AFA0A0A0"
    )
        port map (
      I0 => \^gpio_o\(11),
      I1 => gpio_i_sync(11),
      I2 => s_axi_araddr(2),
      I3 => \^gpio_t\(11),
      I4 => s_axi_araddr(0),
      I5 => s_axi_araddr(1),
      O => \s_axi_rdata[11]_i_1_n_0\
    );
\s_axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFA0AFA0A0A0"
    )
        port map (
      I0 => \^gpio_o\(12),
      I1 => gpio_i_sync(12),
      I2 => s_axi_araddr(2),
      I3 => \^gpio_t\(12),
      I4 => s_axi_araddr(0),
      I5 => s_axi_araddr(1),
      O => \s_axi_rdata[12]_i_1_n_0\
    );
\s_axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFA0AFA0A0A0"
    )
        port map (
      I0 => \^gpio_o\(13),
      I1 => gpio_i_sync(13),
      I2 => s_axi_araddr(2),
      I3 => \^gpio_t\(13),
      I4 => s_axi_araddr(0),
      I5 => s_axi_araddr(1),
      O => \s_axi_rdata[13]_i_1_n_0\
    );
\s_axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFA0AFA0A0A0"
    )
        port map (
      I0 => \^gpio_o\(14),
      I1 => gpio_i_sync(14),
      I2 => s_axi_araddr(2),
      I3 => \^gpio_t\(14),
      I4 => s_axi_araddr(0),
      I5 => s_axi_araddr(1),
      O => \s_axi_rdata[14]_i_1_n_0\
    );
\s_axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFA0AFA0A0A0"
    )
        port map (
      I0 => \^gpio_o\(15),
      I1 => gpio_i_sync(15),
      I2 => s_axi_araddr(2),
      I3 => \^gpio_t\(15),
      I4 => s_axi_araddr(0),
      I5 => s_axi_araddr(1),
      O => \s_axi_rdata[15]_i_1_n_0\
    );
\s_axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAAAAAF0F0F0FF"
    )
        port map (
      I0 => \^gpio_o\(16),
      I1 => gpio_i_sync(16),
      I2 => \^gpio_t\(16),
      I3 => s_axi_araddr(0),
      I4 => s_axi_araddr(1),
      I5 => s_axi_araddr(2),
      O => \s_axi_rdata[16]_i_1_n_0\
    );
\s_axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFA0AFA0A0A0"
    )
        port map (
      I0 => \^gpio_o\(17),
      I1 => gpio_i_sync(17),
      I2 => s_axi_araddr(2),
      I3 => \^gpio_t\(17),
      I4 => s_axi_araddr(0),
      I5 => s_axi_araddr(1),
      O => \s_axi_rdata[17]_i_1_n_0\
    );
\s_axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFA0AFA0A0A0"
    )
        port map (
      I0 => \^gpio_o\(18),
      I1 => gpio_i_sync(18),
      I2 => s_axi_araddr(2),
      I3 => \^gpio_t\(18),
      I4 => s_axi_araddr(0),
      I5 => s_axi_araddr(1),
      O => \s_axi_rdata[18]_i_1_n_0\
    );
\s_axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFA0AFA0A0A0"
    )
        port map (
      I0 => \^gpio_o\(19),
      I1 => gpio_i_sync(19),
      I2 => s_axi_araddr(2),
      I3 => \^gpio_t\(19),
      I4 => s_axi_araddr(0),
      I5 => s_axi_araddr(1),
      O => \s_axi_rdata[19]_i_1_n_0\
    );
\s_axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFA0AFA0A0A0"
    )
        port map (
      I0 => \^gpio_o\(1),
      I1 => gpio_i_sync(1),
      I2 => s_axi_araddr(2),
      I3 => \^gpio_t\(1),
      I4 => s_axi_araddr(0),
      I5 => s_axi_araddr(1),
      O => \s_axi_rdata[1]_i_1_n_0\
    );
\s_axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFA0AFA0A0A0"
    )
        port map (
      I0 => \^gpio_o\(20),
      I1 => gpio_i_sync(20),
      I2 => s_axi_araddr(2),
      I3 => \^gpio_t\(20),
      I4 => s_axi_araddr(0),
      I5 => s_axi_araddr(1),
      O => \s_axi_rdata[20]_i_1_n_0\
    );
\s_axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFA0AFA0A0A0"
    )
        port map (
      I0 => \^gpio_o\(21),
      I1 => gpio_i_sync(21),
      I2 => s_axi_araddr(2),
      I3 => \^gpio_t\(21),
      I4 => s_axi_araddr(0),
      I5 => s_axi_araddr(1),
      O => \s_axi_rdata[21]_i_1_n_0\
    );
\s_axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFA0AFA0A0A0"
    )
        port map (
      I0 => \^gpio_o\(22),
      I1 => gpio_i_sync(22),
      I2 => s_axi_araddr(2),
      I3 => \^gpio_t\(22),
      I4 => s_axi_araddr(0),
      I5 => s_axi_araddr(1),
      O => \s_axi_rdata[22]_i_1_n_0\
    );
\s_axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFA0AFA0A0A0"
    )
        port map (
      I0 => \^gpio_o\(23),
      I1 => gpio_i_sync(23),
      I2 => s_axi_araddr(2),
      I3 => \^gpio_t\(23),
      I4 => s_axi_araddr(0),
      I5 => s_axi_araddr(1),
      O => \s_axi_rdata[23]_i_1_n_0\
    );
\s_axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFA0AFA0A0A0"
    )
        port map (
      I0 => \^gpio_o\(24),
      I1 => gpio_i_sync(24),
      I2 => s_axi_araddr(2),
      I3 => \^gpio_t\(24),
      I4 => s_axi_araddr(0),
      I5 => s_axi_araddr(1),
      O => \s_axi_rdata[24]_i_1_n_0\
    );
\s_axi_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFA0AFA0A0A0"
    )
        port map (
      I0 => \^gpio_o\(25),
      I1 => gpio_i_sync(25),
      I2 => s_axi_araddr(2),
      I3 => \^gpio_t\(25),
      I4 => s_axi_araddr(0),
      I5 => s_axi_araddr(1),
      O => \s_axi_rdata[25]_i_1_n_0\
    );
\s_axi_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFA0AFA0A0A0"
    )
        port map (
      I0 => \^gpio_o\(26),
      I1 => gpio_i_sync(26),
      I2 => s_axi_araddr(2),
      I3 => \^gpio_t\(26),
      I4 => s_axi_araddr(0),
      I5 => s_axi_araddr(1),
      O => \s_axi_rdata[26]_i_1_n_0\
    );
\s_axi_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFA0AFA0A0A0"
    )
        port map (
      I0 => \^gpio_o\(27),
      I1 => gpio_i_sync(27),
      I2 => s_axi_araddr(2),
      I3 => \^gpio_t\(27),
      I4 => s_axi_araddr(0),
      I5 => s_axi_araddr(1),
      O => \s_axi_rdata[27]_i_1_n_0\
    );
\s_axi_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFA0AFA0A0A0"
    )
        port map (
      I0 => \^gpio_o\(28),
      I1 => gpio_i_sync(28),
      I2 => s_axi_araddr(2),
      I3 => \^gpio_t\(28),
      I4 => s_axi_araddr(0),
      I5 => s_axi_araddr(1),
      O => \s_axi_rdata[28]_i_1_n_0\
    );
\s_axi_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFA0AFA0A0A0"
    )
        port map (
      I0 => \^gpio_o\(29),
      I1 => gpio_i_sync(29),
      I2 => s_axi_araddr(2),
      I3 => \^gpio_t\(29),
      I4 => s_axi_araddr(0),
      I5 => s_axi_araddr(1),
      O => \s_axi_rdata[29]_i_1_n_0\
    );
\s_axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFA0AFA0A0A0"
    )
        port map (
      I0 => \^gpio_o\(2),
      I1 => gpio_i_sync(2),
      I2 => s_axi_araddr(2),
      I3 => \^gpio_t\(2),
      I4 => s_axi_araddr(0),
      I5 => s_axi_araddr(1),
      O => \s_axi_rdata[2]_i_1_n_0\
    );
\s_axi_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFA0AFA0A0A0"
    )
        port map (
      I0 => \^gpio_o\(30),
      I1 => gpio_i_sync(30),
      I2 => s_axi_araddr(2),
      I3 => \^gpio_t\(30),
      I4 => s_axi_araddr(0),
      I5 => s_axi_araddr(1),
      O => \s_axi_rdata[30]_i_1_n_0\
    );
\s_axi_rdata[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D0FF"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \^s_axi_rvalid_reg_0\,
      I2 => s_axi_rready,
      I3 => aresetn,
      O => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \^s_axi_rvalid_reg_0\,
      O => \s_axi_rdata[31]_i_2_n_0\
    );
\s_axi_rdata[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFA0AFA0A0A0"
    )
        port map (
      I0 => \^gpio_o\(31),
      I1 => gpio_i_sync(31),
      I2 => s_axi_araddr(2),
      I3 => \^gpio_t\(31),
      I4 => s_axi_araddr(0),
      I5 => s_axi_araddr(1),
      O => \s_axi_rdata[31]_i_3_n_0\
    );
\s_axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFA0AFA0A0A0"
    )
        port map (
      I0 => \^gpio_o\(3),
      I1 => gpio_i_sync(3),
      I2 => s_axi_araddr(2),
      I3 => \^gpio_t\(3),
      I4 => s_axi_araddr(0),
      I5 => s_axi_araddr(1),
      O => \s_axi_rdata[3]_i_1_n_0\
    );
\s_axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFA0AFA0A0A0"
    )
        port map (
      I0 => \^gpio_o\(4),
      I1 => gpio_i_sync(4),
      I2 => s_axi_araddr(2),
      I3 => \^gpio_t\(4),
      I4 => s_axi_araddr(0),
      I5 => s_axi_araddr(1),
      O => \s_axi_rdata[4]_i_1_n_0\
    );
\s_axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFA0AFA0A0A0"
    )
        port map (
      I0 => \^gpio_o\(5),
      I1 => gpio_i_sync(5),
      I2 => s_axi_araddr(2),
      I3 => \^gpio_t\(5),
      I4 => s_axi_araddr(0),
      I5 => s_axi_araddr(1),
      O => \s_axi_rdata[5]_i_1_n_0\
    );
\s_axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFA0AFA0A0A0"
    )
        port map (
      I0 => \^gpio_o\(6),
      I1 => gpio_i_sync(6),
      I2 => s_axi_araddr(2),
      I3 => \^gpio_t\(6),
      I4 => s_axi_araddr(0),
      I5 => s_axi_araddr(1),
      O => \s_axi_rdata[6]_i_1_n_0\
    );
\s_axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFA0AFA0A0A0"
    )
        port map (
      I0 => \^gpio_o\(7),
      I1 => gpio_i_sync(7),
      I2 => s_axi_araddr(2),
      I3 => \^gpio_t\(7),
      I4 => s_axi_araddr(0),
      I5 => s_axi_araddr(1),
      O => \s_axi_rdata[7]_i_1_n_0\
    );
\s_axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFA0AFA0A0A0"
    )
        port map (
      I0 => \^gpio_o\(8),
      I1 => gpio_i_sync(8),
      I2 => s_axi_araddr(2),
      I3 => \^gpio_t\(8),
      I4 => s_axi_araddr(0),
      I5 => s_axi_araddr(1),
      O => \s_axi_rdata[8]_i_1_n_0\
    );
\s_axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFA0AFA0A0A0"
    )
        port map (
      I0 => \^gpio_o\(9),
      I1 => gpio_i_sync(9),
      I2 => s_axi_araddr(2),
      I3 => \^gpio_t\(9),
      I4 => s_axi_araddr(0),
      I5 => s_axi_araddr(1),
      O => \s_axi_rdata[9]_i_1_n_0\
    );
\s_axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => \s_axi_rdata[0]_i_1_n_0\,
      Q => s_axi_rdata(0),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => \s_axi_rdata[10]_i_1_n_0\,
      Q => s_axi_rdata(10),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => \s_axi_rdata[11]_i_1_n_0\,
      Q => s_axi_rdata(11),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => \s_axi_rdata[12]_i_1_n_0\,
      Q => s_axi_rdata(12),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => \s_axi_rdata[13]_i_1_n_0\,
      Q => s_axi_rdata(13),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => \s_axi_rdata[14]_i_1_n_0\,
      Q => s_axi_rdata(14),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => \s_axi_rdata[15]_i_1_n_0\,
      Q => s_axi_rdata(15),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => \s_axi_rdata[16]_i_1_n_0\,
      Q => s_axi_rdata(16),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => \s_axi_rdata[17]_i_1_n_0\,
      Q => s_axi_rdata(17),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => \s_axi_rdata[18]_i_1_n_0\,
      Q => s_axi_rdata(18),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => \s_axi_rdata[19]_i_1_n_0\,
      Q => s_axi_rdata(19),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => \s_axi_rdata[1]_i_1_n_0\,
      Q => s_axi_rdata(1),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => \s_axi_rdata[20]_i_1_n_0\,
      Q => s_axi_rdata(20),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => \s_axi_rdata[21]_i_1_n_0\,
      Q => s_axi_rdata(21),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => \s_axi_rdata[22]_i_1_n_0\,
      Q => s_axi_rdata(22),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => \s_axi_rdata[23]_i_1_n_0\,
      Q => s_axi_rdata(23),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => \s_axi_rdata[24]_i_1_n_0\,
      Q => s_axi_rdata(24),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => \s_axi_rdata[25]_i_1_n_0\,
      Q => s_axi_rdata(25),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => \s_axi_rdata[26]_i_1_n_0\,
      Q => s_axi_rdata(26),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => \s_axi_rdata[27]_i_1_n_0\,
      Q => s_axi_rdata(27),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => \s_axi_rdata[28]_i_1_n_0\,
      Q => s_axi_rdata(28),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => \s_axi_rdata[29]_i_1_n_0\,
      Q => s_axi_rdata(29),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => \s_axi_rdata[2]_i_1_n_0\,
      Q => s_axi_rdata(2),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => \s_axi_rdata[30]_i_1_n_0\,
      Q => s_axi_rdata(30),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => \s_axi_rdata[31]_i_3_n_0\,
      Q => s_axi_rdata(31),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => \s_axi_rdata[3]_i_1_n_0\,
      Q => s_axi_rdata(3),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => \s_axi_rdata[4]_i_1_n_0\,
      Q => s_axi_rdata(4),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => \s_axi_rdata[5]_i_1_n_0\,
      Q => s_axi_rdata(5),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => \s_axi_rdata[6]_i_1_n_0\,
      Q => s_axi_rdata(6),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => \s_axi_rdata[7]_i_1_n_0\,
      Q => s_axi_rdata(7),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => \s_axi_rdata[8]_i_1_n_0\,
      Q => s_axi_rdata(8),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => \s_axi_rdata[9]_i_1_n_0\,
      Q => s_axi_rdata(9),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
s_axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5C00"
    )
        port map (
      I0 => s_axi_rready,
      I1 => s_axi_arvalid,
      I2 => \^s_axi_rvalid_reg_0\,
      I3 => aresetn,
      O => s_axi_rvalid_i_1_n_0
    );
s_axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axi_rvalid_i_1_n_0,
      Q => \^s_axi_rvalid_reg_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_gpio_1_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
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
    s_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio_t : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of icyradio_axi_gpio_1_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of icyradio_axi_gpio_1_0 : entity is "icyradio_axi_gpio_1_0,axi_gpio,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of icyradio_axi_gpio_1_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of icyradio_axi_gpio_1_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of icyradio_axi_gpio_1_0 : entity is "axi_gpio,Vivado 2023.2";
end icyradio_axi_gpio_1_0;

architecture STRUCTURE of icyradio_axi_gpio_1_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
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
  attribute X_INTERFACE_PARAMETER of s_axi_rready : signal is "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 125000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN icyradio_axi_pcie_0_0_axi_aclk_out, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi RVALID";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi WVALID";
  attribute X_INTERFACE_INFO of gpio_i : signal is "xilinx.com:interface:gpio:1.0 gpio TRI_I";
  attribute X_INTERFACE_INFO of gpio_o : signal is "xilinx.com:interface:gpio:1.0 gpio TRI_O";
  attribute X_INTERFACE_INFO of gpio_t : signal is "xilinx.com:interface:gpio:1.0 gpio TRI_T";
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
  s_axi_awready <= \^s_axi_wready\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_wready <= \^s_axi_wready\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.icyradio_axi_gpio_1_0_axi_gpio
     port map (
      aclk => aclk,
      aresetn => aresetn,
      gpio_i(31 downto 0) => gpio_i(31 downto 0),
      gpio_o(31 downto 0) => gpio_o(31 downto 0),
      gpio_t(31 downto 0) => gpio_t(31 downto 0),
      s_axi_araddr(2 downto 0) => s_axi_araddr(4 downto 2),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(2 downto 0) => s_axi_awaddr(4 downto 2),
      s_axi_awready_reg_0 => \^s_axi_wready\,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid_reg_0 => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
