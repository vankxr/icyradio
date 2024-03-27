-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Wed Mar 27 12:08:26 2024
-- Host        : node4-dev running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/joao/icyradio/firmware/a100t/icyradio.gen/sources_1/bd/icyradio/ip/icyradio_axi_i2s_0/icyradio_axi_i2s_0_sim_netlist.vhdl
-- Design      : icyradio_axi_i2s_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_i2s_0_xpm_cdc_single is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of icyradio_axi_i2s_0_xpm_cdc_single : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of icyradio_axi_i2s_0_xpm_cdc_single : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_axi_i2s_0_xpm_cdc_single : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of icyradio_axi_i2s_0_xpm_cdc_single : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of icyradio_axi_i2s_0_xpm_cdc_single : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of icyradio_axi_i2s_0_xpm_cdc_single : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of icyradio_axi_i2s_0_xpm_cdc_single : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of icyradio_axi_i2s_0_xpm_cdc_single : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of icyradio_axi_i2s_0_xpm_cdc_single : entity is "SINGLE";
end icyradio_axi_i2s_0_xpm_cdc_single;

architecture STRUCTURE of icyradio_axi_i2s_0_xpm_cdc_single is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \icyradio_axi_i2s_0_xpm_cdc_single__parameterized0\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \icyradio_axi_i2s_0_xpm_cdc_single__parameterized0\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \icyradio_axi_i2s_0_xpm_cdc_single__parameterized0\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \icyradio_axi_i2s_0_xpm_cdc_single__parameterized0\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \icyradio_axi_i2s_0_xpm_cdc_single__parameterized0\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \icyradio_axi_i2s_0_xpm_cdc_single__parameterized0\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \icyradio_axi_i2s_0_xpm_cdc_single__parameterized0\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \icyradio_axi_i2s_0_xpm_cdc_single__parameterized0\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \icyradio_axi_i2s_0_xpm_cdc_single__parameterized0\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \icyradio_axi_i2s_0_xpm_cdc_single__parameterized0\ : entity is "SINGLE";
end \icyradio_axi_i2s_0_xpm_cdc_single__parameterized0\;

architecture STRUCTURE of \icyradio_axi_i2s_0_xpm_cdc_single__parameterized0\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(1);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \icyradio_axi_i2s_0_xpm_cdc_single__parameterized0__3\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \icyradio_axi_i2s_0_xpm_cdc_single__parameterized0__3\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \icyradio_axi_i2s_0_xpm_cdc_single__parameterized0__3\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \icyradio_axi_i2s_0_xpm_cdc_single__parameterized0__3\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \icyradio_axi_i2s_0_xpm_cdc_single__parameterized0__3\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \icyradio_axi_i2s_0_xpm_cdc_single__parameterized0__3\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \icyradio_axi_i2s_0_xpm_cdc_single__parameterized0__3\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \icyradio_axi_i2s_0_xpm_cdc_single__parameterized0__3\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \icyradio_axi_i2s_0_xpm_cdc_single__parameterized0__3\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \icyradio_axi_i2s_0_xpm_cdc_single__parameterized0__3\ : entity is "SINGLE";
end \icyradio_axi_i2s_0_xpm_cdc_single__parameterized0__3\;

architecture STRUCTURE of \icyradio_axi_i2s_0_xpm_cdc_single__parameterized0__3\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(1);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \icyradio_axi_i2s_0_xpm_cdc_single__parameterized0__4\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \icyradio_axi_i2s_0_xpm_cdc_single__parameterized0__4\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \icyradio_axi_i2s_0_xpm_cdc_single__parameterized0__4\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \icyradio_axi_i2s_0_xpm_cdc_single__parameterized0__4\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \icyradio_axi_i2s_0_xpm_cdc_single__parameterized0__4\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \icyradio_axi_i2s_0_xpm_cdc_single__parameterized0__4\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \icyradio_axi_i2s_0_xpm_cdc_single__parameterized0__4\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \icyradio_axi_i2s_0_xpm_cdc_single__parameterized0__4\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \icyradio_axi_i2s_0_xpm_cdc_single__parameterized0__4\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \icyradio_axi_i2s_0_xpm_cdc_single__parameterized0__4\ : entity is "SINGLE";
end \icyradio_axi_i2s_0_xpm_cdc_single__parameterized0__4\;

architecture STRUCTURE of \icyradio_axi_i2s_0_xpm_cdc_single__parameterized0__4\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(1);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_i2s_0_xpm_cdc_handshake is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC_VECTOR ( 47 downto 0 );
    src_send : in STD_LOGIC;
    src_rcv : out STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC_VECTOR ( 47 downto 0 );
    dest_req : out STD_LOGIC;
    dest_ack : in STD_LOGIC
  );
  attribute DEST_EXT_HSK : integer;
  attribute DEST_EXT_HSK of icyradio_axi_i2s_0_xpm_cdc_handshake : entity is 0;
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of icyradio_axi_i2s_0_xpm_cdc_handshake : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of icyradio_axi_i2s_0_xpm_cdc_handshake : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_axi_i2s_0_xpm_cdc_handshake : entity is "xpm_cdc_handshake";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of icyradio_axi_i2s_0_xpm_cdc_handshake : entity is 1;
  attribute SRC_SYNC_FF : integer;
  attribute SRC_SYNC_FF of icyradio_axi_i2s_0_xpm_cdc_handshake : entity is 2;
  attribute VERSION : integer;
  attribute VERSION of icyradio_axi_i2s_0_xpm_cdc_handshake : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of icyradio_axi_i2s_0_xpm_cdc_handshake : entity is 48;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of icyradio_axi_i2s_0_xpm_cdc_handshake : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of icyradio_axi_i2s_0_xpm_cdc_handshake : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of icyradio_axi_i2s_0_xpm_cdc_handshake : entity is "HANDSHAKE";
end icyradio_axi_i2s_0_xpm_cdc_handshake;

architecture STRUCTURE of icyradio_axi_i2s_0_xpm_cdc_handshake is
  signal dest_hsdata_en : STD_LOGIC;
  attribute DIRECT_ENABLE : boolean;
  attribute DIRECT_ENABLE of dest_hsdata_en : signal is std.standard.true;
  signal dest_hsdata_ff : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of dest_hsdata_ff : signal is "true";
  attribute xpm_cdc of dest_hsdata_ff : signal is "HANDSHAKE";
  signal dest_req_ff : STD_LOGIC;
  signal dest_req_nxt : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal src_hsdata_ff : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal src_sendd_ff : STD_LOGIC;
  attribute KEEP : string;
  attribute KEEP of \dest_hsdata_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[0]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[10]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[10]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[11]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[11]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[12]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[12]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[13]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[13]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[14]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[14]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[15]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[15]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[16]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[16]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[17]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[17]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[18]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[18]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[19]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[19]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[1]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[20]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[20]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[21]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[21]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[22]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[22]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[23]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[23]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[24]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[24]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[25]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[25]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[26]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[26]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[27]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[27]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[28]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[28]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[29]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[29]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[2]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[30]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[30]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[31]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[31]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[32]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[32]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[33]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[33]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[34]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[34]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[35]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[35]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[36]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[36]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[37]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[37]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[38]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[38]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[39]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[39]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[3]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[40]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[40]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[41]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[41]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[42]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[42]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[43]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[43]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[44]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[44]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[45]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[45]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[46]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[46]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[47]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[47]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[4]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[4]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[5]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[5]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[6]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[6]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[7]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[7]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[8]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[8]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[9]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[9]\ : label is "HANDSHAKE";
  attribute DEST_SYNC_FF of xpm_cdc_single_dest2src_inst : label is 2;
  attribute INIT_SYNC_FF of xpm_cdc_single_dest2src_inst : label is 1;
  attribute SIM_ASSERT_CHK of xpm_cdc_single_dest2src_inst : label is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of xpm_cdc_single_dest2src_inst : label is 0;
  attribute VERSION of xpm_cdc_single_dest2src_inst : label is 0;
  attribute XPM_CDC of xpm_cdc_single_dest2src_inst : label is "SINGLE";
  attribute XPM_MODULE of xpm_cdc_single_dest2src_inst : label is "TRUE";
  attribute DEST_SYNC_FF of xpm_cdc_single_src2dest_inst : label is 4;
  attribute INIT_SYNC_FF of xpm_cdc_single_src2dest_inst : label is 1;
  attribute SIM_ASSERT_CHK of xpm_cdc_single_src2dest_inst : label is 0;
  attribute SRC_INPUT_REG of xpm_cdc_single_src2dest_inst : label is 0;
  attribute VERSION of xpm_cdc_single_src2dest_inst : label is 0;
  attribute XPM_CDC of xpm_cdc_single_src2dest_inst : label is "SINGLE";
  attribute XPM_MODULE of xpm_cdc_single_src2dest_inst : label is "TRUE";
begin
  dest_out(47 downto 0) <= dest_hsdata_ff(47 downto 0);
\dest_hsdata_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(0),
      Q => dest_hsdata_ff(0),
      R => '0'
    );
\dest_hsdata_ff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(10),
      Q => dest_hsdata_ff(10),
      R => '0'
    );
\dest_hsdata_ff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(11),
      Q => dest_hsdata_ff(11),
      R => '0'
    );
\dest_hsdata_ff_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(12),
      Q => dest_hsdata_ff(12),
      R => '0'
    );
\dest_hsdata_ff_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(13),
      Q => dest_hsdata_ff(13),
      R => '0'
    );
\dest_hsdata_ff_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(14),
      Q => dest_hsdata_ff(14),
      R => '0'
    );
\dest_hsdata_ff_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(15),
      Q => dest_hsdata_ff(15),
      R => '0'
    );
\dest_hsdata_ff_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(16),
      Q => dest_hsdata_ff(16),
      R => '0'
    );
\dest_hsdata_ff_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(17),
      Q => dest_hsdata_ff(17),
      R => '0'
    );
\dest_hsdata_ff_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(18),
      Q => dest_hsdata_ff(18),
      R => '0'
    );
\dest_hsdata_ff_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(19),
      Q => dest_hsdata_ff(19),
      R => '0'
    );
\dest_hsdata_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(1),
      Q => dest_hsdata_ff(1),
      R => '0'
    );
\dest_hsdata_ff_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(20),
      Q => dest_hsdata_ff(20),
      R => '0'
    );
\dest_hsdata_ff_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(21),
      Q => dest_hsdata_ff(21),
      R => '0'
    );
\dest_hsdata_ff_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(22),
      Q => dest_hsdata_ff(22),
      R => '0'
    );
\dest_hsdata_ff_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(23),
      Q => dest_hsdata_ff(23),
      R => '0'
    );
\dest_hsdata_ff_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(24),
      Q => dest_hsdata_ff(24),
      R => '0'
    );
\dest_hsdata_ff_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(25),
      Q => dest_hsdata_ff(25),
      R => '0'
    );
\dest_hsdata_ff_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(26),
      Q => dest_hsdata_ff(26),
      R => '0'
    );
\dest_hsdata_ff_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(27),
      Q => dest_hsdata_ff(27),
      R => '0'
    );
\dest_hsdata_ff_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(28),
      Q => dest_hsdata_ff(28),
      R => '0'
    );
\dest_hsdata_ff_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(29),
      Q => dest_hsdata_ff(29),
      R => '0'
    );
\dest_hsdata_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(2),
      Q => dest_hsdata_ff(2),
      R => '0'
    );
\dest_hsdata_ff_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(30),
      Q => dest_hsdata_ff(30),
      R => '0'
    );
\dest_hsdata_ff_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(31),
      Q => dest_hsdata_ff(31),
      R => '0'
    );
\dest_hsdata_ff_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(32),
      Q => dest_hsdata_ff(32),
      R => '0'
    );
\dest_hsdata_ff_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(33),
      Q => dest_hsdata_ff(33),
      R => '0'
    );
\dest_hsdata_ff_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(34),
      Q => dest_hsdata_ff(34),
      R => '0'
    );
\dest_hsdata_ff_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(35),
      Q => dest_hsdata_ff(35),
      R => '0'
    );
\dest_hsdata_ff_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(36),
      Q => dest_hsdata_ff(36),
      R => '0'
    );
\dest_hsdata_ff_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(37),
      Q => dest_hsdata_ff(37),
      R => '0'
    );
\dest_hsdata_ff_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(38),
      Q => dest_hsdata_ff(38),
      R => '0'
    );
\dest_hsdata_ff_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(39),
      Q => dest_hsdata_ff(39),
      R => '0'
    );
\dest_hsdata_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(3),
      Q => dest_hsdata_ff(3),
      R => '0'
    );
\dest_hsdata_ff_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(40),
      Q => dest_hsdata_ff(40),
      R => '0'
    );
\dest_hsdata_ff_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(41),
      Q => dest_hsdata_ff(41),
      R => '0'
    );
\dest_hsdata_ff_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(42),
      Q => dest_hsdata_ff(42),
      R => '0'
    );
\dest_hsdata_ff_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(43),
      Q => dest_hsdata_ff(43),
      R => '0'
    );
\dest_hsdata_ff_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(44),
      Q => dest_hsdata_ff(44),
      R => '0'
    );
\dest_hsdata_ff_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(45),
      Q => dest_hsdata_ff(45),
      R => '0'
    );
\dest_hsdata_ff_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(46),
      Q => dest_hsdata_ff(46),
      R => '0'
    );
\dest_hsdata_ff_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(47),
      Q => dest_hsdata_ff(47),
      R => '0'
    );
\dest_hsdata_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(4),
      Q => dest_hsdata_ff(4),
      R => '0'
    );
\dest_hsdata_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(5),
      Q => dest_hsdata_ff(5),
      R => '0'
    );
\dest_hsdata_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(6),
      Q => dest_hsdata_ff(6),
      R => '0'
    );
\dest_hsdata_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(7),
      Q => dest_hsdata_ff(7),
      R => '0'
    );
\dest_hsdata_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(8),
      Q => dest_hsdata_ff(8),
      R => '0'
    );
\dest_hsdata_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(9),
      Q => dest_hsdata_ff(9),
      R => '0'
    );
dest_req_ext_ff_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dest_req_nxt,
      I1 => dest_req_ff,
      O => dest_hsdata_en
    );
dest_req_ext_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => dest_hsdata_en,
      Q => dest_req,
      R => '0'
    );
dest_req_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => dest_req_nxt,
      Q => dest_req_ff,
      R => '0'
    );
\src_hsdata_ff[47]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => src_sendd_ff,
      O => p_0_in
    );
\src_hsdata_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(0),
      Q => src_hsdata_ff(0),
      R => '0'
    );
\src_hsdata_ff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(10),
      Q => src_hsdata_ff(10),
      R => '0'
    );
\src_hsdata_ff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(11),
      Q => src_hsdata_ff(11),
      R => '0'
    );
\src_hsdata_ff_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(12),
      Q => src_hsdata_ff(12),
      R => '0'
    );
\src_hsdata_ff_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(13),
      Q => src_hsdata_ff(13),
      R => '0'
    );
\src_hsdata_ff_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(14),
      Q => src_hsdata_ff(14),
      R => '0'
    );
\src_hsdata_ff_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(15),
      Q => src_hsdata_ff(15),
      R => '0'
    );
\src_hsdata_ff_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(16),
      Q => src_hsdata_ff(16),
      R => '0'
    );
\src_hsdata_ff_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(17),
      Q => src_hsdata_ff(17),
      R => '0'
    );
\src_hsdata_ff_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(18),
      Q => src_hsdata_ff(18),
      R => '0'
    );
\src_hsdata_ff_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(19),
      Q => src_hsdata_ff(19),
      R => '0'
    );
\src_hsdata_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(1),
      Q => src_hsdata_ff(1),
      R => '0'
    );
\src_hsdata_ff_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(20),
      Q => src_hsdata_ff(20),
      R => '0'
    );
\src_hsdata_ff_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(21),
      Q => src_hsdata_ff(21),
      R => '0'
    );
\src_hsdata_ff_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(22),
      Q => src_hsdata_ff(22),
      R => '0'
    );
\src_hsdata_ff_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(23),
      Q => src_hsdata_ff(23),
      R => '0'
    );
\src_hsdata_ff_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(24),
      Q => src_hsdata_ff(24),
      R => '0'
    );
\src_hsdata_ff_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(25),
      Q => src_hsdata_ff(25),
      R => '0'
    );
\src_hsdata_ff_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(26),
      Q => src_hsdata_ff(26),
      R => '0'
    );
\src_hsdata_ff_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(27),
      Q => src_hsdata_ff(27),
      R => '0'
    );
\src_hsdata_ff_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(28),
      Q => src_hsdata_ff(28),
      R => '0'
    );
\src_hsdata_ff_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(29),
      Q => src_hsdata_ff(29),
      R => '0'
    );
\src_hsdata_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(2),
      Q => src_hsdata_ff(2),
      R => '0'
    );
\src_hsdata_ff_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(30),
      Q => src_hsdata_ff(30),
      R => '0'
    );
\src_hsdata_ff_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(31),
      Q => src_hsdata_ff(31),
      R => '0'
    );
\src_hsdata_ff_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(32),
      Q => src_hsdata_ff(32),
      R => '0'
    );
\src_hsdata_ff_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(33),
      Q => src_hsdata_ff(33),
      R => '0'
    );
\src_hsdata_ff_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(34),
      Q => src_hsdata_ff(34),
      R => '0'
    );
\src_hsdata_ff_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(35),
      Q => src_hsdata_ff(35),
      R => '0'
    );
\src_hsdata_ff_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(36),
      Q => src_hsdata_ff(36),
      R => '0'
    );
\src_hsdata_ff_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(37),
      Q => src_hsdata_ff(37),
      R => '0'
    );
\src_hsdata_ff_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(38),
      Q => src_hsdata_ff(38),
      R => '0'
    );
\src_hsdata_ff_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(39),
      Q => src_hsdata_ff(39),
      R => '0'
    );
\src_hsdata_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(3),
      Q => src_hsdata_ff(3),
      R => '0'
    );
\src_hsdata_ff_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(40),
      Q => src_hsdata_ff(40),
      R => '0'
    );
\src_hsdata_ff_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(41),
      Q => src_hsdata_ff(41),
      R => '0'
    );
\src_hsdata_ff_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(42),
      Q => src_hsdata_ff(42),
      R => '0'
    );
\src_hsdata_ff_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(43),
      Q => src_hsdata_ff(43),
      R => '0'
    );
\src_hsdata_ff_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(44),
      Q => src_hsdata_ff(44),
      R => '0'
    );
\src_hsdata_ff_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(45),
      Q => src_hsdata_ff(45),
      R => '0'
    );
\src_hsdata_ff_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(46),
      Q => src_hsdata_ff(46),
      R => '0'
    );
\src_hsdata_ff_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(47),
      Q => src_hsdata_ff(47),
      R => '0'
    );
\src_hsdata_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(4),
      Q => src_hsdata_ff(4),
      R => '0'
    );
\src_hsdata_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(5),
      Q => src_hsdata_ff(5),
      R => '0'
    );
\src_hsdata_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(6),
      Q => src_hsdata_ff(6),
      R => '0'
    );
\src_hsdata_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(7),
      Q => src_hsdata_ff(7),
      R => '0'
    );
\src_hsdata_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(8),
      Q => src_hsdata_ff(8),
      R => '0'
    );
\src_hsdata_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(9),
      Q => src_hsdata_ff(9),
      R => '0'
    );
src_sendd_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_send,
      Q => src_sendd_ff,
      R => '0'
    );
xpm_cdc_single_dest2src_inst: entity work.\icyradio_axi_i2s_0_xpm_cdc_single__parameterized0__3\
     port map (
      dest_clk => src_clk,
      dest_out => src_rcv,
      src_clk => '0',
      src_in => dest_req_ff
    );
xpm_cdc_single_src2dest_inst: entity work.icyradio_axi_i2s_0_xpm_cdc_single
     port map (
      dest_clk => dest_clk,
      dest_out => dest_req_nxt,
      src_clk => '0',
      src_in => src_sendd_ff
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \icyradio_axi_i2s_0_xpm_cdc_handshake__parameterized0\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    src_send : in STD_LOGIC;
    src_rcv : out STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    dest_req : out STD_LOGIC;
    dest_ack : in STD_LOGIC
  );
  attribute DEST_EXT_HSK : integer;
  attribute DEST_EXT_HSK of \icyradio_axi_i2s_0_xpm_cdc_handshake__parameterized0\ : entity is 0;
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \icyradio_axi_i2s_0_xpm_cdc_handshake__parameterized0\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \icyradio_axi_i2s_0_xpm_cdc_handshake__parameterized0\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \icyradio_axi_i2s_0_xpm_cdc_handshake__parameterized0\ : entity is "xpm_cdc_handshake";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \icyradio_axi_i2s_0_xpm_cdc_handshake__parameterized0\ : entity is 1;
  attribute SRC_SYNC_FF : integer;
  attribute SRC_SYNC_FF of \icyradio_axi_i2s_0_xpm_cdc_handshake__parameterized0\ : entity is 2;
  attribute VERSION : integer;
  attribute VERSION of \icyradio_axi_i2s_0_xpm_cdc_handshake__parameterized0\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \icyradio_axi_i2s_0_xpm_cdc_handshake__parameterized0\ : entity is 2;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \icyradio_axi_i2s_0_xpm_cdc_handshake__parameterized0\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \icyradio_axi_i2s_0_xpm_cdc_handshake__parameterized0\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \icyradio_axi_i2s_0_xpm_cdc_handshake__parameterized0\ : entity is "HANDSHAKE";
end \icyradio_axi_i2s_0_xpm_cdc_handshake__parameterized0\;

architecture STRUCTURE of \icyradio_axi_i2s_0_xpm_cdc_handshake__parameterized0\ is
  signal dest_hsdata_en : STD_LOGIC;
  attribute DIRECT_ENABLE : boolean;
  attribute DIRECT_ENABLE of dest_hsdata_en : signal is std.standard.true;
  signal dest_hsdata_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of dest_hsdata_ff : signal is "true";
  attribute xpm_cdc of dest_hsdata_ff : signal is "HANDSHAKE";
  signal dest_req_ff : STD_LOGIC;
  signal dest_req_nxt : STD_LOGIC;
  signal src_hsdata_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \src_hsdata_ff[0]_i_1_n_0\ : STD_LOGIC;
  signal \src_hsdata_ff[1]_i_1_n_0\ : STD_LOGIC;
  signal src_sendd_ff : STD_LOGIC;
  attribute KEEP : string;
  attribute KEEP of \dest_hsdata_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[0]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[1]\ : label is "HANDSHAKE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_hsdata_ff[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \src_hsdata_ff[1]_i_1\ : label is "soft_lutpair0";
  attribute DEST_SYNC_FF of xpm_cdc_single_dest2src_inst : label is 2;
  attribute INIT_SYNC_FF of xpm_cdc_single_dest2src_inst : label is 1;
  attribute SIM_ASSERT_CHK of xpm_cdc_single_dest2src_inst : label is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of xpm_cdc_single_dest2src_inst : label is 0;
  attribute VERSION of xpm_cdc_single_dest2src_inst : label is 0;
  attribute XPM_CDC of xpm_cdc_single_dest2src_inst : label is "SINGLE";
  attribute XPM_MODULE of xpm_cdc_single_dest2src_inst : label is "TRUE";
  attribute DEST_SYNC_FF of xpm_cdc_single_src2dest_inst : label is 2;
  attribute INIT_SYNC_FF of xpm_cdc_single_src2dest_inst : label is 1;
  attribute SIM_ASSERT_CHK of xpm_cdc_single_src2dest_inst : label is 0;
  attribute SRC_INPUT_REG of xpm_cdc_single_src2dest_inst : label is 0;
  attribute VERSION of xpm_cdc_single_src2dest_inst : label is 0;
  attribute XPM_CDC of xpm_cdc_single_src2dest_inst : label is "SINGLE";
  attribute XPM_MODULE of xpm_cdc_single_src2dest_inst : label is "TRUE";
begin
  dest_out(1 downto 0) <= dest_hsdata_ff(1 downto 0);
\dest_hsdata_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(0),
      Q => dest_hsdata_ff(0),
      R => '0'
    );
\dest_hsdata_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(1),
      Q => dest_hsdata_ff(1),
      R => '0'
    );
dest_req_ext_ff_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dest_req_nxt,
      I1 => dest_req_ff,
      O => dest_hsdata_en
    );
dest_req_ext_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => dest_hsdata_en,
      Q => dest_req,
      R => '0'
    );
dest_req_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => dest_req_nxt,
      Q => dest_req_ff,
      R => '0'
    );
\src_hsdata_ff[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => src_in(0),
      I1 => src_sendd_ff,
      I2 => src_hsdata_ff(0),
      O => \src_hsdata_ff[0]_i_1_n_0\
    );
\src_hsdata_ff[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => src_in(1),
      I1 => src_sendd_ff,
      I2 => src_hsdata_ff(1),
      O => \src_hsdata_ff[1]_i_1_n_0\
    );
\src_hsdata_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => \src_hsdata_ff[0]_i_1_n_0\,
      Q => src_hsdata_ff(0),
      R => '0'
    );
\src_hsdata_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => \src_hsdata_ff[1]_i_1_n_0\,
      Q => src_hsdata_ff(1),
      R => '0'
    );
src_sendd_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_send,
      Q => src_sendd_ff,
      R => '0'
    );
xpm_cdc_single_dest2src_inst: entity work.\icyradio_axi_i2s_0_xpm_cdc_single__parameterized0\
     port map (
      dest_clk => src_clk,
      dest_out => src_rcv,
      src_clk => '0',
      src_in => dest_req_ff
    );
xpm_cdc_single_src2dest_inst: entity work.\icyradio_axi_i2s_0_xpm_cdc_single__parameterized0__4\
     port map (
      dest_clk => dest_clk,
      dest_out => dest_req_nxt,
      src_clk => '0',
      src_in => src_sendd_ff
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_i2s_0_axi_i2s is
  port (
    s_axi_rvalid_reg_0 : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 20 downto 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    i2s_bclk_reg_0 : out STD_LOGIC;
    m_axis_tvalid_reg_0 : out STD_LOGIC;
    s_axis_tready_reg_0 : out STD_LOGIC;
    i2s_sdata_out : out STD_LOGIC;
    i2s_lrclk : out STD_LOGIC;
    i2s_mclk : out STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    aclk : in STD_LOGIC;
    i2s_src_clk : in STD_LOGIC;
    i2s_src_resetn : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 19 downto 0 );
    i2s_sdata_in : in STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_bready : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tready : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_axi_i2s_0_axi_i2s : entity is "axi_i2s";
end icyradio_axi_i2s_0_axi_i2s;

architecture STRUCTURE of icyradio_axi_i2s_0_axi_i2s is
  signal \FSM_sequential_i2s_fsm_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_i2s_fsm_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_i2s_fsm_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_i2s_fsm_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_i2s_fsm_state[2]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_i2s_fsm_state[2]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_sequential_i2s_fsm_state[2]_i_12_n_0\ : STD_LOGIC;
  signal \FSM_sequential_i2s_fsm_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_i2s_fsm_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_i2s_fsm_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_i2s_fsm_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_i2s_fsm_state[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_i2s_fsm_state[2]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_i2s_fsm_state[2]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_i2s_fsm_state[2]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_i2s_fsm_state[2]_i_9_n_0\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 31 downto 3 );
  signal i2s_bclk_div : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal i2s_bclk_div_a : STD_LOGIC;
  signal \i2s_bclk_div_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \i2s_bclk_div_cnt[7]_i_3_n_0\ : STD_LOGIC;
  signal i2s_bclk_div_cnt_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal i2s_bclk_i_1_n_0 : STD_LOGIC;
  signal i2s_bclk_i_3_n_0 : STD_LOGIC;
  signal i2s_bclk_i_4_n_0 : STD_LOGIC;
  signal i2s_bclk_i_5_n_0 : STD_LOGIC;
  signal i2s_bclk_i_6_n_0 : STD_LOGIC;
  signal \^i2s_bclk_reg_0\ : STD_LOGIC;
  signal \i2s_bclk_rising__0\ : STD_LOGIC;
  signal i2s_bclk_toggle : STD_LOGIC;
  signal i2s_bit_cnt : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \i2s_bit_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \i2s_bit_cnt[4]_i_4_n_0\ : STD_LOGIC;
  signal \i2s_bit_cnt[4]_i_5_n_0\ : STD_LOGIC;
  signal \i2s_bit_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \i2s_bit_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \i2s_bit_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \i2s_bit_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \i2s_bit_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal i2s_chan_bit_sz : STD_LOGIC;
  signal i2s_chan_bit_sz_a8_out : STD_LOGIC;
  signal \i2s_chan_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \i2s_chan_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \i2s_chan_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \i2s_chan_cnt[2]_i_2_n_0\ : STD_LOGIC;
  signal \i2s_chan_cnt[2]_i_3_n_0\ : STD_LOGIC;
  signal \i2s_chan_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \i2s_chan_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \i2s_chan_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal i2s_chan_en : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal i2s_chan_en_a : STD_LOGIC;
  signal i2s_chan_max : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal i2s_clk_div_en : STD_LOGIC;
  signal \i2s_clk_div_en_a__1\ : STD_LOGIC;
  signal i2s_clk_div_en_a_i_1_n_0 : STD_LOGIC;
  signal i2s_en : STD_LOGIC;
  signal \i2s_en_a__1\ : STD_LOGIC;
  signal i2s_en_a_i_1_n_0 : STD_LOGIC;
  signal \i2s_fsm_state__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal i2s_lb_en : STD_LOGIC;
  signal i2s_lb_en_a_i_1_n_0 : STD_LOGIC;
  signal i2s_lb_en_a_i_2_n_0 : STD_LOGIC;
  signal \^i2s_lrclk\ : STD_LOGIC;
  signal i2s_lrclk_div : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \i2s_lrclk_div_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \i2s_lrclk_div_cnt[0]_i_3_n_0\ : STD_LOGIC;
  signal i2s_lrclk_div_cnt_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \i2s_lrclk_div_cnt_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \i2s_lrclk_div_cnt_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \i2s_lrclk_div_cnt_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \i2s_lrclk_div_cnt_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \i2s_lrclk_div_cnt_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \i2s_lrclk_div_cnt_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \i2s_lrclk_div_cnt_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \i2s_lrclk_div_cnt_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \i2s_lrclk_div_cnt_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \i2s_lrclk_div_cnt_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \i2s_lrclk_div_cnt_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \i2s_lrclk_div_cnt_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \i2s_lrclk_div_cnt_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \i2s_lrclk_div_cnt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \i2s_lrclk_div_cnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \i2s_lrclk_div_cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \i2s_lrclk_div_cnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \i2s_lrclk_div_cnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \i2s_lrclk_div_cnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \i2s_lrclk_div_cnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \i2s_lrclk_div_cnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \i2s_lrclk_div_cnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \i2s_lrclk_div_cnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \i2s_lrclk_div_cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \i2s_lrclk_div_cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \i2s_lrclk_div_cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \i2s_lrclk_div_cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \i2s_lrclk_div_cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \i2s_lrclk_div_cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \i2s_lrclk_div_cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \i2s_lrclk_div_cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal i2s_lrclk_i_1_n_0 : STD_LOGIC;
  signal i2s_lrclk_toggle0 : STD_LOGIC;
  signal \i2s_lrclk_toggle0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i2s_lrclk_toggle0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i2s_lrclk_toggle0_carry__0_n_3\ : STD_LOGIC;
  signal i2s_lrclk_toggle0_carry_i_1_n_0 : STD_LOGIC;
  signal i2s_lrclk_toggle0_carry_i_2_n_0 : STD_LOGIC;
  signal i2s_lrclk_toggle0_carry_i_3_n_0 : STD_LOGIC;
  signal i2s_lrclk_toggle0_carry_i_4_n_0 : STD_LOGIC;
  signal i2s_lrclk_toggle0_carry_n_0 : STD_LOGIC;
  signal i2s_lrclk_toggle0_carry_n_1 : STD_LOGIC;
  signal i2s_lrclk_toggle0_carry_n_2 : STD_LOGIC;
  signal i2s_lrclk_toggle0_carry_n_3 : STD_LOGIC;
  signal \^i2s_mclk\ : STD_LOGIC;
  signal i2s_mclk_div : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal i2s_mclk_div_a : STD_LOGIC;
  signal \i2s_mclk_div_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \i2s_mclk_div_cnt[7]_i_3_n_0\ : STD_LOGIC;
  signal i2s_mclk_div_cnt_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal i2s_mclk_i_1_n_0 : STD_LOGIC;
  signal i2s_mclk_i_3_n_0 : STD_LOGIC;
  signal i2s_mclk_i_4_n_0 : STD_LOGIC;
  signal i2s_mclk_i_5_n_0 : STD_LOGIC;
  signal i2s_mclk_toggle : STD_LOGIC;
  signal i2s_pause : STD_LOGIC;
  signal i2s_pause_a_i_1_n_0 : STD_LOGIC;
  signal \i2s_paused1__4\ : STD_LOGIC;
  signal i2s_paused_a_i_1_n_0 : STD_LOGIC;
  signal i2s_paused_i_1_n_0 : STD_LOGIC;
  signal i2s_paused_i_2_n_0 : STD_LOGIC;
  signal i2s_sdata_in_q : STD_LOGIC;
  signal i2s_sdata_in_sr : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \i2s_sdata_in_sr[30]_i_1_n_0\ : STD_LOGIC;
  signal \i2s_sdata_in_sr[30]_i_3_n_0\ : STD_LOGIC;
  signal i2s_sdata_in_sr_bit_cnt : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \i2s_sdata_in_sr_bit_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_bit_cnt[5]_i_3_n_0\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_bit_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_bit_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_bit_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_bit_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_bit_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_reg_n_0_[0]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_reg_n_0_[10]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_reg_n_0_[11]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_reg_n_0_[12]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_reg_n_0_[13]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_reg_n_0_[14]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_reg_n_0_[15]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_reg_n_0_[16]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_reg_n_0_[17]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_reg_n_0_[18]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_reg_n_0_[19]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_reg_n_0_[1]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_reg_n_0_[20]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_reg_n_0_[21]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_reg_n_0_[22]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_reg_n_0_[23]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_reg_n_0_[24]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_reg_n_0_[25]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_reg_n_0_[26]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_reg_n_0_[27]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_reg_n_0_[28]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_reg_n_0_[29]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_reg_n_0_[2]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_reg_n_0_[30]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_reg_n_0_[3]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_reg_n_0_[4]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_reg_n_0_[5]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_reg_n_0_[6]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_reg_n_0_[7]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_reg_n_0_[8]\ : STD_LOGIC;
  signal \i2s_sdata_in_sr_reg_n_0_[9]\ : STD_LOGIC;
  signal i2s_sdata_out_int_i_1_n_0 : STD_LOGIC;
  signal i2s_sdata_out_int_i_3_n_0 : STD_LOGIC;
  signal i2s_sdata_out_int_reg_n_0 : STD_LOGIC;
  signal i2s_sdata_out_sr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal i2s_sdata_out_sr_bit_cnt : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_bit_cnt[0]_i_3_n_0\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_bit_cnt[0]_i_4_n_0\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_bit_cnt[0]_i_5_n_0\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_bit_cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_bit_cnt[5]_i_3_n_0\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_bit_cnt[5]_i_4_n_0\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_bit_cnt[5]_i_5_n_0\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_bit_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_bit_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_bit_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_bit_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_bit_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_bit_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_reg_n_0_[0]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_reg_n_0_[10]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_reg_n_0_[11]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_reg_n_0_[12]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_reg_n_0_[13]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_reg_n_0_[14]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_reg_n_0_[15]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_reg_n_0_[16]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_reg_n_0_[17]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_reg_n_0_[18]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_reg_n_0_[19]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_reg_n_0_[1]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_reg_n_0_[20]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_reg_n_0_[21]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_reg_n_0_[22]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_reg_n_0_[23]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_reg_n_0_[24]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_reg_n_0_[25]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_reg_n_0_[26]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_reg_n_0_[27]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_reg_n_0_[28]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_reg_n_0_[29]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_reg_n_0_[2]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_reg_n_0_[30]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_reg_n_0_[31]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_reg_n_0_[3]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_reg_n_0_[4]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_reg_n_0_[5]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_reg_n_0_[6]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_reg_n_0_[7]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_reg_n_0_[8]\ : STD_LOGIC;
  signal \i2s_sdata_out_sr_reg_n_0_[9]\ : STD_LOGIC;
  signal i2s_src_resetn_a_i_1_n_0 : STD_LOGIC;
  signal m_axis_tdata1_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \m_axis_tdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tvalid0__3\ : STD_LOGIC;
  signal \m_axis_tvalid1__6\ : STD_LOGIC;
  signal m_axis_tvalid_i_1_n_0 : STD_LOGIC;
  signal m_axis_tvalid_i_2_n_0 : STD_LOGIC;
  signal m_axis_tvalid_i_3_n_0 : STD_LOGIC;
  signal m_axis_tvalid_i_4_n_0 : STD_LOGIC;
  signal m_axis_tvalid_i_5_n_0 : STD_LOGIC;
  signal m_axis_tvalid_i_7_n_0 : STD_LOGIC;
  signal \^m_axis_tvalid_reg_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in_0 : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 15 downto 7 );
  signal p_27_in : STD_LOGIC;
  signal s_axi_awready0 : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal s_axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \s_axi_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[31]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal s_axi_rdata_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_rvalid_reg_0\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal s_axis_tready023_out : STD_LOGIC;
  signal s_axis_tready_i_1_n_0 : STD_LOGIC;
  signal s_axis_tready_i_3_n_0 : STD_LOGIC;
  signal s_axis_tready_i_4_n_0 : STD_LOGIC;
  signal s_axis_tready_i_5_n_0 : STD_LOGIC;
  signal s_axis_tready_i_6_n_0 : STD_LOGIC;
  signal \^s_axis_tready_reg_0\ : STD_LOGIC;
  signal sync_aclk_to_i2s_src_clk_dst_req : STD_LOGIC;
  signal sync_aclk_to_i2s_src_clk_in : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal sync_aclk_to_i2s_src_clk_out : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal sync_aclk_to_i2s_src_clk_src_done : STD_LOGIC;
  signal sync_aclk_to_i2s_src_clk_src_req : STD_LOGIC;
  signal sync_aclk_to_i2s_src_clk_src_req_i_1_n_0 : STD_LOGIC;
  signal sync_i2s_src_clk_to_aclk_dst_req : STD_LOGIC;
  signal sync_i2s_src_clk_to_aclk_in : STD_LOGIC_VECTOR ( 1 to 1 );
  signal sync_i2s_src_clk_to_aclk_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal sync_i2s_src_clk_to_aclk_src_done : STD_LOGIC;
  signal sync_i2s_src_clk_to_aclk_src_req : STD_LOGIC;
  signal sync_i2s_src_clk_to_aclk_src_req_i_1_n_0 : STD_LOGIC;
  signal \NLW_i2s_lrclk_div_cnt_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_i2s_lrclk_toggle0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_i2s_lrclk_toggle0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_i2s_lrclk_toggle0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_i2s_fsm_state[2]_i_12\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \FSM_sequential_i2s_fsm_state[2]_i_4\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FSM_sequential_i2s_fsm_state[2]_i_5\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \FSM_sequential_i2s_fsm_state[2]_i_7\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \FSM_sequential_i2s_fsm_state[2]_i_8\ : label is "soft_lutpair25";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_i2s_fsm_state_reg[0]\ : label is "I2S_FSM_STATE_RD_FIRST:000,I2S_FSM_STATE_WAIT_BCLK_SYNC:010,I2S_FSM_STATE_ACTIVE:011,I2S_FSM_STATE_RESET:100,I2S_FSM_STATE_WAIT_LRCLK_SYNC:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_i2s_fsm_state_reg[1]\ : label is "I2S_FSM_STATE_RD_FIRST:000,I2S_FSM_STATE_WAIT_BCLK_SYNC:010,I2S_FSM_STATE_ACTIVE:011,I2S_FSM_STATE_RESET:100,I2S_FSM_STATE_WAIT_LRCLK_SYNC:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_i2s_fsm_state_reg[2]\ : label is "I2S_FSM_STATE_RD_FIRST:000,I2S_FSM_STATE_WAIT_BCLK_SYNC:010,I2S_FSM_STATE_ACTIVE:011,I2S_FSM_STATE_RESET:100,I2S_FSM_STATE_WAIT_LRCLK_SYNC:001";
  attribute DEST_EXT_HSK : integer;
  attribute DEST_EXT_HSK of aclk_to_i2s_src_clk_sync : label is 0;
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of aclk_to_i2s_src_clk_sync : label is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of aclk_to_i2s_src_clk_sync : label is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of aclk_to_i2s_src_clk_sync : label is 1;
  attribute SRC_SYNC_FF : integer;
  attribute SRC_SYNC_FF of aclk_to_i2s_src_clk_sync : label is 2;
  attribute VERSION : integer;
  attribute VERSION of aclk_to_i2s_src_clk_sync : label is 0;
  attribute WIDTH : integer;
  attribute WIDTH of aclk_to_i2s_src_clk_sync : label is 48;
  attribute XPM_CDC : string;
  attribute XPM_CDC of aclk_to_i2s_src_clk_sync : label is "HANDSHAKE";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of aclk_to_i2s_src_clk_sync : label is "TRUE";
  attribute SOFT_HLUTNM of \i2s_bclk_div_cnt[0]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \i2s_bclk_div_cnt[1]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \i2s_bclk_div_cnt[2]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \i2s_bclk_div_cnt[3]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \i2s_bclk_div_cnt[4]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \i2s_bclk_div_cnt[6]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \i2s_bclk_div_cnt[7]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of i2s_bclk_i_1 : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of i2s_bclk_i_5 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \i2s_bit_cnt[0]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \i2s_bit_cnt[1]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \i2s_bit_cnt[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \i2s_bit_cnt[3]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \i2s_bit_cnt[4]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \i2s_chan_cnt[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \i2s_chan_cnt[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \i2s_chan_cnt[2]_i_3\ : label is "soft_lutpair3";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \i2s_lrclk_div_cnt_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \i2s_lrclk_div_cnt_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \i2s_lrclk_div_cnt_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \i2s_lrclk_div_cnt_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of i2s_lrclk_i_1 : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \i2s_mclk_div_cnt[1]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \i2s_mclk_div_cnt[2]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \i2s_mclk_div_cnt[3]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \i2s_mclk_div_cnt[4]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \i2s_mclk_div_cnt[6]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \i2s_mclk_div_cnt[7]_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of i2s_paused_a_i_1 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of i2s_paused_i_1 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[0]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[10]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[11]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[12]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[13]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[14]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[15]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[16]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[17]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[18]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[19]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[1]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[20]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[21]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[22]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[23]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[24]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[25]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[26]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[27]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[28]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[29]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[2]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[30]_i_2\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[3]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[4]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[5]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[6]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[7]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[8]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr[9]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr_bit_cnt[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr_bit_cnt[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr_bit_cnt[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr_bit_cnt[5]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \i2s_sdata_in_sr_bit_cnt[5]_i_3\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of i2s_sdata_out_INST_0 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \i2s_sdata_out_sr[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \i2s_sdata_out_sr_bit_cnt[0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \i2s_sdata_out_sr_bit_cnt[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \i2s_sdata_out_sr_bit_cnt[4]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \i2s_sdata_out_sr_bit_cnt[5]_i_3\ : label is "soft_lutpair18";
  attribute DEST_EXT_HSK of i2s_src_clk_to_aclk_sync : label is 0;
  attribute DEST_SYNC_FF of i2s_src_clk_to_aclk_sync : label is 2;
  attribute INIT_SYNC_FF of i2s_src_clk_to_aclk_sync : label is 1;
  attribute SIM_ASSERT_CHK of i2s_src_clk_to_aclk_sync : label is 1;
  attribute SRC_SYNC_FF of i2s_src_clk_to_aclk_sync : label is 2;
  attribute VERSION of i2s_src_clk_to_aclk_sync : label is 0;
  attribute WIDTH of i2s_src_clk_to_aclk_sync : label is 2;
  attribute XPM_CDC of i2s_src_clk_to_aclk_sync : label is "HANDSHAKE";
  attribute XPM_MODULE of i2s_src_clk_to_aclk_sync : label is "TRUE";
  attribute SOFT_HLUTNM of i2s_src_resetn_a_i_1 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \m_axis_tdata[0]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \m_axis_tdata[10]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \m_axis_tdata[11]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \m_axis_tdata[12]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \m_axis_tdata[13]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \m_axis_tdata[14]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \m_axis_tdata[15]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \m_axis_tdata[16]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \m_axis_tdata[17]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \m_axis_tdata[18]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \m_axis_tdata[19]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \m_axis_tdata[1]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \m_axis_tdata[20]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \m_axis_tdata[21]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \m_axis_tdata[22]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \m_axis_tdata[23]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \m_axis_tdata[24]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \m_axis_tdata[25]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \m_axis_tdata[26]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \m_axis_tdata[27]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \m_axis_tdata[28]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \m_axis_tdata[29]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \m_axis_tdata[2]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \m_axis_tdata[30]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \m_axis_tdata[31]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \m_axis_tdata[3]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \m_axis_tdata[4]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \m_axis_tdata[5]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \m_axis_tdata[6]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \m_axis_tdata[7]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \m_axis_tdata[8]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \m_axis_tdata[9]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of m_axis_tvalid_i_4 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of m_axis_tvalid_i_5 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of m_axis_tvalid_i_6 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of m_axis_tvalid_i_7 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of s_axi_arready_INST_0 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of s_axi_awready_i_2 : label is "soft_lutpair2";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s_axi_awready_reg : label is "xilinx.com:interface:aximm:1.0 s_axi AWREADY";
  attribute SOFT_HLUTNM of s_axi_bvalid_i_1 : label is "soft_lutpair2";
  attribute X_INTERFACE_INFO of s_axi_bvalid_reg : label is "xilinx.com:interface:aximm:1.0 s_axi BVALID";
  attribute SOFT_HLUTNM of \s_axi_rdata[16]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \s_axi_rdata[17]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \s_axi_rdata[18]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \s_axi_rdata[20]_i_1\ : label is "soft_lutpair16";
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
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[1]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[20]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[2]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[31]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[3]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[4]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[5]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[6]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[7]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[8]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[9]\ : label is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute SOFT_HLUTNM of s_axi_rvalid_i_1 : label is "soft_lutpair27";
  attribute X_INTERFACE_INFO of s_axi_rvalid_reg : label is "xilinx.com:interface:aximm:1.0 s_axi RVALID";
  attribute SOFT_HLUTNM of s_axis_tready_i_3 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of s_axis_tready_i_7 : label is "soft_lutpair6";
begin
  i2s_bclk_reg_0 <= \^i2s_bclk_reg_0\;
  i2s_lrclk <= \^i2s_lrclk\;
  i2s_mclk <= \^i2s_mclk\;
  m_axis_tvalid_reg_0 <= \^m_axis_tvalid_reg_0\;
  s_axi_bvalid <= \^s_axi_bvalid\;
  s_axi_rvalid_reg_0 <= \^s_axi_rvalid_reg_0\;
  s_axi_wready <= \^s_axi_wready\;
  s_axis_tready_reg_0 <= \^s_axis_tready_reg_0\;
\FSM_sequential_i2s_fsm_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAABF00"
    )
        port map (
      I0 => \FSM_sequential_i2s_fsm_state[0]_i_2_n_0\,
      I1 => \FSM_sequential_i2s_fsm_state[2]_i_3_n_0\,
      I2 => \i2s_fsm_state__0\(1),
      I3 => \i2s_fsm_state__0\(0),
      I4 => \FSM_sequential_i2s_fsm_state[2]_i_5_n_0\,
      I5 => \FSM_sequential_i2s_fsm_state[2]_i_6_n_0\,
      O => \FSM_sequential_i2s_fsm_state[0]_i_1_n_0\
    );
\FSM_sequential_i2s_fsm_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000555555D5"
    )
        port map (
      I0 => \i2s_fsm_state__0\(0),
      I1 => \i2s_bclk_rising__0\,
      I2 => \i2s_fsm_state__0\(1),
      I3 => \FSM_sequential_i2s_fsm_state[2]_i_8_n_0\,
      I4 => \FSM_sequential_i2s_fsm_state[0]_i_3_n_0\,
      I5 => \i2s_fsm_state__0\(2),
      O => \FSM_sequential_i2s_fsm_state[0]_i_2_n_0\
    );
\FSM_sequential_i2s_fsm_state[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => p_0_in_0,
      I1 => \i2s_sdata_out_sr_bit_cnt[0]_i_4_n_0\,
      I2 => \i2s_chan_cnt_reg_n_0_[2]\,
      I3 => \i2s_sdata_out_sr_bit_cnt[0]_i_5_n_0\,
      O => \FSM_sequential_i2s_fsm_state[0]_i_3_n_0\
    );
\FSM_sequential_i2s_fsm_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"05500550055030F0"
    )
        port map (
      I0 => \i2s_fsm_state__0\(2),
      I1 => \FSM_sequential_i2s_fsm_state[2]_i_3_n_0\,
      I2 => \i2s_fsm_state__0\(1),
      I3 => \i2s_fsm_state__0\(0),
      I4 => \FSM_sequential_i2s_fsm_state[2]_i_5_n_0\,
      I5 => \FSM_sequential_i2s_fsm_state[2]_i_6_n_0\,
      O => \FSM_sequential_i2s_fsm_state[1]_i_1_n_0\
    );
\FSM_sequential_i2s_fsm_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAFBAAAAAA08"
    )
        port map (
      I0 => \FSM_sequential_i2s_fsm_state[2]_i_2_n_0\,
      I1 => \FSM_sequential_i2s_fsm_state[2]_i_3_n_0\,
      I2 => \FSM_sequential_i2s_fsm_state[2]_i_4_n_0\,
      I3 => \FSM_sequential_i2s_fsm_state[2]_i_5_n_0\,
      I4 => \FSM_sequential_i2s_fsm_state[2]_i_6_n_0\,
      I5 => \i2s_fsm_state__0\(2),
      O => \FSM_sequential_i2s_fsm_state[2]_i_1_n_0\
    );
\FSM_sequential_i2s_fsm_state[2]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[1]\,
      I1 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[0]\,
      I2 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[2]\,
      I3 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[3]\,
      I4 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[4]\,
      I5 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[5]\,
      O => \FSM_sequential_i2s_fsm_state[2]_i_10_n_0\
    );
\FSM_sequential_i2s_fsm_state[2]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \i2s_fsm_state__0\(1),
      I1 => \i2s_fsm_state__0\(0),
      I2 => sync_i2s_src_clk_to_aclk_in(1),
      I3 => \^i2s_lrclk\,
      O => \FSM_sequential_i2s_fsm_state[2]_i_11_n_0\
    );
\FSM_sequential_i2s_fsm_state[2]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i2s_fsm_state__0\(1),
      I1 => \i2s_fsm_state__0\(0),
      O => \FSM_sequential_i2s_fsm_state[2]_i_12_n_0\
    );
\FSM_sequential_i2s_fsm_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEEEE0E0E0"
    )
        port map (
      I0 => \FSM_sequential_i2s_fsm_state[2]_i_7_n_0\,
      I1 => m_axis_tvalid_i_5_n_0,
      I2 => \FSM_sequential_i2s_fsm_state[2]_i_8_n_0\,
      I3 => p_0_in_0,
      I4 => \m_axis_tvalid1__6\,
      I5 => \FSM_sequential_i2s_fsm_state[2]_i_9_n_0\,
      O => \FSM_sequential_i2s_fsm_state[2]_i_2_n_0\
    );
\FSM_sequential_i2s_fsm_state[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44440000C0FF0000"
    )
        port map (
      I0 => \FSM_sequential_i2s_fsm_state[2]_i_10_n_0\,
      I1 => \m_axis_tvalid1__6\,
      I2 => p_0_in_0,
      I3 => \FSM_sequential_i2s_fsm_state[2]_i_8_n_0\,
      I4 => i2s_bclk_toggle,
      I5 => \^i2s_bclk_reg_0\,
      O => \FSM_sequential_i2s_fsm_state[2]_i_3_n_0\
    );
\FSM_sequential_i2s_fsm_state[2]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \i2s_fsm_state__0\(0),
      I1 => \i2s_fsm_state__0\(1),
      O => \FSM_sequential_i2s_fsm_state[2]_i_4_n_0\
    );
\FSM_sequential_i2s_fsm_state[2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0008"
    )
        port map (
      I0 => \FSM_sequential_i2s_fsm_state[2]_i_10_n_0\,
      I1 => m_axis_tready,
      I2 => \i2s_fsm_state__0\(1),
      I3 => \i2s_fsm_state__0\(0),
      I4 => \i2s_fsm_state__0\(2),
      O => \FSM_sequential_i2s_fsm_state[2]_i_5_n_0\
    );
\FSM_sequential_i2s_fsm_state[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000FF0080000000"
    )
        port map (
      I0 => \FSM_sequential_i2s_fsm_state[2]_i_11_n_0\,
      I1 => i2s_clk_div_en,
      I2 => i2s_lrclk_toggle0,
      I3 => i2s_bclk_toggle,
      I4 => \^i2s_bclk_reg_0\,
      I5 => \FSM_sequential_i2s_fsm_state[2]_i_12_n_0\,
      O => \FSM_sequential_i2s_fsm_state[2]_i_6_n_0\
    );
\FSM_sequential_i2s_fsm_state[2]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \i2s_fsm_state__0\(1),
      I1 => \i2s_fsm_state__0\(2),
      O => \FSM_sequential_i2s_fsm_state[2]_i_7_n_0\
    );
\FSM_sequential_i2s_fsm_state[2]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \i2s_paused1__4\,
      I1 => i2s_pause,
      I2 => \i2s_chan_cnt[2]_i_2_n_0\,
      O => \FSM_sequential_i2s_fsm_state[2]_i_8_n_0\
    );
\FSM_sequential_i2s_fsm_state[2]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFEF"
    )
        port map (
      I0 => \i2s_fsm_state__0\(2),
      I1 => \^i2s_bclk_reg_0\,
      I2 => i2s_bclk_i_3_n_0,
      I3 => i2s_bclk_i_4_n_0,
      I4 => i2s_bclk_i_5_n_0,
      I5 => i2s_bclk_i_6_n_0,
      O => \FSM_sequential_i2s_fsm_state[2]_i_9_n_0\
    );
\FSM_sequential_i2s_fsm_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => '1',
      D => \FSM_sequential_i2s_fsm_state[0]_i_1_n_0\,
      Q => \i2s_fsm_state__0\(0),
      R => m_axis_tvalid_i_1_n_0
    );
\FSM_sequential_i2s_fsm_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => '1',
      D => \FSM_sequential_i2s_fsm_state[1]_i_1_n_0\,
      Q => \i2s_fsm_state__0\(1),
      R => m_axis_tvalid_i_1_n_0
    );
\FSM_sequential_i2s_fsm_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => '1',
      D => \FSM_sequential_i2s_fsm_state[2]_i_1_n_0\,
      Q => \i2s_fsm_state__0\(2),
      R => m_axis_tvalid_i_1_n_0
    );
aclk_to_i2s_src_clk_sync: entity work.icyradio_axi_i2s_0_xpm_cdc_handshake
     port map (
      dest_ack => '0',
      dest_clk => i2s_src_clk,
      dest_out(47 downto 0) => sync_aclk_to_i2s_src_clk_out(47 downto 0),
      dest_req => sync_aclk_to_i2s_src_clk_dst_req,
      src_clk => aclk,
      src_in(47 downto 0) => sync_aclk_to_i2s_src_clk_in(47 downto 0),
      src_rcv => sync_aclk_to_i2s_src_clk_src_done,
      src_send => sync_aclk_to_i2s_src_clk_src_req
    );
\i2s_bclk_div_a[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => s_axi_awaddr(1),
      I2 => s_axi_awaddr(0),
      I3 => s_axi_awaddr(2),
      I4 => sync_aclk_to_i2s_src_clk_in(32),
      I5 => s_axi_wstrb(0),
      O => i2s_bclk_div_a
    );
\i2s_bclk_div_a_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_bclk_div_a,
      D => s_axi_wdata(0),
      Q => sync_aclk_to_i2s_src_clk_in(16),
      R => p_0_in
    );
\i2s_bclk_div_a_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_bclk_div_a,
      D => s_axi_wdata(1),
      Q => sync_aclk_to_i2s_src_clk_in(17),
      R => p_0_in
    );
\i2s_bclk_div_a_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_bclk_div_a,
      D => s_axi_wdata(2),
      Q => sync_aclk_to_i2s_src_clk_in(18),
      R => p_0_in
    );
\i2s_bclk_div_a_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_bclk_div_a,
      D => s_axi_wdata(3),
      Q => sync_aclk_to_i2s_src_clk_in(19),
      R => p_0_in
    );
\i2s_bclk_div_a_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_bclk_div_a,
      D => s_axi_wdata(4),
      Q => sync_aclk_to_i2s_src_clk_in(20),
      R => p_0_in
    );
\i2s_bclk_div_a_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_bclk_div_a,
      D => s_axi_wdata(5),
      Q => sync_aclk_to_i2s_src_clk_in(21),
      R => p_0_in
    );
\i2s_bclk_div_a_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_bclk_div_a,
      D => s_axi_wdata(6),
      Q => sync_aclk_to_i2s_src_clk_in(22),
      R => p_0_in
    );
\i2s_bclk_div_a_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_bclk_div_a,
      D => s_axi_wdata(7),
      Q => sync_aclk_to_i2s_src_clk_in(23),
      R => p_0_in
    );
\i2s_bclk_div_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i2s_bclk_div_cnt_reg(0),
      O => \p_0_in__0\(0)
    );
\i2s_bclk_div_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i2s_bclk_div_cnt_reg(0),
      I1 => i2s_bclk_div_cnt_reg(1),
      O => \p_0_in__0\(1)
    );
\i2s_bclk_div_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => i2s_bclk_div_cnt_reg(0),
      I1 => i2s_bclk_div_cnt_reg(1),
      I2 => i2s_bclk_div_cnt_reg(2),
      O => \p_0_in__0\(2)
    );
\i2s_bclk_div_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => i2s_bclk_div_cnt_reg(1),
      I1 => i2s_bclk_div_cnt_reg(0),
      I2 => i2s_bclk_div_cnt_reg(2),
      I3 => i2s_bclk_div_cnt_reg(3),
      O => \p_0_in__0\(3)
    );
\i2s_bclk_div_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => i2s_bclk_div_cnt_reg(2),
      I1 => i2s_bclk_div_cnt_reg(0),
      I2 => i2s_bclk_div_cnt_reg(1),
      I3 => i2s_bclk_div_cnt_reg(3),
      I4 => i2s_bclk_div_cnt_reg(4),
      O => \p_0_in__0\(4)
    );
\i2s_bclk_div_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => i2s_bclk_div_cnt_reg(3),
      I1 => i2s_bclk_div_cnt_reg(1),
      I2 => i2s_bclk_div_cnt_reg(0),
      I3 => i2s_bclk_div_cnt_reg(2),
      I4 => i2s_bclk_div_cnt_reg(4),
      I5 => i2s_bclk_div_cnt_reg(5),
      O => \p_0_in__0\(5)
    );
\i2s_bclk_div_cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \i2s_bclk_div_cnt[7]_i_3_n_0\,
      I1 => i2s_bclk_div_cnt_reg(6),
      O => \p_0_in__0\(6)
    );
\i2s_bclk_div_cnt[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => i2s_bclk_toggle,
      I1 => i2s_clk_div_en,
      O => \i2s_bclk_div_cnt[7]_i_1_n_0\
    );
\i2s_bclk_div_cnt[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \i2s_bclk_div_cnt[7]_i_3_n_0\,
      I1 => i2s_bclk_div_cnt_reg(6),
      I2 => i2s_bclk_div_cnt_reg(7),
      O => \p_0_in__0\(7)
    );
\i2s_bclk_div_cnt[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => i2s_bclk_div_cnt_reg(5),
      I1 => i2s_bclk_div_cnt_reg(3),
      I2 => i2s_bclk_div_cnt_reg(1),
      I3 => i2s_bclk_div_cnt_reg(0),
      I4 => i2s_bclk_div_cnt_reg(2),
      I5 => i2s_bclk_div_cnt_reg(4),
      O => \i2s_bclk_div_cnt[7]_i_3_n_0\
    );
\i2s_bclk_div_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => '1',
      D => \p_0_in__0\(0),
      Q => i2s_bclk_div_cnt_reg(0),
      R => \i2s_bclk_div_cnt[7]_i_1_n_0\
    );
\i2s_bclk_div_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => '1',
      D => \p_0_in__0\(1),
      Q => i2s_bclk_div_cnt_reg(1),
      R => \i2s_bclk_div_cnt[7]_i_1_n_0\
    );
\i2s_bclk_div_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => '1',
      D => \p_0_in__0\(2),
      Q => i2s_bclk_div_cnt_reg(2),
      R => \i2s_bclk_div_cnt[7]_i_1_n_0\
    );
\i2s_bclk_div_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => '1',
      D => \p_0_in__0\(3),
      Q => i2s_bclk_div_cnt_reg(3),
      R => \i2s_bclk_div_cnt[7]_i_1_n_0\
    );
\i2s_bclk_div_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => '1',
      D => \p_0_in__0\(4),
      Q => i2s_bclk_div_cnt_reg(4),
      R => \i2s_bclk_div_cnt[7]_i_1_n_0\
    );
\i2s_bclk_div_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => '1',
      D => \p_0_in__0\(5),
      Q => i2s_bclk_div_cnt_reg(5),
      R => \i2s_bclk_div_cnt[7]_i_1_n_0\
    );
\i2s_bclk_div_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => '1',
      D => \p_0_in__0\(6),
      Q => i2s_bclk_div_cnt_reg(6),
      R => \i2s_bclk_div_cnt[7]_i_1_n_0\
    );
\i2s_bclk_div_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => '1',
      D => \p_0_in__0\(7),
      Q => i2s_bclk_div_cnt_reg(7),
      R => \i2s_bclk_div_cnt[7]_i_1_n_0\
    );
\i2s_bclk_div_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => sync_aclk_to_i2s_src_clk_dst_req,
      D => sync_aclk_to_i2s_src_clk_out(16),
      Q => i2s_bclk_div(0),
      R => '0'
    );
\i2s_bclk_div_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => sync_aclk_to_i2s_src_clk_dst_req,
      D => sync_aclk_to_i2s_src_clk_out(17),
      Q => i2s_bclk_div(1),
      R => '0'
    );
\i2s_bclk_div_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => sync_aclk_to_i2s_src_clk_dst_req,
      D => sync_aclk_to_i2s_src_clk_out(18),
      Q => i2s_bclk_div(2),
      R => '0'
    );
\i2s_bclk_div_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => sync_aclk_to_i2s_src_clk_dst_req,
      D => sync_aclk_to_i2s_src_clk_out(19),
      Q => i2s_bclk_div(3),
      R => '0'
    );
\i2s_bclk_div_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => sync_aclk_to_i2s_src_clk_dst_req,
      D => sync_aclk_to_i2s_src_clk_out(20),
      Q => i2s_bclk_div(4),
      R => '0'
    );
\i2s_bclk_div_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => sync_aclk_to_i2s_src_clk_dst_req,
      D => sync_aclk_to_i2s_src_clk_out(21),
      Q => i2s_bclk_div(5),
      R => '0'
    );
\i2s_bclk_div_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => sync_aclk_to_i2s_src_clk_dst_req,
      D => sync_aclk_to_i2s_src_clk_out(22),
      Q => i2s_bclk_div(6),
      R => '0'
    );
\i2s_bclk_div_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => sync_aclk_to_i2s_src_clk_dst_req,
      D => sync_aclk_to_i2s_src_clk_out(23),
      Q => i2s_bclk_div(7),
      R => '0'
    );
i2s_bclk_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \^i2s_bclk_reg_0\,
      I1 => i2s_bclk_toggle,
      I2 => i2s_clk_div_en,
      O => i2s_bclk_i_1_n_0
    );
i2s_bclk_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => i2s_bclk_i_3_n_0,
      I1 => i2s_bclk_i_4_n_0,
      I2 => i2s_bclk_i_5_n_0,
      I3 => i2s_bclk_i_6_n_0,
      O => i2s_bclk_toggle
    );
i2s_bclk_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"82000082"
    )
        port map (
      I0 => i2s_clk_div_en,
      I1 => i2s_bclk_div(6),
      I2 => i2s_bclk_div_cnt_reg(6),
      I3 => i2s_bclk_div(7),
      I4 => i2s_bclk_div_cnt_reg(7),
      O => i2s_bclk_i_3_n_0
    );
i2s_bclk_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => i2s_bclk_div_cnt_reg(5),
      I1 => i2s_bclk_div(5),
      I2 => i2s_bclk_div_cnt_reg(2),
      I3 => i2s_bclk_div(2),
      O => i2s_bclk_i_4_n_0
    );
i2s_bclk_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => i2s_bclk_div_cnt_reg(1),
      I1 => i2s_bclk_div(1),
      I2 => i2s_bclk_div_cnt_reg(0),
      I3 => i2s_bclk_div(0),
      O => i2s_bclk_i_5_n_0
    );
i2s_bclk_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => i2s_bclk_div_cnt_reg(4),
      I1 => i2s_bclk_div(4),
      I2 => i2s_bclk_div_cnt_reg(3),
      I3 => i2s_bclk_div(3),
      O => i2s_bclk_i_6_n_0
    );
i2s_bclk_reg: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => '1',
      D => i2s_bclk_i_1_n_0,
      Q => \^i2s_bclk_reg_0\,
      R => '0'
    );
\i2s_bit_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i2s_bit_cnt[4]_i_4_n_0\,
      I1 => \i2s_bit_cnt_reg_n_0_[0]\,
      O => i2s_bit_cnt(0)
    );
\i2s_bit_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \i2s_bit_cnt[4]_i_4_n_0\,
      I1 => \i2s_bit_cnt_reg_n_0_[0]\,
      I2 => \i2s_bit_cnt_reg_n_0_[1]\,
      O => i2s_bit_cnt(1)
    );
\i2s_bit_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \i2s_bit_cnt[4]_i_4_n_0\,
      I1 => \i2s_bit_cnt_reg_n_0_[1]\,
      I2 => \i2s_bit_cnt_reg_n_0_[0]\,
      I3 => \i2s_bit_cnt_reg_n_0_[2]\,
      O => i2s_bit_cnt(2)
    );
\i2s_bit_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \i2s_bit_cnt[4]_i_4_n_0\,
      I1 => \i2s_bit_cnt_reg_n_0_[0]\,
      I2 => \i2s_bit_cnt_reg_n_0_[1]\,
      I3 => \i2s_bit_cnt_reg_n_0_[2]\,
      I4 => \i2s_bit_cnt_reg_n_0_[3]\,
      O => i2s_bit_cnt(3)
    );
\i2s_bit_cnt[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0830"
    )
        port map (
      I0 => \i2s_bclk_rising__0\,
      I1 => \i2s_fsm_state__0\(0),
      I2 => \i2s_fsm_state__0\(2),
      I3 => \i2s_fsm_state__0\(1),
      O => \i2s_bit_cnt[4]_i_1_n_0\
    );
\i2s_bit_cnt[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \i2s_bit_cnt[4]_i_4_n_0\,
      I1 => \i2s_bit_cnt_reg_n_0_[2]\,
      I2 => \i2s_bit_cnt_reg_n_0_[1]\,
      I3 => \i2s_bit_cnt_reg_n_0_[0]\,
      I4 => \i2s_bit_cnt_reg_n_0_[3]\,
      I5 => \i2s_bit_cnt_reg_n_0_[4]\,
      O => i2s_bit_cnt(4)
    );
\i2s_bit_cnt[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => i2s_bclk_i_6_n_0,
      I1 => i2s_bclk_i_5_n_0,
      I2 => i2s_bclk_i_4_n_0,
      I3 => i2s_bclk_i_3_n_0,
      I4 => \^i2s_bclk_reg_0\,
      O => \i2s_bclk_rising__0\
    );
\i2s_bit_cnt[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000004FFFFFFF"
    )
        port map (
      I0 => \i2s_bit_cnt_reg_n_0_[4]\,
      I1 => i2s_chan_bit_sz,
      I2 => \i2s_bit_cnt[4]_i_5_n_0\,
      I3 => \i2s_bit_cnt_reg_n_0_[3]\,
      I4 => \i2s_bit_cnt_reg_n_0_[2]\,
      I5 => \i2s_fsm_state__0\(2),
      O => \i2s_bit_cnt[4]_i_4_n_0\
    );
\i2s_bit_cnt[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \i2s_bit_cnt_reg_n_0_[0]\,
      I1 => \i2s_bit_cnt_reg_n_0_[1]\,
      O => \i2s_bit_cnt[4]_i_5_n_0\
    );
\i2s_bit_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_bit_cnt[4]_i_1_n_0\,
      D => i2s_bit_cnt(0),
      Q => \i2s_bit_cnt_reg_n_0_[0]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_bit_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_bit_cnt[4]_i_1_n_0\,
      D => i2s_bit_cnt(1),
      Q => \i2s_bit_cnt_reg_n_0_[1]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_bit_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_bit_cnt[4]_i_1_n_0\,
      D => i2s_bit_cnt(2),
      Q => \i2s_bit_cnt_reg_n_0_[2]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_bit_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_bit_cnt[4]_i_1_n_0\,
      D => i2s_bit_cnt(3),
      Q => \i2s_bit_cnt_reg_n_0_[3]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_bit_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_bit_cnt[4]_i_1_n_0\,
      D => i2s_bit_cnt(4),
      Q => \i2s_bit_cnt_reg_n_0_[4]\,
      R => m_axis_tvalid_i_1_n_0
    );
i2s_chan_bit_sz_a_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_chan_bit_sz_a8_out,
      D => s_axi_wdata(19),
      Q => sync_aclk_to_i2s_src_clk_in(33),
      R => p_0_in
    );
i2s_chan_bit_sz_reg: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => sync_aclk_to_i2s_src_clk_dst_req,
      D => sync_aclk_to_i2s_src_clk_out(33),
      Q => i2s_chan_bit_sz,
      R => '0'
    );
\i2s_chan_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F10"
    )
        port map (
      I0 => \i2s_chan_cnt[2]_i_2_n_0\,
      I1 => \i2s_fsm_state__0\(2),
      I2 => \i2s_chan_cnt[2]_i_3_n_0\,
      I3 => \i2s_chan_cnt_reg_n_0_[0]\,
      O => \i2s_chan_cnt[0]_i_1_n_0\
    );
\i2s_chan_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FF1000"
    )
        port map (
      I0 => \i2s_chan_cnt[2]_i_2_n_0\,
      I1 => \i2s_fsm_state__0\(2),
      I2 => \i2s_chan_cnt_reg_n_0_[0]\,
      I3 => \i2s_chan_cnt[2]_i_3_n_0\,
      I4 => \i2s_chan_cnt_reg_n_0_[1]\,
      O => \i2s_chan_cnt[1]_i_1_n_0\
    );
\i2s_chan_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0111FFFF10000000"
    )
        port map (
      I0 => \i2s_chan_cnt[2]_i_2_n_0\,
      I1 => \i2s_fsm_state__0\(2),
      I2 => \i2s_chan_cnt_reg_n_0_[0]\,
      I3 => \i2s_chan_cnt_reg_n_0_[1]\,
      I4 => \i2s_chan_cnt[2]_i_3_n_0\,
      I5 => \i2s_chan_cnt_reg_n_0_[2]\,
      O => \i2s_chan_cnt[2]_i_1_n_0\
    );
\i2s_chan_cnt[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => i2s_chan_max(1),
      I1 => \i2s_chan_cnt_reg_n_0_[1]\,
      I2 => i2s_chan_max(0),
      I3 => \i2s_chan_cnt_reg_n_0_[0]\,
      I4 => \i2s_chan_cnt_reg_n_0_[2]\,
      I5 => i2s_chan_max(2),
      O => \i2s_chan_cnt[2]_i_2_n_0\
    );
\i2s_chan_cnt[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800F00"
    )
        port map (
      I0 => \i2s_bclk_rising__0\,
      I1 => \i2s_paused1__4\,
      I2 => \i2s_fsm_state__0\(0),
      I3 => \i2s_fsm_state__0\(2),
      I4 => \i2s_fsm_state__0\(1),
      O => \i2s_chan_cnt[2]_i_3_n_0\
    );
\i2s_chan_cnt[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000800000008000"
    )
        port map (
      I0 => \i2s_bit_cnt_reg_n_0_[2]\,
      I1 => \i2s_bit_cnt_reg_n_0_[3]\,
      I2 => \i2s_bit_cnt_reg_n_0_[0]\,
      I3 => \i2s_bit_cnt_reg_n_0_[1]\,
      I4 => i2s_chan_bit_sz,
      I5 => \i2s_bit_cnt_reg_n_0_[4]\,
      O => \i2s_paused1__4\
    );
\i2s_chan_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => '1',
      D => \i2s_chan_cnt[0]_i_1_n_0\,
      Q => \i2s_chan_cnt_reg_n_0_[0]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_chan_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => '1',
      D => \i2s_chan_cnt[1]_i_1_n_0\,
      Q => \i2s_chan_cnt_reg_n_0_[1]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_chan_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => '1',
      D => \i2s_chan_cnt[2]_i_1_n_0\,
      Q => \i2s_chan_cnt_reg_n_0_[2]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_chan_en_a[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => sync_aclk_to_i2s_src_clk_in(47),
      I2 => s_axi_wstrb(1),
      I3 => s_axi_awaddr(0),
      I4 => s_axi_awaddr(2),
      I5 => s_axi_awaddr(1),
      O => i2s_chan_en_a
    );
\i2s_chan_en_a_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_chan_en_a,
      D => s_axi_wdata(8),
      Q => sync_aclk_to_i2s_src_clk_in(37),
      R => p_0_in
    );
\i2s_chan_en_a_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_chan_en_a,
      D => s_axi_wdata(9),
      Q => sync_aclk_to_i2s_src_clk_in(38),
      R => p_0_in
    );
\i2s_chan_en_a_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_chan_en_a,
      D => s_axi_wdata(10),
      Q => sync_aclk_to_i2s_src_clk_in(39),
      R => p_0_in
    );
\i2s_chan_en_a_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_chan_en_a,
      D => s_axi_wdata(11),
      Q => sync_aclk_to_i2s_src_clk_in(40),
      R => p_0_in
    );
\i2s_chan_en_a_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_chan_en_a,
      D => s_axi_wdata(12),
      Q => sync_aclk_to_i2s_src_clk_in(41),
      R => p_0_in
    );
\i2s_chan_en_a_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_chan_en_a,
      D => s_axi_wdata(13),
      Q => sync_aclk_to_i2s_src_clk_in(42),
      R => p_0_in
    );
\i2s_chan_en_a_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_chan_en_a,
      D => s_axi_wdata(14),
      Q => sync_aclk_to_i2s_src_clk_in(43),
      R => p_0_in
    );
\i2s_chan_en_a_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_chan_en_a,
      D => s_axi_wdata(15),
      Q => sync_aclk_to_i2s_src_clk_in(44),
      R => p_0_in
    );
\i2s_chan_en_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => sync_aclk_to_i2s_src_clk_dst_req,
      D => sync_aclk_to_i2s_src_clk_out(37),
      Q => i2s_chan_en(0),
      R => '0'
    );
\i2s_chan_en_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => sync_aclk_to_i2s_src_clk_dst_req,
      D => sync_aclk_to_i2s_src_clk_out(38),
      Q => i2s_chan_en(1),
      R => '0'
    );
\i2s_chan_en_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => sync_aclk_to_i2s_src_clk_dst_req,
      D => sync_aclk_to_i2s_src_clk_out(39),
      Q => i2s_chan_en(2),
      R => '0'
    );
\i2s_chan_en_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => sync_aclk_to_i2s_src_clk_dst_req,
      D => sync_aclk_to_i2s_src_clk_out(40),
      Q => i2s_chan_en(3),
      R => '0'
    );
\i2s_chan_en_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => sync_aclk_to_i2s_src_clk_dst_req,
      D => sync_aclk_to_i2s_src_clk_out(41),
      Q => i2s_chan_en(4),
      R => '0'
    );
\i2s_chan_en_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => sync_aclk_to_i2s_src_clk_dst_req,
      D => sync_aclk_to_i2s_src_clk_out(42),
      Q => i2s_chan_en(5),
      R => '0'
    );
\i2s_chan_en_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => sync_aclk_to_i2s_src_clk_dst_req,
      D => sync_aclk_to_i2s_src_clk_out(43),
      Q => i2s_chan_en(6),
      R => '0'
    );
\i2s_chan_en_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => sync_aclk_to_i2s_src_clk_dst_req,
      D => sync_aclk_to_i2s_src_clk_out(44),
      Q => i2s_chan_en(7),
      R => '0'
    );
\i2s_chan_max_a[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => sync_aclk_to_i2s_src_clk_in(47),
      I2 => s_axi_wstrb(2),
      I3 => s_axi_awaddr(0),
      I4 => s_axi_awaddr(2),
      I5 => s_axi_awaddr(1),
      O => i2s_chan_bit_sz_a8_out
    );
\i2s_chan_max_a_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_chan_bit_sz_a8_out,
      D => s_axi_wdata(16),
      Q => sync_aclk_to_i2s_src_clk_in(34),
      R => p_0_in
    );
\i2s_chan_max_a_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_chan_bit_sz_a8_out,
      D => s_axi_wdata(17),
      Q => sync_aclk_to_i2s_src_clk_in(35),
      R => p_0_in
    );
\i2s_chan_max_a_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_chan_bit_sz_a8_out,
      D => s_axi_wdata(18),
      Q => sync_aclk_to_i2s_src_clk_in(36),
      R => p_0_in
    );
\i2s_chan_max_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => sync_aclk_to_i2s_src_clk_dst_req,
      D => sync_aclk_to_i2s_src_clk_out(34),
      Q => i2s_chan_max(0),
      R => '0'
    );
\i2s_chan_max_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => sync_aclk_to_i2s_src_clk_dst_req,
      D => sync_aclk_to_i2s_src_clk_out(35),
      Q => i2s_chan_max(1),
      R => '0'
    );
\i2s_chan_max_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => sync_aclk_to_i2s_src_clk_dst_req,
      D => sync_aclk_to_i2s_src_clk_out(36),
      Q => i2s_chan_max(2),
      R => '0'
    );
i2s_clk_div_en_a_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => \^s_axi_wready\,
      I2 => \i2s_clk_div_en_a__1\,
      I3 => sync_aclk_to_i2s_src_clk_in(32),
      O => i2s_clk_div_en_a_i_1_n_0
    );
i2s_clk_div_en_a_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100010001000"
    )
        port map (
      I0 => s_axi_awaddr(1),
      I1 => s_axi_awaddr(2),
      I2 => s_axi_awaddr(0),
      I3 => s_axi_wstrb(0),
      I4 => s_axi_wdata(1),
      I5 => sync_aclk_to_i2s_src_clk_in(47),
      O => \i2s_clk_div_en_a__1\
    );
i2s_clk_div_en_a_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i2s_clk_div_en_a_i_1_n_0,
      Q => sync_aclk_to_i2s_src_clk_in(32),
      R => p_0_in
    );
i2s_clk_div_en_reg: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => sync_aclk_to_i2s_src_clk_dst_req,
      D => sync_aclk_to_i2s_src_clk_out(32),
      Q => i2s_clk_div_en,
      R => '0'
    );
i2s_en_a_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s_axi_wdata(1),
      I1 => \^s_axi_wready\,
      I2 => \i2s_en_a__1\,
      I3 => sync_aclk_to_i2s_src_clk_in(47),
      O => i2s_en_a_i_1_n_0
    );
i2s_en_a_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000100010000000"
    )
        port map (
      I0 => s_axi_awaddr(1),
      I1 => s_axi_awaddr(2),
      I2 => s_axi_awaddr(0),
      I3 => s_axi_wstrb(0),
      I4 => s_axi_wdata(0),
      I5 => sync_aclk_to_i2s_src_clk_in(32),
      O => \i2s_en_a__1\
    );
i2s_en_a_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i2s_en_a_i_1_n_0,
      Q => sync_aclk_to_i2s_src_clk_in(47),
      R => p_0_in
    );
i2s_en_reg: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => sync_aclk_to_i2s_src_clk_dst_req,
      D => sync_aclk_to_i2s_src_clk_out(47),
      Q => i2s_en,
      R => '0'
    );
i2s_lb_en_a_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => s_axi_wdata(4),
      I1 => \^s_axi_wready\,
      I2 => s_axi_wstrb(0),
      I3 => s_axi_awaddr(0),
      I4 => i2s_lb_en_a_i_2_n_0,
      I5 => sync_aclk_to_i2s_src_clk_in(45),
      O => i2s_lb_en_a_i_1_n_0
    );
i2s_lb_en_a_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => s_axi_awaddr(1),
      O => i2s_lb_en_a_i_2_n_0
    );
i2s_lb_en_a_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i2s_lb_en_a_i_1_n_0,
      Q => sync_aclk_to_i2s_src_clk_in(45),
      R => p_0_in
    );
i2s_lb_en_reg: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => sync_aclk_to_i2s_src_clk_dst_req,
      D => sync_aclk_to_i2s_src_clk_out(45),
      Q => i2s_lb_en,
      R => '0'
    );
\i2s_lrclk_div_a[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => s_axi_awaddr(1),
      I2 => s_axi_awaddr(0),
      I3 => s_axi_awaddr(2),
      I4 => sync_aclk_to_i2s_src_clk_in(32),
      I5 => s_axi_wstrb(1),
      O => p_1_in(15)
    );
\i2s_lrclk_div_a[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => s_axi_awaddr(1),
      I2 => s_axi_awaddr(0),
      I3 => s_axi_awaddr(2),
      I4 => sync_aclk_to_i2s_src_clk_in(32),
      I5 => s_axi_wstrb(0),
      O => p_1_in(7)
    );
\i2s_lrclk_div_a_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(7),
      D => s_axi_wdata(0),
      Q => sync_aclk_to_i2s_src_clk_in(0),
      R => p_0_in
    );
\i2s_lrclk_div_a_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(15),
      D => s_axi_wdata(10),
      Q => sync_aclk_to_i2s_src_clk_in(10),
      R => p_0_in
    );
\i2s_lrclk_div_a_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(15),
      D => s_axi_wdata(11),
      Q => sync_aclk_to_i2s_src_clk_in(11),
      R => p_0_in
    );
\i2s_lrclk_div_a_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(15),
      D => s_axi_wdata(12),
      Q => sync_aclk_to_i2s_src_clk_in(12),
      R => p_0_in
    );
\i2s_lrclk_div_a_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(15),
      D => s_axi_wdata(13),
      Q => sync_aclk_to_i2s_src_clk_in(13),
      R => p_0_in
    );
\i2s_lrclk_div_a_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(15),
      D => s_axi_wdata(14),
      Q => sync_aclk_to_i2s_src_clk_in(14),
      R => p_0_in
    );
\i2s_lrclk_div_a_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(15),
      D => s_axi_wdata(15),
      Q => sync_aclk_to_i2s_src_clk_in(15),
      R => p_0_in
    );
\i2s_lrclk_div_a_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(7),
      D => s_axi_wdata(1),
      Q => sync_aclk_to_i2s_src_clk_in(1),
      R => p_0_in
    );
\i2s_lrclk_div_a_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(7),
      D => s_axi_wdata(2),
      Q => sync_aclk_to_i2s_src_clk_in(2),
      R => p_0_in
    );
\i2s_lrclk_div_a_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(7),
      D => s_axi_wdata(3),
      Q => sync_aclk_to_i2s_src_clk_in(3),
      R => p_0_in
    );
\i2s_lrclk_div_a_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(7),
      D => s_axi_wdata(4),
      Q => sync_aclk_to_i2s_src_clk_in(4),
      R => p_0_in
    );
\i2s_lrclk_div_a_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(7),
      D => s_axi_wdata(5),
      Q => sync_aclk_to_i2s_src_clk_in(5),
      R => p_0_in
    );
\i2s_lrclk_div_a_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(7),
      D => s_axi_wdata(6),
      Q => sync_aclk_to_i2s_src_clk_in(6),
      R => p_0_in
    );
\i2s_lrclk_div_a_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(7),
      D => s_axi_wdata(7),
      Q => sync_aclk_to_i2s_src_clk_in(7),
      R => p_0_in
    );
\i2s_lrclk_div_a_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(15),
      D => s_axi_wdata(8),
      Q => sync_aclk_to_i2s_src_clk_in(8),
      R => p_0_in
    );
\i2s_lrclk_div_a_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in(15),
      D => s_axi_wdata(9),
      Q => sync_aclk_to_i2s_src_clk_in(9),
      R => p_0_in
    );
\i2s_lrclk_div_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => i2s_lrclk_toggle0,
      I1 => i2s_clk_div_en,
      O => \i2s_lrclk_div_cnt[0]_i_1_n_0\
    );
\i2s_lrclk_div_cnt[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i2s_lrclk_div_cnt_reg(0),
      O => \i2s_lrclk_div_cnt[0]_i_3_n_0\
    );
\i2s_lrclk_div_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => '1',
      D => \i2s_lrclk_div_cnt_reg[0]_i_2_n_7\,
      Q => i2s_lrclk_div_cnt_reg(0),
      R => \i2s_lrclk_div_cnt[0]_i_1_n_0\
    );
\i2s_lrclk_div_cnt_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \i2s_lrclk_div_cnt_reg[0]_i_2_n_0\,
      CO(2) => \i2s_lrclk_div_cnt_reg[0]_i_2_n_1\,
      CO(1) => \i2s_lrclk_div_cnt_reg[0]_i_2_n_2\,
      CO(0) => \i2s_lrclk_div_cnt_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \i2s_lrclk_div_cnt_reg[0]_i_2_n_4\,
      O(2) => \i2s_lrclk_div_cnt_reg[0]_i_2_n_5\,
      O(1) => \i2s_lrclk_div_cnt_reg[0]_i_2_n_6\,
      O(0) => \i2s_lrclk_div_cnt_reg[0]_i_2_n_7\,
      S(3 downto 1) => i2s_lrclk_div_cnt_reg(3 downto 1),
      S(0) => \i2s_lrclk_div_cnt[0]_i_3_n_0\
    );
\i2s_lrclk_div_cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => '1',
      D => \i2s_lrclk_div_cnt_reg[8]_i_1_n_5\,
      Q => i2s_lrclk_div_cnt_reg(10),
      R => \i2s_lrclk_div_cnt[0]_i_1_n_0\
    );
\i2s_lrclk_div_cnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => '1',
      D => \i2s_lrclk_div_cnt_reg[8]_i_1_n_4\,
      Q => i2s_lrclk_div_cnt_reg(11),
      R => \i2s_lrclk_div_cnt[0]_i_1_n_0\
    );
\i2s_lrclk_div_cnt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => '1',
      D => \i2s_lrclk_div_cnt_reg[12]_i_1_n_7\,
      Q => i2s_lrclk_div_cnt_reg(12),
      R => \i2s_lrclk_div_cnt[0]_i_1_n_0\
    );
\i2s_lrclk_div_cnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i2s_lrclk_div_cnt_reg[8]_i_1_n_0\,
      CO(3) => \NLW_i2s_lrclk_div_cnt_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \i2s_lrclk_div_cnt_reg[12]_i_1_n_1\,
      CO(1) => \i2s_lrclk_div_cnt_reg[12]_i_1_n_2\,
      CO(0) => \i2s_lrclk_div_cnt_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i2s_lrclk_div_cnt_reg[12]_i_1_n_4\,
      O(2) => \i2s_lrclk_div_cnt_reg[12]_i_1_n_5\,
      O(1) => \i2s_lrclk_div_cnt_reg[12]_i_1_n_6\,
      O(0) => \i2s_lrclk_div_cnt_reg[12]_i_1_n_7\,
      S(3 downto 0) => i2s_lrclk_div_cnt_reg(15 downto 12)
    );
\i2s_lrclk_div_cnt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => '1',
      D => \i2s_lrclk_div_cnt_reg[12]_i_1_n_6\,
      Q => i2s_lrclk_div_cnt_reg(13),
      R => \i2s_lrclk_div_cnt[0]_i_1_n_0\
    );
\i2s_lrclk_div_cnt_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => '1',
      D => \i2s_lrclk_div_cnt_reg[12]_i_1_n_5\,
      Q => i2s_lrclk_div_cnt_reg(14),
      R => \i2s_lrclk_div_cnt[0]_i_1_n_0\
    );
\i2s_lrclk_div_cnt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => '1',
      D => \i2s_lrclk_div_cnt_reg[12]_i_1_n_4\,
      Q => i2s_lrclk_div_cnt_reg(15),
      R => \i2s_lrclk_div_cnt[0]_i_1_n_0\
    );
\i2s_lrclk_div_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => '1',
      D => \i2s_lrclk_div_cnt_reg[0]_i_2_n_6\,
      Q => i2s_lrclk_div_cnt_reg(1),
      R => \i2s_lrclk_div_cnt[0]_i_1_n_0\
    );
\i2s_lrclk_div_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => '1',
      D => \i2s_lrclk_div_cnt_reg[0]_i_2_n_5\,
      Q => i2s_lrclk_div_cnt_reg(2),
      R => \i2s_lrclk_div_cnt[0]_i_1_n_0\
    );
\i2s_lrclk_div_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => '1',
      D => \i2s_lrclk_div_cnt_reg[0]_i_2_n_4\,
      Q => i2s_lrclk_div_cnt_reg(3),
      R => \i2s_lrclk_div_cnt[0]_i_1_n_0\
    );
\i2s_lrclk_div_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => '1',
      D => \i2s_lrclk_div_cnt_reg[4]_i_1_n_7\,
      Q => i2s_lrclk_div_cnt_reg(4),
      R => \i2s_lrclk_div_cnt[0]_i_1_n_0\
    );
\i2s_lrclk_div_cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i2s_lrclk_div_cnt_reg[0]_i_2_n_0\,
      CO(3) => \i2s_lrclk_div_cnt_reg[4]_i_1_n_0\,
      CO(2) => \i2s_lrclk_div_cnt_reg[4]_i_1_n_1\,
      CO(1) => \i2s_lrclk_div_cnt_reg[4]_i_1_n_2\,
      CO(0) => \i2s_lrclk_div_cnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i2s_lrclk_div_cnt_reg[4]_i_1_n_4\,
      O(2) => \i2s_lrclk_div_cnt_reg[4]_i_1_n_5\,
      O(1) => \i2s_lrclk_div_cnt_reg[4]_i_1_n_6\,
      O(0) => \i2s_lrclk_div_cnt_reg[4]_i_1_n_7\,
      S(3 downto 0) => i2s_lrclk_div_cnt_reg(7 downto 4)
    );
\i2s_lrclk_div_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => '1',
      D => \i2s_lrclk_div_cnt_reg[4]_i_1_n_6\,
      Q => i2s_lrclk_div_cnt_reg(5),
      R => \i2s_lrclk_div_cnt[0]_i_1_n_0\
    );
\i2s_lrclk_div_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => '1',
      D => \i2s_lrclk_div_cnt_reg[4]_i_1_n_5\,
      Q => i2s_lrclk_div_cnt_reg(6),
      R => \i2s_lrclk_div_cnt[0]_i_1_n_0\
    );
\i2s_lrclk_div_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => '1',
      D => \i2s_lrclk_div_cnt_reg[4]_i_1_n_4\,
      Q => i2s_lrclk_div_cnt_reg(7),
      R => \i2s_lrclk_div_cnt[0]_i_1_n_0\
    );
\i2s_lrclk_div_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => '1',
      D => \i2s_lrclk_div_cnt_reg[8]_i_1_n_7\,
      Q => i2s_lrclk_div_cnt_reg(8),
      R => \i2s_lrclk_div_cnt[0]_i_1_n_0\
    );
\i2s_lrclk_div_cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i2s_lrclk_div_cnt_reg[4]_i_1_n_0\,
      CO(3) => \i2s_lrclk_div_cnt_reg[8]_i_1_n_0\,
      CO(2) => \i2s_lrclk_div_cnt_reg[8]_i_1_n_1\,
      CO(1) => \i2s_lrclk_div_cnt_reg[8]_i_1_n_2\,
      CO(0) => \i2s_lrclk_div_cnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i2s_lrclk_div_cnt_reg[8]_i_1_n_4\,
      O(2) => \i2s_lrclk_div_cnt_reg[8]_i_1_n_5\,
      O(1) => \i2s_lrclk_div_cnt_reg[8]_i_1_n_6\,
      O(0) => \i2s_lrclk_div_cnt_reg[8]_i_1_n_7\,
      S(3 downto 0) => i2s_lrclk_div_cnt_reg(11 downto 8)
    );
\i2s_lrclk_div_cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => '1',
      D => \i2s_lrclk_div_cnt_reg[8]_i_1_n_6\,
      Q => i2s_lrclk_div_cnt_reg(9),
      R => \i2s_lrclk_div_cnt[0]_i_1_n_0\
    );
\i2s_lrclk_div_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => sync_aclk_to_i2s_src_clk_dst_req,
      D => sync_aclk_to_i2s_src_clk_out(0),
      Q => i2s_lrclk_div(0),
      R => '0'
    );
\i2s_lrclk_div_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => sync_aclk_to_i2s_src_clk_dst_req,
      D => sync_aclk_to_i2s_src_clk_out(10),
      Q => i2s_lrclk_div(10),
      R => '0'
    );
\i2s_lrclk_div_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => sync_aclk_to_i2s_src_clk_dst_req,
      D => sync_aclk_to_i2s_src_clk_out(11),
      Q => i2s_lrclk_div(11),
      R => '0'
    );
\i2s_lrclk_div_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => sync_aclk_to_i2s_src_clk_dst_req,
      D => sync_aclk_to_i2s_src_clk_out(12),
      Q => i2s_lrclk_div(12),
      R => '0'
    );
\i2s_lrclk_div_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => sync_aclk_to_i2s_src_clk_dst_req,
      D => sync_aclk_to_i2s_src_clk_out(13),
      Q => i2s_lrclk_div(13),
      R => '0'
    );
\i2s_lrclk_div_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => sync_aclk_to_i2s_src_clk_dst_req,
      D => sync_aclk_to_i2s_src_clk_out(14),
      Q => i2s_lrclk_div(14),
      R => '0'
    );
\i2s_lrclk_div_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => sync_aclk_to_i2s_src_clk_dst_req,
      D => sync_aclk_to_i2s_src_clk_out(15),
      Q => i2s_lrclk_div(15),
      R => '0'
    );
\i2s_lrclk_div_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => sync_aclk_to_i2s_src_clk_dst_req,
      D => sync_aclk_to_i2s_src_clk_out(1),
      Q => i2s_lrclk_div(1),
      R => '0'
    );
\i2s_lrclk_div_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => sync_aclk_to_i2s_src_clk_dst_req,
      D => sync_aclk_to_i2s_src_clk_out(2),
      Q => i2s_lrclk_div(2),
      R => '0'
    );
\i2s_lrclk_div_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => sync_aclk_to_i2s_src_clk_dst_req,
      D => sync_aclk_to_i2s_src_clk_out(3),
      Q => i2s_lrclk_div(3),
      R => '0'
    );
\i2s_lrclk_div_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => sync_aclk_to_i2s_src_clk_dst_req,
      D => sync_aclk_to_i2s_src_clk_out(4),
      Q => i2s_lrclk_div(4),
      R => '0'
    );
\i2s_lrclk_div_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => sync_aclk_to_i2s_src_clk_dst_req,
      D => sync_aclk_to_i2s_src_clk_out(5),
      Q => i2s_lrclk_div(5),
      R => '0'
    );
\i2s_lrclk_div_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => sync_aclk_to_i2s_src_clk_dst_req,
      D => sync_aclk_to_i2s_src_clk_out(6),
      Q => i2s_lrclk_div(6),
      R => '0'
    );
\i2s_lrclk_div_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => sync_aclk_to_i2s_src_clk_dst_req,
      D => sync_aclk_to_i2s_src_clk_out(7),
      Q => i2s_lrclk_div(7),
      R => '0'
    );
\i2s_lrclk_div_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => sync_aclk_to_i2s_src_clk_dst_req,
      D => sync_aclk_to_i2s_src_clk_out(8),
      Q => i2s_lrclk_div(8),
      R => '0'
    );
\i2s_lrclk_div_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => sync_aclk_to_i2s_src_clk_dst_req,
      D => sync_aclk_to_i2s_src_clk_out(9),
      Q => i2s_lrclk_div(9),
      R => '0'
    );
i2s_lrclk_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \^i2s_lrclk\,
      I1 => i2s_lrclk_toggle0,
      I2 => i2s_clk_div_en,
      O => i2s_lrclk_i_1_n_0
    );
i2s_lrclk_reg: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => '1',
      D => i2s_lrclk_i_1_n_0,
      Q => \^i2s_lrclk\,
      R => '0'
    );
i2s_lrclk_toggle0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => i2s_lrclk_toggle0_carry_n_0,
      CO(2) => i2s_lrclk_toggle0_carry_n_1,
      CO(1) => i2s_lrclk_toggle0_carry_n_2,
      CO(0) => i2s_lrclk_toggle0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_i2s_lrclk_toggle0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => i2s_lrclk_toggle0_carry_i_1_n_0,
      S(2) => i2s_lrclk_toggle0_carry_i_2_n_0,
      S(1) => i2s_lrclk_toggle0_carry_i_3_n_0,
      S(0) => i2s_lrclk_toggle0_carry_i_4_n_0
    );
\i2s_lrclk_toggle0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => i2s_lrclk_toggle0_carry_n_0,
      CO(3 downto 2) => \NLW_i2s_lrclk_toggle0_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => i2s_lrclk_toggle0,
      CO(0) => \i2s_lrclk_toggle0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_i2s_lrclk_toggle0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \i2s_lrclk_toggle0_carry__0_i_1_n_0\,
      S(0) => \i2s_lrclk_toggle0_carry__0_i_2_n_0\
    );
\i2s_lrclk_toggle0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => i2s_lrclk_div(15),
      I1 => i2s_lrclk_div_cnt_reg(15),
      O => \i2s_lrclk_toggle0_carry__0_i_1_n_0\
    );
\i2s_lrclk_toggle0_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => i2s_lrclk_div_cnt_reg(13),
      I1 => i2s_lrclk_div(13),
      I2 => i2s_lrclk_div_cnt_reg(12),
      I3 => i2s_lrclk_div(12),
      I4 => i2s_lrclk_div(14),
      I5 => i2s_lrclk_div_cnt_reg(14),
      O => \i2s_lrclk_toggle0_carry__0_i_2_n_0\
    );
i2s_lrclk_toggle0_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => i2s_lrclk_div_cnt_reg(10),
      I1 => i2s_lrclk_div(10),
      I2 => i2s_lrclk_div_cnt_reg(9),
      I3 => i2s_lrclk_div(9),
      I4 => i2s_lrclk_div(11),
      I5 => i2s_lrclk_div_cnt_reg(11),
      O => i2s_lrclk_toggle0_carry_i_1_n_0
    );
i2s_lrclk_toggle0_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => i2s_lrclk_div_cnt_reg(7),
      I1 => i2s_lrclk_div(7),
      I2 => i2s_lrclk_div_cnt_reg(6),
      I3 => i2s_lrclk_div(6),
      I4 => i2s_lrclk_div(8),
      I5 => i2s_lrclk_div_cnt_reg(8),
      O => i2s_lrclk_toggle0_carry_i_2_n_0
    );
i2s_lrclk_toggle0_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => i2s_lrclk_div_cnt_reg(4),
      I1 => i2s_lrclk_div(4),
      I2 => i2s_lrclk_div_cnt_reg(3),
      I3 => i2s_lrclk_div(3),
      I4 => i2s_lrclk_div(5),
      I5 => i2s_lrclk_div_cnt_reg(5),
      O => i2s_lrclk_toggle0_carry_i_3_n_0
    );
i2s_lrclk_toggle0_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => i2s_lrclk_div_cnt_reg(1),
      I1 => i2s_lrclk_div(1),
      I2 => i2s_lrclk_div_cnt_reg(0),
      I3 => i2s_lrclk_div(0),
      I4 => i2s_lrclk_div(2),
      I5 => i2s_lrclk_div_cnt_reg(2),
      O => i2s_lrclk_toggle0_carry_i_4_n_0
    );
\i2s_mclk_div_a[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => sync_aclk_to_i2s_src_clk_in(32),
      I2 => s_axi_wstrb(0),
      I3 => s_axi_awaddr(1),
      I4 => s_axi_awaddr(2),
      I5 => s_axi_awaddr(0),
      O => i2s_mclk_div_a
    );
\i2s_mclk_div_a_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_mclk_div_a,
      D => s_axi_wdata(0),
      Q => sync_aclk_to_i2s_src_clk_in(24),
      R => p_0_in
    );
\i2s_mclk_div_a_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_mclk_div_a,
      D => s_axi_wdata(1),
      Q => sync_aclk_to_i2s_src_clk_in(25),
      R => p_0_in
    );
\i2s_mclk_div_a_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_mclk_div_a,
      D => s_axi_wdata(2),
      Q => sync_aclk_to_i2s_src_clk_in(26),
      R => p_0_in
    );
\i2s_mclk_div_a_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_mclk_div_a,
      D => s_axi_wdata(3),
      Q => sync_aclk_to_i2s_src_clk_in(27),
      R => p_0_in
    );
\i2s_mclk_div_a_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_mclk_div_a,
      D => s_axi_wdata(4),
      Q => sync_aclk_to_i2s_src_clk_in(28),
      R => p_0_in
    );
\i2s_mclk_div_a_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_mclk_div_a,
      D => s_axi_wdata(5),
      Q => sync_aclk_to_i2s_src_clk_in(29),
      R => p_0_in
    );
\i2s_mclk_div_a_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_mclk_div_a,
      D => s_axi_wdata(6),
      Q => sync_aclk_to_i2s_src_clk_in(30),
      R => p_0_in
    );
\i2s_mclk_div_a_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => i2s_mclk_div_a,
      D => s_axi_wdata(7),
      Q => sync_aclk_to_i2s_src_clk_in(31),
      R => p_0_in
    );
\i2s_mclk_div_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i2s_mclk_div_cnt_reg(0),
      O => \p_0_in__1\(0)
    );
\i2s_mclk_div_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i2s_mclk_div_cnt_reg(0),
      I1 => i2s_mclk_div_cnt_reg(1),
      O => \p_0_in__1\(1)
    );
\i2s_mclk_div_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => i2s_mclk_div_cnt_reg(0),
      I1 => i2s_mclk_div_cnt_reg(1),
      I2 => i2s_mclk_div_cnt_reg(2),
      O => \p_0_in__1\(2)
    );
\i2s_mclk_div_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => i2s_mclk_div_cnt_reg(1),
      I1 => i2s_mclk_div_cnt_reg(0),
      I2 => i2s_mclk_div_cnt_reg(2),
      I3 => i2s_mclk_div_cnt_reg(3),
      O => \p_0_in__1\(3)
    );
\i2s_mclk_div_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => i2s_mclk_div_cnt_reg(2),
      I1 => i2s_mclk_div_cnt_reg(0),
      I2 => i2s_mclk_div_cnt_reg(1),
      I3 => i2s_mclk_div_cnt_reg(3),
      I4 => i2s_mclk_div_cnt_reg(4),
      O => \p_0_in__1\(4)
    );
\i2s_mclk_div_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => i2s_mclk_div_cnt_reg(3),
      I1 => i2s_mclk_div_cnt_reg(1),
      I2 => i2s_mclk_div_cnt_reg(0),
      I3 => i2s_mclk_div_cnt_reg(2),
      I4 => i2s_mclk_div_cnt_reg(4),
      I5 => i2s_mclk_div_cnt_reg(5),
      O => \p_0_in__1\(5)
    );
\i2s_mclk_div_cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \i2s_mclk_div_cnt[7]_i_3_n_0\,
      I1 => i2s_mclk_div_cnt_reg(6),
      O => \p_0_in__1\(6)
    );
\i2s_mclk_div_cnt[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => i2s_mclk_toggle,
      I1 => i2s_clk_div_en,
      O => \i2s_mclk_div_cnt[7]_i_1_n_0\
    );
\i2s_mclk_div_cnt[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \i2s_mclk_div_cnt[7]_i_3_n_0\,
      I1 => i2s_mclk_div_cnt_reg(6),
      I2 => i2s_mclk_div_cnt_reg(7),
      O => \p_0_in__1\(7)
    );
\i2s_mclk_div_cnt[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => i2s_mclk_div_cnt_reg(5),
      I1 => i2s_mclk_div_cnt_reg(3),
      I2 => i2s_mclk_div_cnt_reg(1),
      I3 => i2s_mclk_div_cnt_reg(0),
      I4 => i2s_mclk_div_cnt_reg(2),
      I5 => i2s_mclk_div_cnt_reg(4),
      O => \i2s_mclk_div_cnt[7]_i_3_n_0\
    );
\i2s_mclk_div_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => '1',
      D => \p_0_in__1\(0),
      Q => i2s_mclk_div_cnt_reg(0),
      R => \i2s_mclk_div_cnt[7]_i_1_n_0\
    );
\i2s_mclk_div_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => '1',
      D => \p_0_in__1\(1),
      Q => i2s_mclk_div_cnt_reg(1),
      R => \i2s_mclk_div_cnt[7]_i_1_n_0\
    );
\i2s_mclk_div_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => '1',
      D => \p_0_in__1\(2),
      Q => i2s_mclk_div_cnt_reg(2),
      R => \i2s_mclk_div_cnt[7]_i_1_n_0\
    );
\i2s_mclk_div_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => '1',
      D => \p_0_in__1\(3),
      Q => i2s_mclk_div_cnt_reg(3),
      R => \i2s_mclk_div_cnt[7]_i_1_n_0\
    );
\i2s_mclk_div_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => '1',
      D => \p_0_in__1\(4),
      Q => i2s_mclk_div_cnt_reg(4),
      R => \i2s_mclk_div_cnt[7]_i_1_n_0\
    );
\i2s_mclk_div_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => '1',
      D => \p_0_in__1\(5),
      Q => i2s_mclk_div_cnt_reg(5),
      R => \i2s_mclk_div_cnt[7]_i_1_n_0\
    );
\i2s_mclk_div_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => '1',
      D => \p_0_in__1\(6),
      Q => i2s_mclk_div_cnt_reg(6),
      R => \i2s_mclk_div_cnt[7]_i_1_n_0\
    );
\i2s_mclk_div_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => '1',
      D => \p_0_in__1\(7),
      Q => i2s_mclk_div_cnt_reg(7),
      R => \i2s_mclk_div_cnt[7]_i_1_n_0\
    );
\i2s_mclk_div_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => sync_aclk_to_i2s_src_clk_dst_req,
      D => sync_aclk_to_i2s_src_clk_out(24),
      Q => i2s_mclk_div(0),
      R => '0'
    );
\i2s_mclk_div_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => sync_aclk_to_i2s_src_clk_dst_req,
      D => sync_aclk_to_i2s_src_clk_out(25),
      Q => i2s_mclk_div(1),
      R => '0'
    );
\i2s_mclk_div_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => sync_aclk_to_i2s_src_clk_dst_req,
      D => sync_aclk_to_i2s_src_clk_out(26),
      Q => i2s_mclk_div(2),
      R => '0'
    );
\i2s_mclk_div_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => sync_aclk_to_i2s_src_clk_dst_req,
      D => sync_aclk_to_i2s_src_clk_out(27),
      Q => i2s_mclk_div(3),
      R => '0'
    );
\i2s_mclk_div_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => sync_aclk_to_i2s_src_clk_dst_req,
      D => sync_aclk_to_i2s_src_clk_out(28),
      Q => i2s_mclk_div(4),
      R => '0'
    );
\i2s_mclk_div_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => sync_aclk_to_i2s_src_clk_dst_req,
      D => sync_aclk_to_i2s_src_clk_out(29),
      Q => i2s_mclk_div(5),
      R => '0'
    );
\i2s_mclk_div_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => sync_aclk_to_i2s_src_clk_dst_req,
      D => sync_aclk_to_i2s_src_clk_out(30),
      Q => i2s_mclk_div(6),
      R => '0'
    );
\i2s_mclk_div_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => sync_aclk_to_i2s_src_clk_dst_req,
      D => sync_aclk_to_i2s_src_clk_out(31),
      Q => i2s_mclk_div(7),
      R => '0'
    );
i2s_mclk_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \^i2s_mclk\,
      I1 => i2s_mclk_toggle,
      I2 => i2s_clk_div_en,
      O => i2s_mclk_i_1_n_0
    );
i2s_mclk_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000090090000"
    )
        port map (
      I0 => i2s_mclk_div_cnt_reg(7),
      I1 => i2s_mclk_div(7),
      I2 => i2s_mclk_div_cnt_reg(6),
      I3 => i2s_mclk_div(6),
      I4 => i2s_clk_div_en,
      I5 => i2s_mclk_i_3_n_0,
      O => i2s_mclk_toggle
    );
i2s_mclk_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBEFFFFBE"
    )
        port map (
      I0 => i2s_mclk_i_4_n_0,
      I1 => i2s_mclk_div_cnt_reg(1),
      I2 => i2s_mclk_div(1),
      I3 => i2s_mclk_div_cnt_reg(0),
      I4 => i2s_mclk_div(0),
      I5 => i2s_mclk_i_5_n_0,
      O => i2s_mclk_i_3_n_0
    );
i2s_mclk_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => i2s_mclk_div_cnt_reg(4),
      I1 => i2s_mclk_div(4),
      I2 => i2s_mclk_div_cnt_reg(3),
      I3 => i2s_mclk_div(3),
      O => i2s_mclk_i_4_n_0
    );
i2s_mclk_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => i2s_mclk_div_cnt_reg(5),
      I1 => i2s_mclk_div(5),
      I2 => i2s_mclk_div_cnt_reg(2),
      I3 => i2s_mclk_div(2),
      O => i2s_mclk_i_5_n_0
    );
i2s_mclk_reg: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => '1',
      D => i2s_mclk_i_1_n_0,
      Q => \^i2s_mclk\,
      R => '0'
    );
i2s_pause_a_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => s_axi_wdata(2),
      I1 => \^s_axi_wready\,
      I2 => s_axi_wstrb(0),
      I3 => s_axi_awaddr(0),
      I4 => i2s_lb_en_a_i_2_n_0,
      I5 => sync_aclk_to_i2s_src_clk_in(46),
      O => i2s_pause_a_i_1_n_0
    );
i2s_pause_a_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i2s_pause_a_i_1_n_0,
      Q => sync_aclk_to_i2s_src_clk_in(46),
      R => p_0_in
    );
i2s_pause_reg: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => sync_aclk_to_i2s_src_clk_dst_req,
      D => sync_aclk_to_i2s_src_clk_out(46),
      Q => i2s_pause,
      R => '0'
    );
i2s_paused_a_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sync_i2s_src_clk_to_aclk_out(1),
      I1 => sync_i2s_src_clk_to_aclk_dst_req,
      I2 => data0(3),
      O => i2s_paused_a_i_1_n_0
    );
i2s_paused_a_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i2s_paused_a_i_1_n_0,
      Q => data0(3),
      R => '0'
    );
i2s_paused_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i2s_pause,
      I1 => i2s_paused_i_2_n_0,
      I2 => sync_i2s_src_clk_to_aclk_in(1),
      O => i2s_paused_i_1_n_0
    );
i2s_paused_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"337733777F337733"
    )
        port map (
      I0 => \i2s_fsm_state__0\(1),
      I1 => i2s_en,
      I2 => \FSM_sequential_i2s_fsm_state[2]_i_8_n_0\,
      I3 => \i2s_fsm_state__0\(0),
      I4 => \i2s_bclk_rising__0\,
      I5 => \i2s_fsm_state__0\(2),
      O => i2s_paused_i_2_n_0
    );
i2s_paused_reg: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => '1',
      D => i2s_paused_i_1_n_0,
      Q => sync_i2s_src_clk_to_aclk_in(1),
      R => '0'
    );
i2s_sdata_in_q_reg: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => '1',
      D => i2s_sdata_in,
      Q => i2s_sdata_in_q,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_in_sr[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \i2s_sdata_in_sr[30]_i_3_n_0\,
      I1 => i2s_sdata_in_q,
      I2 => i2s_lb_en,
      I3 => i2s_sdata_out_int_reg_n_0,
      O => i2s_sdata_in_sr(0)
    );
\i2s_sdata_in_sr[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \i2s_sdata_in_sr[30]_i_3_n_0\,
      I1 => \i2s_sdata_in_sr_reg_n_0_[9]\,
      O => i2s_sdata_in_sr(10)
    );
\i2s_sdata_in_sr[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \i2s_sdata_in_sr[30]_i_3_n_0\,
      I1 => \i2s_sdata_in_sr_reg_n_0_[10]\,
      O => i2s_sdata_in_sr(11)
    );
\i2s_sdata_in_sr[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \i2s_sdata_in_sr[30]_i_3_n_0\,
      I1 => \i2s_sdata_in_sr_reg_n_0_[11]\,
      O => i2s_sdata_in_sr(12)
    );
\i2s_sdata_in_sr[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \i2s_sdata_in_sr[30]_i_3_n_0\,
      I1 => \i2s_sdata_in_sr_reg_n_0_[12]\,
      O => i2s_sdata_in_sr(13)
    );
\i2s_sdata_in_sr[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \i2s_sdata_in_sr[30]_i_3_n_0\,
      I1 => \i2s_sdata_in_sr_reg_n_0_[13]\,
      O => i2s_sdata_in_sr(14)
    );
\i2s_sdata_in_sr[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \i2s_sdata_in_sr[30]_i_3_n_0\,
      I1 => \i2s_sdata_in_sr_reg_n_0_[14]\,
      O => i2s_sdata_in_sr(15)
    );
\i2s_sdata_in_sr[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \i2s_sdata_in_sr[30]_i_3_n_0\,
      I1 => \i2s_sdata_in_sr_reg_n_0_[15]\,
      O => i2s_sdata_in_sr(16)
    );
\i2s_sdata_in_sr[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \i2s_sdata_in_sr[30]_i_3_n_0\,
      I1 => \i2s_sdata_in_sr_reg_n_0_[16]\,
      O => i2s_sdata_in_sr(17)
    );
\i2s_sdata_in_sr[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \i2s_sdata_in_sr[30]_i_3_n_0\,
      I1 => \i2s_sdata_in_sr_reg_n_0_[17]\,
      O => i2s_sdata_in_sr(18)
    );
\i2s_sdata_in_sr[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \i2s_sdata_in_sr[30]_i_3_n_0\,
      I1 => \i2s_sdata_in_sr_reg_n_0_[18]\,
      O => i2s_sdata_in_sr(19)
    );
\i2s_sdata_in_sr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \i2s_sdata_in_sr[30]_i_3_n_0\,
      I1 => \i2s_sdata_in_sr_reg_n_0_[0]\,
      O => i2s_sdata_in_sr(1)
    );
\i2s_sdata_in_sr[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \i2s_sdata_in_sr[30]_i_3_n_0\,
      I1 => \i2s_sdata_in_sr_reg_n_0_[19]\,
      O => i2s_sdata_in_sr(20)
    );
\i2s_sdata_in_sr[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \i2s_sdata_in_sr[30]_i_3_n_0\,
      I1 => \i2s_sdata_in_sr_reg_n_0_[20]\,
      O => i2s_sdata_in_sr(21)
    );
\i2s_sdata_in_sr[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \i2s_sdata_in_sr[30]_i_3_n_0\,
      I1 => \i2s_sdata_in_sr_reg_n_0_[21]\,
      O => i2s_sdata_in_sr(22)
    );
\i2s_sdata_in_sr[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \i2s_sdata_in_sr[30]_i_3_n_0\,
      I1 => \i2s_sdata_in_sr_reg_n_0_[22]\,
      O => i2s_sdata_in_sr(23)
    );
\i2s_sdata_in_sr[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \i2s_sdata_in_sr[30]_i_3_n_0\,
      I1 => \i2s_sdata_in_sr_reg_n_0_[23]\,
      O => i2s_sdata_in_sr(24)
    );
\i2s_sdata_in_sr[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \i2s_sdata_in_sr[30]_i_3_n_0\,
      I1 => \i2s_sdata_in_sr_reg_n_0_[24]\,
      O => i2s_sdata_in_sr(25)
    );
\i2s_sdata_in_sr[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \i2s_sdata_in_sr[30]_i_3_n_0\,
      I1 => \i2s_sdata_in_sr_reg_n_0_[25]\,
      O => i2s_sdata_in_sr(26)
    );
\i2s_sdata_in_sr[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \i2s_sdata_in_sr[30]_i_3_n_0\,
      I1 => \i2s_sdata_in_sr_reg_n_0_[26]\,
      O => i2s_sdata_in_sr(27)
    );
\i2s_sdata_in_sr[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \i2s_sdata_in_sr[30]_i_3_n_0\,
      I1 => \i2s_sdata_in_sr_reg_n_0_[27]\,
      O => i2s_sdata_in_sr(28)
    );
\i2s_sdata_in_sr[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \i2s_sdata_in_sr[30]_i_3_n_0\,
      I1 => \i2s_sdata_in_sr_reg_n_0_[28]\,
      O => i2s_sdata_in_sr(29)
    );
\i2s_sdata_in_sr[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \i2s_sdata_in_sr[30]_i_3_n_0\,
      I1 => \i2s_sdata_in_sr_reg_n_0_[1]\,
      O => i2s_sdata_in_sr(2)
    );
\i2s_sdata_in_sr[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4430"
    )
        port map (
      I0 => m_axis_tvalid_i_4_n_0,
      I1 => \i2s_fsm_state__0\(0),
      I2 => \i2s_fsm_state__0\(2),
      I3 => \i2s_fsm_state__0\(1),
      O => \i2s_sdata_in_sr[30]_i_1_n_0\
    );
\i2s_sdata_in_sr[30]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \i2s_sdata_in_sr[30]_i_3_n_0\,
      I1 => \i2s_sdata_in_sr_reg_n_0_[29]\,
      O => i2s_sdata_in_sr(30)
    );
\i2s_sdata_in_sr[30]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007FFFFFFF"
    )
        port map (
      I0 => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[3]\,
      I1 => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[4]\,
      I2 => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[2]\,
      I3 => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[1]\,
      I4 => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[0]\,
      I5 => \i2s_fsm_state__0\(2),
      O => \i2s_sdata_in_sr[30]_i_3_n_0\
    );
\i2s_sdata_in_sr[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \i2s_sdata_in_sr[30]_i_3_n_0\,
      I1 => \i2s_sdata_in_sr_reg_n_0_[2]\,
      O => i2s_sdata_in_sr(3)
    );
\i2s_sdata_in_sr[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \i2s_sdata_in_sr[30]_i_3_n_0\,
      I1 => \i2s_sdata_in_sr_reg_n_0_[3]\,
      O => i2s_sdata_in_sr(4)
    );
\i2s_sdata_in_sr[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \i2s_sdata_in_sr[30]_i_3_n_0\,
      I1 => \i2s_sdata_in_sr_reg_n_0_[4]\,
      O => i2s_sdata_in_sr(5)
    );
\i2s_sdata_in_sr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \i2s_sdata_in_sr[30]_i_3_n_0\,
      I1 => \i2s_sdata_in_sr_reg_n_0_[5]\,
      O => i2s_sdata_in_sr(6)
    );
\i2s_sdata_in_sr[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \i2s_sdata_in_sr[30]_i_3_n_0\,
      I1 => \i2s_sdata_in_sr_reg_n_0_[6]\,
      O => i2s_sdata_in_sr(7)
    );
\i2s_sdata_in_sr[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \i2s_sdata_in_sr[30]_i_3_n_0\,
      I1 => \i2s_sdata_in_sr_reg_n_0_[7]\,
      O => i2s_sdata_in_sr(8)
    );
\i2s_sdata_in_sr[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \i2s_sdata_in_sr[30]_i_3_n_0\,
      I1 => \i2s_sdata_in_sr_reg_n_0_[8]\,
      O => i2s_sdata_in_sr(9)
    );
\i2s_sdata_in_sr_bit_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[0]\,
      I1 => \i2s_fsm_state__0\(0),
      I2 => \i2s_fsm_state__0\(1),
      I3 => m_axis_tvalid_i_4_n_0,
      O => i2s_sdata_in_sr_bit_cnt(0)
    );
\i2s_sdata_in_sr_bit_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"14000000"
    )
        port map (
      I0 => m_axis_tvalid_i_4_n_0,
      I1 => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[0]\,
      I2 => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[1]\,
      I3 => \i2s_fsm_state__0\(1),
      I4 => \i2s_fsm_state__0\(0),
      O => i2s_sdata_in_sr_bit_cnt(1)
    );
\i2s_sdata_in_sr_bit_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1540000000000000"
    )
        port map (
      I0 => m_axis_tvalid_i_4_n_0,
      I1 => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[0]\,
      I2 => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[1]\,
      I3 => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[2]\,
      I4 => \i2s_fsm_state__0\(1),
      I5 => \i2s_fsm_state__0\(0),
      O => i2s_sdata_in_sr_bit_cnt(2)
    );
\i2s_sdata_in_sr_bit_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000015554000"
    )
        port map (
      I0 => m_axis_tvalid_i_4_n_0,
      I1 => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[1]\,
      I2 => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[0]\,
      I3 => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[2]\,
      I4 => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[3]\,
      I5 => \FSM_sequential_i2s_fsm_state[2]_i_4_n_0\,
      O => i2s_sdata_in_sr_bit_cnt(3)
    );
\i2s_sdata_in_sr_bit_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"14000000"
    )
        port map (
      I0 => m_axis_tvalid_i_4_n_0,
      I1 => \i2s_sdata_in_sr_bit_cnt[5]_i_3_n_0\,
      I2 => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[4]\,
      I3 => \i2s_fsm_state__0\(1),
      I4 => \i2s_fsm_state__0\(0),
      O => i2s_sdata_in_sr_bit_cnt(4)
    );
\i2s_sdata_in_sr_bit_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55D555C000C0FFC0"
    )
        port map (
      I0 => m_axis_tvalid_i_4_n_0,
      I1 => \^m_axis_tvalid_reg_0\,
      I2 => m_axis_tready,
      I3 => \i2s_fsm_state__0\(2),
      I4 => \i2s_fsm_state__0\(1),
      I5 => \i2s_fsm_state__0\(0),
      O => \i2s_sdata_in_sr_bit_cnt[5]_i_1_n_0\
    );
\i2s_sdata_in_sr_bit_cnt[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \i2s_sdata_in_sr_bit_cnt[5]_i_3_n_0\,
      I1 => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[4]\,
      I2 => \i2s_fsm_state__0\(1),
      I3 => \i2s_fsm_state__0\(0),
      I4 => m_axis_tvalid_i_4_n_0,
      O => i2s_sdata_in_sr_bit_cnt(5)
    );
\i2s_sdata_in_sr_bit_cnt[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[3]\,
      I1 => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[1]\,
      I2 => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[0]\,
      I3 => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[2]\,
      O => \i2s_sdata_in_sr_bit_cnt[5]_i_3_n_0\
    );
\i2s_sdata_in_sr_bit_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_in_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_in_sr_bit_cnt(0),
      Q => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[0]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_in_sr_bit_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_in_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_in_sr_bit_cnt(1),
      Q => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[1]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_in_sr_bit_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_in_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_in_sr_bit_cnt(2),
      Q => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[2]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_in_sr_bit_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_in_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_in_sr_bit_cnt(3),
      Q => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[3]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_in_sr_bit_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_in_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_in_sr_bit_cnt(4),
      Q => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[4]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_in_sr_bit_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_in_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_in_sr_bit_cnt(5),
      Q => p_0_in_0,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_in_sr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(0),
      Q => \i2s_sdata_in_sr_reg_n_0_[0]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_in_sr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(10),
      Q => \i2s_sdata_in_sr_reg_n_0_[10]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_in_sr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(11),
      Q => \i2s_sdata_in_sr_reg_n_0_[11]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_in_sr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(12),
      Q => \i2s_sdata_in_sr_reg_n_0_[12]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_in_sr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(13),
      Q => \i2s_sdata_in_sr_reg_n_0_[13]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_in_sr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(14),
      Q => \i2s_sdata_in_sr_reg_n_0_[14]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_in_sr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(15),
      Q => \i2s_sdata_in_sr_reg_n_0_[15]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_in_sr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(16),
      Q => \i2s_sdata_in_sr_reg_n_0_[16]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_in_sr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(17),
      Q => \i2s_sdata_in_sr_reg_n_0_[17]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_in_sr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(18),
      Q => \i2s_sdata_in_sr_reg_n_0_[18]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_in_sr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(19),
      Q => \i2s_sdata_in_sr_reg_n_0_[19]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_in_sr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(1),
      Q => \i2s_sdata_in_sr_reg_n_0_[1]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_in_sr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(20),
      Q => \i2s_sdata_in_sr_reg_n_0_[20]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_in_sr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(21),
      Q => \i2s_sdata_in_sr_reg_n_0_[21]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_in_sr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(22),
      Q => \i2s_sdata_in_sr_reg_n_0_[22]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_in_sr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(23),
      Q => \i2s_sdata_in_sr_reg_n_0_[23]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_in_sr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(24),
      Q => \i2s_sdata_in_sr_reg_n_0_[24]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_in_sr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(25),
      Q => \i2s_sdata_in_sr_reg_n_0_[25]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_in_sr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(26),
      Q => \i2s_sdata_in_sr_reg_n_0_[26]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_in_sr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(27),
      Q => \i2s_sdata_in_sr_reg_n_0_[27]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_in_sr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(28),
      Q => \i2s_sdata_in_sr_reg_n_0_[28]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_in_sr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(29),
      Q => \i2s_sdata_in_sr_reg_n_0_[29]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_in_sr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(2),
      Q => \i2s_sdata_in_sr_reg_n_0_[2]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_in_sr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(30),
      Q => \i2s_sdata_in_sr_reg_n_0_[30]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_in_sr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(3),
      Q => \i2s_sdata_in_sr_reg_n_0_[3]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_in_sr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(4),
      Q => \i2s_sdata_in_sr_reg_n_0_[4]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_in_sr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(5),
      Q => \i2s_sdata_in_sr_reg_n_0_[5]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_in_sr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(6),
      Q => \i2s_sdata_in_sr_reg_n_0_[6]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_in_sr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(7),
      Q => \i2s_sdata_in_sr_reg_n_0_[7]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_in_sr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(8),
      Q => \i2s_sdata_in_sr_reg_n_0_[8]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_in_sr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_in_sr[30]_i_1_n_0\,
      D => i2s_sdata_in_sr(9),
      Q => \i2s_sdata_in_sr_reg_n_0_[9]\,
      R => m_axis_tvalid_i_1_n_0
    );
i2s_sdata_out_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i2s_sdata_in,
      I1 => i2s_lb_en,
      I2 => i2s_sdata_out_int_reg_n_0,
      O => i2s_sdata_out
    );
i2s_sdata_out_int_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40FF4000"
    )
        port map (
      I0 => \i2s_fsm_state__0\(2),
      I1 => \i2s_sdata_out_sr_reg_n_0_[31]\,
      I2 => \m_axis_tvalid1__6\,
      I3 => i2s_sdata_out_int_i_3_n_0,
      I4 => i2s_sdata_out_int_reg_n_0,
      O => i2s_sdata_out_int_i_1_n_0
    );
i2s_sdata_out_int_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00008A0000FF0000"
    )
        port map (
      I0 => p_27_in,
      I1 => \FSM_sequential_i2s_fsm_state[2]_i_10_n_0\,
      I2 => \m_axis_tvalid1__6\,
      I3 => \i2s_fsm_state__0\(0),
      I4 => \i2s_fsm_state__0\(2),
      I5 => \i2s_fsm_state__0\(1),
      O => i2s_sdata_out_int_i_3_n_0
    );
i2s_sdata_out_int_reg: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => '1',
      D => i2s_sdata_out_int_i_1_n_0,
      Q => i2s_sdata_out_int_reg_n_0,
      R => m_axis_tvalid_i_1_n_0
    );
i2s_sdata_out_int_reg_i_2: unisim.vcomponents.MUXF7
     port map (
      I0 => \i2s_sdata_out_sr_bit_cnt[0]_i_4_n_0\,
      I1 => \i2s_sdata_out_sr_bit_cnt[0]_i_5_n_0\,
      O => \m_axis_tvalid1__6\,
      S => \i2s_chan_cnt_reg_n_0_[2]\
    );
\i2s_sdata_out_sr[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008CCC"
    )
        port map (
      I0 => \i2s_sdata_out_sr_bit_cnt[5]_i_5_n_0\,
      I1 => s_axis_tdata(0),
      I2 => \i2s_fsm_state__0\(1),
      I3 => \i2s_fsm_state__0\(0),
      I4 => \i2s_fsm_state__0\(2),
      O => i2s_sdata_out_sr(0)
    );
\i2s_sdata_out_sr[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F0E2"
    )
        port map (
      I0 => \i2s_sdata_out_sr_reg_n_0_[9]\,
      I1 => \i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0\,
      I2 => s_axis_tdata(10),
      I3 => \i2s_sdata_out_sr_bit_cnt[0]_i_3_n_0\,
      I4 => \i2s_fsm_state__0\(2),
      O => i2s_sdata_out_sr(10)
    );
\i2s_sdata_out_sr[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F0E2"
    )
        port map (
      I0 => \i2s_sdata_out_sr_reg_n_0_[10]\,
      I1 => \i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0\,
      I2 => s_axis_tdata(11),
      I3 => \i2s_sdata_out_sr_bit_cnt[0]_i_3_n_0\,
      I4 => \i2s_fsm_state__0\(2),
      O => i2s_sdata_out_sr(11)
    );
\i2s_sdata_out_sr[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F0E2"
    )
        port map (
      I0 => \i2s_sdata_out_sr_reg_n_0_[11]\,
      I1 => \i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0\,
      I2 => s_axis_tdata(12),
      I3 => \i2s_sdata_out_sr_bit_cnt[0]_i_3_n_0\,
      I4 => \i2s_fsm_state__0\(2),
      O => i2s_sdata_out_sr(12)
    );
\i2s_sdata_out_sr[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F0E2"
    )
        port map (
      I0 => \i2s_sdata_out_sr_reg_n_0_[12]\,
      I1 => \i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0\,
      I2 => s_axis_tdata(13),
      I3 => \i2s_sdata_out_sr_bit_cnt[0]_i_3_n_0\,
      I4 => \i2s_fsm_state__0\(2),
      O => i2s_sdata_out_sr(13)
    );
\i2s_sdata_out_sr[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F0E2"
    )
        port map (
      I0 => \i2s_sdata_out_sr_reg_n_0_[13]\,
      I1 => \i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0\,
      I2 => s_axis_tdata(14),
      I3 => \i2s_sdata_out_sr_bit_cnt[0]_i_3_n_0\,
      I4 => \i2s_fsm_state__0\(2),
      O => i2s_sdata_out_sr(14)
    );
\i2s_sdata_out_sr[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F0E2"
    )
        port map (
      I0 => \i2s_sdata_out_sr_reg_n_0_[14]\,
      I1 => \i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0\,
      I2 => s_axis_tdata(15),
      I3 => \i2s_sdata_out_sr_bit_cnt[0]_i_3_n_0\,
      I4 => \i2s_fsm_state__0\(2),
      O => i2s_sdata_out_sr(15)
    );
\i2s_sdata_out_sr[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F0E2"
    )
        port map (
      I0 => \i2s_sdata_out_sr_reg_n_0_[15]\,
      I1 => \i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0\,
      I2 => s_axis_tdata(16),
      I3 => \i2s_sdata_out_sr_bit_cnt[0]_i_3_n_0\,
      I4 => \i2s_fsm_state__0\(2),
      O => i2s_sdata_out_sr(16)
    );
\i2s_sdata_out_sr[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F0E2"
    )
        port map (
      I0 => \i2s_sdata_out_sr_reg_n_0_[16]\,
      I1 => \i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0\,
      I2 => s_axis_tdata(17),
      I3 => \i2s_sdata_out_sr_bit_cnt[0]_i_3_n_0\,
      I4 => \i2s_fsm_state__0\(2),
      O => i2s_sdata_out_sr(17)
    );
\i2s_sdata_out_sr[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F0E2"
    )
        port map (
      I0 => \i2s_sdata_out_sr_reg_n_0_[17]\,
      I1 => \i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0\,
      I2 => s_axis_tdata(18),
      I3 => \i2s_sdata_out_sr_bit_cnt[0]_i_3_n_0\,
      I4 => \i2s_fsm_state__0\(2),
      O => i2s_sdata_out_sr(18)
    );
\i2s_sdata_out_sr[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F0E2"
    )
        port map (
      I0 => \i2s_sdata_out_sr_reg_n_0_[18]\,
      I1 => \i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0\,
      I2 => s_axis_tdata(19),
      I3 => \i2s_sdata_out_sr_bit_cnt[0]_i_3_n_0\,
      I4 => \i2s_fsm_state__0\(2),
      O => i2s_sdata_out_sr(19)
    );
\i2s_sdata_out_sr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F0E2"
    )
        port map (
      I0 => \i2s_sdata_out_sr_reg_n_0_[0]\,
      I1 => \i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0\,
      I2 => s_axis_tdata(1),
      I3 => \i2s_sdata_out_sr_bit_cnt[0]_i_3_n_0\,
      I4 => \i2s_fsm_state__0\(2),
      O => i2s_sdata_out_sr(1)
    );
\i2s_sdata_out_sr[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F0E2"
    )
        port map (
      I0 => \i2s_sdata_out_sr_reg_n_0_[19]\,
      I1 => \i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0\,
      I2 => s_axis_tdata(20),
      I3 => \i2s_sdata_out_sr_bit_cnt[0]_i_3_n_0\,
      I4 => \i2s_fsm_state__0\(2),
      O => i2s_sdata_out_sr(20)
    );
\i2s_sdata_out_sr[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F0E2"
    )
        port map (
      I0 => \i2s_sdata_out_sr_reg_n_0_[20]\,
      I1 => \i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0\,
      I2 => s_axis_tdata(21),
      I3 => \i2s_sdata_out_sr_bit_cnt[0]_i_3_n_0\,
      I4 => \i2s_fsm_state__0\(2),
      O => i2s_sdata_out_sr(21)
    );
\i2s_sdata_out_sr[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F0E2"
    )
        port map (
      I0 => \i2s_sdata_out_sr_reg_n_0_[21]\,
      I1 => \i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0\,
      I2 => s_axis_tdata(22),
      I3 => \i2s_sdata_out_sr_bit_cnt[0]_i_3_n_0\,
      I4 => \i2s_fsm_state__0\(2),
      O => i2s_sdata_out_sr(22)
    );
\i2s_sdata_out_sr[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F0E2"
    )
        port map (
      I0 => \i2s_sdata_out_sr_reg_n_0_[22]\,
      I1 => \i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0\,
      I2 => s_axis_tdata(23),
      I3 => \i2s_sdata_out_sr_bit_cnt[0]_i_3_n_0\,
      I4 => \i2s_fsm_state__0\(2),
      O => i2s_sdata_out_sr(23)
    );
\i2s_sdata_out_sr[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F0E2"
    )
        port map (
      I0 => \i2s_sdata_out_sr_reg_n_0_[23]\,
      I1 => \i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0\,
      I2 => s_axis_tdata(24),
      I3 => \i2s_sdata_out_sr_bit_cnt[0]_i_3_n_0\,
      I4 => \i2s_fsm_state__0\(2),
      O => i2s_sdata_out_sr(24)
    );
\i2s_sdata_out_sr[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F0E2"
    )
        port map (
      I0 => \i2s_sdata_out_sr_reg_n_0_[24]\,
      I1 => \i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0\,
      I2 => s_axis_tdata(25),
      I3 => \i2s_sdata_out_sr_bit_cnt[0]_i_3_n_0\,
      I4 => \i2s_fsm_state__0\(2),
      O => i2s_sdata_out_sr(25)
    );
\i2s_sdata_out_sr[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F0E2"
    )
        port map (
      I0 => \i2s_sdata_out_sr_reg_n_0_[25]\,
      I1 => \i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0\,
      I2 => s_axis_tdata(26),
      I3 => \i2s_sdata_out_sr_bit_cnt[0]_i_3_n_0\,
      I4 => \i2s_fsm_state__0\(2),
      O => i2s_sdata_out_sr(26)
    );
\i2s_sdata_out_sr[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F0E2"
    )
        port map (
      I0 => \i2s_sdata_out_sr_reg_n_0_[26]\,
      I1 => \i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0\,
      I2 => s_axis_tdata(27),
      I3 => \i2s_sdata_out_sr_bit_cnt[0]_i_3_n_0\,
      I4 => \i2s_fsm_state__0\(2),
      O => i2s_sdata_out_sr(27)
    );
\i2s_sdata_out_sr[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F0E2"
    )
        port map (
      I0 => \i2s_sdata_out_sr_reg_n_0_[27]\,
      I1 => \i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0\,
      I2 => s_axis_tdata(28),
      I3 => \i2s_sdata_out_sr_bit_cnt[0]_i_3_n_0\,
      I4 => \i2s_fsm_state__0\(2),
      O => i2s_sdata_out_sr(28)
    );
\i2s_sdata_out_sr[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F0E2"
    )
        port map (
      I0 => \i2s_sdata_out_sr_reg_n_0_[28]\,
      I1 => \i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0\,
      I2 => s_axis_tdata(29),
      I3 => \i2s_sdata_out_sr_bit_cnt[0]_i_3_n_0\,
      I4 => \i2s_fsm_state__0\(2),
      O => i2s_sdata_out_sr(29)
    );
\i2s_sdata_out_sr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F0E2"
    )
        port map (
      I0 => \i2s_sdata_out_sr_reg_n_0_[1]\,
      I1 => \i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0\,
      I2 => s_axis_tdata(2),
      I3 => \i2s_sdata_out_sr_bit_cnt[0]_i_3_n_0\,
      I4 => \i2s_fsm_state__0\(2),
      O => i2s_sdata_out_sr(2)
    );
\i2s_sdata_out_sr[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F0E2"
    )
        port map (
      I0 => \i2s_sdata_out_sr_reg_n_0_[29]\,
      I1 => \i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0\,
      I2 => s_axis_tdata(30),
      I3 => \i2s_sdata_out_sr_bit_cnt[0]_i_3_n_0\,
      I4 => \i2s_fsm_state__0\(2),
      O => i2s_sdata_out_sr(30)
    );
\i2s_sdata_out_sr[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F0E2"
    )
        port map (
      I0 => \i2s_sdata_out_sr_reg_n_0_[30]\,
      I1 => \i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0\,
      I2 => s_axis_tdata(31),
      I3 => \i2s_sdata_out_sr_bit_cnt[0]_i_3_n_0\,
      I4 => \i2s_fsm_state__0\(2),
      O => i2s_sdata_out_sr(31)
    );
\i2s_sdata_out_sr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F0E2"
    )
        port map (
      I0 => \i2s_sdata_out_sr_reg_n_0_[2]\,
      I1 => \i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0\,
      I2 => s_axis_tdata(3),
      I3 => \i2s_sdata_out_sr_bit_cnt[0]_i_3_n_0\,
      I4 => \i2s_fsm_state__0\(2),
      O => i2s_sdata_out_sr(3)
    );
\i2s_sdata_out_sr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F0E2"
    )
        port map (
      I0 => \i2s_sdata_out_sr_reg_n_0_[3]\,
      I1 => \i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0\,
      I2 => s_axis_tdata(4),
      I3 => \i2s_sdata_out_sr_bit_cnt[0]_i_3_n_0\,
      I4 => \i2s_fsm_state__0\(2),
      O => i2s_sdata_out_sr(4)
    );
\i2s_sdata_out_sr[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F0E2"
    )
        port map (
      I0 => \i2s_sdata_out_sr_reg_n_0_[4]\,
      I1 => \i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0\,
      I2 => s_axis_tdata(5),
      I3 => \i2s_sdata_out_sr_bit_cnt[0]_i_3_n_0\,
      I4 => \i2s_fsm_state__0\(2),
      O => i2s_sdata_out_sr(5)
    );
\i2s_sdata_out_sr[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F0E2"
    )
        port map (
      I0 => \i2s_sdata_out_sr_reg_n_0_[5]\,
      I1 => \i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0\,
      I2 => s_axis_tdata(6),
      I3 => \i2s_sdata_out_sr_bit_cnt[0]_i_3_n_0\,
      I4 => \i2s_fsm_state__0\(2),
      O => i2s_sdata_out_sr(6)
    );
\i2s_sdata_out_sr[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F0E2"
    )
        port map (
      I0 => \i2s_sdata_out_sr_reg_n_0_[6]\,
      I1 => \i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0\,
      I2 => s_axis_tdata(7),
      I3 => \i2s_sdata_out_sr_bit_cnt[0]_i_3_n_0\,
      I4 => \i2s_fsm_state__0\(2),
      O => i2s_sdata_out_sr(7)
    );
\i2s_sdata_out_sr[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F0E2"
    )
        port map (
      I0 => \i2s_sdata_out_sr_reg_n_0_[7]\,
      I1 => \i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0\,
      I2 => s_axis_tdata(8),
      I3 => \i2s_sdata_out_sr_bit_cnt[0]_i_3_n_0\,
      I4 => \i2s_fsm_state__0\(2),
      O => i2s_sdata_out_sr(8)
    );
\i2s_sdata_out_sr[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F0E2"
    )
        port map (
      I0 => \i2s_sdata_out_sr_reg_n_0_[8]\,
      I1 => \i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0\,
      I2 => s_axis_tdata(9),
      I3 => \i2s_sdata_out_sr_bit_cnt[0]_i_3_n_0\,
      I4 => \i2s_fsm_state__0\(2),
      O => i2s_sdata_out_sr(9)
    );
\i2s_sdata_out_sr_bit_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0\,
      I1 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[0]\,
      I2 => \i2s_fsm_state__0\(2),
      I3 => \i2s_sdata_out_sr_bit_cnt[0]_i_3_n_0\,
      O => i2s_sdata_out_sr_bit_cnt(0)
    );
\i2s_sdata_out_sr_bit_cnt[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57F7"
    )
        port map (
      I0 => \FSM_sequential_i2s_fsm_state[2]_i_10_n_0\,
      I1 => \i2s_sdata_out_sr_bit_cnt[0]_i_4_n_0\,
      I2 => \i2s_chan_cnt_reg_n_0_[2]\,
      I3 => \i2s_sdata_out_sr_bit_cnt[0]_i_5_n_0\,
      O => \i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0\
    );
\i2s_sdata_out_sr_bit_cnt[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \i2s_fsm_state__0\(1),
      I1 => \i2s_fsm_state__0\(0),
      I2 => p_27_in,
      O => \i2s_sdata_out_sr_bit_cnt[0]_i_3_n_0\
    );
\i2s_sdata_out_sr_bit_cnt[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CACAFFF0CACA0F00"
    )
        port map (
      I0 => i2s_chan_en(1),
      I1 => i2s_chan_en(3),
      I2 => \i2s_chan_cnt_reg_n_0_[1]\,
      I3 => i2s_chan_en(0),
      I4 => \i2s_chan_cnt_reg_n_0_[0]\,
      I5 => i2s_chan_en(2),
      O => \i2s_sdata_out_sr_bit_cnt[0]_i_4_n_0\
    );
\i2s_sdata_out_sr_bit_cnt[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CACAFFF0CACA0F00"
    )
        port map (
      I0 => i2s_chan_en(5),
      I1 => i2s_chan_en(7),
      I2 => \i2s_chan_cnt_reg_n_0_[1]\,
      I3 => i2s_chan_en(4),
      I4 => \i2s_chan_cnt_reg_n_0_[0]\,
      I5 => i2s_chan_en(6),
      O => \i2s_sdata_out_sr_bit_cnt[0]_i_5_n_0\
    );
\i2s_sdata_out_sr_bit_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"41000000"
    )
        port map (
      I0 => \i2s_sdata_out_sr_bit_cnt[5]_i_3_n_0\,
      I1 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[0]\,
      I2 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[1]\,
      I3 => \i2s_fsm_state__0\(1),
      I4 => \i2s_fsm_state__0\(0),
      O => i2s_sdata_out_sr_bit_cnt(1)
    );
\i2s_sdata_out_sr_bit_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5401000000000000"
    )
        port map (
      I0 => \i2s_sdata_out_sr_bit_cnt[5]_i_3_n_0\,
      I1 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[1]\,
      I2 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[0]\,
      I3 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[2]\,
      I4 => \i2s_fsm_state__0\(1),
      I5 => \i2s_fsm_state__0\(0),
      O => i2s_sdata_out_sr_bit_cnt(2)
    );
\i2s_sdata_out_sr_bit_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055540001"
    )
        port map (
      I0 => \i2s_sdata_out_sr_bit_cnt[5]_i_3_n_0\,
      I1 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[2]\,
      I2 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[0]\,
      I3 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[1]\,
      I4 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[3]\,
      I5 => \FSM_sequential_i2s_fsm_state[2]_i_4_n_0\,
      O => i2s_sdata_out_sr_bit_cnt(3)
    );
\i2s_sdata_out_sr_bit_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055540001"
    )
        port map (
      I0 => \i2s_sdata_out_sr_bit_cnt[5]_i_3_n_0\,
      I1 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[3]\,
      I2 => \i2s_sdata_out_sr_bit_cnt[4]_i_2_n_0\,
      I3 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[2]\,
      I4 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[4]\,
      I5 => \FSM_sequential_i2s_fsm_state[2]_i_4_n_0\,
      O => i2s_sdata_out_sr_bit_cnt(4)
    );
\i2s_sdata_out_sr_bit_cnt[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[0]\,
      I1 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[1]\,
      O => \i2s_sdata_out_sr_bit_cnt[4]_i_2_n_0\
    );
\i2s_sdata_out_sr_bit_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F000FFF8F888888"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => \^s_axis_tready_reg_0\,
      I2 => \i2s_sdata_out_sr_bit_cnt[5]_i_3_n_0\,
      I3 => \i2s_fsm_state__0\(0),
      I4 => \i2s_fsm_state__0\(1),
      I5 => \i2s_fsm_state__0\(2),
      O => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\
    );
\i2s_sdata_out_sr_bit_cnt[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF0000FFA9"
    )
        port map (
      I0 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[5]\,
      I1 => \i2s_sdata_out_sr_bit_cnt[5]_i_4_n_0\,
      I2 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[4]\,
      I3 => \i2s_sdata_out_sr_bit_cnt[5]_i_5_n_0\,
      I4 => \i2s_fsm_state__0\(2),
      I5 => \FSM_sequential_i2s_fsm_state[2]_i_4_n_0\,
      O => i2s_sdata_out_sr_bit_cnt(5)
    );
\i2s_sdata_out_sr_bit_cnt[5]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => p_27_in,
      I1 => \i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0\,
      I2 => \i2s_fsm_state__0\(2),
      O => \i2s_sdata_out_sr_bit_cnt[5]_i_3_n_0\
    );
\i2s_sdata_out_sr_bit_cnt[5]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[2]\,
      I1 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[0]\,
      I2 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[1]\,
      I3 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[3]\,
      O => \i2s_sdata_out_sr_bit_cnt[5]_i_4_n_0\
    );
\i2s_sdata_out_sr_bit_cnt[5]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0\,
      I1 => p_27_in,
      O => \i2s_sdata_out_sr_bit_cnt[5]_i_5_n_0\
    );
\i2s_sdata_out_sr_bit_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr_bit_cnt(0),
      Q => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[0]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_out_sr_bit_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr_bit_cnt(1),
      Q => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[1]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_out_sr_bit_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr_bit_cnt(2),
      Q => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[2]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_out_sr_bit_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr_bit_cnt(3),
      Q => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[3]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_out_sr_bit_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr_bit_cnt(4),
      Q => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[4]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_out_sr_bit_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr_bit_cnt(5),
      Q => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[5]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_out_sr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(0),
      Q => \i2s_sdata_out_sr_reg_n_0_[0]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_out_sr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(10),
      Q => \i2s_sdata_out_sr_reg_n_0_[10]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_out_sr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(11),
      Q => \i2s_sdata_out_sr_reg_n_0_[11]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_out_sr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(12),
      Q => \i2s_sdata_out_sr_reg_n_0_[12]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_out_sr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(13),
      Q => \i2s_sdata_out_sr_reg_n_0_[13]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_out_sr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(14),
      Q => \i2s_sdata_out_sr_reg_n_0_[14]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_out_sr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(15),
      Q => \i2s_sdata_out_sr_reg_n_0_[15]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_out_sr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(16),
      Q => \i2s_sdata_out_sr_reg_n_0_[16]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_out_sr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(17),
      Q => \i2s_sdata_out_sr_reg_n_0_[17]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_out_sr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(18),
      Q => \i2s_sdata_out_sr_reg_n_0_[18]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_out_sr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(19),
      Q => \i2s_sdata_out_sr_reg_n_0_[19]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_out_sr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(1),
      Q => \i2s_sdata_out_sr_reg_n_0_[1]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_out_sr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(20),
      Q => \i2s_sdata_out_sr_reg_n_0_[20]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_out_sr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(21),
      Q => \i2s_sdata_out_sr_reg_n_0_[21]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_out_sr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(22),
      Q => \i2s_sdata_out_sr_reg_n_0_[22]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_out_sr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(23),
      Q => \i2s_sdata_out_sr_reg_n_0_[23]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_out_sr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(24),
      Q => \i2s_sdata_out_sr_reg_n_0_[24]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_out_sr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(25),
      Q => \i2s_sdata_out_sr_reg_n_0_[25]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_out_sr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(26),
      Q => \i2s_sdata_out_sr_reg_n_0_[26]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_out_sr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(27),
      Q => \i2s_sdata_out_sr_reg_n_0_[27]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_out_sr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(28),
      Q => \i2s_sdata_out_sr_reg_n_0_[28]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_out_sr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(29),
      Q => \i2s_sdata_out_sr_reg_n_0_[29]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_out_sr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(2),
      Q => \i2s_sdata_out_sr_reg_n_0_[2]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_out_sr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(30),
      Q => \i2s_sdata_out_sr_reg_n_0_[30]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_out_sr_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(31),
      Q => \i2s_sdata_out_sr_reg_n_0_[31]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_out_sr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(3),
      Q => \i2s_sdata_out_sr_reg_n_0_[3]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_out_sr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(4),
      Q => \i2s_sdata_out_sr_reg_n_0_[4]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_out_sr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(5),
      Q => \i2s_sdata_out_sr_reg_n_0_[5]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_out_sr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(6),
      Q => \i2s_sdata_out_sr_reg_n_0_[6]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_out_sr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(7),
      Q => \i2s_sdata_out_sr_reg_n_0_[7]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_out_sr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(8),
      Q => \i2s_sdata_out_sr_reg_n_0_[8]\,
      R => m_axis_tvalid_i_1_n_0
    );
\i2s_sdata_out_sr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0\,
      D => i2s_sdata_out_sr(9),
      Q => \i2s_sdata_out_sr_reg_n_0_[9]\,
      R => m_axis_tvalid_i_1_n_0
    );
i2s_src_clk_to_aclk_sync: entity work.\icyradio_axi_i2s_0_xpm_cdc_handshake__parameterized0\
     port map (
      dest_ack => '0',
      dest_clk => aclk,
      dest_out(1 downto 0) => sync_i2s_src_clk_to_aclk_out(1 downto 0),
      dest_req => sync_i2s_src_clk_to_aclk_dst_req,
      src_clk => i2s_src_clk,
      src_in(1) => sync_i2s_src_clk_to_aclk_in(1),
      src_in(0) => i2s_src_resetn,
      src_rcv => sync_i2s_src_clk_to_aclk_src_done,
      src_send => sync_i2s_src_clk_to_aclk_src_req
    );
i2s_src_resetn_a_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sync_i2s_src_clk_to_aclk_out(0),
      I1 => sync_i2s_src_clk_to_aclk_dst_req,
      I2 => data0(31),
      O => i2s_src_resetn_a_i_1_n_0
    );
i2s_src_resetn_a_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i2s_src_resetn_a_i_1_n_0,
      Q => data0(31),
      R => '0'
    );
\m_axis_tdata[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => i2s_sdata_in_q,
      I1 => i2s_lb_en,
      I2 => i2s_sdata_out_int_reg_n_0,
      I3 => \i2s_fsm_state__0\(2),
      O => m_axis_tdata1_in(0)
    );
\m_axis_tdata[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i2s_sdata_in_sr_reg_n_0_[9]\,
      I1 => \i2s_fsm_state__0\(2),
      O => m_axis_tdata1_in(10)
    );
\m_axis_tdata[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i2s_sdata_in_sr_reg_n_0_[10]\,
      I1 => \i2s_fsm_state__0\(2),
      O => m_axis_tdata1_in(11)
    );
\m_axis_tdata[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i2s_sdata_in_sr_reg_n_0_[11]\,
      I1 => \i2s_fsm_state__0\(2),
      O => m_axis_tdata1_in(12)
    );
\m_axis_tdata[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i2s_sdata_in_sr_reg_n_0_[12]\,
      I1 => \i2s_fsm_state__0\(2),
      O => m_axis_tdata1_in(13)
    );
\m_axis_tdata[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i2s_sdata_in_sr_reg_n_0_[13]\,
      I1 => \i2s_fsm_state__0\(2),
      O => m_axis_tdata1_in(14)
    );
\m_axis_tdata[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i2s_sdata_in_sr_reg_n_0_[14]\,
      I1 => \i2s_fsm_state__0\(2),
      O => m_axis_tdata1_in(15)
    );
\m_axis_tdata[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i2s_sdata_in_sr_reg_n_0_[15]\,
      I1 => \i2s_fsm_state__0\(2),
      O => m_axis_tdata1_in(16)
    );
\m_axis_tdata[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i2s_sdata_in_sr_reg_n_0_[16]\,
      I1 => \i2s_fsm_state__0\(2),
      O => m_axis_tdata1_in(17)
    );
\m_axis_tdata[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i2s_sdata_in_sr_reg_n_0_[17]\,
      I1 => \i2s_fsm_state__0\(2),
      O => m_axis_tdata1_in(18)
    );
\m_axis_tdata[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i2s_sdata_in_sr_reg_n_0_[18]\,
      I1 => \i2s_fsm_state__0\(2),
      O => m_axis_tdata1_in(19)
    );
\m_axis_tdata[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i2s_sdata_in_sr_reg_n_0_[0]\,
      I1 => \i2s_fsm_state__0\(2),
      O => m_axis_tdata1_in(1)
    );
\m_axis_tdata[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i2s_sdata_in_sr_reg_n_0_[19]\,
      I1 => \i2s_fsm_state__0\(2),
      O => m_axis_tdata1_in(20)
    );
\m_axis_tdata[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i2s_sdata_in_sr_reg_n_0_[20]\,
      I1 => \i2s_fsm_state__0\(2),
      O => m_axis_tdata1_in(21)
    );
\m_axis_tdata[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i2s_sdata_in_sr_reg_n_0_[21]\,
      I1 => \i2s_fsm_state__0\(2),
      O => m_axis_tdata1_in(22)
    );
\m_axis_tdata[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i2s_sdata_in_sr_reg_n_0_[22]\,
      I1 => \i2s_fsm_state__0\(2),
      O => m_axis_tdata1_in(23)
    );
\m_axis_tdata[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i2s_sdata_in_sr_reg_n_0_[23]\,
      I1 => \i2s_fsm_state__0\(2),
      O => m_axis_tdata1_in(24)
    );
\m_axis_tdata[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i2s_sdata_in_sr_reg_n_0_[24]\,
      I1 => \i2s_fsm_state__0\(2),
      O => m_axis_tdata1_in(25)
    );
\m_axis_tdata[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i2s_sdata_in_sr_reg_n_0_[25]\,
      I1 => \i2s_fsm_state__0\(2),
      O => m_axis_tdata1_in(26)
    );
\m_axis_tdata[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i2s_sdata_in_sr_reg_n_0_[26]\,
      I1 => \i2s_fsm_state__0\(2),
      O => m_axis_tdata1_in(27)
    );
\m_axis_tdata[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i2s_sdata_in_sr_reg_n_0_[27]\,
      I1 => \i2s_fsm_state__0\(2),
      O => m_axis_tdata1_in(28)
    );
\m_axis_tdata[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i2s_sdata_in_sr_reg_n_0_[28]\,
      I1 => \i2s_fsm_state__0\(2),
      O => m_axis_tdata1_in(29)
    );
\m_axis_tdata[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i2s_sdata_in_sr_reg_n_0_[1]\,
      I1 => \i2s_fsm_state__0\(2),
      O => m_axis_tdata1_in(2)
    );
\m_axis_tdata[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i2s_sdata_in_sr_reg_n_0_[29]\,
      I1 => \i2s_fsm_state__0\(2),
      O => m_axis_tdata1_in(30)
    );
\m_axis_tdata[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AABA"
    )
        port map (
      I0 => m_axis_tvalid_i_3_n_0,
      I1 => \i2s_fsm_state__0\(0),
      I2 => \i2s_fsm_state__0\(2),
      I3 => \i2s_fsm_state__0\(1),
      O => \m_axis_tdata[31]_i_1_n_0\
    );
\m_axis_tdata[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i2s_sdata_in_sr_reg_n_0_[30]\,
      I1 => \i2s_fsm_state__0\(2),
      O => m_axis_tdata1_in(31)
    );
\m_axis_tdata[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i2s_sdata_in_sr_reg_n_0_[2]\,
      I1 => \i2s_fsm_state__0\(2),
      O => m_axis_tdata1_in(3)
    );
\m_axis_tdata[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i2s_sdata_in_sr_reg_n_0_[3]\,
      I1 => \i2s_fsm_state__0\(2),
      O => m_axis_tdata1_in(4)
    );
\m_axis_tdata[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i2s_sdata_in_sr_reg_n_0_[4]\,
      I1 => \i2s_fsm_state__0\(2),
      O => m_axis_tdata1_in(5)
    );
\m_axis_tdata[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i2s_sdata_in_sr_reg_n_0_[5]\,
      I1 => \i2s_fsm_state__0\(2),
      O => m_axis_tdata1_in(6)
    );
\m_axis_tdata[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i2s_sdata_in_sr_reg_n_0_[6]\,
      I1 => \i2s_fsm_state__0\(2),
      O => m_axis_tdata1_in(7)
    );
\m_axis_tdata[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i2s_sdata_in_sr_reg_n_0_[7]\,
      I1 => \i2s_fsm_state__0\(2),
      O => m_axis_tdata1_in(8)
    );
\m_axis_tdata[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i2s_sdata_in_sr_reg_n_0_[8]\,
      I1 => \i2s_fsm_state__0\(2),
      O => m_axis_tdata1_in(9)
    );
\m_axis_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => m_axis_tdata1_in(0),
      Q => m_axis_tdata(0),
      R => m_axis_tvalid_i_1_n_0
    );
\m_axis_tdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => m_axis_tdata1_in(10),
      Q => m_axis_tdata(10),
      R => m_axis_tvalid_i_1_n_0
    );
\m_axis_tdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => m_axis_tdata1_in(11),
      Q => m_axis_tdata(11),
      R => m_axis_tvalid_i_1_n_0
    );
\m_axis_tdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => m_axis_tdata1_in(12),
      Q => m_axis_tdata(12),
      R => m_axis_tvalid_i_1_n_0
    );
\m_axis_tdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => m_axis_tdata1_in(13),
      Q => m_axis_tdata(13),
      R => m_axis_tvalid_i_1_n_0
    );
\m_axis_tdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => m_axis_tdata1_in(14),
      Q => m_axis_tdata(14),
      R => m_axis_tvalid_i_1_n_0
    );
\m_axis_tdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => m_axis_tdata1_in(15),
      Q => m_axis_tdata(15),
      R => m_axis_tvalid_i_1_n_0
    );
\m_axis_tdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => m_axis_tdata1_in(16),
      Q => m_axis_tdata(16),
      R => m_axis_tvalid_i_1_n_0
    );
\m_axis_tdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => m_axis_tdata1_in(17),
      Q => m_axis_tdata(17),
      R => m_axis_tvalid_i_1_n_0
    );
\m_axis_tdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => m_axis_tdata1_in(18),
      Q => m_axis_tdata(18),
      R => m_axis_tvalid_i_1_n_0
    );
\m_axis_tdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => m_axis_tdata1_in(19),
      Q => m_axis_tdata(19),
      R => m_axis_tvalid_i_1_n_0
    );
\m_axis_tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => m_axis_tdata1_in(1),
      Q => m_axis_tdata(1),
      R => m_axis_tvalid_i_1_n_0
    );
\m_axis_tdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => m_axis_tdata1_in(20),
      Q => m_axis_tdata(20),
      R => m_axis_tvalid_i_1_n_0
    );
\m_axis_tdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => m_axis_tdata1_in(21),
      Q => m_axis_tdata(21),
      R => m_axis_tvalid_i_1_n_0
    );
\m_axis_tdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => m_axis_tdata1_in(22),
      Q => m_axis_tdata(22),
      R => m_axis_tvalid_i_1_n_0
    );
\m_axis_tdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => m_axis_tdata1_in(23),
      Q => m_axis_tdata(23),
      R => m_axis_tvalid_i_1_n_0
    );
\m_axis_tdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => m_axis_tdata1_in(24),
      Q => m_axis_tdata(24),
      R => m_axis_tvalid_i_1_n_0
    );
\m_axis_tdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => m_axis_tdata1_in(25),
      Q => m_axis_tdata(25),
      R => m_axis_tvalid_i_1_n_0
    );
\m_axis_tdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => m_axis_tdata1_in(26),
      Q => m_axis_tdata(26),
      R => m_axis_tvalid_i_1_n_0
    );
\m_axis_tdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => m_axis_tdata1_in(27),
      Q => m_axis_tdata(27),
      R => m_axis_tvalid_i_1_n_0
    );
\m_axis_tdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => m_axis_tdata1_in(28),
      Q => m_axis_tdata(28),
      R => m_axis_tvalid_i_1_n_0
    );
\m_axis_tdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => m_axis_tdata1_in(29),
      Q => m_axis_tdata(29),
      R => m_axis_tvalid_i_1_n_0
    );
\m_axis_tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => m_axis_tdata1_in(2),
      Q => m_axis_tdata(2),
      R => m_axis_tvalid_i_1_n_0
    );
\m_axis_tdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => m_axis_tdata1_in(30),
      Q => m_axis_tdata(30),
      R => m_axis_tvalid_i_1_n_0
    );
\m_axis_tdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => m_axis_tdata1_in(31),
      Q => m_axis_tdata(31),
      R => m_axis_tvalid_i_1_n_0
    );
\m_axis_tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => m_axis_tdata1_in(3),
      Q => m_axis_tdata(3),
      R => m_axis_tvalid_i_1_n_0
    );
\m_axis_tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => m_axis_tdata1_in(4),
      Q => m_axis_tdata(4),
      R => m_axis_tvalid_i_1_n_0
    );
\m_axis_tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => m_axis_tdata1_in(5),
      Q => m_axis_tdata(5),
      R => m_axis_tvalid_i_1_n_0
    );
\m_axis_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => m_axis_tdata1_in(6),
      Q => m_axis_tdata(6),
      R => m_axis_tvalid_i_1_n_0
    );
\m_axis_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => m_axis_tdata1_in(7),
      Q => m_axis_tdata(7),
      R => m_axis_tvalid_i_1_n_0
    );
\m_axis_tdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => m_axis_tdata1_in(8),
      Q => m_axis_tdata(8),
      R => m_axis_tvalid_i_1_n_0
    );
\m_axis_tdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => m_axis_tdata1_in(9),
      Q => m_axis_tdata(9),
      R => m_axis_tvalid_i_1_n_0
    );
m_axis_tvalid_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i2s_en,
      O => m_axis_tvalid_i_1_n_0
    );
m_axis_tvalid_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAEFFFAAAA2000"
    )
        port map (
      I0 => m_axis_tvalid_i_3_n_0,
      I1 => m_axis_tvalid_i_4_n_0,
      I2 => m_axis_tvalid_i_5_n_0,
      I3 => \m_axis_tvalid0__3\,
      I4 => m_axis_tvalid_i_7_n_0,
      I5 => \^m_axis_tvalid_reg_0\,
      O => m_axis_tvalid_i_2_n_0
    );
m_axis_tvalid_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => \i2s_fsm_state__0\(2),
      I1 => \FSM_sequential_i2s_fsm_state[2]_i_4_n_0\,
      I2 => p_0_in_0,
      I3 => \m_axis_tvalid1__6\,
      I4 => \m_axis_tvalid0__3\,
      I5 => \i2s_bclk_rising__0\,
      O => m_axis_tvalid_i_3_n_0
    );
m_axis_tvalid_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => \m_axis_tvalid1__6\,
      I1 => p_0_in_0,
      I2 => \i2s_bclk_rising__0\,
      I3 => \i2s_fsm_state__0\(2),
      O => m_axis_tvalid_i_4_n_0
    );
m_axis_tvalid_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \i2s_fsm_state__0\(0),
      I1 => \i2s_fsm_state__0\(1),
      I2 => \i2s_fsm_state__0\(2),
      O => m_axis_tvalid_i_5_n_0
    );
m_axis_tvalid_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[0]\,
      I1 => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[1]\,
      I2 => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[2]\,
      I3 => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[4]\,
      I4 => \i2s_sdata_in_sr_bit_cnt_reg_n_0_[3]\,
      O => \m_axis_tvalid0__3\
    );
m_axis_tvalid_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1F101010"
    )
        port map (
      I0 => \i2s_fsm_state__0\(0),
      I1 => \i2s_fsm_state__0\(1),
      I2 => \i2s_fsm_state__0\(2),
      I3 => m_axis_tready,
      I4 => \^m_axis_tvalid_reg_0\,
      O => m_axis_tvalid_i_7_n_0
    );
m_axis_tvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => '1',
      D => m_axis_tvalid_i_2_n_0,
      Q => \^m_axis_tvalid_reg_0\,
      R => m_axis_tvalid_i_1_n_0
    );
s_axi_arready_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^s_axi_rvalid_reg_0\,
      O => s_axi_arready
    );
s_axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => p_0_in
    );
s_axi_awready_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0B000000"
    )
        port map (
      I0 => s_axi_bready,
      I1 => \^s_axi_bvalid\,
      I2 => \^s_axi_wready\,
      I3 => s_axi_wvalid,
      I4 => s_axi_awvalid,
      O => s_axi_awready0
    );
s_axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axi_awready0,
      Q => \^s_axi_wready\,
      R => p_0_in
    );
s_axi_bvalid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => s_axi_bready,
      I2 => \^s_axi_bvalid\,
      O => s_axi_bvalid_i_1_n_0
    );
s_axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axi_bvalid_i_1_n_0,
      Q => \^s_axi_bvalid\,
      R => p_0_in
    );
\s_axi_rdata[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A8ABA8A"
    )
        port map (
      I0 => \s_axi_rdata[0]_i_2_n_0\,
      I1 => s_axi_araddr(1),
      I2 => s_axi_araddr(2),
      I3 => sync_aclk_to_i2s_src_clk_in(0),
      I4 => s_axi_araddr(0),
      O => s_axi_rdata_1(0)
    );
\s_axi_rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55D144D111D100D1"
    )
        port map (
      I0 => s_axi_araddr(2),
      I1 => s_axi_araddr(0),
      I2 => sync_aclk_to_i2s_src_clk_in(32),
      I3 => s_axi_araddr(1),
      I4 => sync_aclk_to_i2s_src_clk_in(24),
      I5 => sync_aclk_to_i2s_src_clk_in(16),
      O => \s_axi_rdata[0]_i_2_n_0\
    );
\s_axi_rdata[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02023000"
    )
        port map (
      I0 => sync_aclk_to_i2s_src_clk_in(39),
      I1 => s_axi_araddr(1),
      I2 => s_axi_araddr(2),
      I3 => sync_aclk_to_i2s_src_clk_in(10),
      I4 => s_axi_araddr(0),
      O => s_axi_rdata_1(10)
    );
\s_axi_rdata[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02023000"
    )
        port map (
      I0 => sync_aclk_to_i2s_src_clk_in(40),
      I1 => s_axi_araddr(1),
      I2 => s_axi_araddr(2),
      I3 => sync_aclk_to_i2s_src_clk_in(11),
      I4 => s_axi_araddr(0),
      O => s_axi_rdata_1(11)
    );
\s_axi_rdata[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02023000"
    )
        port map (
      I0 => sync_aclk_to_i2s_src_clk_in(41),
      I1 => s_axi_araddr(1),
      I2 => s_axi_araddr(2),
      I3 => sync_aclk_to_i2s_src_clk_in(12),
      I4 => s_axi_araddr(0),
      O => s_axi_rdata_1(12)
    );
\s_axi_rdata[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02023000"
    )
        port map (
      I0 => sync_aclk_to_i2s_src_clk_in(42),
      I1 => s_axi_araddr(1),
      I2 => s_axi_araddr(2),
      I3 => sync_aclk_to_i2s_src_clk_in(13),
      I4 => s_axi_araddr(0),
      O => s_axi_rdata_1(13)
    );
\s_axi_rdata[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02023000"
    )
        port map (
      I0 => sync_aclk_to_i2s_src_clk_in(43),
      I1 => s_axi_araddr(1),
      I2 => s_axi_araddr(2),
      I3 => sync_aclk_to_i2s_src_clk_in(14),
      I4 => s_axi_araddr(0),
      O => s_axi_rdata_1(14)
    );
\s_axi_rdata[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02023000"
    )
        port map (
      I0 => sync_aclk_to_i2s_src_clk_in(44),
      I1 => s_axi_araddr(1),
      I2 => s_axi_araddr(2),
      I3 => sync_aclk_to_i2s_src_clk_in(15),
      I4 => s_axi_araddr(0),
      O => s_axi_rdata_1(15)
    );
\s_axi_rdata[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000D"
    )
        port map (
      I0 => s_axi_araddr(0),
      I1 => sync_aclk_to_i2s_src_clk_in(34),
      I2 => s_axi_araddr(1),
      I3 => s_axi_araddr(2),
      O => s_axi_rdata_1(16)
    );
\s_axi_rdata[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => sync_aclk_to_i2s_src_clk_in(35),
      I1 => s_axi_araddr(0),
      I2 => s_axi_araddr(1),
      I3 => s_axi_araddr(2),
      O => s_axi_rdata_1(17)
    );
\s_axi_rdata[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => sync_aclk_to_i2s_src_clk_in(36),
      I1 => s_axi_araddr(0),
      I2 => s_axi_araddr(1),
      I3 => s_axi_araddr(2),
      O => s_axi_rdata_1(18)
    );
\s_axi_rdata[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A8ABA8A"
    )
        port map (
      I0 => \s_axi_rdata[1]_i_2_n_0\,
      I1 => s_axi_araddr(1),
      I2 => s_axi_araddr(2),
      I3 => sync_aclk_to_i2s_src_clk_in(1),
      I4 => s_axi_araddr(0),
      O => s_axi_rdata_1(1)
    );
\s_axi_rdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55C050C005C000C0"
    )
        port map (
      I0 => s_axi_araddr(2),
      I1 => sync_aclk_to_i2s_src_clk_in(47),
      I2 => s_axi_araddr(0),
      I3 => s_axi_araddr(1),
      I4 => sync_aclk_to_i2s_src_clk_in(25),
      I5 => sync_aclk_to_i2s_src_clk_in(17),
      O => \s_axi_rdata[1]_i_2_n_0\
    );
\s_axi_rdata[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => sync_aclk_to_i2s_src_clk_in(33),
      I1 => s_axi_araddr(0),
      I2 => s_axi_araddr(1),
      I3 => s_axi_araddr(2),
      O => s_axi_rdata_1(20)
    );
\s_axi_rdata[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A8ABA8A"
    )
        port map (
      I0 => \s_axi_rdata[2]_i_2_n_0\,
      I1 => s_axi_araddr(1),
      I2 => s_axi_araddr(2),
      I3 => sync_aclk_to_i2s_src_clk_in(2),
      I4 => s_axi_araddr(0),
      O => s_axi_rdata_1(2)
    );
\s_axi_rdata[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55C050C005C000C0"
    )
        port map (
      I0 => s_axi_araddr(2),
      I1 => sync_aclk_to_i2s_src_clk_in(46),
      I2 => s_axi_araddr(0),
      I3 => s_axi_araddr(1),
      I4 => sync_aclk_to_i2s_src_clk_in(26),
      I5 => sync_aclk_to_i2s_src_clk_in(18),
      O => \s_axi_rdata[2]_i_2_n_0\
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
\s_axi_rdata[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => data0(31),
      I1 => s_axi_araddr(0),
      I2 => s_axi_araddr(1),
      I3 => s_axi_araddr(2),
      O => s_axi_rdata_1(31)
    );
\s_axi_rdata[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A8ABA8A"
    )
        port map (
      I0 => \s_axi_rdata[3]_i_2_n_0\,
      I1 => s_axi_araddr(1),
      I2 => s_axi_araddr(2),
      I3 => sync_aclk_to_i2s_src_clk_in(3),
      I4 => s_axi_araddr(0),
      O => s_axi_rdata_1(3)
    );
\s_axi_rdata[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55C050C005C000C0"
    )
        port map (
      I0 => s_axi_araddr(2),
      I1 => data0(3),
      I2 => s_axi_araddr(0),
      I3 => s_axi_araddr(1),
      I4 => sync_aclk_to_i2s_src_clk_in(27),
      I5 => sync_aclk_to_i2s_src_clk_in(19),
      O => \s_axi_rdata[3]_i_2_n_0\
    );
\s_axi_rdata[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A8ABA8A"
    )
        port map (
      I0 => \s_axi_rdata[4]_i_2_n_0\,
      I1 => s_axi_araddr(1),
      I2 => s_axi_araddr(2),
      I3 => sync_aclk_to_i2s_src_clk_in(4),
      I4 => s_axi_araddr(0),
      O => s_axi_rdata_1(4)
    );
\s_axi_rdata[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55C050C005C000C0"
    )
        port map (
      I0 => s_axi_araddr(2),
      I1 => sync_aclk_to_i2s_src_clk_in(45),
      I2 => s_axi_araddr(0),
      I3 => s_axi_araddr(1),
      I4 => sync_aclk_to_i2s_src_clk_in(28),
      I5 => sync_aclk_to_i2s_src_clk_in(20),
      O => \s_axi_rdata[4]_i_2_n_0\
    );
\s_axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A000A00FC000C0"
    )
        port map (
      I0 => sync_aclk_to_i2s_src_clk_in(21),
      I1 => sync_aclk_to_i2s_src_clk_in(29),
      I2 => s_axi_araddr(1),
      I3 => s_axi_araddr(2),
      I4 => sync_aclk_to_i2s_src_clk_in(5),
      I5 => s_axi_araddr(0),
      O => s_axi_rdata_1(5)
    );
\s_axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A000A00FC000C0"
    )
        port map (
      I0 => sync_aclk_to_i2s_src_clk_in(22),
      I1 => sync_aclk_to_i2s_src_clk_in(30),
      I2 => s_axi_araddr(1),
      I3 => s_axi_araddr(2),
      I4 => sync_aclk_to_i2s_src_clk_in(6),
      I5 => s_axi_araddr(0),
      O => s_axi_rdata_1(6)
    );
\s_axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A000A00FC000C0"
    )
        port map (
      I0 => sync_aclk_to_i2s_src_clk_in(23),
      I1 => sync_aclk_to_i2s_src_clk_in(31),
      I2 => s_axi_araddr(1),
      I3 => s_axi_araddr(2),
      I4 => sync_aclk_to_i2s_src_clk_in(7),
      I5 => s_axi_araddr(0),
      O => s_axi_rdata_1(7)
    );
\s_axi_rdata[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02023000"
    )
        port map (
      I0 => sync_aclk_to_i2s_src_clk_in(37),
      I1 => s_axi_araddr(1),
      I2 => s_axi_araddr(2),
      I3 => sync_aclk_to_i2s_src_clk_in(8),
      I4 => s_axi_araddr(0),
      O => s_axi_rdata_1(8)
    );
\s_axi_rdata[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02023000"
    )
        port map (
      I0 => sync_aclk_to_i2s_src_clk_in(38),
      I1 => s_axi_araddr(1),
      I2 => s_axi_araddr(2),
      I3 => sync_aclk_to_i2s_src_clk_in(9),
      I4 => s_axi_araddr(0),
      O => s_axi_rdata_1(9)
    );
\s_axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => s_axi_rdata_1(0),
      Q => s_axi_rdata(0),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => s_axi_rdata_1(10),
      Q => s_axi_rdata(10),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => s_axi_rdata_1(11),
      Q => s_axi_rdata(11),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => s_axi_rdata_1(12),
      Q => s_axi_rdata(12),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => s_axi_rdata_1(13),
      Q => s_axi_rdata(13),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => s_axi_rdata_1(14),
      Q => s_axi_rdata(14),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => s_axi_rdata_1(15),
      Q => s_axi_rdata(15),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => s_axi_rdata_1(16),
      Q => s_axi_rdata(16),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => s_axi_rdata_1(17),
      Q => s_axi_rdata(17),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => s_axi_rdata_1(18),
      Q => s_axi_rdata(18),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => s_axi_rdata_1(1),
      Q => s_axi_rdata(1),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => s_axi_rdata_1(20),
      Q => s_axi_rdata(19),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => s_axi_rdata_1(2),
      Q => s_axi_rdata(2),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => s_axi_rdata_1(31),
      Q => s_axi_rdata(20),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => s_axi_rdata_1(3),
      Q => s_axi_rdata(3),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => s_axi_rdata_1(4),
      Q => s_axi_rdata(4),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => s_axi_rdata_1(5),
      Q => s_axi_rdata(5),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => s_axi_rdata_1(6),
      Q => s_axi_rdata(6),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => s_axi_rdata_1(7),
      Q => s_axi_rdata(7),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => s_axi_rdata_1(8),
      Q => s_axi_rdata(8),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => s_axi_rdata_1(9),
      Q => s_axi_rdata(9),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
s_axi_rvalid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4E"
    )
        port map (
      I0 => \^s_axi_rvalid_reg_0\,
      I1 => s_axi_arvalid,
      I2 => s_axi_rready,
      O => s_axi_rvalid_i_1_n_0
    );
s_axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axi_rvalid_i_1_n_0,
      Q => \^s_axi_rvalid_reg_0\,
      R => p_0_in
    );
s_axis_tready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF02FFFFFF0200"
    )
        port map (
      I0 => s_axis_tready023_out,
      I1 => s_axis_tready_i_3_n_0,
      I2 => \i2s_fsm_state__0\(0),
      I3 => s_axis_tready_i_4_n_0,
      I4 => s_axis_tready_i_5_n_0,
      I5 => \^s_axis_tready_reg_0\,
      O => s_axis_tready_i_1_n_0
    );
s_axis_tready_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^s_axis_tready_reg_0\,
      I1 => \i2s_sdata_out_sr_bit_cnt[4]_i_2_n_0\,
      I2 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[2]\,
      I3 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[3]\,
      I4 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[4]\,
      I5 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[5]\,
      O => s_axis_tready023_out
    );
s_axis_tready_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \i2s_fsm_state__0\(2),
      I1 => \i2s_fsm_state__0\(1),
      O => s_axis_tready_i_3_n_0
    );
s_axis_tready_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111F1111111F000"
    )
        port map (
      I0 => \i2s_fsm_state__0\(0),
      I1 => \i2s_fsm_state__0\(1),
      I2 => \^s_axis_tready_reg_0\,
      I3 => s_axis_tvalid,
      I4 => \i2s_fsm_state__0\(2),
      I5 => s_axis_tready023_out,
      O => s_axis_tready_i_4_n_0
    );
s_axis_tready_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => s_axis_tready_i_6_n_0,
      I1 => \FSM_sequential_i2s_fsm_state[2]_i_4_n_0\,
      I2 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[1]\,
      I3 => \i2s_fsm_state__0\(2),
      I4 => \i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0\,
      I5 => p_27_in,
      O => s_axis_tready_i_5_n_0
    );
s_axis_tready_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[5]\,
      I1 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[4]\,
      I2 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[3]\,
      I3 => \i2s_sdata_out_sr_bit_cnt_reg_n_0_[2]\,
      O => s_axis_tready_i_6_n_0
    );
s_axis_tready_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => i2s_bclk_i_6_n_0,
      I1 => i2s_bclk_i_5_n_0,
      I2 => i2s_bclk_i_4_n_0,
      I3 => i2s_bclk_i_3_n_0,
      I4 => \^i2s_bclk_reg_0\,
      O => p_27_in
    );
s_axis_tready_reg: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => '1',
      D => s_axis_tready_i_1_n_0,
      Q => \^s_axis_tready_reg_0\,
      R => m_axis_tvalid_i_1_n_0
    );
sync_aclk_to_i2s_src_clk_src_req_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sync_aclk_to_i2s_src_clk_src_done,
      O => sync_aclk_to_i2s_src_clk_src_req_i_1_n_0
    );
sync_aclk_to_i2s_src_clk_src_req_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => sync_aclk_to_i2s_src_clk_src_req_i_1_n_0,
      Q => sync_aclk_to_i2s_src_clk_src_req,
      R => '0'
    );
sync_i2s_src_clk_to_aclk_src_req_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sync_i2s_src_clk_to_aclk_src_done,
      O => sync_i2s_src_clk_to_aclk_src_req_i_1_n_0
    );
sync_i2s_src_clk_to_aclk_src_req_reg: unisim.vcomponents.FDRE
     port map (
      C => i2s_src_clk,
      CE => '1',
      D => sync_i2s_src_clk_to_aclk_src_req_i_1_n_0,
      Q => sync_i2s_src_clk_to_aclk_src_req,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_i2s_0 is
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
    irq : out STD_LOGIC;
    i2s_src_clk : in STD_LOGIC;
    i2s_src_resetn : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tready : out STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i2s_mclk : out STD_LOGIC;
    i2s_bclk : out STD_LOGIC;
    i2s_lrclk : out STD_LOGIC;
    i2s_sdata_out : out STD_LOGIC;
    i2s_sdata_in : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of icyradio_axi_i2s_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of icyradio_axi_i2s_0 : entity is "icyradio_axi_i2s_0,axi_i2s,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of icyradio_axi_i2s_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of icyradio_axi_i2s_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of icyradio_axi_i2s_0 : entity is "axi_i2s,Vivado 2023.2";
end icyradio_axi_i2s_0;

architecture STRUCTURE of icyradio_axi_i2s_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_wready\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET aresetn, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN icyradio_axi_pcie_0_0_axi_aclk_out, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of i2s_bclk : signal is "analog.com:interface:i2s:1.0 i2s BCLK";
  attribute X_INTERFACE_INFO of i2s_lrclk : signal is "analog.com:interface:i2s:1.0 i2s LRCLK";
  attribute X_INTERFACE_INFO of i2s_sdata_in : signal is "analog.com:interface:i2s:1.0 i2s SDATA_IN";
  attribute X_INTERFACE_INFO of i2s_sdata_out : signal is "analog.com:interface:i2s:1.0 i2s SDATA_OUT";
  attribute X_INTERFACE_INFO of i2s_src_clk : signal is "xilinx.com:signal:clock:1.0 i2s_src_clk CLK";
  attribute X_INTERFACE_PARAMETER of i2s_src_clk : signal is "XIL_INTERFACENAME i2s_src_clk, ASSOCIATED_RESET i2s_src_resetn, ASSOCIATED_BUSIF m_axis:s_axis, FREQ_HZ 49152000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN icyradio_FPGA_CLK1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of i2s_src_resetn : signal is "xilinx.com:signal:reset:1.0 i2s_src_resetn RST";
  attribute X_INTERFACE_PARAMETER of i2s_src_resetn : signal is "XIL_INTERFACENAME i2s_src_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of irq : signal is "xilinx.com:signal:interrupt:1.0 irq INTERRUPT";
  attribute X_INTERFACE_PARAMETER of irq : signal is "XIL_INTERFACENAME irq, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute X_INTERFACE_INFO of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
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
  attribute X_INTERFACE_INFO of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute X_INTERFACE_PARAMETER of m_axis_tdata : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 49152000, PHASE 0.0, CLK_DOMAIN icyradio_FPGA_CLK1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axi ARADDR";
  attribute X_INTERFACE_INFO of s_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 s_axi ARPROT";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi AWADDR";
  attribute X_INTERFACE_INFO of s_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 s_axi AWPROT";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi BRESP";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axi RRESP";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi WDATA";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axi WSTRB";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
  attribute X_INTERFACE_PARAMETER of s_axis_tdata : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 49152000, PHASE 0.0, CLK_DOMAIN icyradio_FPGA_CLK1, LAYERED_METADATA undef, INSERT_VIP 0";
begin
  irq <= \<const0>\;
  s_axi_awready <= \^s_axi_wready\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rdata(31) <= \^s_axi_rdata\(31);
  s_axi_rdata(30) <= \<const0>\;
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \<const0>\;
  s_axi_rdata(27) <= \<const0>\;
  s_axi_rdata(26) <= \<const0>\;
  s_axi_rdata(25) <= \<const0>\;
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \<const0>\;
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \<const0>\;
  s_axi_rdata(20) <= \^s_axi_rdata\(20);
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18 downto 0) <= \^s_axi_rdata\(18 downto 0);
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_wready <= \^s_axi_wready\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.icyradio_axi_i2s_0_axi_i2s
     port map (
      aclk => aclk,
      aresetn => aresetn,
      i2s_bclk_reg_0 => i2s_bclk,
      i2s_lrclk => i2s_lrclk,
      i2s_mclk => i2s_mclk,
      i2s_sdata_in => i2s_sdata_in,
      i2s_sdata_out => i2s_sdata_out,
      i2s_src_clk => i2s_src_clk,
      i2s_src_resetn => i2s_src_resetn,
      m_axis_tdata(31 downto 0) => m_axis_tdata(31 downto 0),
      m_axis_tready => m_axis_tready,
      m_axis_tvalid_reg_0 => m_axis_tvalid,
      s_axi_araddr(2 downto 0) => s_axi_araddr(4 downto 2),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(2 downto 0) => s_axi_awaddr(4 downto 2),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(20) => \^s_axi_rdata\(31),
      s_axi_rdata(19) => \^s_axi_rdata\(20),
      s_axi_rdata(18 downto 0) => \^s_axi_rdata\(18 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid_reg_0 => s_axi_rvalid,
      s_axi_wdata(19) => s_axi_wdata(20),
      s_axi_wdata(18 downto 0) => s_axi_wdata(18 downto 0),
      s_axi_wready => \^s_axi_wready\,
      s_axi_wstrb(2 downto 0) => s_axi_wstrb(2 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      s_axis_tdata(31 downto 0) => s_axis_tdata(31 downto 0),
      s_axis_tready_reg_0 => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
