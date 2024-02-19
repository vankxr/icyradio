-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Fri Dec  1 20:32:03 2023
-- Host        : node4-dev running 64-bit Ubuntu 22.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/joao/icyradio/firmware/icyradio.gen/sources_1/bd/icyradio/ip/icyradio_axi_dna_0_0/icyradio_axi_dna_0_0_sim_netlist.vhdl
-- Design      : icyradio_axi_dna_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_dna_0_0_axi_dna is
  port (
    s_axi_rvalid_reg_0 : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    dna : out STD_LOGIC_VECTOR ( 56 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    dna_ready_reg_0 : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_axi_dna_0_0_axi_dna : entity is "axi_dna";
end icyradio_axi_dna_0_0_axi_dna;

architecture STRUCTURE of icyradio_axi_dna_0_0_axi_dna is
  signal READ0 : STD_LOGIC;
  signal \^dna\ : STD_LOGIC_VECTOR ( 56 downto 0 );
  signal \dna0__4\ : STD_LOGIC;
  signal \dna[56]_i_1_n_0\ : STD_LOGIC;
  signal dna_clk : STD_LOGIC;
  signal \dna_clk_div_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \dna_clk_div_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal dna_clk_div_cnt_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dna_clk_i_1_n_0 : STD_LOGIC;
  signal dna_clk_toggle : STD_LOGIC;
  signal dna_dout : STD_LOGIC;
  signal dna_ready_i_1_n_0 : STD_LOGIC;
  signal \^dna_ready_reg_0\ : STD_LOGIC;
  signal dna_shift_cnt_reg : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 31 downto 30 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \s_axi_awready0__0\ : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \s_axi_bresp[1]_i_1_n_0\ : STD_LOGIC;
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
  signal \s_axi_rdata[30]_i_2_n_0\ : STD_LOGIC;
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
  signal \^s_axi_wready\ : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of DNA_PORT_inst : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \dna[56]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \dna_clk_div_cnt[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \dna_clk_div_cnt[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \dna_clk_div_cnt[3]_i_2\ : label is "soft_lutpair2";
  attribute X_INTERFACE_IGNORE : string;
  attribute X_INTERFACE_IGNORE of dna_ready_reg : label is "true";
  attribute X_INTERFACE_IGNORE of \dna_reg[0]\ : label is "true";
  attribute X_INTERFACE_IGNORE of \dna_reg[10]\ : label is "true";
  attribute X_INTERFACE_IGNORE of \dna_reg[11]\ : label is "true";
  attribute X_INTERFACE_IGNORE of \dna_reg[12]\ : label is "true";
  attribute X_INTERFACE_IGNORE of \dna_reg[13]\ : label is "true";
  attribute X_INTERFACE_IGNORE of \dna_reg[14]\ : label is "true";
  attribute X_INTERFACE_IGNORE of \dna_reg[15]\ : label is "true";
  attribute X_INTERFACE_IGNORE of \dna_reg[16]\ : label is "true";
  attribute X_INTERFACE_IGNORE of \dna_reg[17]\ : label is "true";
  attribute X_INTERFACE_IGNORE of \dna_reg[18]\ : label is "true";
  attribute X_INTERFACE_IGNORE of \dna_reg[19]\ : label is "true";
  attribute X_INTERFACE_IGNORE of \dna_reg[1]\ : label is "true";
  attribute X_INTERFACE_IGNORE of \dna_reg[20]\ : label is "true";
  attribute X_INTERFACE_IGNORE of \dna_reg[21]\ : label is "true";
  attribute X_INTERFACE_IGNORE of \dna_reg[22]\ : label is "true";
  attribute X_INTERFACE_IGNORE of \dna_reg[23]\ : label is "true";
  attribute X_INTERFACE_IGNORE of \dna_reg[24]\ : label is "true";
  attribute X_INTERFACE_IGNORE of \dna_reg[25]\ : label is "true";
  attribute X_INTERFACE_IGNORE of \dna_reg[26]\ : label is "true";
  attribute X_INTERFACE_IGNORE of \dna_reg[27]\ : label is "true";
  attribute X_INTERFACE_IGNORE of \dna_reg[28]\ : label is "true";
  attribute X_INTERFACE_IGNORE of \dna_reg[29]\ : label is "true";
  attribute X_INTERFACE_IGNORE of \dna_reg[2]\ : label is "true";
  attribute X_INTERFACE_IGNORE of \dna_reg[30]\ : label is "true";
  attribute X_INTERFACE_IGNORE of \dna_reg[31]\ : label is "true";
  attribute X_INTERFACE_IGNORE of \dna_reg[32]\ : label is "true";
  attribute X_INTERFACE_IGNORE of \dna_reg[33]\ : label is "true";
  attribute X_INTERFACE_IGNORE of \dna_reg[34]\ : label is "true";
  attribute X_INTERFACE_IGNORE of \dna_reg[35]\ : label is "true";
  attribute X_INTERFACE_IGNORE of \dna_reg[36]\ : label is "true";
  attribute X_INTERFACE_IGNORE of \dna_reg[37]\ : label is "true";
  attribute X_INTERFACE_IGNORE of \dna_reg[38]\ : label is "true";
  attribute X_INTERFACE_IGNORE of \dna_reg[39]\ : label is "true";
  attribute X_INTERFACE_IGNORE of \dna_reg[3]\ : label is "true";
  attribute X_INTERFACE_IGNORE of \dna_reg[40]\ : label is "true";
  attribute X_INTERFACE_IGNORE of \dna_reg[41]\ : label is "true";
  attribute X_INTERFACE_IGNORE of \dna_reg[42]\ : label is "true";
  attribute X_INTERFACE_IGNORE of \dna_reg[43]\ : label is "true";
  attribute X_INTERFACE_IGNORE of \dna_reg[44]\ : label is "true";
  attribute X_INTERFACE_IGNORE of \dna_reg[45]\ : label is "true";
  attribute X_INTERFACE_IGNORE of \dna_reg[46]\ : label is "true";
  attribute X_INTERFACE_IGNORE of \dna_reg[47]\ : label is "true";
  attribute X_INTERFACE_IGNORE of \dna_reg[48]\ : label is "true";
  attribute X_INTERFACE_IGNORE of \dna_reg[49]\ : label is "true";
  attribute X_INTERFACE_IGNORE of \dna_reg[4]\ : label is "true";
  attribute X_INTERFACE_IGNORE of \dna_reg[50]\ : label is "true";
  attribute X_INTERFACE_IGNORE of \dna_reg[51]\ : label is "true";
  attribute X_INTERFACE_IGNORE of \dna_reg[52]\ : label is "true";
  attribute X_INTERFACE_IGNORE of \dna_reg[53]\ : label is "true";
  attribute X_INTERFACE_IGNORE of \dna_reg[54]\ : label is "true";
  attribute X_INTERFACE_IGNORE of \dna_reg[55]\ : label is "true";
  attribute X_INTERFACE_IGNORE of \dna_reg[56]\ : label is "true";
  attribute X_INTERFACE_IGNORE of \dna_reg[5]\ : label is "true";
  attribute X_INTERFACE_IGNORE of \dna_reg[6]\ : label is "true";
  attribute X_INTERFACE_IGNORE of \dna_reg[7]\ : label is "true";
  attribute X_INTERFACE_IGNORE of \dna_reg[8]\ : label is "true";
  attribute X_INTERFACE_IGNORE of \dna_reg[9]\ : label is "true";
  attribute SOFT_HLUTNM of \dna_shift_cnt[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \dna_shift_cnt[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \dna_shift_cnt[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \dna_shift_cnt[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of s_axi_arready_INST_0 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of s_axi_awready0 : label is "soft_lutpair0";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s_axi_awready_reg : label is "xilinx.com:interface:aximm:1.0 s_axi AWREADY";
  attribute X_INTERFACE_INFO of \s_axi_bresp_reg[1]\ : label is "xilinx.com:interface:aximm:1.0 s_axi BRESP";
  attribute SOFT_HLUTNM of s_axi_bvalid_i_1 : label is "soft_lutpair0";
  attribute X_INTERFACE_INFO of s_axi_bvalid_reg : label is "xilinx.com:interface:aximm:1.0 s_axi BVALID";
  attribute SOFT_HLUTNM of \s_axi_rdata[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \s_axi_rdata[10]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \s_axi_rdata[11]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \s_axi_rdata[12]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \s_axi_rdata[13]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \s_axi_rdata[14]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \s_axi_rdata[15]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \s_axi_rdata[16]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \s_axi_rdata[17]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \s_axi_rdata[18]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \s_axi_rdata[19]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \s_axi_rdata[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \s_axi_rdata[20]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \s_axi_rdata[21]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \s_axi_rdata[22]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \s_axi_rdata[23]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \s_axi_rdata[24]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \s_axi_rdata[25]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \s_axi_rdata[26]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \s_axi_rdata[27]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \s_axi_rdata[28]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \s_axi_rdata[29]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \s_axi_rdata[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \s_axi_rdata[30]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \s_axi_rdata[31]_i_3\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \s_axi_rdata[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \s_axi_rdata[4]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \s_axi_rdata[5]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \s_axi_rdata[6]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \s_axi_rdata[7]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \s_axi_rdata[8]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \s_axi_rdata[9]_i_1\ : label is "soft_lutpair9";
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
  attribute SOFT_HLUTNM of s_axi_rvalid_i_1 : label is "soft_lutpair18";
  attribute X_INTERFACE_INFO of s_axi_rvalid_reg : label is "xilinx.com:interface:aximm:1.0 s_axi RVALID";
begin
  dna(56 downto 0) <= \^dna\(56 downto 0);
  dna_ready_reg_0 <= \^dna_ready_reg_0\;
  s_axi_bresp(0) <= \^s_axi_bresp\(0);
  s_axi_bvalid <= \^s_axi_bvalid\;
  s_axi_rvalid_reg_0 <= \^s_axi_rvalid_reg_0\;
  s_axi_wready <= \^s_axi_wready\;
DNA_PORT_inst: unisim.vcomponents.DNA_PORT
    generic map(
      SIM_DNA_VALUE => X"000000000000000"
    )
        port map (
      CLK => dna_clk,
      DIN => '0',
      DOUT => dna_dout,
      READ => READ0,
      SHIFT => '1'
    );
\dna[56]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \^dna_ready_reg_0\,
      I1 => dna_clk_toggle,
      I2 => dna_clk,
      I3 => \dna0__4\,
      O => \dna[56]_i_1_n_0\
    );
\dna[56]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => dna_clk_div_cnt_reg(3),
      I1 => dna_clk_div_cnt_reg(2),
      I2 => dna_clk_div_cnt_reg(1),
      I3 => dna_clk_div_cnt_reg(0),
      O => dna_clk_toggle
    );
\dna[56]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01FFFFFFFFFFFFFF"
    )
        port map (
      I0 => dna_shift_cnt_reg(0),
      I1 => dna_shift_cnt_reg(1),
      I2 => dna_shift_cnt_reg(2),
      I3 => dna_shift_cnt_reg(4),
      I4 => dna_shift_cnt_reg(5),
      I5 => dna_shift_cnt_reg(3),
      O => \dna0__4\
    );
\dna_clk_div_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dna_clk_div_cnt_reg(0),
      O => \p_0_in__1\(0)
    );
\dna_clk_div_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dna_clk_div_cnt_reg(0),
      I1 => dna_clk_div_cnt_reg(1),
      O => \p_0_in__1\(1)
    );
\dna_clk_div_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => dna_clk_div_cnt_reg(1),
      I1 => dna_clk_div_cnt_reg(0),
      I2 => dna_clk_div_cnt_reg(2),
      O => \dna_clk_div_cnt[2]_i_1_n_0\
    );
\dna_clk_div_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAEAAA"
    )
        port map (
      I0 => \^dna_ready_reg_0\,
      I1 => dna_clk_div_cnt_reg(0),
      I2 => dna_clk_div_cnt_reg(1),
      I3 => dna_clk_div_cnt_reg(2),
      I4 => dna_clk_div_cnt_reg(3),
      O => \dna_clk_div_cnt[3]_i_1_n_0\
    );
\dna_clk_div_cnt[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => dna_clk_div_cnt_reg(0),
      I1 => dna_clk_div_cnt_reg(1),
      I2 => dna_clk_div_cnt_reg(2),
      I3 => dna_clk_div_cnt_reg(3),
      O => \p_0_in__1\(3)
    );
\dna_clk_div_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \p_0_in__1\(0),
      Q => dna_clk_div_cnt_reg(0),
      R => \dna_clk_div_cnt[3]_i_1_n_0\
    );
\dna_clk_div_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \p_0_in__1\(1),
      Q => dna_clk_div_cnt_reg(1),
      R => \dna_clk_div_cnt[3]_i_1_n_0\
    );
\dna_clk_div_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \dna_clk_div_cnt[2]_i_1_n_0\,
      Q => dna_clk_div_cnt_reg(2),
      R => \dna_clk_div_cnt[3]_i_1_n_0\
    );
\dna_clk_div_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \p_0_in__1\(3),
      Q => dna_clk_div_cnt_reg(3),
      R => \dna_clk_div_cnt[3]_i_1_n_0\
    );
dna_clk_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000009AAAAAAA"
    )
        port map (
      I0 => dna_clk,
      I1 => dna_clk_div_cnt_reg(3),
      I2 => dna_clk_div_cnt_reg(2),
      I3 => dna_clk_div_cnt_reg(1),
      I4 => dna_clk_div_cnt_reg(0),
      I5 => \^dna_ready_reg_0\,
      O => dna_clk_i_1_n_0
    );
dna_clk_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => dna_clk_i_1_n_0,
      Q => dna_clk,
      R => '0'
    );
dna_ready_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"888888A8"
    )
        port map (
      I0 => aresetn,
      I1 => \^dna_ready_reg_0\,
      I2 => dna_clk_toggle,
      I3 => dna_clk,
      I4 => \dna0__4\,
      O => dna_ready_i_1_n_0
    );
dna_ready_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => dna_ready_i_1_n_0,
      Q => \^dna_ready_reg_0\,
      R => '0'
    );
\dna_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dna[56]_i_1_n_0\,
      D => dna_dout,
      Q => \^dna\(0),
      R => READ0
    );
\dna_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dna[56]_i_1_n_0\,
      D => \^dna\(9),
      Q => \^dna\(10),
      R => READ0
    );
\dna_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dna[56]_i_1_n_0\,
      D => \^dna\(10),
      Q => \^dna\(11),
      R => READ0
    );
\dna_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dna[56]_i_1_n_0\,
      D => \^dna\(11),
      Q => \^dna\(12),
      R => READ0
    );
\dna_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dna[56]_i_1_n_0\,
      D => \^dna\(12),
      Q => \^dna\(13),
      R => READ0
    );
\dna_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dna[56]_i_1_n_0\,
      D => \^dna\(13),
      Q => \^dna\(14),
      R => READ0
    );
\dna_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dna[56]_i_1_n_0\,
      D => \^dna\(14),
      Q => \^dna\(15),
      R => READ0
    );
\dna_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dna[56]_i_1_n_0\,
      D => \^dna\(15),
      Q => \^dna\(16),
      R => READ0
    );
\dna_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dna[56]_i_1_n_0\,
      D => \^dna\(16),
      Q => \^dna\(17),
      R => READ0
    );
\dna_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dna[56]_i_1_n_0\,
      D => \^dna\(17),
      Q => \^dna\(18),
      R => READ0
    );
\dna_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dna[56]_i_1_n_0\,
      D => \^dna\(18),
      Q => \^dna\(19),
      R => READ0
    );
\dna_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dna[56]_i_1_n_0\,
      D => \^dna\(0),
      Q => \^dna\(1),
      R => READ0
    );
\dna_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dna[56]_i_1_n_0\,
      D => \^dna\(19),
      Q => \^dna\(20),
      R => READ0
    );
\dna_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dna[56]_i_1_n_0\,
      D => \^dna\(20),
      Q => \^dna\(21),
      R => READ0
    );
\dna_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dna[56]_i_1_n_0\,
      D => \^dna\(21),
      Q => \^dna\(22),
      R => READ0
    );
\dna_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dna[56]_i_1_n_0\,
      D => \^dna\(22),
      Q => \^dna\(23),
      R => READ0
    );
\dna_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dna[56]_i_1_n_0\,
      D => \^dna\(23),
      Q => \^dna\(24),
      R => READ0
    );
\dna_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dna[56]_i_1_n_0\,
      D => \^dna\(24),
      Q => \^dna\(25),
      R => READ0
    );
\dna_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dna[56]_i_1_n_0\,
      D => \^dna\(25),
      Q => \^dna\(26),
      R => READ0
    );
\dna_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dna[56]_i_1_n_0\,
      D => \^dna\(26),
      Q => \^dna\(27),
      R => READ0
    );
\dna_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dna[56]_i_1_n_0\,
      D => \^dna\(27),
      Q => \^dna\(28),
      R => READ0
    );
\dna_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dna[56]_i_1_n_0\,
      D => \^dna\(28),
      Q => \^dna\(29),
      R => READ0
    );
\dna_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dna[56]_i_1_n_0\,
      D => \^dna\(1),
      Q => \^dna\(2),
      R => READ0
    );
\dna_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dna[56]_i_1_n_0\,
      D => \^dna\(29),
      Q => \^dna\(30),
      R => READ0
    );
\dna_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dna[56]_i_1_n_0\,
      D => \^dna\(30),
      Q => \^dna\(31),
      R => READ0
    );
\dna_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dna[56]_i_1_n_0\,
      D => \^dna\(31),
      Q => \^dna\(32),
      R => READ0
    );
\dna_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dna[56]_i_1_n_0\,
      D => \^dna\(32),
      Q => \^dna\(33),
      R => READ0
    );
\dna_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dna[56]_i_1_n_0\,
      D => \^dna\(33),
      Q => \^dna\(34),
      R => READ0
    );
\dna_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dna[56]_i_1_n_0\,
      D => \^dna\(34),
      Q => \^dna\(35),
      R => READ0
    );
\dna_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dna[56]_i_1_n_0\,
      D => \^dna\(35),
      Q => \^dna\(36),
      R => READ0
    );
\dna_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dna[56]_i_1_n_0\,
      D => \^dna\(36),
      Q => \^dna\(37),
      R => READ0
    );
\dna_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dna[56]_i_1_n_0\,
      D => \^dna\(37),
      Q => \^dna\(38),
      R => READ0
    );
\dna_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dna[56]_i_1_n_0\,
      D => \^dna\(38),
      Q => \^dna\(39),
      R => READ0
    );
\dna_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dna[56]_i_1_n_0\,
      D => \^dna\(2),
      Q => \^dna\(3),
      R => READ0
    );
\dna_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dna[56]_i_1_n_0\,
      D => \^dna\(39),
      Q => \^dna\(40),
      R => READ0
    );
\dna_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dna[56]_i_1_n_0\,
      D => \^dna\(40),
      Q => \^dna\(41),
      R => READ0
    );
\dna_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dna[56]_i_1_n_0\,
      D => \^dna\(41),
      Q => \^dna\(42),
      R => READ0
    );
\dna_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dna[56]_i_1_n_0\,
      D => \^dna\(42),
      Q => \^dna\(43),
      R => READ0
    );
\dna_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dna[56]_i_1_n_0\,
      D => \^dna\(43),
      Q => \^dna\(44),
      R => READ0
    );
\dna_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dna[56]_i_1_n_0\,
      D => \^dna\(44),
      Q => \^dna\(45),
      R => READ0
    );
\dna_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dna[56]_i_1_n_0\,
      D => \^dna\(45),
      Q => \^dna\(46),
      R => READ0
    );
\dna_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dna[56]_i_1_n_0\,
      D => \^dna\(46),
      Q => \^dna\(47),
      R => READ0
    );
\dna_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dna[56]_i_1_n_0\,
      D => \^dna\(47),
      Q => \^dna\(48),
      R => READ0
    );
\dna_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dna[56]_i_1_n_0\,
      D => \^dna\(48),
      Q => \^dna\(49),
      R => READ0
    );
\dna_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dna[56]_i_1_n_0\,
      D => \^dna\(3),
      Q => \^dna\(4),
      R => READ0
    );
\dna_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dna[56]_i_1_n_0\,
      D => \^dna\(49),
      Q => \^dna\(50),
      R => READ0
    );
\dna_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dna[56]_i_1_n_0\,
      D => \^dna\(50),
      Q => \^dna\(51),
      R => READ0
    );
\dna_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dna[56]_i_1_n_0\,
      D => \^dna\(51),
      Q => \^dna\(52),
      R => READ0
    );
\dna_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dna[56]_i_1_n_0\,
      D => \^dna\(52),
      Q => \^dna\(53),
      R => READ0
    );
\dna_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dna[56]_i_1_n_0\,
      D => \^dna\(53),
      Q => \^dna\(54),
      R => READ0
    );
\dna_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dna[56]_i_1_n_0\,
      D => \^dna\(54),
      Q => \^dna\(55),
      R => READ0
    );
\dna_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dna[56]_i_1_n_0\,
      D => \^dna\(55),
      Q => \^dna\(56),
      R => READ0
    );
\dna_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dna[56]_i_1_n_0\,
      D => \^dna\(4),
      Q => \^dna\(5),
      R => READ0
    );
\dna_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dna[56]_i_1_n_0\,
      D => \^dna\(5),
      Q => \^dna\(6),
      R => READ0
    );
\dna_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dna[56]_i_1_n_0\,
      D => \^dna\(6),
      Q => \^dna\(7),
      R => READ0
    );
\dna_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dna[56]_i_1_n_0\,
      D => \^dna\(7),
      Q => \^dna\(8),
      R => READ0
    );
\dna_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dna[56]_i_1_n_0\,
      D => \^dna\(8),
      Q => \^dna\(9),
      R => READ0
    );
\dna_shift_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dna_shift_cnt_reg(0),
      O => \p_0_in__0\(0)
    );
\dna_shift_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dna_shift_cnt_reg(0),
      I1 => dna_shift_cnt_reg(1),
      O => \p_0_in__0\(1)
    );
\dna_shift_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => dna_shift_cnt_reg(0),
      I1 => dna_shift_cnt_reg(1),
      I2 => dna_shift_cnt_reg(2),
      O => \p_0_in__0\(2)
    );
\dna_shift_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => dna_shift_cnt_reg(1),
      I1 => dna_shift_cnt_reg(0),
      I2 => dna_shift_cnt_reg(2),
      I3 => dna_shift_cnt_reg(3),
      O => \p_0_in__0\(3)
    );
\dna_shift_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => dna_shift_cnt_reg(2),
      I1 => dna_shift_cnt_reg(0),
      I2 => dna_shift_cnt_reg(1),
      I3 => dna_shift_cnt_reg(3),
      I4 => dna_shift_cnt_reg(4),
      O => \p_0_in__0\(4)
    );
\dna_shift_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => dna_shift_cnt_reg(3),
      I1 => dna_shift_cnt_reg(1),
      I2 => dna_shift_cnt_reg(0),
      I3 => dna_shift_cnt_reg(2),
      I4 => dna_shift_cnt_reg(4),
      I5 => dna_shift_cnt_reg(5),
      O => \p_0_in__0\(5)
    );
\dna_shift_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dna[56]_i_1_n_0\,
      D => \p_0_in__0\(0),
      Q => dna_shift_cnt_reg(0),
      R => READ0
    );
\dna_shift_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dna[56]_i_1_n_0\,
      D => \p_0_in__0\(1),
      Q => dna_shift_cnt_reg(1),
      R => READ0
    );
\dna_shift_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dna[56]_i_1_n_0\,
      D => \p_0_in__0\(2),
      Q => dna_shift_cnt_reg(2),
      R => READ0
    );
\dna_shift_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dna[56]_i_1_n_0\,
      D => \p_0_in__0\(3),
      Q => dna_shift_cnt_reg(3),
      R => READ0
    );
\dna_shift_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dna[56]_i_1_n_0\,
      D => \p_0_in__0\(4),
      Q => dna_shift_cnt_reg(4),
      R => READ0
    );
\dna_shift_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dna[56]_i_1_n_0\,
      D => \p_0_in__0\(5),
      Q => dna_shift_cnt_reg(5),
      R => READ0
    );
s_axi_arready_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^s_axi_rvalid_reg_0\,
      O => s_axi_arready
    );
s_axi_awready0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0B000000"
    )
        port map (
      I0 => s_axi_bready,
      I1 => \^s_axi_bvalid\,
      I2 => \^s_axi_wready\,
      I3 => s_axi_wvalid,
      I4 => s_axi_awvalid,
      O => \s_axi_awready0__0\
    );
s_axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => READ0
    );
s_axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_axi_awready0__0\,
      Q => \^s_axi_wready\,
      R => READ0
    );
\s_axi_bresp[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DC"
    )
        port map (
      I0 => s_axi_bready,
      I1 => \^s_axi_wready\,
      I2 => \^s_axi_bresp\(0),
      O => \s_axi_bresp[1]_i_1_n_0\
    );
\s_axi_bresp_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_axi_bresp[1]_i_1_n_0\,
      Q => \^s_axi_bresp\(0),
      R => READ0
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
      R => READ0
    );
\s_axi_rdata[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^dna\(32),
      I1 => s_axi_araddr(0),
      I2 => \^dna\(0),
      O => \s_axi_rdata[0]_i_1_n_0\
    );
\s_axi_rdata[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^dna\(42),
      I1 => s_axi_araddr(0),
      I2 => \^dna\(10),
      O => \s_axi_rdata[10]_i_1_n_0\
    );
\s_axi_rdata[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^dna\(43),
      I1 => s_axi_araddr(0),
      I2 => \^dna\(11),
      O => \s_axi_rdata[11]_i_1_n_0\
    );
\s_axi_rdata[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^dna\(44),
      I1 => s_axi_araddr(0),
      I2 => \^dna\(12),
      O => \s_axi_rdata[12]_i_1_n_0\
    );
\s_axi_rdata[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^dna\(45),
      I1 => s_axi_araddr(0),
      I2 => \^dna\(13),
      O => \s_axi_rdata[13]_i_1_n_0\
    );
\s_axi_rdata[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^dna\(46),
      I1 => s_axi_araddr(0),
      I2 => \^dna\(14),
      O => \s_axi_rdata[14]_i_1_n_0\
    );
\s_axi_rdata[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^dna\(47),
      I1 => s_axi_araddr(0),
      I2 => \^dna\(15),
      O => \s_axi_rdata[15]_i_1_n_0\
    );
\s_axi_rdata[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^dna\(48),
      I1 => s_axi_araddr(0),
      I2 => \^dna\(16),
      O => \s_axi_rdata[16]_i_1_n_0\
    );
\s_axi_rdata[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^dna\(49),
      I1 => s_axi_araddr(0),
      I2 => \^dna\(17),
      O => \s_axi_rdata[17]_i_1_n_0\
    );
\s_axi_rdata[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^dna\(50),
      I1 => s_axi_araddr(0),
      I2 => \^dna\(18),
      O => \s_axi_rdata[18]_i_1_n_0\
    );
\s_axi_rdata[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^dna\(51),
      I1 => s_axi_araddr(0),
      I2 => \^dna\(19),
      O => \s_axi_rdata[19]_i_1_n_0\
    );
\s_axi_rdata[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^dna\(33),
      I1 => s_axi_araddr(0),
      I2 => \^dna\(1),
      O => \s_axi_rdata[1]_i_1_n_0\
    );
\s_axi_rdata[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^dna\(52),
      I1 => s_axi_araddr(0),
      I2 => \^dna\(20),
      O => \s_axi_rdata[20]_i_1_n_0\
    );
\s_axi_rdata[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^dna\(53),
      I1 => s_axi_araddr(0),
      I2 => \^dna\(21),
      O => \s_axi_rdata[21]_i_1_n_0\
    );
\s_axi_rdata[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^dna\(54),
      I1 => s_axi_araddr(0),
      I2 => \^dna\(22),
      O => \s_axi_rdata[22]_i_1_n_0\
    );
\s_axi_rdata[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^dna\(55),
      I1 => s_axi_araddr(0),
      I2 => \^dna\(23),
      O => \s_axi_rdata[23]_i_1_n_0\
    );
\s_axi_rdata[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^dna\(56),
      I1 => s_axi_araddr(0),
      I2 => \^dna\(24),
      O => \s_axi_rdata[24]_i_1_n_0\
    );
\s_axi_rdata[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^dna\(25),
      I1 => s_axi_araddr(0),
      O => \s_axi_rdata[25]_i_1_n_0\
    );
\s_axi_rdata[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^dna\(26),
      I1 => s_axi_araddr(0),
      O => \s_axi_rdata[26]_i_1_n_0\
    );
\s_axi_rdata[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^dna\(27),
      I1 => s_axi_araddr(0),
      O => \s_axi_rdata[27]_i_1_n_0\
    );
\s_axi_rdata[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^dna\(28),
      I1 => s_axi_araddr(0),
      O => \s_axi_rdata[28]_i_1_n_0\
    );
\s_axi_rdata[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^dna\(29),
      I1 => s_axi_araddr(0),
      O => \s_axi_rdata[29]_i_1_n_0\
    );
\s_axi_rdata[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^dna\(34),
      I1 => s_axi_araddr(0),
      I2 => \^dna\(2),
      O => \s_axi_rdata[2]_i_1_n_0\
    );
\s_axi_rdata[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BA8AFFFF"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \^s_axi_rvalid_reg_0\,
      I2 => s_axi_arvalid,
      I3 => s_axi_araddr(0),
      I4 => aresetn,
      O => p_0_in(30)
    );
\s_axi_rdata[30]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^dna\(30),
      I1 => s_axi_araddr(0),
      O => \s_axi_rdata[30]_i_2_n_0\
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
      O => p_0_in(31)
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
\s_axi_rdata[31]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^dna_ready_reg_0\,
      I1 => s_axi_araddr(0),
      I2 => \^dna\(31),
      O => \s_axi_rdata[31]_i_3_n_0\
    );
\s_axi_rdata[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^dna\(35),
      I1 => s_axi_araddr(0),
      I2 => \^dna\(3),
      O => \s_axi_rdata[3]_i_1_n_0\
    );
\s_axi_rdata[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^dna\(36),
      I1 => s_axi_araddr(0),
      I2 => \^dna\(4),
      O => \s_axi_rdata[4]_i_1_n_0\
    );
\s_axi_rdata[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^dna\(37),
      I1 => s_axi_araddr(0),
      I2 => \^dna\(5),
      O => \s_axi_rdata[5]_i_1_n_0\
    );
\s_axi_rdata[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^dna\(38),
      I1 => s_axi_araddr(0),
      I2 => \^dna\(6),
      O => \s_axi_rdata[6]_i_1_n_0\
    );
\s_axi_rdata[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^dna\(39),
      I1 => s_axi_araddr(0),
      I2 => \^dna\(7),
      O => \s_axi_rdata[7]_i_1_n_0\
    );
\s_axi_rdata[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^dna\(40),
      I1 => s_axi_araddr(0),
      I2 => \^dna\(8),
      O => \s_axi_rdata[8]_i_1_n_0\
    );
\s_axi_rdata[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^dna\(41),
      I1 => s_axi_araddr(0),
      I2 => \^dna\(9),
      O => \s_axi_rdata[9]_i_1_n_0\
    );
\s_axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => \s_axi_rdata[0]_i_1_n_0\,
      Q => s_axi_rdata(0),
      R => p_0_in(31)
    );
\s_axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => \s_axi_rdata[10]_i_1_n_0\,
      Q => s_axi_rdata(10),
      R => p_0_in(31)
    );
\s_axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => \s_axi_rdata[11]_i_1_n_0\,
      Q => s_axi_rdata(11),
      R => p_0_in(31)
    );
\s_axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => \s_axi_rdata[12]_i_1_n_0\,
      Q => s_axi_rdata(12),
      R => p_0_in(31)
    );
\s_axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => \s_axi_rdata[13]_i_1_n_0\,
      Q => s_axi_rdata(13),
      R => p_0_in(31)
    );
\s_axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => \s_axi_rdata[14]_i_1_n_0\,
      Q => s_axi_rdata(14),
      R => p_0_in(31)
    );
\s_axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => \s_axi_rdata[15]_i_1_n_0\,
      Q => s_axi_rdata(15),
      R => p_0_in(31)
    );
\s_axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => \s_axi_rdata[16]_i_1_n_0\,
      Q => s_axi_rdata(16),
      R => p_0_in(31)
    );
\s_axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => \s_axi_rdata[17]_i_1_n_0\,
      Q => s_axi_rdata(17),
      R => p_0_in(31)
    );
\s_axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => \s_axi_rdata[18]_i_1_n_0\,
      Q => s_axi_rdata(18),
      R => p_0_in(31)
    );
\s_axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => \s_axi_rdata[19]_i_1_n_0\,
      Q => s_axi_rdata(19),
      R => p_0_in(31)
    );
\s_axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => \s_axi_rdata[1]_i_1_n_0\,
      Q => s_axi_rdata(1),
      R => p_0_in(31)
    );
\s_axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => \s_axi_rdata[20]_i_1_n_0\,
      Q => s_axi_rdata(20),
      R => p_0_in(31)
    );
\s_axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => \s_axi_rdata[21]_i_1_n_0\,
      Q => s_axi_rdata(21),
      R => p_0_in(31)
    );
\s_axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => \s_axi_rdata[22]_i_1_n_0\,
      Q => s_axi_rdata(22),
      R => p_0_in(31)
    );
\s_axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => \s_axi_rdata[23]_i_1_n_0\,
      Q => s_axi_rdata(23),
      R => p_0_in(31)
    );
\s_axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => \s_axi_rdata[24]_i_1_n_0\,
      Q => s_axi_rdata(24),
      R => p_0_in(31)
    );
\s_axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => \s_axi_rdata[25]_i_1_n_0\,
      Q => s_axi_rdata(25),
      R => p_0_in(30)
    );
\s_axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => \s_axi_rdata[26]_i_1_n_0\,
      Q => s_axi_rdata(26),
      R => p_0_in(30)
    );
\s_axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => \s_axi_rdata[27]_i_1_n_0\,
      Q => s_axi_rdata(27),
      R => p_0_in(30)
    );
\s_axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => \s_axi_rdata[28]_i_1_n_0\,
      Q => s_axi_rdata(28),
      R => p_0_in(30)
    );
\s_axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => \s_axi_rdata[29]_i_1_n_0\,
      Q => s_axi_rdata(29),
      R => p_0_in(30)
    );
\s_axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => \s_axi_rdata[2]_i_1_n_0\,
      Q => s_axi_rdata(2),
      R => p_0_in(31)
    );
\s_axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => \s_axi_rdata[30]_i_2_n_0\,
      Q => s_axi_rdata(30),
      R => p_0_in(30)
    );
\s_axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => \s_axi_rdata[31]_i_3_n_0\,
      Q => s_axi_rdata(31),
      R => p_0_in(31)
    );
\s_axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => \s_axi_rdata[3]_i_1_n_0\,
      Q => s_axi_rdata(3),
      R => p_0_in(31)
    );
\s_axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => \s_axi_rdata[4]_i_1_n_0\,
      Q => s_axi_rdata(4),
      R => p_0_in(31)
    );
\s_axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => \s_axi_rdata[5]_i_1_n_0\,
      Q => s_axi_rdata(5),
      R => p_0_in(31)
    );
\s_axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => \s_axi_rdata[6]_i_1_n_0\,
      Q => s_axi_rdata(6),
      R => p_0_in(31)
    );
\s_axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => \s_axi_rdata[7]_i_1_n_0\,
      Q => s_axi_rdata(7),
      R => p_0_in(31)
    );
\s_axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => \s_axi_rdata[8]_i_1_n_0\,
      Q => s_axi_rdata(8),
      R => p_0_in(31)
    );
\s_axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => \s_axi_rdata[9]_i_1_n_0\,
      Q => s_axi_rdata(9),
      R => p_0_in(31)
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
      R => READ0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_dna_0_0 is
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
    dna : out STD_LOGIC_VECTOR ( 56 downto 0 );
    dna_ready : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of icyradio_axi_dna_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of icyradio_axi_dna_0_0 : entity is "icyradio_axi_dna_0_0,axi_dna,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of icyradio_axi_dna_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of icyradio_axi_dna_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of icyradio_axi_dna_0_0 : entity is "axi_dna,Vivado 2021.1";
end icyradio_axi_dna_0_0;

architecture STRUCTURE of icyradio_axi_dna_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
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
  s_axi_awready <= \^s_axi_awready\;
  s_axi_bresp(1) <= \^s_axi_bresp\(1);
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_wready <= \^s_axi_awready\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.icyradio_axi_dna_0_0_axi_dna
     port map (
      aclk => aclk,
      aresetn => aresetn,
      dna(56 downto 0) => dna(56 downto 0),
      dna_ready_reg_0 => dna_ready,
      s_axi_araddr(0) => s_axi_araddr(2),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => \^s_axi_bresp\(1),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid_reg_0 => s_axi_rvalid,
      s_axi_wready => \^s_axi_awready\,
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
