-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Tue Mar  7 01:15:49 2023
-- Host        : xubuntu-dev running 64-bit Ubuntu 20.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/joao/icyradio/firmware/icyradio.gen/sources_1/bd/icyradio/ip/icyradio_axi_gpio_0_0/icyradio_axi_gpio_0_0_sim_netlist.vhdl
-- Design      : icyradio_axi_gpio_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_gpio_0_0_address_decoder is
  port (
    \GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14]_0\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0\ : out STD_LOGIC;
    p_18_in : out STD_LOGIC;
    p_19_in : out STD_LOGIC;
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\ : out STD_LOGIC;
    Bus_RNW_reg_reg_0 : out STD_LOGIC;
    p_0_in3_in : out STD_LOGIC;
    p_1_in2_in : out STD_LOGIC;
    gpio_reg_en : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    bus2ip_rnw_i_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    bus2ip_rnw_i_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    bus2ip_rnw_i_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    irpt_rdack : out STD_LOGIC;
    intr2bus_rdack0 : out STD_LOGIC;
    irpt_wrack : out STD_LOGIC;
    interrupt_wrce_strb : out STD_LOGIC;
    irpt_wrack_d1_reg : out STD_LOGIC;
    ip2Bus_WrAck_intr_reg_hole0 : out STD_LOGIC;
    intr_rd_ce_or_reduce : out STD_LOGIC;
    ip2Bus_RdAck_intr_reg_hole0 : out STD_LOGIC;
    intr_wr_ce_or_reduce : out STD_LOGIC;
    \s_axi_wdata[31]\ : out STD_LOGIC;
    bus2ip_rnw_i_reg_2 : out STD_LOGIC;
    ip2bus_wrack_i_D1_reg : out STD_LOGIC;
    ip2bus_rdack_i_D1_reg : out STD_LOGIC;
    Q : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]\ : in STD_LOGIC;
    data0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data3 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ipif_glbl_irpt_enable_reg : in STD_LOGIC;
    irpt_rdack_d1 : in STD_LOGIC;
    irpt_wrack_d1 : in STD_LOGIC;
    ip2Bus_WrAck_intr_reg_hole_d1 : in STD_LOGIC;
    ip2Bus_RdAck_intr_reg_hole_d1 : in STD_LOGIC;
    data1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \ip2bus_data_i_D1_reg[0]\ : in STD_LOGIC;
    p_1_in : in STD_LOGIC;
    p_0_in0_in : in STD_LOGIC;
    \ip2bus_data_i_D1_reg[31]\ : in STD_LOGIC;
    \ip2bus_data_i_D1_reg[31]_0\ : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 0 to 0 );
    GPIO_xferAck_i : in STD_LOGIC;
    gpio_xferAck_Reg : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    ip2bus_rdack_i_D1 : in STD_LOGIC;
    s_axi_arready : in STD_LOGIC;
    s_axi_arready_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ip2bus_wrack_i_D1 : in STD_LOGIC;
    s_axi_wready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_axi_gpio_0_0_address_decoder : entity is "address_decoder";
end icyradio_axi_gpio_0_0_address_decoder;

architecture STRUCTURE of icyradio_axi_gpio_0_0_address_decoder is
  signal Bus_RNW_reg_i_1_n_0 : STD_LOGIC;
  signal \^bus_rnw_reg_reg_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1_n_0\ : STD_LOGIC;
  signal \^gen_bkend_ce_registers[14].ce_out_i_reg[14]_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg_n_0_[19]\ : STD_LOGIC;
  signal \^gen_bkend_ce_registers[2].ce_out_i_reg[2]_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\ : STD_LOGIC;
  signal \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0\ : STD_LOGIC;
  signal \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_3_n_0\ : STD_LOGIC;
  signal \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_4_n_0\ : STD_LOGIC;
  signal \^mem_decode_gen[0].cs_out_i_reg[0]_0\ : STD_LOGIC;
  signal ce_expnd_i_0 : STD_LOGIC;
  signal ce_expnd_i_1 : STD_LOGIC;
  signal ce_expnd_i_10 : STD_LOGIC;
  signal ce_expnd_i_11 : STD_LOGIC;
  signal ce_expnd_i_12 : STD_LOGIC;
  signal ce_expnd_i_13 : STD_LOGIC;
  signal ce_expnd_i_14 : STD_LOGIC;
  signal ce_expnd_i_15 : STD_LOGIC;
  signal ce_expnd_i_17 : STD_LOGIC;
  signal ce_expnd_i_18 : STD_LOGIC;
  signal ce_expnd_i_19 : STD_LOGIC;
  signal ce_expnd_i_2 : STD_LOGIC;
  signal ce_expnd_i_3 : STD_LOGIC;
  signal ce_expnd_i_4 : STD_LOGIC;
  signal ce_expnd_i_5 : STD_LOGIC;
  signal ce_expnd_i_6 : STD_LOGIC;
  signal ce_expnd_i_7 : STD_LOGIC;
  signal ce_expnd_i_9 : STD_LOGIC;
  signal cs_ce_clr : STD_LOGIC;
  signal \ip2bus_data_i_D1[0]_i_2_n_0\ : STD_LOGIC;
  signal \ip2bus_data_i_D1[0]_i_3_n_0\ : STD_LOGIC;
  signal \ip2bus_data_i_D1[0]_i_4_n_0\ : STD_LOGIC;
  signal \ip2bus_data_i_D1[0]_i_5_n_0\ : STD_LOGIC;
  signal \ip2bus_data_i_D1[10]_i_2_n_0\ : STD_LOGIC;
  signal \ip2bus_data_i_D1[11]_i_2_n_0\ : STD_LOGIC;
  signal \ip2bus_data_i_D1[12]_i_2_n_0\ : STD_LOGIC;
  signal \ip2bus_data_i_D1[13]_i_2_n_0\ : STD_LOGIC;
  signal \ip2bus_data_i_D1[14]_i_2_n_0\ : STD_LOGIC;
  signal \ip2bus_data_i_D1[15]_i_2_n_0\ : STD_LOGIC;
  signal \ip2bus_data_i_D1[16]_i_2_n_0\ : STD_LOGIC;
  signal \ip2bus_data_i_D1[17]_i_2_n_0\ : STD_LOGIC;
  signal \ip2bus_data_i_D1[18]_i_2_n_0\ : STD_LOGIC;
  signal \ip2bus_data_i_D1[19]_i_2_n_0\ : STD_LOGIC;
  signal \ip2bus_data_i_D1[1]_i_2_n_0\ : STD_LOGIC;
  signal \ip2bus_data_i_D1[1]_i_3_n_0\ : STD_LOGIC;
  signal \ip2bus_data_i_D1[20]_i_2_n_0\ : STD_LOGIC;
  signal \ip2bus_data_i_D1[21]_i_2_n_0\ : STD_LOGIC;
  signal \ip2bus_data_i_D1[22]_i_2_n_0\ : STD_LOGIC;
  signal \ip2bus_data_i_D1[23]_i_2_n_0\ : STD_LOGIC;
  signal \ip2bus_data_i_D1[24]_i_2_n_0\ : STD_LOGIC;
  signal \ip2bus_data_i_D1[25]_i_2_n_0\ : STD_LOGIC;
  signal \ip2bus_data_i_D1[26]_i_2_n_0\ : STD_LOGIC;
  signal \ip2bus_data_i_D1[27]_i_2_n_0\ : STD_LOGIC;
  signal \ip2bus_data_i_D1[28]_i_2_n_0\ : STD_LOGIC;
  signal \ip2bus_data_i_D1[29]_i_2_n_0\ : STD_LOGIC;
  signal \ip2bus_data_i_D1[2]_i_2_n_0\ : STD_LOGIC;
  signal \ip2bus_data_i_D1[30]_i_2_n_0\ : STD_LOGIC;
  signal \ip2bus_data_i_D1[30]_i_3_n_0\ : STD_LOGIC;
  signal \ip2bus_data_i_D1[31]_i_2_n_0\ : STD_LOGIC;
  signal \ip2bus_data_i_D1[31]_i_3_n_0\ : STD_LOGIC;
  signal \ip2bus_data_i_D1[3]_i_2_n_0\ : STD_LOGIC;
  signal \ip2bus_data_i_D1[4]_i_2_n_0\ : STD_LOGIC;
  signal \ip2bus_data_i_D1[5]_i_2_n_0\ : STD_LOGIC;
  signal \ip2bus_data_i_D1[6]_i_2_n_0\ : STD_LOGIC;
  signal \ip2bus_data_i_D1[7]_i_2_n_0\ : STD_LOGIC;
  signal \ip2bus_data_i_D1[8]_i_2_n_0\ : STD_LOGIC;
  signal \ip2bus_data_i_D1[9]_i_2_n_0\ : STD_LOGIC;
  signal \^ip2bus_rdack_i_d1_reg\ : STD_LOGIC;
  signal \^ip2bus_wrack_i_d1_reg\ : STD_LOGIC;
  signal p_10_in : STD_LOGIC;
  signal p_11_in : STD_LOGIC;
  signal p_12_in : STD_LOGIC;
  signal p_13_in : STD_LOGIC;
  signal p_14_in : STD_LOGIC;
  signal p_15_in : STD_LOGIC;
  signal \^p_18_in\ : STD_LOGIC;
  signal \^p_19_in\ : STD_LOGIC;
  signal p_1_in_0 : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_3_in : STD_LOGIC;
  signal p_4_in : STD_LOGIC;
  signal p_6_in : STD_LOGIC;
  signal p_7_in : STD_LOGIC;
  signal p_8_in : STD_LOGIC;
  signal p_9_in : STD_LOGIC;
  signal pselect_hit_i_1 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Bus_RNW_reg_i_1 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \Dual.ALLOUT0_ND_G0.READ_REG_GEN[31].reg1[31]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \Dual.ALLOUT0_ND_G0.READ_REG_GEN[31].reg1[31]_i_3\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \Dual.ALLOUT0_ND_G0.READ_REG_GEN[31].reg1[31]_i_4\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[31].reg3[31]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \Dual.gpio2_Data_Out[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Dual.gpio2_OE[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Dual.gpio_Data_Out[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Dual.gpio_OE[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[12].ce_out_i[12]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[13].ce_out_i[13]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[2].ce_out_i[2]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[4].ce_out_i[4]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[9].ce_out_i[9]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \INTR_CTRLR_GEN.ip2Bus_RdAck_intr_reg_hole_d1_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \INTR_CTRLR_GEN.ip2Bus_RdAck_intr_reg_hole_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of intr2bus_rdack_i_1 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of intr2bus_wrack_i_1 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \ip2bus_data_i_D1[0]_i_4\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ip2bus_data_i_D1[0]_i_5\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of irpt_rdack_d1_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of irpt_wrack_d1_i_1 : label is "soft_lutpair13";
begin
  Bus_RNW_reg_reg_0 <= \^bus_rnw_reg_reg_0\;
  \GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14]_0\ <= \^gen_bkend_ce_registers[14].ce_out_i_reg[14]_0\;
  \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0\ <= \^gen_bkend_ce_registers[2].ce_out_i_reg[2]_0\;
  \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\ <= \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\;
  \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\ <= \^mem_decode_gen[0].cs_out_i_reg[0]_0\;
  ip2bus_rdack_i_D1_reg <= \^ip2bus_rdack_i_d1_reg\;
  ip2bus_wrack_i_D1_reg <= \^ip2bus_wrack_i_d1_reg\;
  p_18_in <= \^p_18_in\;
  p_19_in <= \^p_19_in\;
Bus_RNW_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]\,
      I1 => Q,
      I2 => \^bus_rnw_reg_reg_0\,
      O => Bus_RNW_reg_i_1_n_0
    );
Bus_RNW_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_i_1_n_0,
      Q => \^bus_rnw_reg_reg_0\,
      R => '0'
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[31].reg1[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FDFF"
    )
        port map (
      I0 => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]\,
      I1 => GPIO_xferAck_i,
      I2 => gpio_xferAck_Reg,
      I3 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      O => bus2ip_rnw_i_reg_2
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[31].reg1[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(6),
      I1 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(1),
      I3 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(0),
      O => p_1_in2_in
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[31].reg1[31]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(6),
      I1 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(1),
      I3 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(0),
      O => p_0_in3_in
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[31].reg3[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      I1 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(6),
      O => gpio_reg_en
    );
\Dual.gpio2_Data_Out[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]\,
      I1 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(6),
      I2 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      I3 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(0),
      I4 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(1),
      O => bus2ip_rnw_i_reg_1(0)
    );
\Dual.gpio2_OE[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]\,
      I1 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(6),
      I2 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      I3 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(1),
      I4 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(0),
      O => bus2ip_rnw_i_reg_0(0)
    );
\Dual.gpio_Data_Out[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]\,
      I1 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(6),
      I2 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      I3 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(1),
      I4 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(0),
      O => bus2ip_rnw_i_reg(0)
    );
\Dual.gpio_OE[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]\,
      I1 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(6),
      I2 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      I3 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(1),
      I4 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(0),
      O => E(0)
    );
\GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => pselect_hit_i_1,
      I1 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(0),
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(1),
      O => ce_expnd_i_19
    );
\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_19,
      Q => \^p_19_in\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(3),
      I1 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(1),
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(2),
      I3 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(0),
      I4 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(6),
      O => ce_expnd_i_9
    );
\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_9,
      Q => p_9_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(6),
      I1 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(2),
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(0),
      I3 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(1),
      I4 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(3),
      O => \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1_n_0\,
      Q => p_8_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[12].ce_out_i[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(6),
      I1 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(2),
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(3),
      I3 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(0),
      I4 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(1),
      O => ce_expnd_i_7
    );
\GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_7,
      Q => p_7_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[13].ce_out_i[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(2),
      I1 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(6),
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(0),
      I3 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(1),
      I4 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(3),
      O => ce_expnd_i_6
    );
\GEN_BKEND_CE_REGISTERS[13].ce_out_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_6,
      Q => p_6_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(2),
      I1 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(1),
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(6),
      I3 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(0),
      I4 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(3),
      O => ce_expnd_i_5
    );
\GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_5,
      Q => \^gen_bkend_ce_registers[14].ce_out_i_reg[14]_0\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(2),
      I1 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(0),
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(1),
      I3 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(3),
      I4 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(6),
      O => ce_expnd_i_4
    );
\GEN_BKEND_CE_REGISTERS[15].ce_out_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_4,
      Q => p_4_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(1),
      I1 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(2),
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(6),
      I3 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(0),
      I4 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(3),
      O => ce_expnd_i_3
    );
\GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_3,
      Q => p_3_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(1),
      I1 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(6),
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(0),
      I3 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(3),
      I4 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(2),
      O => ce_expnd_i_2
    );
\GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_2,
      Q => p_2_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(0),
      I1 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(1),
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(6),
      I3 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(3),
      I4 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(2),
      O => ce_expnd_i_1
    );
\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_1,
      Q => p_1_in_0,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \^ip2bus_wrack_i_d1_reg\,
      I1 => \^ip2bus_rdack_i_d1_reg\,
      I2 => s_axi_aresetn,
      O => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(3),
      I1 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(6),
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(2),
      I3 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(0),
      I4 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(1),
      O => ce_expnd_i_0
    );
\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_0,
      Q => \GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg_n_0_[19]\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(1),
      I1 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(0),
      I2 => pselect_hit_i_1,
      O => ce_expnd_i_18
    );
\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_18,
      Q => \^p_18_in\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[2].ce_out_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(0),
      I1 => pselect_hit_i_1,
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(1),
      O => ce_expnd_i_17
    );
\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_17,
      Q => \^gen_bkend_ce_registers[2].ce_out_i_reg[2]_0\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(1),
      I1 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(0),
      I2 => pselect_hit_i_1,
      O => \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1_n_0\,
      Q => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[4].ce_out_i[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(6),
      I1 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(2),
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(1),
      I3 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(3),
      I4 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(0),
      O => ce_expnd_i_15
    );
\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_15,
      Q => p_15_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(0),
      I1 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(2),
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(6),
      I3 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(3),
      I4 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(1),
      O => ce_expnd_i_14
    );
\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_14,
      Q => p_14_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(1),
      I1 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(2),
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(6),
      I3 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(3),
      I4 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(0),
      O => ce_expnd_i_13
    );
\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_13,
      Q => p_13_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(3),
      I1 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(0),
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(1),
      I3 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(2),
      I4 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(6),
      O => ce_expnd_i_12
    );
\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_12,
      Q => p_12_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(2),
      I1 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(0),
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(6),
      I3 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(3),
      I4 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(1),
      O => ce_expnd_i_11
    );
\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_11,
      Q => p_11_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[9].ce_out_i[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(3),
      I1 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(2),
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(0),
      I3 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(1),
      I4 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(6),
      O => ce_expnd_i_10
    );
\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_10,
      Q => p_10_in,
      R => cs_ce_clr
    );
\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => irpt_wrack_d1,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => p_7_in,
      O => irpt_wrack_d1_reg
    );
\INTR_CTRLR_GEN.ip2Bus_RdAck_intr_reg_hole_d1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0\,
      I1 => \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_3_n_0\,
      I2 => \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_4_n_0\,
      I3 => \^bus_rnw_reg_reg_0\,
      O => intr_rd_ce_or_reduce
    );
\INTR_CTRLR_GEN.ip2Bus_RdAck_intr_reg_hole_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FE0000"
    )
        port map (
      I0 => \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0\,
      I1 => \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_3_n_0\,
      I2 => \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_4_n_0\,
      I3 => ip2Bus_RdAck_intr_reg_hole_d1,
      I4 => \^bus_rnw_reg_reg_0\,
      O => ip2Bus_RdAck_intr_reg_hole0
    );
\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0\,
      I1 => \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_3_n_0\,
      I2 => \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_4_n_0\,
      I3 => \^bus_rnw_reg_reg_0\,
      O => intr_wr_ce_or_reduce
    );
\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => p_15_in,
      I1 => p_1_in_0,
      I2 => \GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg_n_0_[19]\,
      I3 => p_13_in,
      I4 => p_14_in,
      O => \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0\
    );
\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_11_in,
      I1 => p_12_in,
      I2 => p_9_in,
      I3 => p_10_in,
      O => \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_3_n_0\
    );
\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_4_in,
      I1 => p_6_in,
      I2 => p_2_in,
      I3 => p_3_in,
      O => \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_4_n_0\
    );
\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000FE"
    )
        port map (
      I0 => \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0\,
      I1 => \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_3_n_0\,
      I2 => \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_4_n_0\,
      I3 => ip2Bus_WrAck_intr_reg_hole_d1,
      I4 => \^bus_rnw_reg_reg_0\,
      O => ip2Bus_WrAck_intr_reg_hole0
    );
\MEM_DECODE_GEN[0].cs_out_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(2),
      I1 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(6),
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(3),
      I3 => Q,
      I4 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(5),
      I5 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(4),
      O => pselect_hit_i_1
    );
\MEM_DECODE_GEN[0].cs_out_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => pselect_hit_i_1,
      Q => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      R => cs_ce_clr
    );
intr2bus_rdack_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44444440"
    )
        port map (
      I0 => irpt_rdack_d1,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => p_8_in,
      I3 => p_7_in,
      I4 => \^gen_bkend_ce_registers[14].ce_out_i_reg[14]_0\,
      O => intr2bus_rdack0
    );
intr2bus_wrack_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000FE"
    )
        port map (
      I0 => p_8_in,
      I1 => p_7_in,
      I2 => \^gen_bkend_ce_registers[14].ce_out_i_reg[14]_0\,
      I3 => irpt_wrack_d1,
      I4 => \^bus_rnw_reg_reg_0\,
      O => interrupt_wrce_strb
    );
\ip2bus_data_i_D1[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF8FFF8FFF8"
    )
        port map (
      I0 => \ip2bus_data_i_D1[0]_i_2_n_0\,
      I1 => data0(31),
      I2 => \ip2bus_data_i_D1[0]_i_3_n_0\,
      I3 => \ip2bus_data_i_D1[0]_i_4_n_0\,
      I4 => \ip2bus_data_i_D1[0]_i_5_n_0\,
      I5 => data3(31),
      O => D(31)
    );
\ip2bus_data_i_D1[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => \ip2bus_data_i_D1_reg[0]\,
      I2 => \^p_19_in\,
      O => \ip2bus_data_i_D1[0]_i_2_n_0\
    );
\ip2bus_data_i_D1[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F800000088000000"
    )
        port map (
      I0 => data1(31),
      I1 => \^p_18_in\,
      I2 => data2(31),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \ip2bus_data_i_D1_reg[0]\,
      I5 => \^gen_bkend_ce_registers[2].ce_out_i_reg[2]_0\,
      O => \ip2bus_data_i_D1[0]_i_3_n_0\
    );
\ip2bus_data_i_D1[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => ipif_glbl_irpt_enable_reg,
      I1 => p_8_in,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => \^gen_bkend_ce_registers[14].ce_out_i_reg[14]_0\,
      I4 => p_7_in,
      O => \ip2bus_data_i_D1[0]_i_4_n_0\
    );
\ip2bus_data_i_D1[0]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => \ip2bus_data_i_D1_reg[0]\,
      I2 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      O => \ip2bus_data_i_D1[0]_i_5_n_0\
    );
\ip2bus_data_i_D1[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => data0(21),
      I1 => \ip2bus_data_i_D1[0]_i_2_n_0\,
      I2 => \ip2bus_data_i_D1[1]_i_2_n_0\,
      I3 => data1(21),
      I4 => \ip2bus_data_i_D1[10]_i_2_n_0\,
      O => D(21)
    );
\ip2bus_data_i_D1[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F800000088000000"
    )
        port map (
      I0 => data2(21),
      I1 => \^gen_bkend_ce_registers[2].ce_out_i_reg[2]_0\,
      I2 => data3(21),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \ip2bus_data_i_D1_reg[0]\,
      I5 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      O => \ip2bus_data_i_D1[10]_i_2_n_0\
    );
\ip2bus_data_i_D1[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => data0(20),
      I1 => \ip2bus_data_i_D1[0]_i_2_n_0\,
      I2 => \ip2bus_data_i_D1[1]_i_2_n_0\,
      I3 => data1(20),
      I4 => \ip2bus_data_i_D1[11]_i_2_n_0\,
      O => D(20)
    );
\ip2bus_data_i_D1[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F800000088000000"
    )
        port map (
      I0 => data2(20),
      I1 => \^gen_bkend_ce_registers[2].ce_out_i_reg[2]_0\,
      I2 => data3(20),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \ip2bus_data_i_D1_reg[0]\,
      I5 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      O => \ip2bus_data_i_D1[11]_i_2_n_0\
    );
\ip2bus_data_i_D1[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => data0(19),
      I1 => \ip2bus_data_i_D1[0]_i_2_n_0\,
      I2 => \ip2bus_data_i_D1[1]_i_2_n_0\,
      I3 => data1(19),
      I4 => \ip2bus_data_i_D1[12]_i_2_n_0\,
      O => D(19)
    );
\ip2bus_data_i_D1[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F800000088000000"
    )
        port map (
      I0 => data2(19),
      I1 => \^gen_bkend_ce_registers[2].ce_out_i_reg[2]_0\,
      I2 => data3(19),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \ip2bus_data_i_D1_reg[0]\,
      I5 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      O => \ip2bus_data_i_D1[12]_i_2_n_0\
    );
\ip2bus_data_i_D1[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => data0(18),
      I1 => \ip2bus_data_i_D1[0]_i_2_n_0\,
      I2 => \ip2bus_data_i_D1[1]_i_2_n_0\,
      I3 => data1(18),
      I4 => \ip2bus_data_i_D1[13]_i_2_n_0\,
      O => D(18)
    );
\ip2bus_data_i_D1[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F800000088000000"
    )
        port map (
      I0 => data2(18),
      I1 => \^gen_bkend_ce_registers[2].ce_out_i_reg[2]_0\,
      I2 => data3(18),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \ip2bus_data_i_D1_reg[0]\,
      I5 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      O => \ip2bus_data_i_D1[13]_i_2_n_0\
    );
\ip2bus_data_i_D1[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => data0(17),
      I1 => \ip2bus_data_i_D1[0]_i_2_n_0\,
      I2 => \ip2bus_data_i_D1[1]_i_2_n_0\,
      I3 => data1(17),
      I4 => \ip2bus_data_i_D1[14]_i_2_n_0\,
      O => D(17)
    );
\ip2bus_data_i_D1[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F800000088000000"
    )
        port map (
      I0 => data2(17),
      I1 => \^gen_bkend_ce_registers[2].ce_out_i_reg[2]_0\,
      I2 => data3(17),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \ip2bus_data_i_D1_reg[0]\,
      I5 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      O => \ip2bus_data_i_D1[14]_i_2_n_0\
    );
\ip2bus_data_i_D1[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => data0(16),
      I1 => \ip2bus_data_i_D1[0]_i_2_n_0\,
      I2 => \ip2bus_data_i_D1[1]_i_2_n_0\,
      I3 => data1(16),
      I4 => \ip2bus_data_i_D1[15]_i_2_n_0\,
      O => D(16)
    );
\ip2bus_data_i_D1[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F800000088000000"
    )
        port map (
      I0 => data2(16),
      I1 => \^gen_bkend_ce_registers[2].ce_out_i_reg[2]_0\,
      I2 => data3(16),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \ip2bus_data_i_D1_reg[0]\,
      I5 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      O => \ip2bus_data_i_D1[15]_i_2_n_0\
    );
\ip2bus_data_i_D1[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => data0(15),
      I1 => \ip2bus_data_i_D1[0]_i_2_n_0\,
      I2 => \ip2bus_data_i_D1[1]_i_2_n_0\,
      I3 => data1(15),
      I4 => \ip2bus_data_i_D1[16]_i_2_n_0\,
      O => D(15)
    );
\ip2bus_data_i_D1[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F800000088000000"
    )
        port map (
      I0 => data2(15),
      I1 => \^gen_bkend_ce_registers[2].ce_out_i_reg[2]_0\,
      I2 => data3(15),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \ip2bus_data_i_D1_reg[0]\,
      I5 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      O => \ip2bus_data_i_D1[16]_i_2_n_0\
    );
\ip2bus_data_i_D1[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => data0(14),
      I1 => \ip2bus_data_i_D1[0]_i_2_n_0\,
      I2 => \ip2bus_data_i_D1[1]_i_2_n_0\,
      I3 => data1(14),
      I4 => \ip2bus_data_i_D1[17]_i_2_n_0\,
      O => D(14)
    );
\ip2bus_data_i_D1[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F800000088000000"
    )
        port map (
      I0 => data2(14),
      I1 => \^gen_bkend_ce_registers[2].ce_out_i_reg[2]_0\,
      I2 => data3(14),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \ip2bus_data_i_D1_reg[0]\,
      I5 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      O => \ip2bus_data_i_D1[17]_i_2_n_0\
    );
\ip2bus_data_i_D1[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => data0(13),
      I1 => \ip2bus_data_i_D1[0]_i_2_n_0\,
      I2 => \ip2bus_data_i_D1[1]_i_2_n_0\,
      I3 => data1(13),
      I4 => \ip2bus_data_i_D1[18]_i_2_n_0\,
      O => D(13)
    );
\ip2bus_data_i_D1[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F800000088000000"
    )
        port map (
      I0 => data2(13),
      I1 => \^gen_bkend_ce_registers[2].ce_out_i_reg[2]_0\,
      I2 => data3(13),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \ip2bus_data_i_D1_reg[0]\,
      I5 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      O => \ip2bus_data_i_D1[18]_i_2_n_0\
    );
\ip2bus_data_i_D1[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => data0(12),
      I1 => \ip2bus_data_i_D1[0]_i_2_n_0\,
      I2 => \ip2bus_data_i_D1[1]_i_2_n_0\,
      I3 => data1(12),
      I4 => \ip2bus_data_i_D1[19]_i_2_n_0\,
      O => D(12)
    );
\ip2bus_data_i_D1[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F800000088000000"
    )
        port map (
      I0 => data2(12),
      I1 => \^gen_bkend_ce_registers[2].ce_out_i_reg[2]_0\,
      I2 => data3(12),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \ip2bus_data_i_D1_reg[0]\,
      I5 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      O => \ip2bus_data_i_D1[19]_i_2_n_0\
    );
\ip2bus_data_i_D1[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => data0(30),
      I1 => \ip2bus_data_i_D1[0]_i_2_n_0\,
      I2 => \ip2bus_data_i_D1[1]_i_2_n_0\,
      I3 => data1(30),
      I4 => \ip2bus_data_i_D1[1]_i_3_n_0\,
      O => D(30)
    );
\ip2bus_data_i_D1[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => \ip2bus_data_i_D1_reg[0]\,
      I2 => \^p_18_in\,
      O => \ip2bus_data_i_D1[1]_i_2_n_0\
    );
\ip2bus_data_i_D1[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F800000088000000"
    )
        port map (
      I0 => data2(30),
      I1 => \^gen_bkend_ce_registers[2].ce_out_i_reg[2]_0\,
      I2 => data3(30),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \ip2bus_data_i_D1_reg[0]\,
      I5 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      O => \ip2bus_data_i_D1[1]_i_3_n_0\
    );
\ip2bus_data_i_D1[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => data0(11),
      I1 => \ip2bus_data_i_D1[0]_i_2_n_0\,
      I2 => \ip2bus_data_i_D1[1]_i_2_n_0\,
      I3 => data1(11),
      I4 => \ip2bus_data_i_D1[20]_i_2_n_0\,
      O => D(11)
    );
\ip2bus_data_i_D1[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F800000088000000"
    )
        port map (
      I0 => data2(11),
      I1 => \^gen_bkend_ce_registers[2].ce_out_i_reg[2]_0\,
      I2 => data3(11),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \ip2bus_data_i_D1_reg[0]\,
      I5 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      O => \ip2bus_data_i_D1[20]_i_2_n_0\
    );
\ip2bus_data_i_D1[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => data0(10),
      I1 => \ip2bus_data_i_D1[0]_i_2_n_0\,
      I2 => \ip2bus_data_i_D1[1]_i_2_n_0\,
      I3 => data1(10),
      I4 => \ip2bus_data_i_D1[21]_i_2_n_0\,
      O => D(10)
    );
\ip2bus_data_i_D1[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F800000088000000"
    )
        port map (
      I0 => data2(10),
      I1 => \^gen_bkend_ce_registers[2].ce_out_i_reg[2]_0\,
      I2 => data3(10),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \ip2bus_data_i_D1_reg[0]\,
      I5 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      O => \ip2bus_data_i_D1[21]_i_2_n_0\
    );
\ip2bus_data_i_D1[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => data0(9),
      I1 => \ip2bus_data_i_D1[0]_i_2_n_0\,
      I2 => \ip2bus_data_i_D1[1]_i_2_n_0\,
      I3 => data1(9),
      I4 => \ip2bus_data_i_D1[22]_i_2_n_0\,
      O => D(9)
    );
\ip2bus_data_i_D1[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F800000088000000"
    )
        port map (
      I0 => data2(9),
      I1 => \^gen_bkend_ce_registers[2].ce_out_i_reg[2]_0\,
      I2 => data3(9),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \ip2bus_data_i_D1_reg[0]\,
      I5 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      O => \ip2bus_data_i_D1[22]_i_2_n_0\
    );
\ip2bus_data_i_D1[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => data0(8),
      I1 => \ip2bus_data_i_D1[0]_i_2_n_0\,
      I2 => \ip2bus_data_i_D1[1]_i_2_n_0\,
      I3 => data1(8),
      I4 => \ip2bus_data_i_D1[23]_i_2_n_0\,
      O => D(8)
    );
\ip2bus_data_i_D1[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F800000088000000"
    )
        port map (
      I0 => data2(8),
      I1 => \^gen_bkend_ce_registers[2].ce_out_i_reg[2]_0\,
      I2 => data3(8),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \ip2bus_data_i_D1_reg[0]\,
      I5 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      O => \ip2bus_data_i_D1[23]_i_2_n_0\
    );
\ip2bus_data_i_D1[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => data0(7),
      I1 => \ip2bus_data_i_D1[0]_i_2_n_0\,
      I2 => \ip2bus_data_i_D1[1]_i_2_n_0\,
      I3 => data1(7),
      I4 => \ip2bus_data_i_D1[24]_i_2_n_0\,
      O => D(7)
    );
\ip2bus_data_i_D1[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F800000088000000"
    )
        port map (
      I0 => data2(7),
      I1 => \^gen_bkend_ce_registers[2].ce_out_i_reg[2]_0\,
      I2 => data3(7),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \ip2bus_data_i_D1_reg[0]\,
      I5 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      O => \ip2bus_data_i_D1[24]_i_2_n_0\
    );
\ip2bus_data_i_D1[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => data0(6),
      I1 => \ip2bus_data_i_D1[0]_i_2_n_0\,
      I2 => \ip2bus_data_i_D1[1]_i_2_n_0\,
      I3 => data1(6),
      I4 => \ip2bus_data_i_D1[25]_i_2_n_0\,
      O => D(6)
    );
\ip2bus_data_i_D1[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F800000088000000"
    )
        port map (
      I0 => data2(6),
      I1 => \^gen_bkend_ce_registers[2].ce_out_i_reg[2]_0\,
      I2 => data3(6),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \ip2bus_data_i_D1_reg[0]\,
      I5 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      O => \ip2bus_data_i_D1[25]_i_2_n_0\
    );
\ip2bus_data_i_D1[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => data0(5),
      I1 => \ip2bus_data_i_D1[0]_i_2_n_0\,
      I2 => \ip2bus_data_i_D1[1]_i_2_n_0\,
      I3 => data1(5),
      I4 => \ip2bus_data_i_D1[26]_i_2_n_0\,
      O => D(5)
    );
\ip2bus_data_i_D1[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F800000088000000"
    )
        port map (
      I0 => data2(5),
      I1 => \^gen_bkend_ce_registers[2].ce_out_i_reg[2]_0\,
      I2 => data3(5),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \ip2bus_data_i_D1_reg[0]\,
      I5 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      O => \ip2bus_data_i_D1[26]_i_2_n_0\
    );
\ip2bus_data_i_D1[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => data0(4),
      I1 => \ip2bus_data_i_D1[0]_i_2_n_0\,
      I2 => \ip2bus_data_i_D1[1]_i_2_n_0\,
      I3 => data1(4),
      I4 => \ip2bus_data_i_D1[27]_i_2_n_0\,
      O => D(4)
    );
\ip2bus_data_i_D1[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F800000088000000"
    )
        port map (
      I0 => data2(4),
      I1 => \^gen_bkend_ce_registers[2].ce_out_i_reg[2]_0\,
      I2 => data3(4),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \ip2bus_data_i_D1_reg[0]\,
      I5 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      O => \ip2bus_data_i_D1[27]_i_2_n_0\
    );
\ip2bus_data_i_D1[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => data0(3),
      I1 => \ip2bus_data_i_D1[0]_i_2_n_0\,
      I2 => \ip2bus_data_i_D1[1]_i_2_n_0\,
      I3 => data1(3),
      I4 => \ip2bus_data_i_D1[28]_i_2_n_0\,
      O => D(3)
    );
\ip2bus_data_i_D1[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F800000088000000"
    )
        port map (
      I0 => data2(3),
      I1 => \^gen_bkend_ce_registers[2].ce_out_i_reg[2]_0\,
      I2 => data3(3),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \ip2bus_data_i_D1_reg[0]\,
      I5 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      O => \ip2bus_data_i_D1[28]_i_2_n_0\
    );
\ip2bus_data_i_D1[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => data0(2),
      I1 => \ip2bus_data_i_D1[0]_i_2_n_0\,
      I2 => \ip2bus_data_i_D1[1]_i_2_n_0\,
      I3 => data1(2),
      I4 => \ip2bus_data_i_D1[29]_i_2_n_0\,
      O => D(2)
    );
\ip2bus_data_i_D1[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F800000088000000"
    )
        port map (
      I0 => data2(2),
      I1 => \^gen_bkend_ce_registers[2].ce_out_i_reg[2]_0\,
      I2 => data3(2),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \ip2bus_data_i_D1_reg[0]\,
      I5 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      O => \ip2bus_data_i_D1[29]_i_2_n_0\
    );
\ip2bus_data_i_D1[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => data0(29),
      I1 => \ip2bus_data_i_D1[0]_i_2_n_0\,
      I2 => \ip2bus_data_i_D1[1]_i_2_n_0\,
      I3 => data1(29),
      I4 => \ip2bus_data_i_D1[2]_i_2_n_0\,
      O => D(29)
    );
\ip2bus_data_i_D1[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F800000088000000"
    )
        port map (
      I0 => data2(29),
      I1 => \^gen_bkend_ce_registers[2].ce_out_i_reg[2]_0\,
      I2 => data3(29),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \ip2bus_data_i_D1_reg[0]\,
      I5 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      O => \ip2bus_data_i_D1[2]_i_2_n_0\
    );
\ip2bus_data_i_D1[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \ip2bus_data_i_D1[30]_i_2_n_0\,
      I1 => \ip2bus_data_i_D1[0]_i_2_n_0\,
      I2 => data0(1),
      I3 => \ip2bus_data_i_D1[1]_i_2_n_0\,
      I4 => data1(1),
      I5 => \ip2bus_data_i_D1[30]_i_3_n_0\,
      O => D(1)
    );
\ip2bus_data_i_D1[30]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA00C000"
    )
        port map (
      I0 => p_1_in,
      I1 => \^gen_bkend_ce_registers[14].ce_out_i_reg[14]_0\,
      I2 => p_0_in0_in,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => p_7_in,
      O => \ip2bus_data_i_D1[30]_i_2_n_0\
    );
\ip2bus_data_i_D1[30]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F800000088000000"
    )
        port map (
      I0 => data2(1),
      I1 => \^gen_bkend_ce_registers[2].ce_out_i_reg[2]_0\,
      I2 => data3(1),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \ip2bus_data_i_D1_reg[0]\,
      I5 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      O => \ip2bus_data_i_D1[30]_i_3_n_0\
    );
\ip2bus_data_i_D1[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \ip2bus_data_i_D1[31]_i_2_n_0\,
      I1 => \ip2bus_data_i_D1[0]_i_2_n_0\,
      I2 => data0(0),
      I3 => \ip2bus_data_i_D1[1]_i_2_n_0\,
      I4 => data1(0),
      I5 => \ip2bus_data_i_D1[31]_i_3_n_0\,
      O => D(0)
    );
\ip2bus_data_i_D1[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA00C000"
    )
        port map (
      I0 => \ip2bus_data_i_D1_reg[31]\,
      I1 => \^gen_bkend_ce_registers[14].ce_out_i_reg[14]_0\,
      I2 => \ip2bus_data_i_D1_reg[31]_0\,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => p_7_in,
      O => \ip2bus_data_i_D1[31]_i_2_n_0\
    );
\ip2bus_data_i_D1[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F800000088000000"
    )
        port map (
      I0 => data2(0),
      I1 => \^gen_bkend_ce_registers[2].ce_out_i_reg[2]_0\,
      I2 => data3(0),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \ip2bus_data_i_D1_reg[0]\,
      I5 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      O => \ip2bus_data_i_D1[31]_i_3_n_0\
    );
\ip2bus_data_i_D1[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => data0(28),
      I1 => \ip2bus_data_i_D1[0]_i_2_n_0\,
      I2 => \ip2bus_data_i_D1[1]_i_2_n_0\,
      I3 => data1(28),
      I4 => \ip2bus_data_i_D1[3]_i_2_n_0\,
      O => D(28)
    );
\ip2bus_data_i_D1[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F800000088000000"
    )
        port map (
      I0 => data2(28),
      I1 => \^gen_bkend_ce_registers[2].ce_out_i_reg[2]_0\,
      I2 => data3(28),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \ip2bus_data_i_D1_reg[0]\,
      I5 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      O => \ip2bus_data_i_D1[3]_i_2_n_0\
    );
\ip2bus_data_i_D1[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => data0(27),
      I1 => \ip2bus_data_i_D1[0]_i_2_n_0\,
      I2 => \ip2bus_data_i_D1[1]_i_2_n_0\,
      I3 => data1(27),
      I4 => \ip2bus_data_i_D1[4]_i_2_n_0\,
      O => D(27)
    );
\ip2bus_data_i_D1[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F800000088000000"
    )
        port map (
      I0 => data2(27),
      I1 => \^gen_bkend_ce_registers[2].ce_out_i_reg[2]_0\,
      I2 => data3(27),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \ip2bus_data_i_D1_reg[0]\,
      I5 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      O => \ip2bus_data_i_D1[4]_i_2_n_0\
    );
\ip2bus_data_i_D1[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => data0(26),
      I1 => \ip2bus_data_i_D1[0]_i_2_n_0\,
      I2 => \ip2bus_data_i_D1[1]_i_2_n_0\,
      I3 => data1(26),
      I4 => \ip2bus_data_i_D1[5]_i_2_n_0\,
      O => D(26)
    );
\ip2bus_data_i_D1[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F800000088000000"
    )
        port map (
      I0 => data2(26),
      I1 => \^gen_bkend_ce_registers[2].ce_out_i_reg[2]_0\,
      I2 => data3(26),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \ip2bus_data_i_D1_reg[0]\,
      I5 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      O => \ip2bus_data_i_D1[5]_i_2_n_0\
    );
\ip2bus_data_i_D1[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => data0(25),
      I1 => \ip2bus_data_i_D1[0]_i_2_n_0\,
      I2 => \ip2bus_data_i_D1[1]_i_2_n_0\,
      I3 => data1(25),
      I4 => \ip2bus_data_i_D1[6]_i_2_n_0\,
      O => D(25)
    );
\ip2bus_data_i_D1[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F800000088000000"
    )
        port map (
      I0 => data2(25),
      I1 => \^gen_bkend_ce_registers[2].ce_out_i_reg[2]_0\,
      I2 => data3(25),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \ip2bus_data_i_D1_reg[0]\,
      I5 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      O => \ip2bus_data_i_D1[6]_i_2_n_0\
    );
\ip2bus_data_i_D1[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => data0(24),
      I1 => \ip2bus_data_i_D1[0]_i_2_n_0\,
      I2 => \ip2bus_data_i_D1[1]_i_2_n_0\,
      I3 => data1(24),
      I4 => \ip2bus_data_i_D1[7]_i_2_n_0\,
      O => D(24)
    );
\ip2bus_data_i_D1[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F800000088000000"
    )
        port map (
      I0 => data2(24),
      I1 => \^gen_bkend_ce_registers[2].ce_out_i_reg[2]_0\,
      I2 => data3(24),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \ip2bus_data_i_D1_reg[0]\,
      I5 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      O => \ip2bus_data_i_D1[7]_i_2_n_0\
    );
\ip2bus_data_i_D1[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => data0(23),
      I1 => \ip2bus_data_i_D1[0]_i_2_n_0\,
      I2 => \ip2bus_data_i_D1[1]_i_2_n_0\,
      I3 => data1(23),
      I4 => \ip2bus_data_i_D1[8]_i_2_n_0\,
      O => D(23)
    );
\ip2bus_data_i_D1[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F800000088000000"
    )
        port map (
      I0 => data2(23),
      I1 => \^gen_bkend_ce_registers[2].ce_out_i_reg[2]_0\,
      I2 => data3(23),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \ip2bus_data_i_D1_reg[0]\,
      I5 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      O => \ip2bus_data_i_D1[8]_i_2_n_0\
    );
\ip2bus_data_i_D1[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => data0(22),
      I1 => \ip2bus_data_i_D1[0]_i_2_n_0\,
      I2 => \ip2bus_data_i_D1[1]_i_2_n_0\,
      I3 => data1(22),
      I4 => \ip2bus_data_i_D1[9]_i_2_n_0\,
      O => D(22)
    );
\ip2bus_data_i_D1[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F800000088000000"
    )
        port map (
      I0 => data2(22),
      I1 => \^gen_bkend_ce_registers[2].ce_out_i_reg[2]_0\,
      I2 => data3(22),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \ip2bus_data_i_D1_reg[0]\,
      I5 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]_0\,
      O => \ip2bus_data_i_D1[9]_i_2_n_0\
    );
ipif_glbl_irpt_enable_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => p_8_in,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => ipif_glbl_irpt_enable_reg,
      O => \s_axi_wdata[31]\
    );
irpt_rdack_d1_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => p_8_in,
      I1 => p_7_in,
      I2 => \^gen_bkend_ce_registers[14].ce_out_i_reg[14]_0\,
      I3 => \^bus_rnw_reg_reg_0\,
      O => irpt_rdack
    );
irpt_wrack_d1_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => p_8_in,
      I1 => p_7_in,
      I2 => \^gen_bkend_ce_registers[14].ce_out_i_reg[14]_0\,
      I3 => \^bus_rnw_reg_reg_0\,
      O => irpt_wrack
    );
s_axi_arready_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAEAAAA"
    )
        port map (
      I0 => ip2bus_rdack_i_D1,
      I1 => s_axi_arready,
      I2 => s_axi_arready_0(2),
      I3 => s_axi_arready_0(1),
      I4 => s_axi_arready_0(3),
      I5 => s_axi_arready_0(0),
      O => \^ip2bus_rdack_i_d1_reg\
    );
s_axi_wready_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAEAAAA"
    )
        port map (
      I0 => ip2bus_wrack_i_D1,
      I1 => s_axi_wready,
      I2 => s_axi_arready_0(2),
      I3 => s_axi_arready_0(1),
      I4 => s_axi_arready_0(3),
      I5 => s_axi_arready_0(0),
      O => \^ip2bus_wrack_i_d1_reg\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_gpio_0_0_cdc_sync is
  port (
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    scndry_vect_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio_io_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_axi_gpio_0_0_cdc_sync : entity is "cdc_sync";
end icyradio_axi_gpio_0_0_cdc_sync;

architecture STRUCTURE of icyradio_axi_gpio_0_0_cdc_sync is
  signal s_level_out_bus_d1_cdc_to_0 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_1 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_10 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_11 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_12 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_13 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_14 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_15 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_16 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_17 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_18 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_19 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_2 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_20 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_21 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_22 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_23 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_24 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_25 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_26 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_27 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_28 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_29 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_3 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_30 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_31 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_4 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_5 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_6 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_7 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_8 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_9 : STD_LOGIC;
  signal s_level_out_bus_d2_0 : STD_LOGIC;
  signal s_level_out_bus_d2_1 : STD_LOGIC;
  signal s_level_out_bus_d2_10 : STD_LOGIC;
  signal s_level_out_bus_d2_11 : STD_LOGIC;
  signal s_level_out_bus_d2_12 : STD_LOGIC;
  signal s_level_out_bus_d2_13 : STD_LOGIC;
  signal s_level_out_bus_d2_14 : STD_LOGIC;
  signal s_level_out_bus_d2_15 : STD_LOGIC;
  signal s_level_out_bus_d2_16 : STD_LOGIC;
  signal s_level_out_bus_d2_17 : STD_LOGIC;
  signal s_level_out_bus_d2_18 : STD_LOGIC;
  signal s_level_out_bus_d2_19 : STD_LOGIC;
  signal s_level_out_bus_d2_2 : STD_LOGIC;
  signal s_level_out_bus_d2_20 : STD_LOGIC;
  signal s_level_out_bus_d2_21 : STD_LOGIC;
  signal s_level_out_bus_d2_22 : STD_LOGIC;
  signal s_level_out_bus_d2_23 : STD_LOGIC;
  signal s_level_out_bus_d2_24 : STD_LOGIC;
  signal s_level_out_bus_d2_25 : STD_LOGIC;
  signal s_level_out_bus_d2_26 : STD_LOGIC;
  signal s_level_out_bus_d2_27 : STD_LOGIC;
  signal s_level_out_bus_d2_28 : STD_LOGIC;
  signal s_level_out_bus_d2_29 : STD_LOGIC;
  signal s_level_out_bus_d2_3 : STD_LOGIC;
  signal s_level_out_bus_d2_30 : STD_LOGIC;
  signal s_level_out_bus_d2_31 : STD_LOGIC;
  signal s_level_out_bus_d2_4 : STD_LOGIC;
  signal s_level_out_bus_d2_5 : STD_LOGIC;
  signal s_level_out_bus_d2_6 : STD_LOGIC;
  signal s_level_out_bus_d2_7 : STD_LOGIC;
  signal s_level_out_bus_d2_8 : STD_LOGIC;
  signal s_level_out_bus_d2_9 : STD_LOGIC;
  signal s_level_out_bus_d3_0 : STD_LOGIC;
  signal s_level_out_bus_d3_1 : STD_LOGIC;
  signal s_level_out_bus_d3_10 : STD_LOGIC;
  signal s_level_out_bus_d3_11 : STD_LOGIC;
  signal s_level_out_bus_d3_12 : STD_LOGIC;
  signal s_level_out_bus_d3_13 : STD_LOGIC;
  signal s_level_out_bus_d3_14 : STD_LOGIC;
  signal s_level_out_bus_d3_15 : STD_LOGIC;
  signal s_level_out_bus_d3_16 : STD_LOGIC;
  signal s_level_out_bus_d3_17 : STD_LOGIC;
  signal s_level_out_bus_d3_18 : STD_LOGIC;
  signal s_level_out_bus_d3_19 : STD_LOGIC;
  signal s_level_out_bus_d3_2 : STD_LOGIC;
  signal s_level_out_bus_d3_20 : STD_LOGIC;
  signal s_level_out_bus_d3_21 : STD_LOGIC;
  signal s_level_out_bus_d3_22 : STD_LOGIC;
  signal s_level_out_bus_d3_23 : STD_LOGIC;
  signal s_level_out_bus_d3_24 : STD_LOGIC;
  signal s_level_out_bus_d3_25 : STD_LOGIC;
  signal s_level_out_bus_d3_26 : STD_LOGIC;
  signal s_level_out_bus_d3_27 : STD_LOGIC;
  signal s_level_out_bus_d3_28 : STD_LOGIC;
  signal s_level_out_bus_d3_29 : STD_LOGIC;
  signal s_level_out_bus_d3_3 : STD_LOGIC;
  signal s_level_out_bus_d3_30 : STD_LOGIC;
  signal s_level_out_bus_d3_31 : STD_LOGIC;
  signal s_level_out_bus_d3_4 : STD_LOGIC;
  signal s_level_out_bus_d3_5 : STD_LOGIC;
  signal s_level_out_bus_d3_6 : STD_LOGIC;
  signal s_level_out_bus_d3_7 : STD_LOGIC;
  signal s_level_out_bus_d3_8 : STD_LOGIC;
  signal s_level_out_bus_d3_9 : STD_LOGIC;
  signal \^scndry_vect_out\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[12].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[12].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[12].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[13].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[13].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[13].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[14].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[14].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[14].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[15].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[15].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[15].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[16].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[16].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[16].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[17].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[17].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[17].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[18].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[18].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[18].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[19].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[19].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[19].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[20].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[20].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[20].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[21].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[21].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[21].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[22].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[22].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[22].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[23].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[23].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[23].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[24].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[24].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[24].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[25].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[25].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[25].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[26].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[26].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[26].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[27].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[27].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[27].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[28].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[28].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[28].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[29].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[29].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[29].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[30].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[30].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[30].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[31].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[31].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[31].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[12].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[12].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[12].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[13].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[13].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[13].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[14].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[14].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[14].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[15].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[15].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[15].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[16].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[16].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[16].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[17].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[17].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[17].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[18].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[18].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[18].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[19].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[19].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[19].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[20].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[20].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[20].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[21].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[21].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[21].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[22].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[22].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[22].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[23].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[23].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[23].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[24].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[24].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[24].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[25].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[25].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[25].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[26].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[26].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[26].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[27].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[27].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[27].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[28].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[28].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[28].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[29].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[29].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[29].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[30].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[30].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[30].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[31].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[31].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[31].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[12].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[12].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[12].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[13].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[13].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[13].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[14].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[14].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[14].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[15].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[15].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[15].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[16].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[16].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[16].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[17].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[17].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[17].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[18].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[18].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[18].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[19].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[19].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[19].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[20].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[20].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[20].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[21].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[21].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[21].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[22].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[22].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[22].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[23].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[23].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[23].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[24].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[24].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[24].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[25].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[25].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[25].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[26].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[26].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[26].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[27].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[27].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[27].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[28].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[28].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[28].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[29].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[29].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[29].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[30].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[30].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[30].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[31].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[31].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[31].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[10].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[10].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[10].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[11].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[11].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[11].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[12].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[12].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[12].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[13].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[13].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[13].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[14].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[14].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[14].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[15].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[15].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[15].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[16].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[16].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[16].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[17].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[17].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[17].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[18].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[18].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[18].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[19].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[19].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[19].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[20].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[20].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[20].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[21].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[21].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[21].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[22].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[22].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[22].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[23].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[23].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[23].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[24].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[24].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[24].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[25].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[25].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[25].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[26].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[26].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[26].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[27].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[27].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[27].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[28].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[28].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[28].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[29].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[29].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[29].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[30].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[30].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[30].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[31].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[31].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[31].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[4].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[4].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[4].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[5].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[5].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[5].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[6].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[6].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[6].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[7].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[7].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[7].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[8].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[8].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[8].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[9].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[9].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[9].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
begin
  scndry_vect_out(31 downto 0) <= \^scndry_vect_out\(31 downto 0);
\Dual.gen_interrupt_dual.gpio_data_in_xor_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^scndry_vect_out\(31),
      I1 => Q(31),
      O => D(31)
    );
\Dual.gen_interrupt_dual.gpio_data_in_xor_reg[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^scndry_vect_out\(21),
      I1 => Q(21),
      O => D(21)
    );
\Dual.gen_interrupt_dual.gpio_data_in_xor_reg[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^scndry_vect_out\(20),
      I1 => Q(20),
      O => D(20)
    );
\Dual.gen_interrupt_dual.gpio_data_in_xor_reg[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^scndry_vect_out\(19),
      I1 => Q(19),
      O => D(19)
    );
\Dual.gen_interrupt_dual.gpio_data_in_xor_reg[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^scndry_vect_out\(18),
      I1 => Q(18),
      O => D(18)
    );
\Dual.gen_interrupt_dual.gpio_data_in_xor_reg[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^scndry_vect_out\(17),
      I1 => Q(17),
      O => D(17)
    );
\Dual.gen_interrupt_dual.gpio_data_in_xor_reg[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^scndry_vect_out\(16),
      I1 => Q(16),
      O => D(16)
    );
\Dual.gen_interrupt_dual.gpio_data_in_xor_reg[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^scndry_vect_out\(15),
      I1 => Q(15),
      O => D(15)
    );
\Dual.gen_interrupt_dual.gpio_data_in_xor_reg[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^scndry_vect_out\(14),
      I1 => Q(14),
      O => D(14)
    );
\Dual.gen_interrupt_dual.gpio_data_in_xor_reg[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^scndry_vect_out\(13),
      I1 => Q(13),
      O => D(13)
    );
\Dual.gen_interrupt_dual.gpio_data_in_xor_reg[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^scndry_vect_out\(12),
      I1 => Q(12),
      O => D(12)
    );
\Dual.gen_interrupt_dual.gpio_data_in_xor_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^scndry_vect_out\(30),
      I1 => Q(30),
      O => D(30)
    );
\Dual.gen_interrupt_dual.gpio_data_in_xor_reg[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^scndry_vect_out\(11),
      I1 => Q(11),
      O => D(11)
    );
\Dual.gen_interrupt_dual.gpio_data_in_xor_reg[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^scndry_vect_out\(10),
      I1 => Q(10),
      O => D(10)
    );
\Dual.gen_interrupt_dual.gpio_data_in_xor_reg[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^scndry_vect_out\(9),
      I1 => Q(9),
      O => D(9)
    );
\Dual.gen_interrupt_dual.gpio_data_in_xor_reg[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^scndry_vect_out\(8),
      I1 => Q(8),
      O => D(8)
    );
\Dual.gen_interrupt_dual.gpio_data_in_xor_reg[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^scndry_vect_out\(7),
      I1 => Q(7),
      O => D(7)
    );
\Dual.gen_interrupt_dual.gpio_data_in_xor_reg[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^scndry_vect_out\(6),
      I1 => Q(6),
      O => D(6)
    );
\Dual.gen_interrupt_dual.gpio_data_in_xor_reg[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^scndry_vect_out\(5),
      I1 => Q(5),
      O => D(5)
    );
\Dual.gen_interrupt_dual.gpio_data_in_xor_reg[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^scndry_vect_out\(4),
      I1 => Q(4),
      O => D(4)
    );
\Dual.gen_interrupt_dual.gpio_data_in_xor_reg[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^scndry_vect_out\(3),
      I1 => Q(3),
      O => D(3)
    );
\Dual.gen_interrupt_dual.gpio_data_in_xor_reg[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^scndry_vect_out\(2),
      I1 => Q(2),
      O => D(2)
    );
\Dual.gen_interrupt_dual.gpio_data_in_xor_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^scndry_vect_out\(29),
      I1 => Q(29),
      O => D(29)
    );
\Dual.gen_interrupt_dual.gpio_data_in_xor_reg[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^scndry_vect_out\(1),
      I1 => Q(1),
      O => D(1)
    );
\Dual.gen_interrupt_dual.gpio_data_in_xor_reg[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^scndry_vect_out\(0),
      I1 => Q(0),
      O => D(0)
    );
\Dual.gen_interrupt_dual.gpio_data_in_xor_reg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^scndry_vect_out\(28),
      I1 => Q(28),
      O => D(28)
    );
\Dual.gen_interrupt_dual.gpio_data_in_xor_reg[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^scndry_vect_out\(27),
      I1 => Q(27),
      O => D(27)
    );
\Dual.gen_interrupt_dual.gpio_data_in_xor_reg[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^scndry_vect_out\(26),
      I1 => Q(26),
      O => D(26)
    );
\Dual.gen_interrupt_dual.gpio_data_in_xor_reg[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^scndry_vect_out\(25),
      I1 => Q(25),
      O => D(25)
    );
\Dual.gen_interrupt_dual.gpio_data_in_xor_reg[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^scndry_vect_out\(24),
      I1 => Q(24),
      O => D(24)
    );
\Dual.gen_interrupt_dual.gpio_data_in_xor_reg[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^scndry_vect_out\(23),
      I1 => Q(23),
      O => D(23)
    );
\Dual.gen_interrupt_dual.gpio_data_in_xor_reg[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^scndry_vect_out\(22),
      I1 => Q(22),
      O => D(22)
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_0,
      Q => s_level_out_bus_d2_0,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_10,
      Q => s_level_out_bus_d2_10,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_11,
      Q => s_level_out_bus_d2_11,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[12].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_12,
      Q => s_level_out_bus_d2_12,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[13].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_13,
      Q => s_level_out_bus_d2_13,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[14].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_14,
      Q => s_level_out_bus_d2_14,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[15].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_15,
      Q => s_level_out_bus_d2_15,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[16].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_16,
      Q => s_level_out_bus_d2_16,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[17].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_17,
      Q => s_level_out_bus_d2_17,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[18].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_18,
      Q => s_level_out_bus_d2_18,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[19].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_19,
      Q => s_level_out_bus_d2_19,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_1,
      Q => s_level_out_bus_d2_1,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[20].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_20,
      Q => s_level_out_bus_d2_20,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[21].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_21,
      Q => s_level_out_bus_d2_21,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[22].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_22,
      Q => s_level_out_bus_d2_22,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[23].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_23,
      Q => s_level_out_bus_d2_23,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[24].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_24,
      Q => s_level_out_bus_d2_24,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[25].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_25,
      Q => s_level_out_bus_d2_25,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[26].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_26,
      Q => s_level_out_bus_d2_26,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[27].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_27,
      Q => s_level_out_bus_d2_27,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[28].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_28,
      Q => s_level_out_bus_d2_28,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[29].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_29,
      Q => s_level_out_bus_d2_29,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_2,
      Q => s_level_out_bus_d2_2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[30].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_30,
      Q => s_level_out_bus_d2_30,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[31].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_31,
      Q => s_level_out_bus_d2_31,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_3,
      Q => s_level_out_bus_d2_3,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_4,
      Q => s_level_out_bus_d2_4,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_5,
      Q => s_level_out_bus_d2_5,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_6,
      Q => s_level_out_bus_d2_6,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_7,
      Q => s_level_out_bus_d2_7,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_8,
      Q => s_level_out_bus_d2_8,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_9,
      Q => s_level_out_bus_d2_9,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_0,
      Q => s_level_out_bus_d3_0,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_10,
      Q => s_level_out_bus_d3_10,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_11,
      Q => s_level_out_bus_d3_11,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[12].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_12,
      Q => s_level_out_bus_d3_12,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[13].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_13,
      Q => s_level_out_bus_d3_13,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[14].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_14,
      Q => s_level_out_bus_d3_14,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[15].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_15,
      Q => s_level_out_bus_d3_15,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[16].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_16,
      Q => s_level_out_bus_d3_16,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[17].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_17,
      Q => s_level_out_bus_d3_17,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[18].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_18,
      Q => s_level_out_bus_d3_18,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[19].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_19,
      Q => s_level_out_bus_d3_19,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_1,
      Q => s_level_out_bus_d3_1,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[20].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_20,
      Q => s_level_out_bus_d3_20,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[21].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_21,
      Q => s_level_out_bus_d3_21,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[22].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_22,
      Q => s_level_out_bus_d3_22,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[23].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_23,
      Q => s_level_out_bus_d3_23,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[24].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_24,
      Q => s_level_out_bus_d3_24,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[25].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_25,
      Q => s_level_out_bus_d3_25,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[26].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_26,
      Q => s_level_out_bus_d3_26,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[27].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_27,
      Q => s_level_out_bus_d3_27,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[28].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_28,
      Q => s_level_out_bus_d3_28,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[29].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_29,
      Q => s_level_out_bus_d3_29,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_2,
      Q => s_level_out_bus_d3_2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[30].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_30,
      Q => s_level_out_bus_d3_30,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[31].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_31,
      Q => s_level_out_bus_d3_31,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_3,
      Q => s_level_out_bus_d3_3,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_4,
      Q => s_level_out_bus_d3_4,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_5,
      Q => s_level_out_bus_d3_5,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_6,
      Q => s_level_out_bus_d3_6,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_7,
      Q => s_level_out_bus_d3_7,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_8,
      Q => s_level_out_bus_d3_8,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_9,
      Q => s_level_out_bus_d3_9,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_0,
      Q => \^scndry_vect_out\(0),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_10,
      Q => \^scndry_vect_out\(10),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_11,
      Q => \^scndry_vect_out\(11),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[12].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_12,
      Q => \^scndry_vect_out\(12),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[13].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_13,
      Q => \^scndry_vect_out\(13),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[14].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_14,
      Q => \^scndry_vect_out\(14),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[15].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_15,
      Q => \^scndry_vect_out\(15),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[16].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_16,
      Q => \^scndry_vect_out\(16),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[17].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_17,
      Q => \^scndry_vect_out\(17),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[18].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_18,
      Q => \^scndry_vect_out\(18),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[19].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_19,
      Q => \^scndry_vect_out\(19),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_1,
      Q => \^scndry_vect_out\(1),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[20].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_20,
      Q => \^scndry_vect_out\(20),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[21].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_21,
      Q => \^scndry_vect_out\(21),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[22].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_22,
      Q => \^scndry_vect_out\(22),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[23].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_23,
      Q => \^scndry_vect_out\(23),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[24].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_24,
      Q => \^scndry_vect_out\(24),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[25].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_25,
      Q => \^scndry_vect_out\(25),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[26].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_26,
      Q => \^scndry_vect_out\(26),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[27].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_27,
      Q => \^scndry_vect_out\(27),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[28].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_28,
      Q => \^scndry_vect_out\(28),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[29].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_29,
      Q => \^scndry_vect_out\(29),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_2,
      Q => \^scndry_vect_out\(2),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[30].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_30,
      Q => \^scndry_vect_out\(30),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[31].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_31,
      Q => \^scndry_vect_out\(31),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_3,
      Q => \^scndry_vect_out\(3),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_4,
      Q => \^scndry_vect_out\(4),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_5,
      Q => \^scndry_vect_out\(5),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_6,
      Q => \^scndry_vect_out\(6),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_7,
      Q => \^scndry_vect_out\(7),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_8,
      Q => \^scndry_vect_out\(8),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_9,
      Q => \^scndry_vect_out\(9),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i(0),
      Q => s_level_out_bus_d1_cdc_to_0,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[10].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i(10),
      Q => s_level_out_bus_d1_cdc_to_10,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[11].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i(11),
      Q => s_level_out_bus_d1_cdc_to_11,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[12].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i(12),
      Q => s_level_out_bus_d1_cdc_to_12,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[13].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i(13),
      Q => s_level_out_bus_d1_cdc_to_13,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[14].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i(14),
      Q => s_level_out_bus_d1_cdc_to_14,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[15].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i(15),
      Q => s_level_out_bus_d1_cdc_to_15,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[16].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i(16),
      Q => s_level_out_bus_d1_cdc_to_16,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[17].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i(17),
      Q => s_level_out_bus_d1_cdc_to_17,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[18].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i(18),
      Q => s_level_out_bus_d1_cdc_to_18,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[19].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i(19),
      Q => s_level_out_bus_d1_cdc_to_19,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i(1),
      Q => s_level_out_bus_d1_cdc_to_1,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[20].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i(20),
      Q => s_level_out_bus_d1_cdc_to_20,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[21].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i(21),
      Q => s_level_out_bus_d1_cdc_to_21,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[22].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i(22),
      Q => s_level_out_bus_d1_cdc_to_22,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[23].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i(23),
      Q => s_level_out_bus_d1_cdc_to_23,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[24].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i(24),
      Q => s_level_out_bus_d1_cdc_to_24,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[25].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i(25),
      Q => s_level_out_bus_d1_cdc_to_25,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[26].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i(26),
      Q => s_level_out_bus_d1_cdc_to_26,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[27].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i(27),
      Q => s_level_out_bus_d1_cdc_to_27,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[28].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i(28),
      Q => s_level_out_bus_d1_cdc_to_28,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[29].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i(29),
      Q => s_level_out_bus_d1_cdc_to_29,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i(2),
      Q => s_level_out_bus_d1_cdc_to_2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[30].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i(30),
      Q => s_level_out_bus_d1_cdc_to_30,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[31].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i(31),
      Q => s_level_out_bus_d1_cdc_to_31,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i(3),
      Q => s_level_out_bus_d1_cdc_to_3,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[4].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i(4),
      Q => s_level_out_bus_d1_cdc_to_4,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[5].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i(5),
      Q => s_level_out_bus_d1_cdc_to_5,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[6].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i(6),
      Q => s_level_out_bus_d1_cdc_to_6,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[7].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i(7),
      Q => s_level_out_bus_d1_cdc_to_7,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[8].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i(8),
      Q => s_level_out_bus_d1_cdc_to_8,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[9].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i(9),
      Q => s_level_out_bus_d1_cdc_to_9,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_gpio_0_0_cdc_sync_0 is
  port (
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    scndry_vect_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio2_io_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_axi_gpio_0_0_cdc_sync_0 : entity is "cdc_sync";
end icyradio_axi_gpio_0_0_cdc_sync_0;

architecture STRUCTURE of icyradio_axi_gpio_0_0_cdc_sync_0 is
  signal s_level_out_bus_d1_cdc_to_0 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_1 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_10 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_11 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_12 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_13 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_14 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_15 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_16 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_17 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_18 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_19 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_2 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_20 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_21 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_22 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_23 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_24 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_25 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_26 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_27 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_28 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_29 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_3 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_30 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_31 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_4 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_5 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_6 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_7 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_8 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_9 : STD_LOGIC;
  signal s_level_out_bus_d2_0 : STD_LOGIC;
  signal s_level_out_bus_d2_1 : STD_LOGIC;
  signal s_level_out_bus_d2_10 : STD_LOGIC;
  signal s_level_out_bus_d2_11 : STD_LOGIC;
  signal s_level_out_bus_d2_12 : STD_LOGIC;
  signal s_level_out_bus_d2_13 : STD_LOGIC;
  signal s_level_out_bus_d2_14 : STD_LOGIC;
  signal s_level_out_bus_d2_15 : STD_LOGIC;
  signal s_level_out_bus_d2_16 : STD_LOGIC;
  signal s_level_out_bus_d2_17 : STD_LOGIC;
  signal s_level_out_bus_d2_18 : STD_LOGIC;
  signal s_level_out_bus_d2_19 : STD_LOGIC;
  signal s_level_out_bus_d2_2 : STD_LOGIC;
  signal s_level_out_bus_d2_20 : STD_LOGIC;
  signal s_level_out_bus_d2_21 : STD_LOGIC;
  signal s_level_out_bus_d2_22 : STD_LOGIC;
  signal s_level_out_bus_d2_23 : STD_LOGIC;
  signal s_level_out_bus_d2_24 : STD_LOGIC;
  signal s_level_out_bus_d2_25 : STD_LOGIC;
  signal s_level_out_bus_d2_26 : STD_LOGIC;
  signal s_level_out_bus_d2_27 : STD_LOGIC;
  signal s_level_out_bus_d2_28 : STD_LOGIC;
  signal s_level_out_bus_d2_29 : STD_LOGIC;
  signal s_level_out_bus_d2_3 : STD_LOGIC;
  signal s_level_out_bus_d2_30 : STD_LOGIC;
  signal s_level_out_bus_d2_31 : STD_LOGIC;
  signal s_level_out_bus_d2_4 : STD_LOGIC;
  signal s_level_out_bus_d2_5 : STD_LOGIC;
  signal s_level_out_bus_d2_6 : STD_LOGIC;
  signal s_level_out_bus_d2_7 : STD_LOGIC;
  signal s_level_out_bus_d2_8 : STD_LOGIC;
  signal s_level_out_bus_d2_9 : STD_LOGIC;
  signal s_level_out_bus_d3_0 : STD_LOGIC;
  signal s_level_out_bus_d3_1 : STD_LOGIC;
  signal s_level_out_bus_d3_10 : STD_LOGIC;
  signal s_level_out_bus_d3_11 : STD_LOGIC;
  signal s_level_out_bus_d3_12 : STD_LOGIC;
  signal s_level_out_bus_d3_13 : STD_LOGIC;
  signal s_level_out_bus_d3_14 : STD_LOGIC;
  signal s_level_out_bus_d3_15 : STD_LOGIC;
  signal s_level_out_bus_d3_16 : STD_LOGIC;
  signal s_level_out_bus_d3_17 : STD_LOGIC;
  signal s_level_out_bus_d3_18 : STD_LOGIC;
  signal s_level_out_bus_d3_19 : STD_LOGIC;
  signal s_level_out_bus_d3_2 : STD_LOGIC;
  signal s_level_out_bus_d3_20 : STD_LOGIC;
  signal s_level_out_bus_d3_21 : STD_LOGIC;
  signal s_level_out_bus_d3_22 : STD_LOGIC;
  signal s_level_out_bus_d3_23 : STD_LOGIC;
  signal s_level_out_bus_d3_24 : STD_LOGIC;
  signal s_level_out_bus_d3_25 : STD_LOGIC;
  signal s_level_out_bus_d3_26 : STD_LOGIC;
  signal s_level_out_bus_d3_27 : STD_LOGIC;
  signal s_level_out_bus_d3_28 : STD_LOGIC;
  signal s_level_out_bus_d3_29 : STD_LOGIC;
  signal s_level_out_bus_d3_3 : STD_LOGIC;
  signal s_level_out_bus_d3_30 : STD_LOGIC;
  signal s_level_out_bus_d3_31 : STD_LOGIC;
  signal s_level_out_bus_d3_4 : STD_LOGIC;
  signal s_level_out_bus_d3_5 : STD_LOGIC;
  signal s_level_out_bus_d3_6 : STD_LOGIC;
  signal s_level_out_bus_d3_7 : STD_LOGIC;
  signal s_level_out_bus_d3_8 : STD_LOGIC;
  signal s_level_out_bus_d3_9 : STD_LOGIC;
  signal \^scndry_vect_out\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[12].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[12].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[12].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[13].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[13].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[13].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[14].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[14].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[14].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[15].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[15].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[15].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[16].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[16].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[16].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[17].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[17].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[17].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[18].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[18].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[18].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[19].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[19].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[19].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[20].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[20].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[20].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[21].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[21].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[21].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[22].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[22].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[22].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[23].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[23].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[23].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[24].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[24].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[24].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[25].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[25].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[25].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[26].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[26].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[26].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[27].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[27].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[27].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[28].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[28].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[28].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[29].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[29].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[29].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[30].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[30].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[30].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[31].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[31].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[31].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[12].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[12].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[12].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[13].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[13].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[13].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[14].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[14].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[14].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[15].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[15].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[15].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[16].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[16].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[16].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[17].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[17].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[17].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[18].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[18].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[18].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[19].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[19].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[19].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[20].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[20].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[20].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[21].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[21].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[21].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[22].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[22].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[22].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[23].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[23].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[23].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[24].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[24].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[24].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[25].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[25].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[25].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[26].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[26].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[26].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[27].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[27].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[27].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[28].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[28].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[28].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[29].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[29].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[29].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[30].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[30].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[30].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[31].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[31].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[31].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[12].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[12].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[12].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[13].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[13].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[13].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[14].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[14].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[14].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[15].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[15].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[15].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[16].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[16].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[16].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[17].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[17].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[17].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[18].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[18].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[18].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[19].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[19].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[19].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[20].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[20].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[20].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[21].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[21].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[21].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[22].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[22].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[22].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[23].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[23].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[23].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[24].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[24].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[24].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[25].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[25].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[25].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[26].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[26].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[26].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[27].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[27].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[27].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[28].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[28].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[28].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[29].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[29].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[29].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[30].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[30].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[30].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[31].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[31].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[31].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[10].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[10].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[10].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[11].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[11].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[11].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[12].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[12].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[12].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[13].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[13].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[13].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[14].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[14].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[14].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[15].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[15].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[15].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[16].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[16].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[16].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[17].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[17].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[17].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[18].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[18].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[18].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[19].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[19].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[19].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[20].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[20].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[20].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[21].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[21].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[21].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[22].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[22].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[22].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[23].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[23].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[23].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[24].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[24].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[24].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[25].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[25].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[25].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[26].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[26].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[26].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[27].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[27].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[27].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[28].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[28].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[28].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[29].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[29].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[29].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[30].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[30].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[30].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[31].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[31].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[31].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[4].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[4].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[4].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[5].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[5].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[5].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[6].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[6].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[6].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[7].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[7].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[7].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[8].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[8].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[8].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[9].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[9].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[9].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
begin
  scndry_vect_out(31 downto 0) <= \^scndry_vect_out\(31 downto 0);
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^scndry_vect_out\(31),
      I1 => Q(31),
      O => D(31)
    );
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^scndry_vect_out\(21),
      I1 => Q(21),
      O => D(21)
    );
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^scndry_vect_out\(20),
      I1 => Q(20),
      O => D(20)
    );
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^scndry_vect_out\(19),
      I1 => Q(19),
      O => D(19)
    );
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^scndry_vect_out\(18),
      I1 => Q(18),
      O => D(18)
    );
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^scndry_vect_out\(17),
      I1 => Q(17),
      O => D(17)
    );
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^scndry_vect_out\(16),
      I1 => Q(16),
      O => D(16)
    );
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^scndry_vect_out\(15),
      I1 => Q(15),
      O => D(15)
    );
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^scndry_vect_out\(14),
      I1 => Q(14),
      O => D(14)
    );
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^scndry_vect_out\(13),
      I1 => Q(13),
      O => D(13)
    );
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^scndry_vect_out\(12),
      I1 => Q(12),
      O => D(12)
    );
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^scndry_vect_out\(30),
      I1 => Q(30),
      O => D(30)
    );
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^scndry_vect_out\(11),
      I1 => Q(11),
      O => D(11)
    );
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^scndry_vect_out\(10),
      I1 => Q(10),
      O => D(10)
    );
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^scndry_vect_out\(9),
      I1 => Q(9),
      O => D(9)
    );
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^scndry_vect_out\(8),
      I1 => Q(8),
      O => D(8)
    );
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^scndry_vect_out\(7),
      I1 => Q(7),
      O => D(7)
    );
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^scndry_vect_out\(6),
      I1 => Q(6),
      O => D(6)
    );
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^scndry_vect_out\(5),
      I1 => Q(5),
      O => D(5)
    );
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^scndry_vect_out\(4),
      I1 => Q(4),
      O => D(4)
    );
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^scndry_vect_out\(3),
      I1 => Q(3),
      O => D(3)
    );
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^scndry_vect_out\(2),
      I1 => Q(2),
      O => D(2)
    );
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^scndry_vect_out\(29),
      I1 => Q(29),
      O => D(29)
    );
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^scndry_vect_out\(1),
      I1 => Q(1),
      O => D(1)
    );
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^scndry_vect_out\(0),
      I1 => Q(0),
      O => D(0)
    );
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^scndry_vect_out\(28),
      I1 => Q(28),
      O => D(28)
    );
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^scndry_vect_out\(27),
      I1 => Q(27),
      O => D(27)
    );
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^scndry_vect_out\(26),
      I1 => Q(26),
      O => D(26)
    );
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^scndry_vect_out\(25),
      I1 => Q(25),
      O => D(25)
    );
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^scndry_vect_out\(24),
      I1 => Q(24),
      O => D(24)
    );
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^scndry_vect_out\(23),
      I1 => Q(23),
      O => D(23)
    );
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^scndry_vect_out\(22),
      I1 => Q(22),
      O => D(22)
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_0,
      Q => s_level_out_bus_d2_0,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_10,
      Q => s_level_out_bus_d2_10,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_11,
      Q => s_level_out_bus_d2_11,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[12].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_12,
      Q => s_level_out_bus_d2_12,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[13].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_13,
      Q => s_level_out_bus_d2_13,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[14].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_14,
      Q => s_level_out_bus_d2_14,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[15].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_15,
      Q => s_level_out_bus_d2_15,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[16].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_16,
      Q => s_level_out_bus_d2_16,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[17].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_17,
      Q => s_level_out_bus_d2_17,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[18].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_18,
      Q => s_level_out_bus_d2_18,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[19].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_19,
      Q => s_level_out_bus_d2_19,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_1,
      Q => s_level_out_bus_d2_1,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[20].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_20,
      Q => s_level_out_bus_d2_20,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[21].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_21,
      Q => s_level_out_bus_d2_21,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[22].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_22,
      Q => s_level_out_bus_d2_22,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[23].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_23,
      Q => s_level_out_bus_d2_23,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[24].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_24,
      Q => s_level_out_bus_d2_24,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[25].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_25,
      Q => s_level_out_bus_d2_25,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[26].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_26,
      Q => s_level_out_bus_d2_26,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[27].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_27,
      Q => s_level_out_bus_d2_27,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[28].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_28,
      Q => s_level_out_bus_d2_28,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[29].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_29,
      Q => s_level_out_bus_d2_29,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_2,
      Q => s_level_out_bus_d2_2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[30].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_30,
      Q => s_level_out_bus_d2_30,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[31].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_31,
      Q => s_level_out_bus_d2_31,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_3,
      Q => s_level_out_bus_d2_3,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_4,
      Q => s_level_out_bus_d2_4,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_5,
      Q => s_level_out_bus_d2_5,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_6,
      Q => s_level_out_bus_d2_6,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_7,
      Q => s_level_out_bus_d2_7,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_8,
      Q => s_level_out_bus_d2_8,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_9,
      Q => s_level_out_bus_d2_9,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_0,
      Q => s_level_out_bus_d3_0,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_10,
      Q => s_level_out_bus_d3_10,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_11,
      Q => s_level_out_bus_d3_11,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[12].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_12,
      Q => s_level_out_bus_d3_12,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[13].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_13,
      Q => s_level_out_bus_d3_13,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[14].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_14,
      Q => s_level_out_bus_d3_14,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[15].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_15,
      Q => s_level_out_bus_d3_15,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[16].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_16,
      Q => s_level_out_bus_d3_16,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[17].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_17,
      Q => s_level_out_bus_d3_17,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[18].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_18,
      Q => s_level_out_bus_d3_18,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[19].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_19,
      Q => s_level_out_bus_d3_19,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_1,
      Q => s_level_out_bus_d3_1,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[20].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_20,
      Q => s_level_out_bus_d3_20,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[21].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_21,
      Q => s_level_out_bus_d3_21,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[22].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_22,
      Q => s_level_out_bus_d3_22,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[23].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_23,
      Q => s_level_out_bus_d3_23,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[24].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_24,
      Q => s_level_out_bus_d3_24,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[25].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_25,
      Q => s_level_out_bus_d3_25,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[26].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_26,
      Q => s_level_out_bus_d3_26,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[27].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_27,
      Q => s_level_out_bus_d3_27,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[28].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_28,
      Q => s_level_out_bus_d3_28,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[29].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_29,
      Q => s_level_out_bus_d3_29,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_2,
      Q => s_level_out_bus_d3_2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[30].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_30,
      Q => s_level_out_bus_d3_30,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[31].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_31,
      Q => s_level_out_bus_d3_31,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_3,
      Q => s_level_out_bus_d3_3,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_4,
      Q => s_level_out_bus_d3_4,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_5,
      Q => s_level_out_bus_d3_5,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_6,
      Q => s_level_out_bus_d3_6,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_7,
      Q => s_level_out_bus_d3_7,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_8,
      Q => s_level_out_bus_d3_8,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_9,
      Q => s_level_out_bus_d3_9,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_0,
      Q => \^scndry_vect_out\(0),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_10,
      Q => \^scndry_vect_out\(10),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_11,
      Q => \^scndry_vect_out\(11),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[12].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_12,
      Q => \^scndry_vect_out\(12),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[13].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_13,
      Q => \^scndry_vect_out\(13),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[14].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_14,
      Q => \^scndry_vect_out\(14),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[15].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_15,
      Q => \^scndry_vect_out\(15),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[16].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_16,
      Q => \^scndry_vect_out\(16),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[17].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_17,
      Q => \^scndry_vect_out\(17),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[18].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_18,
      Q => \^scndry_vect_out\(18),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[19].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_19,
      Q => \^scndry_vect_out\(19),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_1,
      Q => \^scndry_vect_out\(1),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[20].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_20,
      Q => \^scndry_vect_out\(20),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[21].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_21,
      Q => \^scndry_vect_out\(21),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[22].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_22,
      Q => \^scndry_vect_out\(22),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[23].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_23,
      Q => \^scndry_vect_out\(23),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[24].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_24,
      Q => \^scndry_vect_out\(24),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[25].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_25,
      Q => \^scndry_vect_out\(25),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[26].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_26,
      Q => \^scndry_vect_out\(26),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[27].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_27,
      Q => \^scndry_vect_out\(27),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[28].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_28,
      Q => \^scndry_vect_out\(28),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[29].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_29,
      Q => \^scndry_vect_out\(29),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_2,
      Q => \^scndry_vect_out\(2),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[30].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_30,
      Q => \^scndry_vect_out\(30),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[31].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_31,
      Q => \^scndry_vect_out\(31),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_3,
      Q => \^scndry_vect_out\(3),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_4,
      Q => \^scndry_vect_out\(4),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_5,
      Q => \^scndry_vect_out\(5),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_6,
      Q => \^scndry_vect_out\(6),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_7,
      Q => \^scndry_vect_out\(7),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_8,
      Q => \^scndry_vect_out\(8),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_9,
      Q => \^scndry_vect_out\(9),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_io_i(0),
      Q => s_level_out_bus_d1_cdc_to_0,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[10].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_io_i(10),
      Q => s_level_out_bus_d1_cdc_to_10,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[11].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_io_i(11),
      Q => s_level_out_bus_d1_cdc_to_11,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[12].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_io_i(12),
      Q => s_level_out_bus_d1_cdc_to_12,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[13].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_io_i(13),
      Q => s_level_out_bus_d1_cdc_to_13,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[14].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_io_i(14),
      Q => s_level_out_bus_d1_cdc_to_14,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[15].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_io_i(15),
      Q => s_level_out_bus_d1_cdc_to_15,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[16].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_io_i(16),
      Q => s_level_out_bus_d1_cdc_to_16,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[17].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_io_i(17),
      Q => s_level_out_bus_d1_cdc_to_17,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[18].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_io_i(18),
      Q => s_level_out_bus_d1_cdc_to_18,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[19].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_io_i(19),
      Q => s_level_out_bus_d1_cdc_to_19,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_io_i(1),
      Q => s_level_out_bus_d1_cdc_to_1,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[20].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_io_i(20),
      Q => s_level_out_bus_d1_cdc_to_20,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[21].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_io_i(21),
      Q => s_level_out_bus_d1_cdc_to_21,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[22].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_io_i(22),
      Q => s_level_out_bus_d1_cdc_to_22,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[23].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_io_i(23),
      Q => s_level_out_bus_d1_cdc_to_23,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[24].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_io_i(24),
      Q => s_level_out_bus_d1_cdc_to_24,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[25].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_io_i(25),
      Q => s_level_out_bus_d1_cdc_to_25,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[26].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_io_i(26),
      Q => s_level_out_bus_d1_cdc_to_26,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[27].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_io_i(27),
      Q => s_level_out_bus_d1_cdc_to_27,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[28].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_io_i(28),
      Q => s_level_out_bus_d1_cdc_to_28,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[29].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_io_i(29),
      Q => s_level_out_bus_d1_cdc_to_29,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_io_i(2),
      Q => s_level_out_bus_d1_cdc_to_2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[30].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_io_i(30),
      Q => s_level_out_bus_d1_cdc_to_30,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[31].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_io_i(31),
      Q => s_level_out_bus_d1_cdc_to_31,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_io_i(3),
      Q => s_level_out_bus_d1_cdc_to_3,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[4].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_io_i(4),
      Q => s_level_out_bus_d1_cdc_to_4,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[5].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_io_i(5),
      Q => s_level_out_bus_d1_cdc_to_5,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[6].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_io_i(6),
      Q => s_level_out_bus_d1_cdc_to_6,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[7].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_io_i(7),
      Q => s_level_out_bus_d1_cdc_to_7,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[8].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_io_i(8),
      Q => s_level_out_bus_d1_cdc_to_8,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[9].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_io_i(9),
      Q => s_level_out_bus_d1_cdc_to_9,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_gpio_0_0_interrupt_control is
  port (
    irpt_wrack_d1 : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\ : out STD_LOGIC;
    p_1_in : out STD_LOGIC;
    irpt_rdack_d1 : out STD_LOGIC;
    ipif_glbl_irpt_enable_reg : out STD_LOGIC;
    ip2bus_wrack_i : out STD_LOGIC;
    ip2bus_rdack_i : out STD_LOGIC;
    IP2INTC_Irpt_i : out STD_LOGIC;
    p_0_in0_in : out STD_LOGIC;
    \ip_irpt_enable_reg_reg[0]_0\ : out STD_LOGIC;
    bus2ip_reset : in STD_LOGIC;
    irpt_wrack : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    GPIO_intr : in STD_LOGIC;
    GPIO2_intr : in STD_LOGIC;
    interrupt_wrce_strb : in STD_LOGIC;
    irpt_rdack : in STD_LOGIC;
    intr2bus_rdack0 : in STD_LOGIC;
    ipif_glbl_irpt_enable_reg_reg_0 : in STD_LOGIC;
    GPIO_xferAck_i : in STD_LOGIC;
    bus2ip_rnw : in STD_LOGIC;
    ip2Bus_WrAck_intr_reg_hole : in STD_LOGIC;
    ip2Bus_RdAck_intr_reg_hole : in STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0\ : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 1 downto 0 );
    p_5_in : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_axi_gpio_0_0_interrupt_control : entity is "interrupt_control";
end icyradio_axi_gpio_0_0_interrupt_control;

architecture STRUCTURE of icyradio_axi_gpio_0_0_interrupt_control is
  signal \DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\ : STD_LOGIC;
  signal \DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0\ : STD_LOGIC;
  signal \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]_0\ : STD_LOGIC;
  signal \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal intr2bus_rdack : STD_LOGIC;
  signal intr2bus_wrack : STD_LOGIC;
  signal \ip_irpt_enable_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \ip_irpt_enable_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \^ip_irpt_enable_reg_reg[0]_0\ : STD_LOGIC;
  signal \^ipif_glbl_irpt_enable_reg\ : STD_LOGIC;
  signal irpt_dly1 : STD_LOGIC;
  signal irpt_dly2 : STD_LOGIC;
  signal \^p_0_in0_in\ : STD_LOGIC;
  signal \^p_1_in\ : STD_LOGIC;
begin
  \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\ <= \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]_0\;
  \ip_irpt_enable_reg_reg[0]_0\ <= \^ip_irpt_enable_reg_reg[0]_0\;
  ipif_glbl_irpt_enable_reg <= \^ipif_glbl_irpt_enable_reg\;
  p_0_in0_in <= \^p_0_in0_in\;
  p_1_in <= \^p_1_in\;
\DO_IRPT_INPUT[0].GEN_POS_EDGE_DETECT.irpt_dly1_reg\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => GPIO_intr,
      Q => irpt_dly1,
      S => bus2ip_reset
    );
\DO_IRPT_INPUT[0].GEN_POS_EDGE_DETECT.irpt_dly2_reg\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => irpt_dly1,
      Q => irpt_dly2,
      S => bus2ip_reset
    );
\DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly1_reg\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => GPIO2_intr,
      Q => \DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\,
      S => bus2ip_reset
    );
\DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly2_reg\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\,
      Q => \DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0\,
      S => bus2ip_reset
    );
\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F44FF4F4"
    )
        port map (
      I0 => irpt_dly2,
      I1 => irpt_dly1,
      I2 => \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]_0\,
      I3 => \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0\,
      I4 => s_axi_wdata(0),
      O => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1_n_0\
    );
\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1_n_0\,
      Q => \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]_0\,
      R => bus2ip_reset
    );
\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F44FF4F4"
    )
        port map (
      I0 => \DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0\,
      I1 => \DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\,
      I2 => \^p_1_in\,
      I3 => \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0\,
      I4 => s_axi_wdata(1),
      O => \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1_n_0\
    );
\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1_n_0\,
      Q => \^p_1_in\,
      R => bus2ip_reset
    );
\INTR_CTRLR_GEN.ip2intc_irpt_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0808080"
    )
        port map (
      I0 => \^p_0_in0_in\,
      I1 => \^p_1_in\,
      I2 => \^ipif_glbl_irpt_enable_reg\,
      I3 => \^ip_irpt_enable_reg_reg[0]_0\,
      I4 => \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]_0\,
      O => IP2INTC_Irpt_i
    );
intr2bus_rdack_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => intr2bus_rdack0,
      Q => intr2bus_rdack,
      R => bus2ip_reset
    );
intr2bus_wrack_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => interrupt_wrce_strb,
      Q => intr2bus_wrack,
      R => bus2ip_reset
    );
ip2bus_rdack_i_D1_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => intr2bus_rdack,
      I1 => GPIO_xferAck_i,
      I2 => bus2ip_rnw,
      I3 => ip2Bus_RdAck_intr_reg_hole,
      O => ip2bus_rdack_i
    );
ip2bus_wrack_i_D1_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFAE"
    )
        port map (
      I0 => intr2bus_wrack,
      I1 => GPIO_xferAck_i,
      I2 => bus2ip_rnw,
      I3 => ip2Bus_WrAck_intr_reg_hole,
      O => ip2bus_wrack_i
    );
\ip_irpt_enable_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => p_5_in,
      I2 => Bus_RNW_reg,
      I3 => \^ip_irpt_enable_reg_reg[0]_0\,
      O => \ip_irpt_enable_reg[0]_i_1_n_0\
    );
\ip_irpt_enable_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(1),
      I1 => p_5_in,
      I2 => Bus_RNW_reg,
      I3 => \^p_0_in0_in\,
      O => \ip_irpt_enable_reg[1]_i_1_n_0\
    );
\ip_irpt_enable_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ip_irpt_enable_reg[0]_i_1_n_0\,
      Q => \^ip_irpt_enable_reg_reg[0]_0\,
      R => bus2ip_reset
    );
\ip_irpt_enable_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ip_irpt_enable_reg[1]_i_1_n_0\,
      Q => \^p_0_in0_in\,
      R => bus2ip_reset
    );
ipif_glbl_irpt_enable_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ipif_glbl_irpt_enable_reg_reg_0,
      Q => \^ipif_glbl_irpt_enable_reg\,
      R => bus2ip_reset
    );
irpt_rdack_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => irpt_rdack,
      Q => irpt_rdack_d1,
      R => bus2ip_reset
    );
irpt_wrack_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => irpt_wrack,
      Q => irpt_wrack_d1,
      R => bus2ip_reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_gpio_0_0_GPIO_Core is
  port (
    GPIO_intr : out STD_LOGIC;
    GPIO2_intr : out STD_LOGIC;
    GPIO_xferAck_i : out STD_LOGIC;
    gpio_xferAck_Reg : out STD_LOGIC;
    data0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    data2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    data1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    data3 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\ : out STD_LOGIC;
    gpio2_io_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio2_io_t : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio_io_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio_io_t : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bus2ip_reset : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\ : in STD_LOGIC;
    p_19_in : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC;
    p_18_in : in STD_LOGIC;
    p_17_in : in STD_LOGIC;
    p_16_in : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gpio_reg_en : in STD_LOGIC;
    p_1_in2_in : in STD_LOGIC;
    p_0_in3_in : in STD_LOGIC;
    bus2ip_cs : in STD_LOGIC_VECTOR ( 0 to 0 );
    gpio_io_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio2_io_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \Dual.gpio_Data_Out_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Dual.gpio2_OE_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Dual.gpio2_Data_Out_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_axi_gpio_0_0_GPIO_Core : entity is "GPIO_Core";
end icyradio_axi_gpio_0_0_GPIO_Core;

architecture STRUCTURE of icyradio_axi_gpio_0_0_GPIO_Core is
  signal \Dual.ALLOUT0_ND_G0.READ_REG_GEN[0].reg1[0]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G0.READ_REG_GEN[0].reg2[0]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G0.READ_REG_GEN[10].reg1[10]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G0.READ_REG_GEN[10].reg2[10]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G0.READ_REG_GEN[11].reg1[11]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G0.READ_REG_GEN[11].reg2[11]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G0.READ_REG_GEN[12].reg1[12]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G0.READ_REG_GEN[12].reg2[12]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G0.READ_REG_GEN[13].reg1[13]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G0.READ_REG_GEN[13].reg2[13]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G0.READ_REG_GEN[14].reg1[14]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G0.READ_REG_GEN[14].reg2[14]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G0.READ_REG_GEN[15].reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G0.READ_REG_GEN[15].reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G0.READ_REG_GEN[16].reg1[16]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G0.READ_REG_GEN[16].reg2[16]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G0.READ_REG_GEN[17].reg1[17]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G0.READ_REG_GEN[17].reg2[17]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G0.READ_REG_GEN[18].reg1[18]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G0.READ_REG_GEN[18].reg2[18]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G0.READ_REG_GEN[19].reg1[19]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G0.READ_REG_GEN[19].reg2[19]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G0.READ_REG_GEN[1].reg1[1]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G0.READ_REG_GEN[1].reg2[1]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G0.READ_REG_GEN[20].reg1[20]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G0.READ_REG_GEN[20].reg2[20]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G0.READ_REG_GEN[21].reg1[21]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G0.READ_REG_GEN[21].reg2[21]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G0.READ_REG_GEN[22].reg1[22]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G0.READ_REG_GEN[22].reg2[22]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G0.READ_REG_GEN[23].reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G0.READ_REG_GEN[23].reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G0.READ_REG_GEN[24].reg1[24]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G0.READ_REG_GEN[24].reg2[24]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G0.READ_REG_GEN[25].reg1[25]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G0.READ_REG_GEN[25].reg2[25]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G0.READ_REG_GEN[26].reg1[26]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G0.READ_REG_GEN[26].reg2[26]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G0.READ_REG_GEN[27].reg1[27]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G0.READ_REG_GEN[27].reg2[27]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G0.READ_REG_GEN[28].reg1[28]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G0.READ_REG_GEN[28].reg2[28]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G0.READ_REG_GEN[29].reg1[29]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G0.READ_REG_GEN[29].reg2[29]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G0.READ_REG_GEN[2].reg1[2]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G0.READ_REG_GEN[2].reg2[2]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G0.READ_REG_GEN[30].reg1[30]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G0.READ_REG_GEN[30].reg2[30]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G0.READ_REG_GEN[31].reg1[31]_i_2_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G0.READ_REG_GEN[31].reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G0.READ_REG_GEN[3].reg1[3]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G0.READ_REG_GEN[3].reg2[3]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G0.READ_REG_GEN[4].reg1[4]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G0.READ_REG_GEN[4].reg2[4]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G0.READ_REG_GEN[5].reg1[5]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G0.READ_REG_GEN[5].reg2[5]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G0.READ_REG_GEN[6].reg1[6]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G0.READ_REG_GEN[6].reg2[6]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G0.READ_REG_GEN[7].reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G0.READ_REG_GEN[7].reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G0.READ_REG_GEN[8].reg1[8]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G0.READ_REG_GEN[8].reg2[8]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G0.READ_REG_GEN[9].reg1[9]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G0.READ_REG_GEN[9].reg2[9]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg3[0]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4[0]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[10].reg3[10]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[10].reg4[10]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[11].reg3[11]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[11].reg4[11]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[12].reg3[12]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[12].reg4[12]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[13].reg3[13]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[13].reg4[13]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[14].reg3[14]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[14].reg4[14]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[15].reg3[15]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[15].reg4[15]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[16].reg3[16]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[16].reg4[16]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[17].reg3[17]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[17].reg4[17]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[18].reg3[18]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[18].reg4[18]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[19].reg3[19]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[19].reg4[19]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[1].reg3[1]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[1].reg4[1]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[20].reg3[20]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[20].reg4[20]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[21].reg3[21]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[21].reg4[21]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[22].reg3[22]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[22].reg4[22]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[23].reg3[23]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[23].reg4[23]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[24].reg3[24]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[24].reg4[24]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[25].reg3[25]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[25].reg4[25]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[26].reg3[26]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[26].reg4[26]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[27].reg3[27]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[27].reg4[27]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[28].reg3[28]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[28].reg4[28]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[29].reg3[29]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[29].reg4[29]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[2].reg3[2]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[2].reg4[2]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[30].reg3[30]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[30].reg4[30]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[31].reg3[31]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[31].reg4[31]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[3].reg3[3]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[3].reg4[3]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[4].reg3[4]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[4].reg4[4]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[5].reg3[5]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[5].reg4[5]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[6].reg3[6]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[6].reg4[6]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[7].reg3[7]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[7].reg4[7]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[8].reg3[8]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[8].reg4[8]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[9].reg3[9]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[9].reg4[9]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.gen_interrupt_dual.GPIO_intr_i_2_n_0\ : STD_LOGIC;
  signal \Dual.gen_interrupt_dual.GPIO_intr_i_3_n_0\ : STD_LOGIC;
  signal \Dual.gen_interrupt_dual.GPIO_intr_i_4_n_0\ : STD_LOGIC;
  signal \Dual.gen_interrupt_dual.GPIO_intr_i_5_n_0\ : STD_LOGIC;
  signal \Dual.gen_interrupt_dual.GPIO_intr_i_6_n_0\ : STD_LOGIC;
  signal \Dual.gen_interrupt_dual.GPIO_intr_i_7_n_0\ : STD_LOGIC;
  signal \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[31]\ : STD_LOGIC;
  signal \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg_n_0_[31]\ : STD_LOGIC;
  signal \^gpio_xferack_i\ : STD_LOGIC;
  signal \^data1\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^data3\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal gpio2_Data_In : STD_LOGIC_VECTOR ( 0 to 31 );
  signal gpio2_data_in_xor : STD_LOGIC_VECTOR ( 0 to 31 );
  signal gpio2_io_i_d2 : STD_LOGIC_VECTOR ( 0 to 31 );
  signal \^gpio2_io_o\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^gpio2_io_t\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal gpio_Data_In : STD_LOGIC_VECTOR ( 0 to 31 );
  signal gpio_data_in_xor : STD_LOGIC_VECTOR ( 0 to 31 );
  signal gpio_io_i_d2 : STD_LOGIC_VECTOR ( 0 to 31 );
  signal \^gpio_io_o\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^gpio_io_t\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^gpio_xferack_reg\ : STD_LOGIC;
  signal iGPIO_xferAck : STD_LOGIC;
  signal or_reduce : STD_LOGIC;
  signal or_reduce34_out : STD_LOGIC;
  signal \or_reduce_inferred__0/Dual.gen_interrupt_dual.GPIO2_intr_i_2_n_0\ : STD_LOGIC;
  signal \or_reduce_inferred__0/Dual.gen_interrupt_dual.GPIO2_intr_i_3_n_0\ : STD_LOGIC;
  signal \or_reduce_inferred__0/Dual.gen_interrupt_dual.GPIO2_intr_i_4_n_0\ : STD_LOGIC;
  signal \or_reduce_inferred__0/Dual.gen_interrupt_dual.GPIO2_intr_i_5_n_0\ : STD_LOGIC;
  signal \or_reduce_inferred__0/Dual.gen_interrupt_dual.GPIO2_intr_i_6_n_0\ : STD_LOGIC;
  signal \or_reduce_inferred__0/Dual.gen_interrupt_dual.GPIO2_intr_i_7_n_0\ : STD_LOGIC;
  signal p_0_in2_in : STD_LOGIC;
  signal p_10_in : STD_LOGIC;
  signal p_10_in12_in : STD_LOGIC;
  signal p_11_in : STD_LOGIC;
  signal p_11_in13_in : STD_LOGIC;
  signal p_12_in : STD_LOGIC;
  signal p_12_in14_in : STD_LOGIC;
  signal p_13_in : STD_LOGIC;
  signal p_13_in15_in : STD_LOGIC;
  signal p_14_in : STD_LOGIC;
  signal p_14_in16_in : STD_LOGIC;
  signal p_15_in : STD_LOGIC;
  signal p_15_in17_in : STD_LOGIC;
  signal p_16_in18_in : STD_LOGIC;
  signal p_16_in_0 : STD_LOGIC;
  signal p_17_in19_in : STD_LOGIC;
  signal p_17_in_1 : STD_LOGIC;
  signal p_18_in20_in : STD_LOGIC;
  signal p_18_in_2 : STD_LOGIC;
  signal p_19_in21_in : STD_LOGIC;
  signal p_19_in_3 : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_1_in3_in : STD_LOGIC;
  signal p_20_in : STD_LOGIC;
  signal p_20_in22_in : STD_LOGIC;
  signal p_21_in : STD_LOGIC;
  signal p_21_in23_in : STD_LOGIC;
  signal p_22_in : STD_LOGIC;
  signal p_22_in24_in : STD_LOGIC;
  signal p_23_in : STD_LOGIC;
  signal p_23_in25_in : STD_LOGIC;
  signal p_24_in : STD_LOGIC;
  signal p_24_in26_in : STD_LOGIC;
  signal p_25_in : STD_LOGIC;
  signal p_25_in27_in : STD_LOGIC;
  signal p_26_in : STD_LOGIC;
  signal p_26_in28_in : STD_LOGIC;
  signal p_27_in : STD_LOGIC;
  signal p_27_in29_in : STD_LOGIC;
  signal p_28_in : STD_LOGIC;
  signal p_28_in30_in : STD_LOGIC;
  signal p_29_in : STD_LOGIC;
  signal p_29_in31_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_2_in4_in : STD_LOGIC;
  signal p_3_in : STD_LOGIC;
  signal p_3_in5_in : STD_LOGIC;
  signal p_4_in : STD_LOGIC;
  signal p_4_in6_in : STD_LOGIC;
  signal p_5_in : STD_LOGIC;
  signal p_5_in7_in : STD_LOGIC;
  signal p_6_in : STD_LOGIC;
  signal p_6_in8_in : STD_LOGIC;
  signal p_7_in : STD_LOGIC;
  signal p_7_in9_in : STD_LOGIC;
  signal p_8_in : STD_LOGIC;
  signal p_8_in10_in : STD_LOGIC;
  signal p_9_in : STD_LOGIC;
  signal p_9_in11_in : STD_LOGIC;
begin
  GPIO_xferAck_i <= \^gpio_xferack_i\;
  data1(31 downto 0) <= \^data1\(31 downto 0);
  data3(31 downto 0) <= \^data3\(31 downto 0);
  gpio2_io_o(31 downto 0) <= \^gpio2_io_o\(31 downto 0);
  gpio2_io_t(31 downto 0) <= \^gpio2_io_t\(31 downto 0);
  gpio_io_o(31 downto 0) <= \^gpio_io_o\(31 downto 0);
  gpio_io_t(31 downto 0) <= \^gpio_io_t\(31 downto 0);
  gpio_xferAck_Reg <= \^gpio_xferack_reg\;
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[0].reg1[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE02C2C2"
    )
        port map (
      I0 => \^gpio_io_o\(31),
      I1 => \^gpio_io_t\(31),
      I2 => p_1_in2_in,
      I3 => gpio_Data_In(0),
      I4 => p_0_in3_in,
      O => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[0].reg1[0]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[0].reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[0].reg1[0]_i_1_n_0\,
      Q => data0(31),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[0].reg2[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE02C2C2"
    )
        port map (
      I0 => \^data1\(31),
      I1 => \^gpio_io_t\(31),
      I2 => p_1_in2_in,
      I3 => gpio_Data_In(0),
      I4 => p_0_in3_in,
      O => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[0].reg2[0]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[0].reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[0].reg2[0]_i_1_n_0\,
      Q => \^data1\(31),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[10].reg1[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE02C2C2"
    )
        port map (
      I0 => \^gpio_io_o\(21),
      I1 => \^gpio_io_t\(21),
      I2 => p_1_in2_in,
      I3 => gpio_Data_In(10),
      I4 => p_0_in3_in,
      O => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[10].reg1[10]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[10].reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[10].reg1[10]_i_1_n_0\,
      Q => data0(21),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[10].reg2[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE02C2C2"
    )
        port map (
      I0 => \^data1\(21),
      I1 => \^gpio_io_t\(21),
      I2 => p_1_in2_in,
      I3 => gpio_Data_In(10),
      I4 => p_0_in3_in,
      O => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[10].reg2[10]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[10].reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[10].reg2[10]_i_1_n_0\,
      Q => \^data1\(21),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[11].reg1[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE02C2C2"
    )
        port map (
      I0 => \^gpio_io_o\(20),
      I1 => \^gpio_io_t\(20),
      I2 => p_1_in2_in,
      I3 => gpio_Data_In(11),
      I4 => p_0_in3_in,
      O => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[11].reg1[11]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[11].reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[11].reg1[11]_i_1_n_0\,
      Q => data0(20),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[11].reg2[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE02C2C2"
    )
        port map (
      I0 => \^data1\(20),
      I1 => \^gpio_io_t\(20),
      I2 => p_1_in2_in,
      I3 => gpio_Data_In(11),
      I4 => p_0_in3_in,
      O => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[11].reg2[11]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[11].reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[11].reg2[11]_i_1_n_0\,
      Q => \^data1\(20),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[12].reg1[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE02C2C2"
    )
        port map (
      I0 => \^gpio_io_o\(19),
      I1 => \^gpio_io_t\(19),
      I2 => p_1_in2_in,
      I3 => gpio_Data_In(12),
      I4 => p_0_in3_in,
      O => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[12].reg1[12]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[12].reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[12].reg1[12]_i_1_n_0\,
      Q => data0(19),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[12].reg2[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE02C2C2"
    )
        port map (
      I0 => \^data1\(19),
      I1 => \^gpio_io_t\(19),
      I2 => p_1_in2_in,
      I3 => gpio_Data_In(12),
      I4 => p_0_in3_in,
      O => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[12].reg2[12]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[12].reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[12].reg2[12]_i_1_n_0\,
      Q => \^data1\(19),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[13].reg1[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE02C2C2"
    )
        port map (
      I0 => \^gpio_io_o\(18),
      I1 => \^gpio_io_t\(18),
      I2 => p_1_in2_in,
      I3 => gpio_Data_In(13),
      I4 => p_0_in3_in,
      O => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[13].reg1[13]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[13].reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[13].reg1[13]_i_1_n_0\,
      Q => data0(18),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[13].reg2[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE02C2C2"
    )
        port map (
      I0 => \^data1\(18),
      I1 => \^gpio_io_t\(18),
      I2 => p_1_in2_in,
      I3 => gpio_Data_In(13),
      I4 => p_0_in3_in,
      O => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[13].reg2[13]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[13].reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[13].reg2[13]_i_1_n_0\,
      Q => \^data1\(18),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[14].reg1[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE02C2C2"
    )
        port map (
      I0 => \^gpio_io_o\(17),
      I1 => \^gpio_io_t\(17),
      I2 => p_1_in2_in,
      I3 => gpio_Data_In(14),
      I4 => p_0_in3_in,
      O => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[14].reg1[14]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[14].reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[14].reg1[14]_i_1_n_0\,
      Q => data0(17),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[14].reg2[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE02C2C2"
    )
        port map (
      I0 => \^data1\(17),
      I1 => \^gpio_io_t\(17),
      I2 => p_1_in2_in,
      I3 => gpio_Data_In(14),
      I4 => p_0_in3_in,
      O => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[14].reg2[14]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[14].reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[14].reg2[14]_i_1_n_0\,
      Q => \^data1\(17),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[15].reg1[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE02C2C2"
    )
        port map (
      I0 => \^gpio_io_o\(16),
      I1 => \^gpio_io_t\(16),
      I2 => p_1_in2_in,
      I3 => gpio_Data_In(15),
      I4 => p_0_in3_in,
      O => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[15].reg1[15]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[15].reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[15].reg1[15]_i_1_n_0\,
      Q => data0(16),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[15].reg2[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE02C2C2"
    )
        port map (
      I0 => \^data1\(16),
      I1 => \^gpio_io_t\(16),
      I2 => p_1_in2_in,
      I3 => gpio_Data_In(15),
      I4 => p_0_in3_in,
      O => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[15].reg2[15]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[15].reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[15].reg2[15]_i_1_n_0\,
      Q => \^data1\(16),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[16].reg1[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE02C2C2"
    )
        port map (
      I0 => \^gpio_io_o\(15),
      I1 => \^gpio_io_t\(15),
      I2 => p_1_in2_in,
      I3 => gpio_Data_In(16),
      I4 => p_0_in3_in,
      O => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[16].reg1[16]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[16].reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[16].reg1[16]_i_1_n_0\,
      Q => data0(15),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[16].reg2[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE02C2C2"
    )
        port map (
      I0 => \^data1\(15),
      I1 => \^gpio_io_t\(15),
      I2 => p_1_in2_in,
      I3 => gpio_Data_In(16),
      I4 => p_0_in3_in,
      O => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[16].reg2[16]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[16].reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[16].reg2[16]_i_1_n_0\,
      Q => \^data1\(15),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[17].reg1[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE02C2C2"
    )
        port map (
      I0 => \^gpio_io_o\(14),
      I1 => \^gpio_io_t\(14),
      I2 => p_1_in2_in,
      I3 => gpio_Data_In(17),
      I4 => p_0_in3_in,
      O => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[17].reg1[17]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[17].reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[17].reg1[17]_i_1_n_0\,
      Q => data0(14),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[17].reg2[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE02C2C2"
    )
        port map (
      I0 => \^data1\(14),
      I1 => \^gpio_io_t\(14),
      I2 => p_1_in2_in,
      I3 => gpio_Data_In(17),
      I4 => p_0_in3_in,
      O => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[17].reg2[17]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[17].reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[17].reg2[17]_i_1_n_0\,
      Q => \^data1\(14),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[18].reg1[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE02C2C2"
    )
        port map (
      I0 => \^gpio_io_o\(13),
      I1 => \^gpio_io_t\(13),
      I2 => p_1_in2_in,
      I3 => gpio_Data_In(18),
      I4 => p_0_in3_in,
      O => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[18].reg1[18]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[18].reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[18].reg1[18]_i_1_n_0\,
      Q => data0(13),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[18].reg2[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE02C2C2"
    )
        port map (
      I0 => \^data1\(13),
      I1 => \^gpio_io_t\(13),
      I2 => p_1_in2_in,
      I3 => gpio_Data_In(18),
      I4 => p_0_in3_in,
      O => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[18].reg2[18]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[18].reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[18].reg2[18]_i_1_n_0\,
      Q => \^data1\(13),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[19].reg1[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE02C2C2"
    )
        port map (
      I0 => \^gpio_io_o\(12),
      I1 => \^gpio_io_t\(12),
      I2 => p_1_in2_in,
      I3 => gpio_Data_In(19),
      I4 => p_0_in3_in,
      O => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[19].reg1[19]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[19].reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[19].reg1[19]_i_1_n_0\,
      Q => data0(12),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[19].reg2[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE02C2C2"
    )
        port map (
      I0 => \^data1\(12),
      I1 => \^gpio_io_t\(12),
      I2 => p_1_in2_in,
      I3 => gpio_Data_In(19),
      I4 => p_0_in3_in,
      O => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[19].reg2[19]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[19].reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[19].reg2[19]_i_1_n_0\,
      Q => \^data1\(12),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[1].reg1[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE02C2C2"
    )
        port map (
      I0 => \^gpio_io_o\(30),
      I1 => \^gpio_io_t\(30),
      I2 => p_1_in2_in,
      I3 => gpio_Data_In(1),
      I4 => p_0_in3_in,
      O => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[1].reg1[1]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[1].reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[1].reg1[1]_i_1_n_0\,
      Q => data0(30),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[1].reg2[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE02C2C2"
    )
        port map (
      I0 => \^data1\(30),
      I1 => \^gpio_io_t\(30),
      I2 => p_1_in2_in,
      I3 => gpio_Data_In(1),
      I4 => p_0_in3_in,
      O => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[1].reg2[1]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[1].reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[1].reg2[1]_i_1_n_0\,
      Q => \^data1\(30),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[20].reg1[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE02C2C2"
    )
        port map (
      I0 => \^gpio_io_o\(11),
      I1 => \^gpio_io_t\(11),
      I2 => p_1_in2_in,
      I3 => gpio_Data_In(20),
      I4 => p_0_in3_in,
      O => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[20].reg1[20]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[20].reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[20].reg1[20]_i_1_n_0\,
      Q => data0(11),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[20].reg2[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE02C2C2"
    )
        port map (
      I0 => \^data1\(11),
      I1 => \^gpio_io_t\(11),
      I2 => p_1_in2_in,
      I3 => gpio_Data_In(20),
      I4 => p_0_in3_in,
      O => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[20].reg2[20]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[20].reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[20].reg2[20]_i_1_n_0\,
      Q => \^data1\(11),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[21].reg1[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE02C2C2"
    )
        port map (
      I0 => \^gpio_io_o\(10),
      I1 => \^gpio_io_t\(10),
      I2 => p_1_in2_in,
      I3 => gpio_Data_In(21),
      I4 => p_0_in3_in,
      O => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[21].reg1[21]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[21].reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[21].reg1[21]_i_1_n_0\,
      Q => data0(10),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[21].reg2[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE02C2C2"
    )
        port map (
      I0 => \^data1\(10),
      I1 => \^gpio_io_t\(10),
      I2 => p_1_in2_in,
      I3 => gpio_Data_In(21),
      I4 => p_0_in3_in,
      O => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[21].reg2[21]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[21].reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[21].reg2[21]_i_1_n_0\,
      Q => \^data1\(10),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[22].reg1[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE02C2C2"
    )
        port map (
      I0 => \^gpio_io_o\(9),
      I1 => \^gpio_io_t\(9),
      I2 => p_1_in2_in,
      I3 => gpio_Data_In(22),
      I4 => p_0_in3_in,
      O => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[22].reg1[22]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[22].reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[22].reg1[22]_i_1_n_0\,
      Q => data0(9),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[22].reg2[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE02C2C2"
    )
        port map (
      I0 => \^data1\(9),
      I1 => \^gpio_io_t\(9),
      I2 => p_1_in2_in,
      I3 => gpio_Data_In(22),
      I4 => p_0_in3_in,
      O => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[22].reg2[22]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[22].reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[22].reg2[22]_i_1_n_0\,
      Q => \^data1\(9),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[23].reg1[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE02C2C2"
    )
        port map (
      I0 => \^gpio_io_o\(8),
      I1 => \^gpio_io_t\(8),
      I2 => p_1_in2_in,
      I3 => gpio_Data_In(23),
      I4 => p_0_in3_in,
      O => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[23].reg1[23]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[23].reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[23].reg1[23]_i_1_n_0\,
      Q => data0(8),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[23].reg2[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE02C2C2"
    )
        port map (
      I0 => \^data1\(8),
      I1 => \^gpio_io_t\(8),
      I2 => p_1_in2_in,
      I3 => gpio_Data_In(23),
      I4 => p_0_in3_in,
      O => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[23].reg2[23]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[23].reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[23].reg2[23]_i_1_n_0\,
      Q => \^data1\(8),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[24].reg1[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE02C2C2"
    )
        port map (
      I0 => \^gpio_io_o\(7),
      I1 => \^gpio_io_t\(7),
      I2 => p_1_in2_in,
      I3 => gpio_Data_In(24),
      I4 => p_0_in3_in,
      O => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[24].reg1[24]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[24].reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[24].reg1[24]_i_1_n_0\,
      Q => data0(7),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[24].reg2[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE02C2C2"
    )
        port map (
      I0 => \^data1\(7),
      I1 => \^gpio_io_t\(7),
      I2 => p_1_in2_in,
      I3 => gpio_Data_In(24),
      I4 => p_0_in3_in,
      O => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[24].reg2[24]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[24].reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[24].reg2[24]_i_1_n_0\,
      Q => \^data1\(7),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[25].reg1[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE02C2C2"
    )
        port map (
      I0 => \^gpio_io_o\(6),
      I1 => \^gpio_io_t\(6),
      I2 => p_1_in2_in,
      I3 => gpio_Data_In(25),
      I4 => p_0_in3_in,
      O => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[25].reg1[25]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[25].reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[25].reg1[25]_i_1_n_0\,
      Q => data0(6),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[25].reg2[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE02C2C2"
    )
        port map (
      I0 => \^data1\(6),
      I1 => \^gpio_io_t\(6),
      I2 => p_1_in2_in,
      I3 => gpio_Data_In(25),
      I4 => p_0_in3_in,
      O => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[25].reg2[25]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[25].reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[25].reg2[25]_i_1_n_0\,
      Q => \^data1\(6),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[26].reg1[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE02C2C2"
    )
        port map (
      I0 => \^gpio_io_o\(5),
      I1 => \^gpio_io_t\(5),
      I2 => p_1_in2_in,
      I3 => gpio_Data_In(26),
      I4 => p_0_in3_in,
      O => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[26].reg1[26]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[26].reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[26].reg1[26]_i_1_n_0\,
      Q => data0(5),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[26].reg2[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE02C2C2"
    )
        port map (
      I0 => \^data1\(5),
      I1 => \^gpio_io_t\(5),
      I2 => p_1_in2_in,
      I3 => gpio_Data_In(26),
      I4 => p_0_in3_in,
      O => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[26].reg2[26]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[26].reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[26].reg2[26]_i_1_n_0\,
      Q => \^data1\(5),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[27].reg1[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE02C2C2"
    )
        port map (
      I0 => \^gpio_io_o\(4),
      I1 => \^gpio_io_t\(4),
      I2 => p_1_in2_in,
      I3 => gpio_Data_In(27),
      I4 => p_0_in3_in,
      O => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[27].reg1[27]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[27].reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[27].reg1[27]_i_1_n_0\,
      Q => data0(4),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[27].reg2[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE02C2C2"
    )
        port map (
      I0 => \^data1\(4),
      I1 => \^gpio_io_t\(4),
      I2 => p_1_in2_in,
      I3 => gpio_Data_In(27),
      I4 => p_0_in3_in,
      O => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[27].reg2[27]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[27].reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[27].reg2[27]_i_1_n_0\,
      Q => \^data1\(4),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[28].reg1[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE02C2C2"
    )
        port map (
      I0 => \^gpio_io_o\(3),
      I1 => \^gpio_io_t\(3),
      I2 => p_1_in2_in,
      I3 => gpio_Data_In(28),
      I4 => p_0_in3_in,
      O => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[28].reg1[28]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[28].reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[28].reg1[28]_i_1_n_0\,
      Q => data0(3),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[28].reg2[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE02C2C2"
    )
        port map (
      I0 => \^data1\(3),
      I1 => \^gpio_io_t\(3),
      I2 => p_1_in2_in,
      I3 => gpio_Data_In(28),
      I4 => p_0_in3_in,
      O => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[28].reg2[28]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[28].reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[28].reg2[28]_i_1_n_0\,
      Q => \^data1\(3),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[29].reg1[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE02C2C2"
    )
        port map (
      I0 => \^gpio_io_o\(2),
      I1 => \^gpio_io_t\(2),
      I2 => p_1_in2_in,
      I3 => gpio_Data_In(29),
      I4 => p_0_in3_in,
      O => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[29].reg1[29]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[29].reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[29].reg1[29]_i_1_n_0\,
      Q => data0(2),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[29].reg2[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE02C2C2"
    )
        port map (
      I0 => \^data1\(2),
      I1 => \^gpio_io_t\(2),
      I2 => p_1_in2_in,
      I3 => gpio_Data_In(29),
      I4 => p_0_in3_in,
      O => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[29].reg2[29]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[29].reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[29].reg2[29]_i_1_n_0\,
      Q => \^data1\(2),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[2].reg1[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE02C2C2"
    )
        port map (
      I0 => \^gpio_io_o\(29),
      I1 => \^gpio_io_t\(29),
      I2 => p_1_in2_in,
      I3 => gpio_Data_In(2),
      I4 => p_0_in3_in,
      O => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[2].reg1[2]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[2].reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[2].reg1[2]_i_1_n_0\,
      Q => data0(29),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[2].reg2[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE02C2C2"
    )
        port map (
      I0 => \^data1\(29),
      I1 => \^gpio_io_t\(29),
      I2 => p_1_in2_in,
      I3 => gpio_Data_In(2),
      I4 => p_0_in3_in,
      O => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[2].reg2[2]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[2].reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[2].reg2[2]_i_1_n_0\,
      Q => \^data1\(29),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[30].reg1[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE02C2C2"
    )
        port map (
      I0 => \^gpio_io_o\(1),
      I1 => \^gpio_io_t\(1),
      I2 => p_1_in2_in,
      I3 => gpio_Data_In(30),
      I4 => p_0_in3_in,
      O => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[30].reg1[30]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[30].reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[30].reg1[30]_i_1_n_0\,
      Q => data0(1),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[30].reg2[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE02C2C2"
    )
        port map (
      I0 => \^data1\(1),
      I1 => \^gpio_io_t\(1),
      I2 => p_1_in2_in,
      I3 => gpio_Data_In(30),
      I4 => p_0_in3_in,
      O => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[30].reg2[30]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[30].reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[30].reg2[30]_i_1_n_0\,
      Q => \^data1\(1),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[31].reg1[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE02C2C2"
    )
        port map (
      I0 => \^gpio_io_o\(0),
      I1 => \^gpio_io_t\(0),
      I2 => p_1_in2_in,
      I3 => gpio_Data_In(31),
      I4 => p_0_in3_in,
      O => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[31].reg1[31]_i_2_n_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[31].reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[31].reg1[31]_i_2_n_0\,
      Q => data0(0),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[31].reg2[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE02C2C2"
    )
        port map (
      I0 => \^data1\(0),
      I1 => \^gpio_io_t\(0),
      I2 => p_1_in2_in,
      I3 => gpio_Data_In(31),
      I4 => p_0_in3_in,
      O => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[31].reg2[31]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[31].reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[31].reg2[31]_i_1_n_0\,
      Q => \^data1\(0),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[3].reg1[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE02C2C2"
    )
        port map (
      I0 => \^gpio_io_o\(28),
      I1 => \^gpio_io_t\(28),
      I2 => p_1_in2_in,
      I3 => gpio_Data_In(3),
      I4 => p_0_in3_in,
      O => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[3].reg1[3]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[3].reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[3].reg1[3]_i_1_n_0\,
      Q => data0(28),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[3].reg2[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE02C2C2"
    )
        port map (
      I0 => \^data1\(28),
      I1 => \^gpio_io_t\(28),
      I2 => p_1_in2_in,
      I3 => gpio_Data_In(3),
      I4 => p_0_in3_in,
      O => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[3].reg2[3]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[3].reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[3].reg2[3]_i_1_n_0\,
      Q => \^data1\(28),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[4].reg1[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE02C2C2"
    )
        port map (
      I0 => \^gpio_io_o\(27),
      I1 => \^gpio_io_t\(27),
      I2 => p_1_in2_in,
      I3 => gpio_Data_In(4),
      I4 => p_0_in3_in,
      O => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[4].reg1[4]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[4].reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[4].reg1[4]_i_1_n_0\,
      Q => data0(27),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[4].reg2[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE02C2C2"
    )
        port map (
      I0 => \^data1\(27),
      I1 => \^gpio_io_t\(27),
      I2 => p_1_in2_in,
      I3 => gpio_Data_In(4),
      I4 => p_0_in3_in,
      O => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[4].reg2[4]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[4].reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[4].reg2[4]_i_1_n_0\,
      Q => \^data1\(27),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[5].reg1[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE02C2C2"
    )
        port map (
      I0 => \^gpio_io_o\(26),
      I1 => \^gpio_io_t\(26),
      I2 => p_1_in2_in,
      I3 => gpio_Data_In(5),
      I4 => p_0_in3_in,
      O => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[5].reg1[5]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[5].reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[5].reg1[5]_i_1_n_0\,
      Q => data0(26),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[5].reg2[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE02C2C2"
    )
        port map (
      I0 => \^data1\(26),
      I1 => \^gpio_io_t\(26),
      I2 => p_1_in2_in,
      I3 => gpio_Data_In(5),
      I4 => p_0_in3_in,
      O => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[5].reg2[5]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[5].reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[5].reg2[5]_i_1_n_0\,
      Q => \^data1\(26),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[6].reg1[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE02C2C2"
    )
        port map (
      I0 => \^gpio_io_o\(25),
      I1 => \^gpio_io_t\(25),
      I2 => p_1_in2_in,
      I3 => gpio_Data_In(6),
      I4 => p_0_in3_in,
      O => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[6].reg1[6]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[6].reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[6].reg1[6]_i_1_n_0\,
      Q => data0(25),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[6].reg2[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE02C2C2"
    )
        port map (
      I0 => \^data1\(25),
      I1 => \^gpio_io_t\(25),
      I2 => p_1_in2_in,
      I3 => gpio_Data_In(6),
      I4 => p_0_in3_in,
      O => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[6].reg2[6]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[6].reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[6].reg2[6]_i_1_n_0\,
      Q => \^data1\(25),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[7].reg1[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE02C2C2"
    )
        port map (
      I0 => \^gpio_io_o\(24),
      I1 => \^gpio_io_t\(24),
      I2 => p_1_in2_in,
      I3 => gpio_Data_In(7),
      I4 => p_0_in3_in,
      O => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[7].reg1[7]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[7].reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[7].reg1[7]_i_1_n_0\,
      Q => data0(24),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[7].reg2[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE02C2C2"
    )
        port map (
      I0 => \^data1\(24),
      I1 => \^gpio_io_t\(24),
      I2 => p_1_in2_in,
      I3 => gpio_Data_In(7),
      I4 => p_0_in3_in,
      O => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[7].reg2[7]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[7].reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[7].reg2[7]_i_1_n_0\,
      Q => \^data1\(24),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[8].reg1[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE02C2C2"
    )
        port map (
      I0 => \^gpio_io_o\(23),
      I1 => \^gpio_io_t\(23),
      I2 => p_1_in2_in,
      I3 => gpio_Data_In(8),
      I4 => p_0_in3_in,
      O => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[8].reg1[8]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[8].reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[8].reg1[8]_i_1_n_0\,
      Q => data0(23),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[8].reg2[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE02C2C2"
    )
        port map (
      I0 => \^data1\(23),
      I1 => \^gpio_io_t\(23),
      I2 => p_1_in2_in,
      I3 => gpio_Data_In(8),
      I4 => p_0_in3_in,
      O => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[8].reg2[8]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[8].reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[8].reg2[8]_i_1_n_0\,
      Q => \^data1\(23),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[9].reg1[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE02C2C2"
    )
        port map (
      I0 => \^gpio_io_o\(22),
      I1 => \^gpio_io_t\(22),
      I2 => p_1_in2_in,
      I3 => gpio_Data_In(9),
      I4 => p_0_in3_in,
      O => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[9].reg1[9]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[9].reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[9].reg1[9]_i_1_n_0\,
      Q => data0(22),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[9].reg2[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE02C2C2"
    )
        port map (
      I0 => \^data1\(22),
      I1 => \^gpio_io_t\(22),
      I2 => p_1_in2_in,
      I3 => gpio_Data_In(9),
      I4 => p_0_in3_in,
      O => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[9].reg2[9]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G0.READ_REG_GEN[9].reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G0.READ_REG_GEN[9].reg2[9]_i_1_n_0\,
      Q => \^data1\(22),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg3[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CE222222C2222222"
    )
        port map (
      I0 => \^gpio2_io_o\(31),
      I1 => \^gpio2_io_t\(31),
      I2 => Q(0),
      I3 => Q(1),
      I4 => gpio_reg_en,
      I5 => gpio2_Data_In(0),
      O => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg3[0]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg3[0]_i_1_n_0\,
      Q => data2(31),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CE222222C2222222"
    )
        port map (
      I0 => \^data3\(31),
      I1 => \^gpio2_io_t\(31),
      I2 => Q(0),
      I3 => Q(1),
      I4 => gpio_reg_en,
      I5 => gpio2_Data_In(0),
      O => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4[0]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4[0]_i_1_n_0\,
      Q => \^data3\(31),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[10].reg3[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CE222222C2222222"
    )
        port map (
      I0 => \^gpio2_io_o\(21),
      I1 => \^gpio2_io_t\(21),
      I2 => Q(0),
      I3 => Q(1),
      I4 => gpio_reg_en,
      I5 => gpio2_Data_In(10),
      O => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[10].reg3[10]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[10].reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[10].reg3[10]_i_1_n_0\,
      Q => data2(21),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[10].reg4[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CE222222C2222222"
    )
        port map (
      I0 => \^data3\(21),
      I1 => \^gpio2_io_t\(21),
      I2 => Q(0),
      I3 => Q(1),
      I4 => gpio_reg_en,
      I5 => gpio2_Data_In(10),
      O => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[10].reg4[10]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[10].reg4_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[10].reg4[10]_i_1_n_0\,
      Q => \^data3\(21),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[11].reg3[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CE222222C2222222"
    )
        port map (
      I0 => \^gpio2_io_o\(20),
      I1 => \^gpio2_io_t\(20),
      I2 => Q(0),
      I3 => Q(1),
      I4 => gpio_reg_en,
      I5 => gpio2_Data_In(11),
      O => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[11].reg3[11]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[11].reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[11].reg3[11]_i_1_n_0\,
      Q => data2(20),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[11].reg4[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CE222222C2222222"
    )
        port map (
      I0 => \^data3\(20),
      I1 => \^gpio2_io_t\(20),
      I2 => Q(0),
      I3 => Q(1),
      I4 => gpio_reg_en,
      I5 => gpio2_Data_In(11),
      O => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[11].reg4[11]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[11].reg4_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[11].reg4[11]_i_1_n_0\,
      Q => \^data3\(20),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[12].reg3[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CE222222C2222222"
    )
        port map (
      I0 => \^gpio2_io_o\(19),
      I1 => \^gpio2_io_t\(19),
      I2 => Q(0),
      I3 => Q(1),
      I4 => gpio_reg_en,
      I5 => gpio2_Data_In(12),
      O => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[12].reg3[12]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[12].reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[12].reg3[12]_i_1_n_0\,
      Q => data2(19),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[12].reg4[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CE222222C2222222"
    )
        port map (
      I0 => \^data3\(19),
      I1 => \^gpio2_io_t\(19),
      I2 => Q(0),
      I3 => Q(1),
      I4 => gpio_reg_en,
      I5 => gpio2_Data_In(12),
      O => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[12].reg4[12]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[12].reg4_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[12].reg4[12]_i_1_n_0\,
      Q => \^data3\(19),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[13].reg3[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CE222222C2222222"
    )
        port map (
      I0 => \^gpio2_io_o\(18),
      I1 => \^gpio2_io_t\(18),
      I2 => Q(0),
      I3 => Q(1),
      I4 => gpio_reg_en,
      I5 => gpio2_Data_In(13),
      O => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[13].reg3[13]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[13].reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[13].reg3[13]_i_1_n_0\,
      Q => data2(18),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[13].reg4[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CE222222C2222222"
    )
        port map (
      I0 => \^data3\(18),
      I1 => \^gpio2_io_t\(18),
      I2 => Q(0),
      I3 => Q(1),
      I4 => gpio_reg_en,
      I5 => gpio2_Data_In(13),
      O => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[13].reg4[13]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[13].reg4_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[13].reg4[13]_i_1_n_0\,
      Q => \^data3\(18),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[14].reg3[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CE222222C2222222"
    )
        port map (
      I0 => \^gpio2_io_o\(17),
      I1 => \^gpio2_io_t\(17),
      I2 => Q(0),
      I3 => Q(1),
      I4 => gpio_reg_en,
      I5 => gpio2_Data_In(14),
      O => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[14].reg3[14]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[14].reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[14].reg3[14]_i_1_n_0\,
      Q => data2(17),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[14].reg4[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CE222222C2222222"
    )
        port map (
      I0 => \^data3\(17),
      I1 => \^gpio2_io_t\(17),
      I2 => Q(0),
      I3 => Q(1),
      I4 => gpio_reg_en,
      I5 => gpio2_Data_In(14),
      O => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[14].reg4[14]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[14].reg4_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[14].reg4[14]_i_1_n_0\,
      Q => \^data3\(17),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[15].reg3[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CE222222C2222222"
    )
        port map (
      I0 => \^gpio2_io_o\(16),
      I1 => \^gpio2_io_t\(16),
      I2 => Q(0),
      I3 => Q(1),
      I4 => gpio_reg_en,
      I5 => gpio2_Data_In(15),
      O => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[15].reg3[15]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[15].reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[15].reg3[15]_i_1_n_0\,
      Q => data2(16),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[15].reg4[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CE222222C2222222"
    )
        port map (
      I0 => \^data3\(16),
      I1 => \^gpio2_io_t\(16),
      I2 => Q(0),
      I3 => Q(1),
      I4 => gpio_reg_en,
      I5 => gpio2_Data_In(15),
      O => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[15].reg4[15]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[15].reg4_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[15].reg4[15]_i_1_n_0\,
      Q => \^data3\(16),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[16].reg3[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CE222222C2222222"
    )
        port map (
      I0 => \^gpio2_io_o\(15),
      I1 => \^gpio2_io_t\(15),
      I2 => Q(0),
      I3 => Q(1),
      I4 => gpio_reg_en,
      I5 => gpio2_Data_In(16),
      O => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[16].reg3[16]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[16].reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[16].reg3[16]_i_1_n_0\,
      Q => data2(15),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[16].reg4[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CE222222C2222222"
    )
        port map (
      I0 => \^data3\(15),
      I1 => \^gpio2_io_t\(15),
      I2 => Q(0),
      I3 => Q(1),
      I4 => gpio_reg_en,
      I5 => gpio2_Data_In(16),
      O => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[16].reg4[16]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[16].reg4_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[16].reg4[16]_i_1_n_0\,
      Q => \^data3\(15),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[17].reg3[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CE222222C2222222"
    )
        port map (
      I0 => \^gpio2_io_o\(14),
      I1 => \^gpio2_io_t\(14),
      I2 => Q(0),
      I3 => Q(1),
      I4 => gpio_reg_en,
      I5 => gpio2_Data_In(17),
      O => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[17].reg3[17]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[17].reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[17].reg3[17]_i_1_n_0\,
      Q => data2(14),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[17].reg4[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CE222222C2222222"
    )
        port map (
      I0 => \^data3\(14),
      I1 => \^gpio2_io_t\(14),
      I2 => Q(0),
      I3 => Q(1),
      I4 => gpio_reg_en,
      I5 => gpio2_Data_In(17),
      O => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[17].reg4[17]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[17].reg4_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[17].reg4[17]_i_1_n_0\,
      Q => \^data3\(14),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[18].reg3[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CE222222C2222222"
    )
        port map (
      I0 => \^gpio2_io_o\(13),
      I1 => \^gpio2_io_t\(13),
      I2 => Q(0),
      I3 => Q(1),
      I4 => gpio_reg_en,
      I5 => gpio2_Data_In(18),
      O => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[18].reg3[18]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[18].reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[18].reg3[18]_i_1_n_0\,
      Q => data2(13),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[18].reg4[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CE222222C2222222"
    )
        port map (
      I0 => \^data3\(13),
      I1 => \^gpio2_io_t\(13),
      I2 => Q(0),
      I3 => Q(1),
      I4 => gpio_reg_en,
      I5 => gpio2_Data_In(18),
      O => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[18].reg4[18]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[18].reg4_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[18].reg4[18]_i_1_n_0\,
      Q => \^data3\(13),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[19].reg3[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CE222222C2222222"
    )
        port map (
      I0 => \^gpio2_io_o\(12),
      I1 => \^gpio2_io_t\(12),
      I2 => Q(0),
      I3 => Q(1),
      I4 => gpio_reg_en,
      I5 => gpio2_Data_In(19),
      O => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[19].reg3[19]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[19].reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[19].reg3[19]_i_1_n_0\,
      Q => data2(12),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[19].reg4[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CE222222C2222222"
    )
        port map (
      I0 => \^data3\(12),
      I1 => \^gpio2_io_t\(12),
      I2 => Q(0),
      I3 => Q(1),
      I4 => gpio_reg_en,
      I5 => gpio2_Data_In(19),
      O => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[19].reg4[19]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[19].reg4_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[19].reg4[19]_i_1_n_0\,
      Q => \^data3\(12),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[1].reg3[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CE222222C2222222"
    )
        port map (
      I0 => \^gpio2_io_o\(30),
      I1 => \^gpio2_io_t\(30),
      I2 => Q(0),
      I3 => Q(1),
      I4 => gpio_reg_en,
      I5 => gpio2_Data_In(1),
      O => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[1].reg3[1]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[1].reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[1].reg3[1]_i_1_n_0\,
      Q => data2(30),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[1].reg4[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CE222222C2222222"
    )
        port map (
      I0 => \^data3\(30),
      I1 => \^gpio2_io_t\(30),
      I2 => Q(0),
      I3 => Q(1),
      I4 => gpio_reg_en,
      I5 => gpio2_Data_In(1),
      O => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[1].reg4[1]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[1].reg4_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[1].reg4[1]_i_1_n_0\,
      Q => \^data3\(30),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[20].reg3[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CE222222C2222222"
    )
        port map (
      I0 => \^gpio2_io_o\(11),
      I1 => \^gpio2_io_t\(11),
      I2 => Q(0),
      I3 => Q(1),
      I4 => gpio_reg_en,
      I5 => gpio2_Data_In(20),
      O => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[20].reg3[20]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[20].reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[20].reg3[20]_i_1_n_0\,
      Q => data2(11),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[20].reg4[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CE222222C2222222"
    )
        port map (
      I0 => \^data3\(11),
      I1 => \^gpio2_io_t\(11),
      I2 => Q(0),
      I3 => Q(1),
      I4 => gpio_reg_en,
      I5 => gpio2_Data_In(20),
      O => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[20].reg4[20]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[20].reg4_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[20].reg4[20]_i_1_n_0\,
      Q => \^data3\(11),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[21].reg3[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CE222222C2222222"
    )
        port map (
      I0 => \^gpio2_io_o\(10),
      I1 => \^gpio2_io_t\(10),
      I2 => Q(0),
      I3 => Q(1),
      I4 => gpio_reg_en,
      I5 => gpio2_Data_In(21),
      O => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[21].reg3[21]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[21].reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[21].reg3[21]_i_1_n_0\,
      Q => data2(10),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[21].reg4[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CE222222C2222222"
    )
        port map (
      I0 => \^data3\(10),
      I1 => \^gpio2_io_t\(10),
      I2 => Q(0),
      I3 => Q(1),
      I4 => gpio_reg_en,
      I5 => gpio2_Data_In(21),
      O => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[21].reg4[21]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[21].reg4_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[21].reg4[21]_i_1_n_0\,
      Q => \^data3\(10),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[22].reg3[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CE222222C2222222"
    )
        port map (
      I0 => \^gpio2_io_o\(9),
      I1 => \^gpio2_io_t\(9),
      I2 => Q(0),
      I3 => Q(1),
      I4 => gpio_reg_en,
      I5 => gpio2_Data_In(22),
      O => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[22].reg3[22]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[22].reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[22].reg3[22]_i_1_n_0\,
      Q => data2(9),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[22].reg4[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CE222222C2222222"
    )
        port map (
      I0 => \^data3\(9),
      I1 => \^gpio2_io_t\(9),
      I2 => Q(0),
      I3 => Q(1),
      I4 => gpio_reg_en,
      I5 => gpio2_Data_In(22),
      O => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[22].reg4[22]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[22].reg4_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[22].reg4[22]_i_1_n_0\,
      Q => \^data3\(9),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[23].reg3[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CE222222C2222222"
    )
        port map (
      I0 => \^gpio2_io_o\(8),
      I1 => \^gpio2_io_t\(8),
      I2 => Q(0),
      I3 => Q(1),
      I4 => gpio_reg_en,
      I5 => gpio2_Data_In(23),
      O => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[23].reg3[23]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[23].reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[23].reg3[23]_i_1_n_0\,
      Q => data2(8),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[23].reg4[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CE222222C2222222"
    )
        port map (
      I0 => \^data3\(8),
      I1 => \^gpio2_io_t\(8),
      I2 => Q(0),
      I3 => Q(1),
      I4 => gpio_reg_en,
      I5 => gpio2_Data_In(23),
      O => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[23].reg4[23]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[23].reg4_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[23].reg4[23]_i_1_n_0\,
      Q => \^data3\(8),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[24].reg3[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CE222222C2222222"
    )
        port map (
      I0 => \^gpio2_io_o\(7),
      I1 => \^gpio2_io_t\(7),
      I2 => Q(0),
      I3 => Q(1),
      I4 => gpio_reg_en,
      I5 => gpio2_Data_In(24),
      O => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[24].reg3[24]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[24].reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[24].reg3[24]_i_1_n_0\,
      Q => data2(7),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[24].reg4[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CE222222C2222222"
    )
        port map (
      I0 => \^data3\(7),
      I1 => \^gpio2_io_t\(7),
      I2 => Q(0),
      I3 => Q(1),
      I4 => gpio_reg_en,
      I5 => gpio2_Data_In(24),
      O => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[24].reg4[24]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[24].reg4_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[24].reg4[24]_i_1_n_0\,
      Q => \^data3\(7),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[25].reg3[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CE222222C2222222"
    )
        port map (
      I0 => \^gpio2_io_o\(6),
      I1 => \^gpio2_io_t\(6),
      I2 => Q(0),
      I3 => Q(1),
      I4 => gpio_reg_en,
      I5 => gpio2_Data_In(25),
      O => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[25].reg3[25]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[25].reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[25].reg3[25]_i_1_n_0\,
      Q => data2(6),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[25].reg4[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CE222222C2222222"
    )
        port map (
      I0 => \^data3\(6),
      I1 => \^gpio2_io_t\(6),
      I2 => Q(0),
      I3 => Q(1),
      I4 => gpio_reg_en,
      I5 => gpio2_Data_In(25),
      O => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[25].reg4[25]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[25].reg4_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[25].reg4[25]_i_1_n_0\,
      Q => \^data3\(6),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[26].reg3[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CE222222C2222222"
    )
        port map (
      I0 => \^gpio2_io_o\(5),
      I1 => \^gpio2_io_t\(5),
      I2 => Q(0),
      I3 => Q(1),
      I4 => gpio_reg_en,
      I5 => gpio2_Data_In(26),
      O => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[26].reg3[26]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[26].reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[26].reg3[26]_i_1_n_0\,
      Q => data2(5),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[26].reg4[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CE222222C2222222"
    )
        port map (
      I0 => \^data3\(5),
      I1 => \^gpio2_io_t\(5),
      I2 => Q(0),
      I3 => Q(1),
      I4 => gpio_reg_en,
      I5 => gpio2_Data_In(26),
      O => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[26].reg4[26]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[26].reg4_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[26].reg4[26]_i_1_n_0\,
      Q => \^data3\(5),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[27].reg3[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CE222222C2222222"
    )
        port map (
      I0 => \^gpio2_io_o\(4),
      I1 => \^gpio2_io_t\(4),
      I2 => Q(0),
      I3 => Q(1),
      I4 => gpio_reg_en,
      I5 => gpio2_Data_In(27),
      O => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[27].reg3[27]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[27].reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[27].reg3[27]_i_1_n_0\,
      Q => data2(4),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[27].reg4[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CE222222C2222222"
    )
        port map (
      I0 => \^data3\(4),
      I1 => \^gpio2_io_t\(4),
      I2 => Q(0),
      I3 => Q(1),
      I4 => gpio_reg_en,
      I5 => gpio2_Data_In(27),
      O => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[27].reg4[27]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[27].reg4_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[27].reg4[27]_i_1_n_0\,
      Q => \^data3\(4),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[28].reg3[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CE222222C2222222"
    )
        port map (
      I0 => \^gpio2_io_o\(3),
      I1 => \^gpio2_io_t\(3),
      I2 => Q(0),
      I3 => Q(1),
      I4 => gpio_reg_en,
      I5 => gpio2_Data_In(28),
      O => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[28].reg3[28]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[28].reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[28].reg3[28]_i_1_n_0\,
      Q => data2(3),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[28].reg4[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CE222222C2222222"
    )
        port map (
      I0 => \^data3\(3),
      I1 => \^gpio2_io_t\(3),
      I2 => Q(0),
      I3 => Q(1),
      I4 => gpio_reg_en,
      I5 => gpio2_Data_In(28),
      O => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[28].reg4[28]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[28].reg4_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[28].reg4[28]_i_1_n_0\,
      Q => \^data3\(3),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[29].reg3[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CE222222C2222222"
    )
        port map (
      I0 => \^gpio2_io_o\(2),
      I1 => \^gpio2_io_t\(2),
      I2 => Q(0),
      I3 => Q(1),
      I4 => gpio_reg_en,
      I5 => gpio2_Data_In(29),
      O => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[29].reg3[29]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[29].reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[29].reg3[29]_i_1_n_0\,
      Q => data2(2),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[29].reg4[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CE222222C2222222"
    )
        port map (
      I0 => \^data3\(2),
      I1 => \^gpio2_io_t\(2),
      I2 => Q(0),
      I3 => Q(1),
      I4 => gpio_reg_en,
      I5 => gpio2_Data_In(29),
      O => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[29].reg4[29]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[29].reg4_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[29].reg4[29]_i_1_n_0\,
      Q => \^data3\(2),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[2].reg3[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CE222222C2222222"
    )
        port map (
      I0 => \^gpio2_io_o\(29),
      I1 => \^gpio2_io_t\(29),
      I2 => Q(0),
      I3 => Q(1),
      I4 => gpio_reg_en,
      I5 => gpio2_Data_In(2),
      O => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[2].reg3[2]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[2].reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[2].reg3[2]_i_1_n_0\,
      Q => data2(29),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[2].reg4[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CE222222C2222222"
    )
        port map (
      I0 => \^data3\(29),
      I1 => \^gpio2_io_t\(29),
      I2 => Q(0),
      I3 => Q(1),
      I4 => gpio_reg_en,
      I5 => gpio2_Data_In(2),
      O => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[2].reg4[2]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[2].reg4_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[2].reg4[2]_i_1_n_0\,
      Q => \^data3\(29),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[30].reg3[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CE222222C2222222"
    )
        port map (
      I0 => \^gpio2_io_o\(1),
      I1 => \^gpio2_io_t\(1),
      I2 => Q(0),
      I3 => Q(1),
      I4 => gpio_reg_en,
      I5 => gpio2_Data_In(30),
      O => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[30].reg3[30]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[30].reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[30].reg3[30]_i_1_n_0\,
      Q => data2(1),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[30].reg4[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CE222222C2222222"
    )
        port map (
      I0 => \^data3\(1),
      I1 => \^gpio2_io_t\(1),
      I2 => Q(0),
      I3 => Q(1),
      I4 => gpio_reg_en,
      I5 => gpio2_Data_In(30),
      O => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[30].reg4[30]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[30].reg4_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[30].reg4[30]_i_1_n_0\,
      Q => \^data3\(1),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[31].reg3[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CE222222C2222222"
    )
        port map (
      I0 => \^gpio2_io_o\(0),
      I1 => \^gpio2_io_t\(0),
      I2 => Q(0),
      I3 => Q(1),
      I4 => gpio_reg_en,
      I5 => gpio2_Data_In(31),
      O => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[31].reg3[31]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[31].reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[31].reg3[31]_i_1_n_0\,
      Q => data2(0),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[31].reg4[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CE222222C2222222"
    )
        port map (
      I0 => \^data3\(0),
      I1 => \^gpio2_io_t\(0),
      I2 => Q(0),
      I3 => Q(1),
      I4 => gpio_reg_en,
      I5 => gpio2_Data_In(31),
      O => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[31].reg4[31]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[31].reg4_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[31].reg4[31]_i_1_n_0\,
      Q => \^data3\(0),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[3].reg3[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CE222222C2222222"
    )
        port map (
      I0 => \^gpio2_io_o\(28),
      I1 => \^gpio2_io_t\(28),
      I2 => Q(0),
      I3 => Q(1),
      I4 => gpio_reg_en,
      I5 => gpio2_Data_In(3),
      O => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[3].reg3[3]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[3].reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[3].reg3[3]_i_1_n_0\,
      Q => data2(28),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[3].reg4[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CE222222C2222222"
    )
        port map (
      I0 => \^data3\(28),
      I1 => \^gpio2_io_t\(28),
      I2 => Q(0),
      I3 => Q(1),
      I4 => gpio_reg_en,
      I5 => gpio2_Data_In(3),
      O => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[3].reg4[3]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[3].reg4_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[3].reg4[3]_i_1_n_0\,
      Q => \^data3\(28),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[4].reg3[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CE222222C2222222"
    )
        port map (
      I0 => \^gpio2_io_o\(27),
      I1 => \^gpio2_io_t\(27),
      I2 => Q(0),
      I3 => Q(1),
      I4 => gpio_reg_en,
      I5 => gpio2_Data_In(4),
      O => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[4].reg3[4]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[4].reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[4].reg3[4]_i_1_n_0\,
      Q => data2(27),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[4].reg4[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CE222222C2222222"
    )
        port map (
      I0 => \^data3\(27),
      I1 => \^gpio2_io_t\(27),
      I2 => Q(0),
      I3 => Q(1),
      I4 => gpio_reg_en,
      I5 => gpio2_Data_In(4),
      O => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[4].reg4[4]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[4].reg4_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[4].reg4[4]_i_1_n_0\,
      Q => \^data3\(27),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[5].reg3[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CE222222C2222222"
    )
        port map (
      I0 => \^gpio2_io_o\(26),
      I1 => \^gpio2_io_t\(26),
      I2 => Q(0),
      I3 => Q(1),
      I4 => gpio_reg_en,
      I5 => gpio2_Data_In(5),
      O => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[5].reg3[5]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[5].reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[5].reg3[5]_i_1_n_0\,
      Q => data2(26),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[5].reg4[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CE222222C2222222"
    )
        port map (
      I0 => \^data3\(26),
      I1 => \^gpio2_io_t\(26),
      I2 => Q(0),
      I3 => Q(1),
      I4 => gpio_reg_en,
      I5 => gpio2_Data_In(5),
      O => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[5].reg4[5]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[5].reg4_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[5].reg4[5]_i_1_n_0\,
      Q => \^data3\(26),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[6].reg3[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CE222222C2222222"
    )
        port map (
      I0 => \^gpio2_io_o\(25),
      I1 => \^gpio2_io_t\(25),
      I2 => Q(0),
      I3 => Q(1),
      I4 => gpio_reg_en,
      I5 => gpio2_Data_In(6),
      O => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[6].reg3[6]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[6].reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[6].reg3[6]_i_1_n_0\,
      Q => data2(25),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[6].reg4[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CE222222C2222222"
    )
        port map (
      I0 => \^data3\(25),
      I1 => \^gpio2_io_t\(25),
      I2 => Q(0),
      I3 => Q(1),
      I4 => gpio_reg_en,
      I5 => gpio2_Data_In(6),
      O => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[6].reg4[6]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[6].reg4_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[6].reg4[6]_i_1_n_0\,
      Q => \^data3\(25),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[7].reg3[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CE222222C2222222"
    )
        port map (
      I0 => \^gpio2_io_o\(24),
      I1 => \^gpio2_io_t\(24),
      I2 => Q(0),
      I3 => Q(1),
      I4 => gpio_reg_en,
      I5 => gpio2_Data_In(7),
      O => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[7].reg3[7]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[7].reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[7].reg3[7]_i_1_n_0\,
      Q => data2(24),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[7].reg4[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CE222222C2222222"
    )
        port map (
      I0 => \^data3\(24),
      I1 => \^gpio2_io_t\(24),
      I2 => Q(0),
      I3 => Q(1),
      I4 => gpio_reg_en,
      I5 => gpio2_Data_In(7),
      O => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[7].reg4[7]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[7].reg4_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[7].reg4[7]_i_1_n_0\,
      Q => \^data3\(24),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[8].reg3[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CE222222C2222222"
    )
        port map (
      I0 => \^gpio2_io_o\(23),
      I1 => \^gpio2_io_t\(23),
      I2 => Q(0),
      I3 => Q(1),
      I4 => gpio_reg_en,
      I5 => gpio2_Data_In(8),
      O => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[8].reg3[8]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[8].reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[8].reg3[8]_i_1_n_0\,
      Q => data2(23),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[8].reg4[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CE222222C2222222"
    )
        port map (
      I0 => \^data3\(23),
      I1 => \^gpio2_io_t\(23),
      I2 => Q(0),
      I3 => Q(1),
      I4 => gpio_reg_en,
      I5 => gpio2_Data_In(8),
      O => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[8].reg4[8]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[8].reg4_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[8].reg4[8]_i_1_n_0\,
      Q => \^data3\(23),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[9].reg3[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CE222222C2222222"
    )
        port map (
      I0 => \^gpio2_io_o\(22),
      I1 => \^gpio2_io_t\(22),
      I2 => Q(0),
      I3 => Q(1),
      I4 => gpio_reg_en,
      I5 => gpio2_Data_In(9),
      O => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[9].reg3[9]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[9].reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[9].reg3[9]_i_1_n_0\,
      Q => data2(22),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[9].reg4[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CE222222C2222222"
    )
        port map (
      I0 => \^data3\(22),
      I1 => \^gpio2_io_t\(22),
      I2 => Q(0),
      I3 => Q(1),
      I4 => gpio_reg_en,
      I5 => gpio2_Data_In(9),
      O => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[9].reg4[9]_i_1_n_0\
    );
\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[9].reg4_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[9].reg4[9]_i_1_n_0\,
      Q => \^data3\(22),
      R => \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\
    );
\Dual.INPUT_DOUBLE_REGS4\: entity work.icyradio_axi_gpio_0_0_cdc_sync
     port map (
      D(31) => gpio_data_in_xor(0),
      D(30) => gpio_data_in_xor(1),
      D(29) => gpio_data_in_xor(2),
      D(28) => gpio_data_in_xor(3),
      D(27) => gpio_data_in_xor(4),
      D(26) => gpio_data_in_xor(5),
      D(25) => gpio_data_in_xor(6),
      D(24) => gpio_data_in_xor(7),
      D(23) => gpio_data_in_xor(8),
      D(22) => gpio_data_in_xor(9),
      D(21) => gpio_data_in_xor(10),
      D(20) => gpio_data_in_xor(11),
      D(19) => gpio_data_in_xor(12),
      D(18) => gpio_data_in_xor(13),
      D(17) => gpio_data_in_xor(14),
      D(16) => gpio_data_in_xor(15),
      D(15) => gpio_data_in_xor(16),
      D(14) => gpio_data_in_xor(17),
      D(13) => gpio_data_in_xor(18),
      D(12) => gpio_data_in_xor(19),
      D(11) => gpio_data_in_xor(20),
      D(10) => gpio_data_in_xor(21),
      D(9) => gpio_data_in_xor(22),
      D(8) => gpio_data_in_xor(23),
      D(7) => gpio_data_in_xor(24),
      D(6) => gpio_data_in_xor(25),
      D(5) => gpio_data_in_xor(26),
      D(4) => gpio_data_in_xor(27),
      D(3) => gpio_data_in_xor(28),
      D(2) => gpio_data_in_xor(29),
      D(1) => gpio_data_in_xor(30),
      D(0) => gpio_data_in_xor(31),
      Q(31) => gpio_Data_In(0),
      Q(30) => gpio_Data_In(1),
      Q(29) => gpio_Data_In(2),
      Q(28) => gpio_Data_In(3),
      Q(27) => gpio_Data_In(4),
      Q(26) => gpio_Data_In(5),
      Q(25) => gpio_Data_In(6),
      Q(24) => gpio_Data_In(7),
      Q(23) => gpio_Data_In(8),
      Q(22) => gpio_Data_In(9),
      Q(21) => gpio_Data_In(10),
      Q(20) => gpio_Data_In(11),
      Q(19) => gpio_Data_In(12),
      Q(18) => gpio_Data_In(13),
      Q(17) => gpio_Data_In(14),
      Q(16) => gpio_Data_In(15),
      Q(15) => gpio_Data_In(16),
      Q(14) => gpio_Data_In(17),
      Q(13) => gpio_Data_In(18),
      Q(12) => gpio_Data_In(19),
      Q(11) => gpio_Data_In(20),
      Q(10) => gpio_Data_In(21),
      Q(9) => gpio_Data_In(22),
      Q(8) => gpio_Data_In(23),
      Q(7) => gpio_Data_In(24),
      Q(6) => gpio_Data_In(25),
      Q(5) => gpio_Data_In(26),
      Q(4) => gpio_Data_In(27),
      Q(3) => gpio_Data_In(28),
      Q(2) => gpio_Data_In(29),
      Q(1) => gpio_Data_In(30),
      Q(0) => gpio_Data_In(31),
      gpio_io_i(31 downto 0) => gpio_io_i(31 downto 0),
      s_axi_aclk => s_axi_aclk,
      scndry_vect_out(31) => gpio_io_i_d2(0),
      scndry_vect_out(30) => gpio_io_i_d2(1),
      scndry_vect_out(29) => gpio_io_i_d2(2),
      scndry_vect_out(28) => gpio_io_i_d2(3),
      scndry_vect_out(27) => gpio_io_i_d2(4),
      scndry_vect_out(26) => gpio_io_i_d2(5),
      scndry_vect_out(25) => gpio_io_i_d2(6),
      scndry_vect_out(24) => gpio_io_i_d2(7),
      scndry_vect_out(23) => gpio_io_i_d2(8),
      scndry_vect_out(22) => gpio_io_i_d2(9),
      scndry_vect_out(21) => gpio_io_i_d2(10),
      scndry_vect_out(20) => gpio_io_i_d2(11),
      scndry_vect_out(19) => gpio_io_i_d2(12),
      scndry_vect_out(18) => gpio_io_i_d2(13),
      scndry_vect_out(17) => gpio_io_i_d2(14),
      scndry_vect_out(16) => gpio_io_i_d2(15),
      scndry_vect_out(15) => gpio_io_i_d2(16),
      scndry_vect_out(14) => gpio_io_i_d2(17),
      scndry_vect_out(13) => gpio_io_i_d2(18),
      scndry_vect_out(12) => gpio_io_i_d2(19),
      scndry_vect_out(11) => gpio_io_i_d2(20),
      scndry_vect_out(10) => gpio_io_i_d2(21),
      scndry_vect_out(9) => gpio_io_i_d2(22),
      scndry_vect_out(8) => gpio_io_i_d2(23),
      scndry_vect_out(7) => gpio_io_i_d2(24),
      scndry_vect_out(6) => gpio_io_i_d2(25),
      scndry_vect_out(5) => gpio_io_i_d2(26),
      scndry_vect_out(4) => gpio_io_i_d2(27),
      scndry_vect_out(3) => gpio_io_i_d2(28),
      scndry_vect_out(2) => gpio_io_i_d2(29),
      scndry_vect_out(1) => gpio_io_i_d2(30),
      scndry_vect_out(0) => gpio_io_i_d2(31)
    );
\Dual.INPUT_DOUBLE_REGS5\: entity work.icyradio_axi_gpio_0_0_cdc_sync_0
     port map (
      D(31) => gpio2_data_in_xor(0),
      D(30) => gpio2_data_in_xor(1),
      D(29) => gpio2_data_in_xor(2),
      D(28) => gpio2_data_in_xor(3),
      D(27) => gpio2_data_in_xor(4),
      D(26) => gpio2_data_in_xor(5),
      D(25) => gpio2_data_in_xor(6),
      D(24) => gpio2_data_in_xor(7),
      D(23) => gpio2_data_in_xor(8),
      D(22) => gpio2_data_in_xor(9),
      D(21) => gpio2_data_in_xor(10),
      D(20) => gpio2_data_in_xor(11),
      D(19) => gpio2_data_in_xor(12),
      D(18) => gpio2_data_in_xor(13),
      D(17) => gpio2_data_in_xor(14),
      D(16) => gpio2_data_in_xor(15),
      D(15) => gpio2_data_in_xor(16),
      D(14) => gpio2_data_in_xor(17),
      D(13) => gpio2_data_in_xor(18),
      D(12) => gpio2_data_in_xor(19),
      D(11) => gpio2_data_in_xor(20),
      D(10) => gpio2_data_in_xor(21),
      D(9) => gpio2_data_in_xor(22),
      D(8) => gpio2_data_in_xor(23),
      D(7) => gpio2_data_in_xor(24),
      D(6) => gpio2_data_in_xor(25),
      D(5) => gpio2_data_in_xor(26),
      D(4) => gpio2_data_in_xor(27),
      D(3) => gpio2_data_in_xor(28),
      D(2) => gpio2_data_in_xor(29),
      D(1) => gpio2_data_in_xor(30),
      D(0) => gpio2_data_in_xor(31),
      Q(31) => gpio2_Data_In(0),
      Q(30) => gpio2_Data_In(1),
      Q(29) => gpio2_Data_In(2),
      Q(28) => gpio2_Data_In(3),
      Q(27) => gpio2_Data_In(4),
      Q(26) => gpio2_Data_In(5),
      Q(25) => gpio2_Data_In(6),
      Q(24) => gpio2_Data_In(7),
      Q(23) => gpio2_Data_In(8),
      Q(22) => gpio2_Data_In(9),
      Q(21) => gpio2_Data_In(10),
      Q(20) => gpio2_Data_In(11),
      Q(19) => gpio2_Data_In(12),
      Q(18) => gpio2_Data_In(13),
      Q(17) => gpio2_Data_In(14),
      Q(16) => gpio2_Data_In(15),
      Q(15) => gpio2_Data_In(16),
      Q(14) => gpio2_Data_In(17),
      Q(13) => gpio2_Data_In(18),
      Q(12) => gpio2_Data_In(19),
      Q(11) => gpio2_Data_In(20),
      Q(10) => gpio2_Data_In(21),
      Q(9) => gpio2_Data_In(22),
      Q(8) => gpio2_Data_In(23),
      Q(7) => gpio2_Data_In(24),
      Q(6) => gpio2_Data_In(25),
      Q(5) => gpio2_Data_In(26),
      Q(4) => gpio2_Data_In(27),
      Q(3) => gpio2_Data_In(28),
      Q(2) => gpio2_Data_In(29),
      Q(1) => gpio2_Data_In(30),
      Q(0) => gpio2_Data_In(31),
      gpio2_io_i(31 downto 0) => gpio2_io_i(31 downto 0),
      s_axi_aclk => s_axi_aclk,
      scndry_vect_out(31) => gpio2_io_i_d2(0),
      scndry_vect_out(30) => gpio2_io_i_d2(1),
      scndry_vect_out(29) => gpio2_io_i_d2(2),
      scndry_vect_out(28) => gpio2_io_i_d2(3),
      scndry_vect_out(27) => gpio2_io_i_d2(4),
      scndry_vect_out(26) => gpio2_io_i_d2(5),
      scndry_vect_out(25) => gpio2_io_i_d2(6),
      scndry_vect_out(24) => gpio2_io_i_d2(7),
      scndry_vect_out(23) => gpio2_io_i_d2(8),
      scndry_vect_out(22) => gpio2_io_i_d2(9),
      scndry_vect_out(21) => gpio2_io_i_d2(10),
      scndry_vect_out(20) => gpio2_io_i_d2(11),
      scndry_vect_out(19) => gpio2_io_i_d2(12),
      scndry_vect_out(18) => gpio2_io_i_d2(13),
      scndry_vect_out(17) => gpio2_io_i_d2(14),
      scndry_vect_out(16) => gpio2_io_i_d2(15),
      scndry_vect_out(15) => gpio2_io_i_d2(16),
      scndry_vect_out(14) => gpio2_io_i_d2(17),
      scndry_vect_out(13) => gpio2_io_i_d2(18),
      scndry_vect_out(12) => gpio2_io_i_d2(19),
      scndry_vect_out(11) => gpio2_io_i_d2(20),
      scndry_vect_out(10) => gpio2_io_i_d2(21),
      scndry_vect_out(9) => gpio2_io_i_d2(22),
      scndry_vect_out(8) => gpio2_io_i_d2(23),
      scndry_vect_out(7) => gpio2_io_i_d2(24),
      scndry_vect_out(6) => gpio2_io_i_d2(25),
      scndry_vect_out(5) => gpio2_io_i_d2(26),
      scndry_vect_out(4) => gpio2_io_i_d2(27),
      scndry_vect_out(3) => gpio2_io_i_d2(28),
      scndry_vect_out(2) => gpio2_io_i_d2(29),
      scndry_vect_out(1) => gpio2_io_i_d2(30),
      scndry_vect_out(0) => gpio2_io_i_d2(31)
    );
\Dual.gen_interrupt_dual.GPIO2_intr_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => or_reduce,
      Q => GPIO2_intr,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.GPIO_intr_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \Dual.gen_interrupt_dual.GPIO_intr_i_2_n_0\,
      I1 => \Dual.gen_interrupt_dual.GPIO_intr_i_3_n_0\,
      I2 => \Dual.gen_interrupt_dual.GPIO_intr_i_4_n_0\,
      I3 => \Dual.gen_interrupt_dual.GPIO_intr_i_5_n_0\,
      I4 => \Dual.gen_interrupt_dual.GPIO_intr_i_6_n_0\,
      I5 => \Dual.gen_interrupt_dual.GPIO_intr_i_7_n_0\,
      O => or_reduce34_out
    );
\Dual.gen_interrupt_dual.GPIO_intr_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => p_18_in20_in,
      I1 => p_17_in19_in,
      I2 => p_20_in22_in,
      I3 => p_19_in21_in,
      I4 => p_21_in23_in,
      I5 => p_22_in24_in,
      O => \Dual.gen_interrupt_dual.GPIO_intr_i_2_n_0\
    );
\Dual.gen_interrupt_dual.GPIO_intr_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => p_12_in14_in,
      I1 => p_11_in13_in,
      I2 => p_14_in16_in,
      I3 => p_13_in15_in,
      I4 => p_15_in17_in,
      I5 => p_16_in18_in,
      O => \Dual.gen_interrupt_dual.GPIO_intr_i_3_n_0\
    );
\Dual.gen_interrupt_dual.GPIO_intr_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg_n_0_[0]\,
      I2 => p_2_in4_in,
      I3 => p_1_in3_in,
      I4 => p_3_in5_in,
      I5 => p_4_in6_in,
      O => \Dual.gen_interrupt_dual.GPIO_intr_i_4_n_0\
    );
\Dual.gen_interrupt_dual.GPIO_intr_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => p_6_in8_in,
      I1 => p_5_in7_in,
      I2 => p_8_in10_in,
      I3 => p_7_in9_in,
      I4 => p_9_in11_in,
      I5 => p_10_in12_in,
      O => \Dual.gen_interrupt_dual.GPIO_intr_i_5_n_0\
    );
\Dual.gen_interrupt_dual.GPIO_intr_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg_n_0_[31]\,
      I1 => p_29_in31_in,
      O => \Dual.gen_interrupt_dual.GPIO_intr_i_6_n_0\
    );
\Dual.gen_interrupt_dual.GPIO_intr_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => p_24_in26_in,
      I1 => p_23_in25_in,
      I2 => p_26_in28_in,
      I3 => p_25_in27_in,
      I4 => p_27_in29_in,
      I5 => p_28_in30_in,
      O => \Dual.gen_interrupt_dual.GPIO_intr_i_7_n_0\
    );
\Dual.gen_interrupt_dual.GPIO_intr_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => or_reduce34_out,
      Q => GPIO_intr,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_data_in_xor(0),
      Q => \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[0]\,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_data_in_xor(10),
      Q => p_9_in,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_data_in_xor(11),
      Q => p_10_in,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_data_in_xor(12),
      Q => p_11_in,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_data_in_xor(13),
      Q => p_12_in,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_data_in_xor(14),
      Q => p_13_in,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_data_in_xor(15),
      Q => p_14_in,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_data_in_xor(16),
      Q => p_15_in,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_data_in_xor(17),
      Q => p_16_in_0,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_data_in_xor(18),
      Q => p_17_in_1,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_data_in_xor(19),
      Q => p_18_in_2,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_data_in_xor(1),
      Q => \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[1]\,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_data_in_xor(20),
      Q => p_19_in_3,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_data_in_xor(21),
      Q => p_20_in,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_data_in_xor(22),
      Q => p_21_in,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_data_in_xor(23),
      Q => p_22_in,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_data_in_xor(24),
      Q => p_23_in,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_data_in_xor(25),
      Q => p_24_in,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_data_in_xor(26),
      Q => p_25_in,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_data_in_xor(27),
      Q => p_26_in,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_data_in_xor(28),
      Q => p_27_in,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_data_in_xor(29),
      Q => p_28_in,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_data_in_xor(2),
      Q => p_1_in,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_data_in_xor(30),
      Q => p_29_in,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_data_in_xor(31),
      Q => \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[31]\,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_data_in_xor(3),
      Q => p_2_in,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_data_in_xor(4),
      Q => p_3_in,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_data_in_xor(5),
      Q => p_4_in,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_data_in_xor(6),
      Q => p_5_in,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_data_in_xor(7),
      Q => p_6_in,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_data_in_xor(8),
      Q => p_7_in,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_data_in_xor(9),
      Q => p_8_in,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_data_in_xor(0),
      Q => \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg_n_0_[0]\,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_data_in_xor(10),
      Q => p_9_in11_in,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_data_in_xor(11),
      Q => p_10_in12_in,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_data_in_xor(12),
      Q => p_11_in13_in,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_data_in_xor(13),
      Q => p_12_in14_in,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_data_in_xor(14),
      Q => p_13_in15_in,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_data_in_xor(15),
      Q => p_14_in16_in,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_data_in_xor(16),
      Q => p_15_in17_in,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_data_in_xor(17),
      Q => p_16_in18_in,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_data_in_xor(18),
      Q => p_17_in19_in,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_data_in_xor(19),
      Q => p_18_in20_in,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_data_in_xor(1),
      Q => p_0_in2_in,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_data_in_xor(20),
      Q => p_19_in21_in,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_data_in_xor(21),
      Q => p_20_in22_in,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_data_in_xor(22),
      Q => p_21_in23_in,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_data_in_xor(23),
      Q => p_22_in24_in,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_data_in_xor(24),
      Q => p_23_in25_in,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_data_in_xor(25),
      Q => p_24_in26_in,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_data_in_xor(26),
      Q => p_25_in27_in,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_data_in_xor(27),
      Q => p_26_in28_in,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_data_in_xor(28),
      Q => p_27_in29_in,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_data_in_xor(29),
      Q => p_28_in30_in,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_data_in_xor(2),
      Q => p_1_in3_in,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_data_in_xor(30),
      Q => p_29_in31_in,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_data_in_xor(31),
      Q => \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg_n_0_[31]\,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_data_in_xor(3),
      Q => p_2_in4_in,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_data_in_xor(4),
      Q => p_3_in5_in,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_data_in_xor(5),
      Q => p_4_in6_in,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_data_in_xor(6),
      Q => p_5_in7_in,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_data_in_xor(7),
      Q => p_6_in8_in,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_data_in_xor(8),
      Q => p_7_in9_in,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_data_in_xor(9),
      Q => p_8_in10_in,
      R => bus2ip_reset
    );
\Dual.gpio2_Data_In_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_io_i_d2(0),
      Q => gpio2_Data_In(0),
      R => '0'
    );
\Dual.gpio2_Data_In_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_io_i_d2(10),
      Q => gpio2_Data_In(10),
      R => '0'
    );
\Dual.gpio2_Data_In_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_io_i_d2(11),
      Q => gpio2_Data_In(11),
      R => '0'
    );
\Dual.gpio2_Data_In_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_io_i_d2(12),
      Q => gpio2_Data_In(12),
      R => '0'
    );
\Dual.gpio2_Data_In_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_io_i_d2(13),
      Q => gpio2_Data_In(13),
      R => '0'
    );
\Dual.gpio2_Data_In_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_io_i_d2(14),
      Q => gpio2_Data_In(14),
      R => '0'
    );
\Dual.gpio2_Data_In_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_io_i_d2(15),
      Q => gpio2_Data_In(15),
      R => '0'
    );
\Dual.gpio2_Data_In_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_io_i_d2(16),
      Q => gpio2_Data_In(16),
      R => '0'
    );
\Dual.gpio2_Data_In_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_io_i_d2(17),
      Q => gpio2_Data_In(17),
      R => '0'
    );
\Dual.gpio2_Data_In_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_io_i_d2(18),
      Q => gpio2_Data_In(18),
      R => '0'
    );
\Dual.gpio2_Data_In_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_io_i_d2(19),
      Q => gpio2_Data_In(19),
      R => '0'
    );
\Dual.gpio2_Data_In_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_io_i_d2(1),
      Q => gpio2_Data_In(1),
      R => '0'
    );
\Dual.gpio2_Data_In_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_io_i_d2(20),
      Q => gpio2_Data_In(20),
      R => '0'
    );
\Dual.gpio2_Data_In_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_io_i_d2(21),
      Q => gpio2_Data_In(21),
      R => '0'
    );
\Dual.gpio2_Data_In_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_io_i_d2(22),
      Q => gpio2_Data_In(22),
      R => '0'
    );
\Dual.gpio2_Data_In_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_io_i_d2(23),
      Q => gpio2_Data_In(23),
      R => '0'
    );
\Dual.gpio2_Data_In_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_io_i_d2(24),
      Q => gpio2_Data_In(24),
      R => '0'
    );
\Dual.gpio2_Data_In_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_io_i_d2(25),
      Q => gpio2_Data_In(25),
      R => '0'
    );
\Dual.gpio2_Data_In_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_io_i_d2(26),
      Q => gpio2_Data_In(26),
      R => '0'
    );
\Dual.gpio2_Data_In_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_io_i_d2(27),
      Q => gpio2_Data_In(27),
      R => '0'
    );
\Dual.gpio2_Data_In_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_io_i_d2(28),
      Q => gpio2_Data_In(28),
      R => '0'
    );
\Dual.gpio2_Data_In_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_io_i_d2(29),
      Q => gpio2_Data_In(29),
      R => '0'
    );
\Dual.gpio2_Data_In_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_io_i_d2(2),
      Q => gpio2_Data_In(2),
      R => '0'
    );
\Dual.gpio2_Data_In_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_io_i_d2(30),
      Q => gpio2_Data_In(30),
      R => '0'
    );
\Dual.gpio2_Data_In_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_io_i_d2(31),
      Q => gpio2_Data_In(31),
      R => '0'
    );
\Dual.gpio2_Data_In_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_io_i_d2(3),
      Q => gpio2_Data_In(3),
      R => '0'
    );
\Dual.gpio2_Data_In_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_io_i_d2(4),
      Q => gpio2_Data_In(4),
      R => '0'
    );
\Dual.gpio2_Data_In_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_io_i_d2(5),
      Q => gpio2_Data_In(5),
      R => '0'
    );
\Dual.gpio2_Data_In_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_io_i_d2(6),
      Q => gpio2_Data_In(6),
      R => '0'
    );
\Dual.gpio2_Data_In_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_io_i_d2(7),
      Q => gpio2_Data_In(7),
      R => '0'
    );
\Dual.gpio2_Data_In_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_io_i_d2(8),
      Q => gpio2_Data_In(8),
      R => '0'
    );
\Dual.gpio2_Data_In_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio2_io_i_d2(9),
      Q => gpio2_Data_In(9),
      R => '0'
    );
\Dual.gpio2_Data_Out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio2_Data_Out_reg[0]_0\(0),
      D => s_axi_wdata(31),
      Q => \^gpio2_io_o\(31),
      R => bus2ip_reset
    );
\Dual.gpio2_Data_Out_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio2_Data_Out_reg[0]_0\(0),
      D => s_axi_wdata(21),
      Q => \^gpio2_io_o\(21),
      R => bus2ip_reset
    );
\Dual.gpio2_Data_Out_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio2_Data_Out_reg[0]_0\(0),
      D => s_axi_wdata(20),
      Q => \^gpio2_io_o\(20),
      R => bus2ip_reset
    );
\Dual.gpio2_Data_Out_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio2_Data_Out_reg[0]_0\(0),
      D => s_axi_wdata(19),
      Q => \^gpio2_io_o\(19),
      R => bus2ip_reset
    );
\Dual.gpio2_Data_Out_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio2_Data_Out_reg[0]_0\(0),
      D => s_axi_wdata(18),
      Q => \^gpio2_io_o\(18),
      R => bus2ip_reset
    );
\Dual.gpio2_Data_Out_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio2_Data_Out_reg[0]_0\(0),
      D => s_axi_wdata(17),
      Q => \^gpio2_io_o\(17),
      R => bus2ip_reset
    );
\Dual.gpio2_Data_Out_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio2_Data_Out_reg[0]_0\(0),
      D => s_axi_wdata(16),
      Q => \^gpio2_io_o\(16),
      R => bus2ip_reset
    );
\Dual.gpio2_Data_Out_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio2_Data_Out_reg[0]_0\(0),
      D => s_axi_wdata(15),
      Q => \^gpio2_io_o\(15),
      R => bus2ip_reset
    );
\Dual.gpio2_Data_Out_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio2_Data_Out_reg[0]_0\(0),
      D => s_axi_wdata(14),
      Q => \^gpio2_io_o\(14),
      R => bus2ip_reset
    );
\Dual.gpio2_Data_Out_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio2_Data_Out_reg[0]_0\(0),
      D => s_axi_wdata(13),
      Q => \^gpio2_io_o\(13),
      R => bus2ip_reset
    );
\Dual.gpio2_Data_Out_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio2_Data_Out_reg[0]_0\(0),
      D => s_axi_wdata(12),
      Q => \^gpio2_io_o\(12),
      R => bus2ip_reset
    );
\Dual.gpio2_Data_Out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio2_Data_Out_reg[0]_0\(0),
      D => s_axi_wdata(30),
      Q => \^gpio2_io_o\(30),
      R => bus2ip_reset
    );
\Dual.gpio2_Data_Out_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio2_Data_Out_reg[0]_0\(0),
      D => s_axi_wdata(11),
      Q => \^gpio2_io_o\(11),
      R => bus2ip_reset
    );
\Dual.gpio2_Data_Out_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio2_Data_Out_reg[0]_0\(0),
      D => s_axi_wdata(10),
      Q => \^gpio2_io_o\(10),
      R => bus2ip_reset
    );
\Dual.gpio2_Data_Out_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio2_Data_Out_reg[0]_0\(0),
      D => s_axi_wdata(9),
      Q => \^gpio2_io_o\(9),
      R => bus2ip_reset
    );
\Dual.gpio2_Data_Out_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio2_Data_Out_reg[0]_0\(0),
      D => s_axi_wdata(8),
      Q => \^gpio2_io_o\(8),
      R => bus2ip_reset
    );
\Dual.gpio2_Data_Out_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio2_Data_Out_reg[0]_0\(0),
      D => s_axi_wdata(7),
      Q => \^gpio2_io_o\(7),
      R => bus2ip_reset
    );
\Dual.gpio2_Data_Out_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio2_Data_Out_reg[0]_0\(0),
      D => s_axi_wdata(6),
      Q => \^gpio2_io_o\(6),
      R => bus2ip_reset
    );
\Dual.gpio2_Data_Out_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio2_Data_Out_reg[0]_0\(0),
      D => s_axi_wdata(5),
      Q => \^gpio2_io_o\(5),
      R => bus2ip_reset
    );
\Dual.gpio2_Data_Out_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio2_Data_Out_reg[0]_0\(0),
      D => s_axi_wdata(4),
      Q => \^gpio2_io_o\(4),
      R => bus2ip_reset
    );
\Dual.gpio2_Data_Out_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio2_Data_Out_reg[0]_0\(0),
      D => s_axi_wdata(3),
      Q => \^gpio2_io_o\(3),
      R => bus2ip_reset
    );
\Dual.gpio2_Data_Out_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio2_Data_Out_reg[0]_0\(0),
      D => s_axi_wdata(2),
      Q => \^gpio2_io_o\(2),
      R => bus2ip_reset
    );
\Dual.gpio2_Data_Out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio2_Data_Out_reg[0]_0\(0),
      D => s_axi_wdata(29),
      Q => \^gpio2_io_o\(29),
      R => bus2ip_reset
    );
\Dual.gpio2_Data_Out_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio2_Data_Out_reg[0]_0\(0),
      D => s_axi_wdata(1),
      Q => \^gpio2_io_o\(1),
      R => bus2ip_reset
    );
\Dual.gpio2_Data_Out_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio2_Data_Out_reg[0]_0\(0),
      D => s_axi_wdata(0),
      Q => \^gpio2_io_o\(0),
      R => bus2ip_reset
    );
\Dual.gpio2_Data_Out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio2_Data_Out_reg[0]_0\(0),
      D => s_axi_wdata(28),
      Q => \^gpio2_io_o\(28),
      R => bus2ip_reset
    );
\Dual.gpio2_Data_Out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio2_Data_Out_reg[0]_0\(0),
      D => s_axi_wdata(27),
      Q => \^gpio2_io_o\(27),
      R => bus2ip_reset
    );
\Dual.gpio2_Data_Out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio2_Data_Out_reg[0]_0\(0),
      D => s_axi_wdata(26),
      Q => \^gpio2_io_o\(26),
      R => bus2ip_reset
    );
\Dual.gpio2_Data_Out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio2_Data_Out_reg[0]_0\(0),
      D => s_axi_wdata(25),
      Q => \^gpio2_io_o\(25),
      R => bus2ip_reset
    );
\Dual.gpio2_Data_Out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio2_Data_Out_reg[0]_0\(0),
      D => s_axi_wdata(24),
      Q => \^gpio2_io_o\(24),
      R => bus2ip_reset
    );
\Dual.gpio2_Data_Out_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio2_Data_Out_reg[0]_0\(0),
      D => s_axi_wdata(23),
      Q => \^gpio2_io_o\(23),
      R => bus2ip_reset
    );
\Dual.gpio2_Data_Out_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio2_Data_Out_reg[0]_0\(0),
      D => s_axi_wdata(22),
      Q => \^gpio2_io_o\(22),
      R => bus2ip_reset
    );
\Dual.gpio2_OE_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio2_OE_reg[0]_0\(0),
      D => s_axi_wdata(31),
      Q => \^gpio2_io_t\(31),
      S => bus2ip_reset
    );
\Dual.gpio2_OE_reg[10]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio2_OE_reg[0]_0\(0),
      D => s_axi_wdata(21),
      Q => \^gpio2_io_t\(21),
      S => bus2ip_reset
    );
\Dual.gpio2_OE_reg[11]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio2_OE_reg[0]_0\(0),
      D => s_axi_wdata(20),
      Q => \^gpio2_io_t\(20),
      S => bus2ip_reset
    );
\Dual.gpio2_OE_reg[12]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio2_OE_reg[0]_0\(0),
      D => s_axi_wdata(19),
      Q => \^gpio2_io_t\(19),
      S => bus2ip_reset
    );
\Dual.gpio2_OE_reg[13]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio2_OE_reg[0]_0\(0),
      D => s_axi_wdata(18),
      Q => \^gpio2_io_t\(18),
      S => bus2ip_reset
    );
\Dual.gpio2_OE_reg[14]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio2_OE_reg[0]_0\(0),
      D => s_axi_wdata(17),
      Q => \^gpio2_io_t\(17),
      S => bus2ip_reset
    );
\Dual.gpio2_OE_reg[15]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio2_OE_reg[0]_0\(0),
      D => s_axi_wdata(16),
      Q => \^gpio2_io_t\(16),
      S => bus2ip_reset
    );
\Dual.gpio2_OE_reg[16]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio2_OE_reg[0]_0\(0),
      D => s_axi_wdata(15),
      Q => \^gpio2_io_t\(15),
      S => bus2ip_reset
    );
\Dual.gpio2_OE_reg[17]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio2_OE_reg[0]_0\(0),
      D => s_axi_wdata(14),
      Q => \^gpio2_io_t\(14),
      S => bus2ip_reset
    );
\Dual.gpio2_OE_reg[18]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio2_OE_reg[0]_0\(0),
      D => s_axi_wdata(13),
      Q => \^gpio2_io_t\(13),
      S => bus2ip_reset
    );
\Dual.gpio2_OE_reg[19]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio2_OE_reg[0]_0\(0),
      D => s_axi_wdata(12),
      Q => \^gpio2_io_t\(12),
      S => bus2ip_reset
    );
\Dual.gpio2_OE_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio2_OE_reg[0]_0\(0),
      D => s_axi_wdata(30),
      Q => \^gpio2_io_t\(30),
      S => bus2ip_reset
    );
\Dual.gpio2_OE_reg[20]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio2_OE_reg[0]_0\(0),
      D => s_axi_wdata(11),
      Q => \^gpio2_io_t\(11),
      S => bus2ip_reset
    );
\Dual.gpio2_OE_reg[21]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio2_OE_reg[0]_0\(0),
      D => s_axi_wdata(10),
      Q => \^gpio2_io_t\(10),
      S => bus2ip_reset
    );
\Dual.gpio2_OE_reg[22]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio2_OE_reg[0]_0\(0),
      D => s_axi_wdata(9),
      Q => \^gpio2_io_t\(9),
      S => bus2ip_reset
    );
\Dual.gpio2_OE_reg[23]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio2_OE_reg[0]_0\(0),
      D => s_axi_wdata(8),
      Q => \^gpio2_io_t\(8),
      S => bus2ip_reset
    );
\Dual.gpio2_OE_reg[24]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio2_OE_reg[0]_0\(0),
      D => s_axi_wdata(7),
      Q => \^gpio2_io_t\(7),
      S => bus2ip_reset
    );
\Dual.gpio2_OE_reg[25]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio2_OE_reg[0]_0\(0),
      D => s_axi_wdata(6),
      Q => \^gpio2_io_t\(6),
      S => bus2ip_reset
    );
\Dual.gpio2_OE_reg[26]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio2_OE_reg[0]_0\(0),
      D => s_axi_wdata(5),
      Q => \^gpio2_io_t\(5),
      S => bus2ip_reset
    );
\Dual.gpio2_OE_reg[27]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio2_OE_reg[0]_0\(0),
      D => s_axi_wdata(4),
      Q => \^gpio2_io_t\(4),
      S => bus2ip_reset
    );
\Dual.gpio2_OE_reg[28]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio2_OE_reg[0]_0\(0),
      D => s_axi_wdata(3),
      Q => \^gpio2_io_t\(3),
      S => bus2ip_reset
    );
\Dual.gpio2_OE_reg[29]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio2_OE_reg[0]_0\(0),
      D => s_axi_wdata(2),
      Q => \^gpio2_io_t\(2),
      S => bus2ip_reset
    );
\Dual.gpio2_OE_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio2_OE_reg[0]_0\(0),
      D => s_axi_wdata(29),
      Q => \^gpio2_io_t\(29),
      S => bus2ip_reset
    );
\Dual.gpio2_OE_reg[30]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio2_OE_reg[0]_0\(0),
      D => s_axi_wdata(1),
      Q => \^gpio2_io_t\(1),
      S => bus2ip_reset
    );
\Dual.gpio2_OE_reg[31]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio2_OE_reg[0]_0\(0),
      D => s_axi_wdata(0),
      Q => \^gpio2_io_t\(0),
      S => bus2ip_reset
    );
\Dual.gpio2_OE_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio2_OE_reg[0]_0\(0),
      D => s_axi_wdata(28),
      Q => \^gpio2_io_t\(28),
      S => bus2ip_reset
    );
\Dual.gpio2_OE_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio2_OE_reg[0]_0\(0),
      D => s_axi_wdata(27),
      Q => \^gpio2_io_t\(27),
      S => bus2ip_reset
    );
\Dual.gpio2_OE_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio2_OE_reg[0]_0\(0),
      D => s_axi_wdata(26),
      Q => \^gpio2_io_t\(26),
      S => bus2ip_reset
    );
\Dual.gpio2_OE_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio2_OE_reg[0]_0\(0),
      D => s_axi_wdata(25),
      Q => \^gpio2_io_t\(25),
      S => bus2ip_reset
    );
\Dual.gpio2_OE_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio2_OE_reg[0]_0\(0),
      D => s_axi_wdata(24),
      Q => \^gpio2_io_t\(24),
      S => bus2ip_reset
    );
\Dual.gpio2_OE_reg[8]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio2_OE_reg[0]_0\(0),
      D => s_axi_wdata(23),
      Q => \^gpio2_io_t\(23),
      S => bus2ip_reset
    );
\Dual.gpio2_OE_reg[9]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio2_OE_reg[0]_0\(0),
      D => s_axi_wdata(22),
      Q => \^gpio2_io_t\(22),
      S => bus2ip_reset
    );
\Dual.gpio_Data_In_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i_d2(0),
      Q => gpio_Data_In(0),
      R => '0'
    );
\Dual.gpio_Data_In_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i_d2(10),
      Q => gpio_Data_In(10),
      R => '0'
    );
\Dual.gpio_Data_In_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i_d2(11),
      Q => gpio_Data_In(11),
      R => '0'
    );
\Dual.gpio_Data_In_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i_d2(12),
      Q => gpio_Data_In(12),
      R => '0'
    );
\Dual.gpio_Data_In_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i_d2(13),
      Q => gpio_Data_In(13),
      R => '0'
    );
\Dual.gpio_Data_In_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i_d2(14),
      Q => gpio_Data_In(14),
      R => '0'
    );
\Dual.gpio_Data_In_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i_d2(15),
      Q => gpio_Data_In(15),
      R => '0'
    );
\Dual.gpio_Data_In_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i_d2(16),
      Q => gpio_Data_In(16),
      R => '0'
    );
\Dual.gpio_Data_In_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i_d2(17),
      Q => gpio_Data_In(17),
      R => '0'
    );
\Dual.gpio_Data_In_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i_d2(18),
      Q => gpio_Data_In(18),
      R => '0'
    );
\Dual.gpio_Data_In_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i_d2(19),
      Q => gpio_Data_In(19),
      R => '0'
    );
\Dual.gpio_Data_In_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i_d2(1),
      Q => gpio_Data_In(1),
      R => '0'
    );
\Dual.gpio_Data_In_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i_d2(20),
      Q => gpio_Data_In(20),
      R => '0'
    );
\Dual.gpio_Data_In_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i_d2(21),
      Q => gpio_Data_In(21),
      R => '0'
    );
\Dual.gpio_Data_In_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i_d2(22),
      Q => gpio_Data_In(22),
      R => '0'
    );
\Dual.gpio_Data_In_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i_d2(23),
      Q => gpio_Data_In(23),
      R => '0'
    );
\Dual.gpio_Data_In_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i_d2(24),
      Q => gpio_Data_In(24),
      R => '0'
    );
\Dual.gpio_Data_In_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i_d2(25),
      Q => gpio_Data_In(25),
      R => '0'
    );
\Dual.gpio_Data_In_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i_d2(26),
      Q => gpio_Data_In(26),
      R => '0'
    );
\Dual.gpio_Data_In_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i_d2(27),
      Q => gpio_Data_In(27),
      R => '0'
    );
\Dual.gpio_Data_In_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i_d2(28),
      Q => gpio_Data_In(28),
      R => '0'
    );
\Dual.gpio_Data_In_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i_d2(29),
      Q => gpio_Data_In(29),
      R => '0'
    );
\Dual.gpio_Data_In_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i_d2(2),
      Q => gpio_Data_In(2),
      R => '0'
    );
\Dual.gpio_Data_In_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i_d2(30),
      Q => gpio_Data_In(30),
      R => '0'
    );
\Dual.gpio_Data_In_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i_d2(31),
      Q => gpio_Data_In(31),
      R => '0'
    );
\Dual.gpio_Data_In_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i_d2(3),
      Q => gpio_Data_In(3),
      R => '0'
    );
\Dual.gpio_Data_In_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i_d2(4),
      Q => gpio_Data_In(4),
      R => '0'
    );
\Dual.gpio_Data_In_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i_d2(5),
      Q => gpio_Data_In(5),
      R => '0'
    );
\Dual.gpio_Data_In_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i_d2(6),
      Q => gpio_Data_In(6),
      R => '0'
    );
\Dual.gpio_Data_In_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i_d2(7),
      Q => gpio_Data_In(7),
      R => '0'
    );
\Dual.gpio_Data_In_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i_d2(8),
      Q => gpio_Data_In(8),
      R => '0'
    );
\Dual.gpio_Data_In_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i_d2(9),
      Q => gpio_Data_In(9),
      R => '0'
    );
\Dual.gpio_Data_Out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio_Data_Out_reg[0]_0\(0),
      D => s_axi_wdata(31),
      Q => \^gpio_io_o\(31),
      R => bus2ip_reset
    );
\Dual.gpio_Data_Out_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio_Data_Out_reg[0]_0\(0),
      D => s_axi_wdata(21),
      Q => \^gpio_io_o\(21),
      R => bus2ip_reset
    );
\Dual.gpio_Data_Out_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio_Data_Out_reg[0]_0\(0),
      D => s_axi_wdata(20),
      Q => \^gpio_io_o\(20),
      R => bus2ip_reset
    );
\Dual.gpio_Data_Out_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio_Data_Out_reg[0]_0\(0),
      D => s_axi_wdata(19),
      Q => \^gpio_io_o\(19),
      R => bus2ip_reset
    );
\Dual.gpio_Data_Out_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio_Data_Out_reg[0]_0\(0),
      D => s_axi_wdata(18),
      Q => \^gpio_io_o\(18),
      R => bus2ip_reset
    );
\Dual.gpio_Data_Out_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio_Data_Out_reg[0]_0\(0),
      D => s_axi_wdata(17),
      Q => \^gpio_io_o\(17),
      R => bus2ip_reset
    );
\Dual.gpio_Data_Out_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio_Data_Out_reg[0]_0\(0),
      D => s_axi_wdata(16),
      Q => \^gpio_io_o\(16),
      R => bus2ip_reset
    );
\Dual.gpio_Data_Out_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio_Data_Out_reg[0]_0\(0),
      D => s_axi_wdata(15),
      Q => \^gpio_io_o\(15),
      R => bus2ip_reset
    );
\Dual.gpio_Data_Out_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio_Data_Out_reg[0]_0\(0),
      D => s_axi_wdata(14),
      Q => \^gpio_io_o\(14),
      R => bus2ip_reset
    );
\Dual.gpio_Data_Out_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio_Data_Out_reg[0]_0\(0),
      D => s_axi_wdata(13),
      Q => \^gpio_io_o\(13),
      R => bus2ip_reset
    );
\Dual.gpio_Data_Out_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio_Data_Out_reg[0]_0\(0),
      D => s_axi_wdata(12),
      Q => \^gpio_io_o\(12),
      R => bus2ip_reset
    );
\Dual.gpio_Data_Out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio_Data_Out_reg[0]_0\(0),
      D => s_axi_wdata(30),
      Q => \^gpio_io_o\(30),
      R => bus2ip_reset
    );
\Dual.gpio_Data_Out_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio_Data_Out_reg[0]_0\(0),
      D => s_axi_wdata(11),
      Q => \^gpio_io_o\(11),
      R => bus2ip_reset
    );
\Dual.gpio_Data_Out_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio_Data_Out_reg[0]_0\(0),
      D => s_axi_wdata(10),
      Q => \^gpio_io_o\(10),
      R => bus2ip_reset
    );
\Dual.gpio_Data_Out_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio_Data_Out_reg[0]_0\(0),
      D => s_axi_wdata(9),
      Q => \^gpio_io_o\(9),
      R => bus2ip_reset
    );
\Dual.gpio_Data_Out_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio_Data_Out_reg[0]_0\(0),
      D => s_axi_wdata(8),
      Q => \^gpio_io_o\(8),
      R => bus2ip_reset
    );
\Dual.gpio_Data_Out_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio_Data_Out_reg[0]_0\(0),
      D => s_axi_wdata(7),
      Q => \^gpio_io_o\(7),
      R => bus2ip_reset
    );
\Dual.gpio_Data_Out_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio_Data_Out_reg[0]_0\(0),
      D => s_axi_wdata(6),
      Q => \^gpio_io_o\(6),
      R => bus2ip_reset
    );
\Dual.gpio_Data_Out_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio_Data_Out_reg[0]_0\(0),
      D => s_axi_wdata(5),
      Q => \^gpio_io_o\(5),
      R => bus2ip_reset
    );
\Dual.gpio_Data_Out_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio_Data_Out_reg[0]_0\(0),
      D => s_axi_wdata(4),
      Q => \^gpio_io_o\(4),
      R => bus2ip_reset
    );
\Dual.gpio_Data_Out_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio_Data_Out_reg[0]_0\(0),
      D => s_axi_wdata(3),
      Q => \^gpio_io_o\(3),
      R => bus2ip_reset
    );
\Dual.gpio_Data_Out_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio_Data_Out_reg[0]_0\(0),
      D => s_axi_wdata(2),
      Q => \^gpio_io_o\(2),
      R => bus2ip_reset
    );
\Dual.gpio_Data_Out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio_Data_Out_reg[0]_0\(0),
      D => s_axi_wdata(29),
      Q => \^gpio_io_o\(29),
      R => bus2ip_reset
    );
\Dual.gpio_Data_Out_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio_Data_Out_reg[0]_0\(0),
      D => s_axi_wdata(1),
      Q => \^gpio_io_o\(1),
      R => bus2ip_reset
    );
\Dual.gpio_Data_Out_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio_Data_Out_reg[0]_0\(0),
      D => s_axi_wdata(0),
      Q => \^gpio_io_o\(0),
      R => bus2ip_reset
    );
\Dual.gpio_Data_Out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio_Data_Out_reg[0]_0\(0),
      D => s_axi_wdata(28),
      Q => \^gpio_io_o\(28),
      R => bus2ip_reset
    );
\Dual.gpio_Data_Out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio_Data_Out_reg[0]_0\(0),
      D => s_axi_wdata(27),
      Q => \^gpio_io_o\(27),
      R => bus2ip_reset
    );
\Dual.gpio_Data_Out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio_Data_Out_reg[0]_0\(0),
      D => s_axi_wdata(26),
      Q => \^gpio_io_o\(26),
      R => bus2ip_reset
    );
\Dual.gpio_Data_Out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio_Data_Out_reg[0]_0\(0),
      D => s_axi_wdata(25),
      Q => \^gpio_io_o\(25),
      R => bus2ip_reset
    );
\Dual.gpio_Data_Out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio_Data_Out_reg[0]_0\(0),
      D => s_axi_wdata(24),
      Q => \^gpio_io_o\(24),
      R => bus2ip_reset
    );
\Dual.gpio_Data_Out_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio_Data_Out_reg[0]_0\(0),
      D => s_axi_wdata(23),
      Q => \^gpio_io_o\(23),
      R => bus2ip_reset
    );
\Dual.gpio_Data_Out_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \Dual.gpio_Data_Out_reg[0]_0\(0),
      D => s_axi_wdata(22),
      Q => \^gpio_io_o\(22),
      R => bus2ip_reset
    );
\Dual.gpio_OE_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(31),
      Q => \^gpio_io_t\(31),
      S => bus2ip_reset
    );
\Dual.gpio_OE_reg[10]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(21),
      Q => \^gpio_io_t\(21),
      S => bus2ip_reset
    );
\Dual.gpio_OE_reg[11]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(20),
      Q => \^gpio_io_t\(20),
      S => bus2ip_reset
    );
\Dual.gpio_OE_reg[12]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(19),
      Q => \^gpio_io_t\(19),
      S => bus2ip_reset
    );
\Dual.gpio_OE_reg[13]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(18),
      Q => \^gpio_io_t\(18),
      S => bus2ip_reset
    );
\Dual.gpio_OE_reg[14]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(17),
      Q => \^gpio_io_t\(17),
      S => bus2ip_reset
    );
\Dual.gpio_OE_reg[15]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(16),
      Q => \^gpio_io_t\(16),
      S => bus2ip_reset
    );
\Dual.gpio_OE_reg[16]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(15),
      Q => \^gpio_io_t\(15),
      S => bus2ip_reset
    );
\Dual.gpio_OE_reg[17]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(14),
      Q => \^gpio_io_t\(14),
      S => bus2ip_reset
    );
\Dual.gpio_OE_reg[18]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(13),
      Q => \^gpio_io_t\(13),
      S => bus2ip_reset
    );
\Dual.gpio_OE_reg[19]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(12),
      Q => \^gpio_io_t\(12),
      S => bus2ip_reset
    );
\Dual.gpio_OE_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(30),
      Q => \^gpio_io_t\(30),
      S => bus2ip_reset
    );
\Dual.gpio_OE_reg[20]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(11),
      Q => \^gpio_io_t\(11),
      S => bus2ip_reset
    );
\Dual.gpio_OE_reg[21]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(10),
      Q => \^gpio_io_t\(10),
      S => bus2ip_reset
    );
\Dual.gpio_OE_reg[22]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(9),
      Q => \^gpio_io_t\(9),
      S => bus2ip_reset
    );
\Dual.gpio_OE_reg[23]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(8),
      Q => \^gpio_io_t\(8),
      S => bus2ip_reset
    );
\Dual.gpio_OE_reg[24]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(7),
      Q => \^gpio_io_t\(7),
      S => bus2ip_reset
    );
\Dual.gpio_OE_reg[25]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(6),
      Q => \^gpio_io_t\(6),
      S => bus2ip_reset
    );
\Dual.gpio_OE_reg[26]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(5),
      Q => \^gpio_io_t\(5),
      S => bus2ip_reset
    );
\Dual.gpio_OE_reg[27]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(4),
      Q => \^gpio_io_t\(4),
      S => bus2ip_reset
    );
\Dual.gpio_OE_reg[28]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(3),
      Q => \^gpio_io_t\(3),
      S => bus2ip_reset
    );
\Dual.gpio_OE_reg[29]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(2),
      Q => \^gpio_io_t\(2),
      S => bus2ip_reset
    );
\Dual.gpio_OE_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(29),
      Q => \^gpio_io_t\(29),
      S => bus2ip_reset
    );
\Dual.gpio_OE_reg[30]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(1),
      Q => \^gpio_io_t\(1),
      S => bus2ip_reset
    );
\Dual.gpio_OE_reg[31]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(0),
      Q => \^gpio_io_t\(0),
      S => bus2ip_reset
    );
\Dual.gpio_OE_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(28),
      Q => \^gpio_io_t\(28),
      S => bus2ip_reset
    );
\Dual.gpio_OE_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(27),
      Q => \^gpio_io_t\(27),
      S => bus2ip_reset
    );
\Dual.gpio_OE_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(26),
      Q => \^gpio_io_t\(26),
      S => bus2ip_reset
    );
\Dual.gpio_OE_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(25),
      Q => \^gpio_io_t\(25),
      S => bus2ip_reset
    );
\Dual.gpio_OE_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(24),
      Q => \^gpio_io_t\(24),
      S => bus2ip_reset
    );
\Dual.gpio_OE_reg[8]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(23),
      Q => \^gpio_io_t\(23),
      S => bus2ip_reset
    );
\Dual.gpio_OE_reg[9]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(22),
      Q => \^gpio_io_t\(22),
      S => bus2ip_reset
    );
GPIO_DBus: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040448"
    )
        port map (
      I0 => p_19_in,
      I1 => Bus_RNW_reg,
      I2 => p_18_in,
      I3 => p_17_in,
      I4 => p_16_in,
      O => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\
    );
gpio_xferAck_Reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^gpio_xferack_i\,
      Q => \^gpio_xferack_reg\,
      R => bus2ip_reset
    );
iGPIO_xferAck_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^gpio_xferack_reg\,
      I1 => bus2ip_cs(0),
      I2 => \^gpio_xferack_i\,
      O => iGPIO_xferAck
    );
iGPIO_xferAck_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => iGPIO_xferAck,
      Q => \^gpio_xferack_i\,
      R => bus2ip_reset
    );
\or_reduce_inferred__0/Dual.gen_interrupt_dual.GPIO2_intr_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \or_reduce_inferred__0/Dual.gen_interrupt_dual.GPIO2_intr_i_2_n_0\,
      I1 => \or_reduce_inferred__0/Dual.gen_interrupt_dual.GPIO2_intr_i_3_n_0\,
      I2 => \or_reduce_inferred__0/Dual.gen_interrupt_dual.GPIO2_intr_i_4_n_0\,
      I3 => \or_reduce_inferred__0/Dual.gen_interrupt_dual.GPIO2_intr_i_5_n_0\,
      I4 => \or_reduce_inferred__0/Dual.gen_interrupt_dual.GPIO2_intr_i_6_n_0\,
      I5 => \or_reduce_inferred__0/Dual.gen_interrupt_dual.GPIO2_intr_i_7_n_0\,
      O => or_reduce
    );
\or_reduce_inferred__0/Dual.gen_interrupt_dual.GPIO2_intr_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => p_18_in_2,
      I1 => p_17_in_1,
      I2 => p_20_in,
      I3 => p_19_in_3,
      I4 => p_21_in,
      I5 => p_22_in,
      O => \or_reduce_inferred__0/Dual.gen_interrupt_dual.GPIO2_intr_i_2_n_0\
    );
\or_reduce_inferred__0/Dual.gen_interrupt_dual.GPIO2_intr_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => p_12_in,
      I1 => p_11_in,
      I2 => p_14_in,
      I3 => p_13_in,
      I4 => p_15_in,
      I5 => p_16_in_0,
      O => \or_reduce_inferred__0/Dual.gen_interrupt_dual.GPIO2_intr_i_3_n_0\
    );
\or_reduce_inferred__0/Dual.gen_interrupt_dual.GPIO2_intr_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[1]\,
      I1 => \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[0]\,
      I2 => p_2_in,
      I3 => p_1_in,
      I4 => p_3_in,
      I5 => p_4_in,
      O => \or_reduce_inferred__0/Dual.gen_interrupt_dual.GPIO2_intr_i_4_n_0\
    );
\or_reduce_inferred__0/Dual.gen_interrupt_dual.GPIO2_intr_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => p_6_in,
      I1 => p_5_in,
      I2 => p_8_in,
      I3 => p_7_in,
      I4 => p_9_in,
      I5 => p_10_in,
      O => \or_reduce_inferred__0/Dual.gen_interrupt_dual.GPIO2_intr_i_5_n_0\
    );
\or_reduce_inferred__0/Dual.gen_interrupt_dual.GPIO2_intr_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[31]\,
      I1 => p_29_in,
      O => \or_reduce_inferred__0/Dual.gen_interrupt_dual.GPIO2_intr_i_6_n_0\
    );
\or_reduce_inferred__0/Dual.gen_interrupt_dual.GPIO2_intr_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => p_24_in,
      I1 => p_23_in,
      I2 => p_26_in,
      I3 => p_25_in,
      I4 => p_27_in,
      I5 => p_28_in,
      O => \or_reduce_inferred__0/Dual.gen_interrupt_dual.GPIO2_intr_i_7_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_gpio_0_0_slave_attachment is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14]\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\ : out STD_LOGIC;
    p_18_in : out STD_LOGIC;
    p_19_in : out STD_LOGIC;
    bus2ip_rnw_i_reg_0 : out STD_LOGIC;
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]\ : out STD_LOGIC;
    Bus_RNW_reg_reg : out STD_LOGIC;
    s_axi_rvalid_i_reg_0 : out STD_LOGIC;
    s_axi_bvalid_i_reg_0 : out STD_LOGIC;
    p_0_in3_in : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    p_1_in2_in : out STD_LOGIC;
    gpio_reg_en : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    bus2ip_rnw_i_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    bus2ip_rnw_i_reg_2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    bus2ip_rnw_i_reg_3 : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    irpt_rdack : out STD_LOGIC;
    intr2bus_rdack0 : out STD_LOGIC;
    irpt_wrack : out STD_LOGIC;
    interrupt_wrce_strb : out STD_LOGIC;
    irpt_wrack_d1_reg : out STD_LOGIC;
    ip2Bus_WrAck_intr_reg_hole0 : out STD_LOGIC;
    intr_rd_ce_or_reduce : out STD_LOGIC;
    ip2Bus_RdAck_intr_reg_hole0 : out STD_LOGIC;
    intr_wr_ce_or_reduce : out STD_LOGIC;
    ip2bus_rdack_i_D1_reg : out STD_LOGIC;
    ip2bus_wrack_i_D1_reg : out STD_LOGIC;
    \s_axi_wdata[31]\ : out STD_LOGIC;
    bus2ip_rnw_i_reg_4 : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    data0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data3 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ipif_glbl_irpt_enable_reg : in STD_LOGIC;
    irpt_rdack_d1 : in STD_LOGIC;
    irpt_wrack_d1 : in STD_LOGIC;
    ip2Bus_WrAck_intr_reg_hole_d1 : in STD_LOGIC;
    ip2Bus_RdAck_intr_reg_hole_d1 : in STD_LOGIC;
    data1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \ip2bus_data_i_D1_reg[0]\ : in STD_LOGIC;
    p_1_in : in STD_LOGIC;
    p_0_in0_in : in STD_LOGIC;
    \ip2bus_data_i_D1_reg[31]\ : in STD_LOGIC;
    \ip2bus_data_i_D1_reg[31]_0\ : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 0 to 0 );
    GPIO_xferAck_i : in STD_LOGIC;
    gpio_xferAck_Reg : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    \s_axi_rdata_i_reg[31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    ip2bus_rdack_i_D1 : in STD_LOGIC;
    ip2bus_wrack_i_D1 : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_axi_gpio_0_0_slave_attachment : entity is "slave_attachment";
end icyradio_axi_gpio_0_0_slave_attachment;

architecture STRUCTURE of icyradio_axi_gpio_0_0_slave_attachment is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal bus2ip_addr : STD_LOGIC_VECTOR ( 0 to 4 );
  signal \bus2ip_addr_i[8]_i_1_n_0\ : STD_LOGIC;
  signal \^bus2ip_rnw_i_reg_0\ : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal \^ip2bus_rdack_i_d1_reg\ : STD_LOGIC;
  signal \^ip2bus_wrack_i_d1_reg\ : STD_LOGIC;
  signal is_read_i_1_n_0 : STD_LOGIC;
  signal is_read_reg_n_0 : STD_LOGIC;
  signal is_write_i_1_n_0 : STD_LOGIC;
  signal is_write_i_2_n_0 : STD_LOGIC;
  signal is_write_reg_n_0 : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \p_1_in__0\ : STD_LOGIC_VECTOR ( 8 downto 2 );
  signal p_5_in : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rst_i_1_n_0 : STD_LOGIC;
  signal s_axi_bresp_i : STD_LOGIC;
  signal s_axi_bvalid_i_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_bvalid_i_reg_0\ : STD_LOGIC;
  signal s_axi_rresp_i : STD_LOGIC;
  signal s_axi_rvalid_i_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_rvalid_i_reg_0\ : STD_LOGIC;
  signal start2 : STD_LOGIC;
  signal start2_i_1_n_0 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state1__2\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[3]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[4]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[5]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[6]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[7]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[8]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of start2_i_1 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \state[1]_i_2\ : label is "soft_lutpair20";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  SR(0) <= \^sr\(0);
  bus2ip_rnw_i_reg_0 <= \^bus2ip_rnw_i_reg_0\;
  ip2bus_rdack_i_D1_reg <= \^ip2bus_rdack_i_d1_reg\;
  ip2bus_wrack_i_D1_reg <= \^ip2bus_wrack_i_d1_reg\;
  s_axi_bvalid_i_reg_0 <= \^s_axi_bvalid_i_reg_0\;
  s_axi_rvalid_i_reg_0 <= \^s_axi_rvalid_i_reg_0\;
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF150015001500"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => s_axi_wvalid,
      I2 => s_axi_awvalid,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => \state1__2\,
      I5 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \^ip2bus_rdack_i_d1_reg\,
      I3 => s_axi_rresp_i,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800FFFF08000800"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => s_axi_arvalid,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => \^ip2bus_wrack_i_d1_reg\,
      I5 => s_axi_bresp_i,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888F888FFFFF888"
    )
        port map (
      I0 => \^ip2bus_wrack_i_d1_reg\,
      I1 => s_axi_bresp_i,
      I2 => s_axi_rresp_i,
      I3 => \^ip2bus_rdack_i_d1_reg\,
      I4 => \FSM_onehot_state_reg_n_0_[3]\,
      I5 => \state1__2\,
      O => \FSM_onehot_state[3]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s_axi_bready,
      I1 => \^s_axi_bvalid_i_reg_0\,
      I2 => s_axi_rready,
      I3 => \^s_axi_rvalid_i_reg_0\,
      O => \state1__2\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      S => \^sr\(0)
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => s_axi_rresp_i,
      R => \^sr\(0)
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => s_axi_bresp_i,
      R => \^sr\(0)
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[3]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[3]\,
      R => \^sr\(0)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      O => plusOp(0)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      O => plusOp(1)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(2),
      O => plusOp(2)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      O => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(2),
      I3 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(3),
      O => plusOp(3)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(0),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(1),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(2),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(2),
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(3),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(3),
      R => clear
    );
I_DECODER: entity work.icyradio_axi_gpio_0_0_address_decoder
     port map (
      Bus_RNW_reg_reg_0 => Bus_RNW_reg_reg,
      D(31 downto 0) => D(31 downto 0),
      \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]\ => \^bus2ip_rnw_i_reg_0\,
      E(0) => E(0),
      \GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14]_0\ => \GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14]\,
      \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0\ => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\,
      \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\ => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\,
      GPIO_xferAck_i => GPIO_xferAck_i,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\ => \MEM_DECODE_GEN[0].cs_out_i_reg[0]\,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(6) => bus2ip_addr(0),
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(5) => bus2ip_addr(1),
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(4) => bus2ip_addr(2),
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(3) => bus2ip_addr(3),
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(2) => bus2ip_addr(4),
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\(1 downto 0) => \^q\(1 downto 0),
      Q => start2,
      bus2ip_rnw_i_reg(0) => bus2ip_rnw_i_reg_1(0),
      bus2ip_rnw_i_reg_0(0) => bus2ip_rnw_i_reg_2(0),
      bus2ip_rnw_i_reg_1(0) => bus2ip_rnw_i_reg_3(0),
      bus2ip_rnw_i_reg_2 => bus2ip_rnw_i_reg_4,
      data0(31 downto 0) => data0(31 downto 0),
      data1(31 downto 0) => data1(31 downto 0),
      data2(31 downto 0) => data2(31 downto 0),
      data3(31 downto 0) => data3(31 downto 0),
      gpio_reg_en => gpio_reg_en,
      gpio_xferAck_Reg => gpio_xferAck_Reg,
      interrupt_wrce_strb => interrupt_wrce_strb,
      intr2bus_rdack0 => intr2bus_rdack0,
      intr_rd_ce_or_reduce => intr_rd_ce_or_reduce,
      intr_wr_ce_or_reduce => intr_wr_ce_or_reduce,
      ip2Bus_RdAck_intr_reg_hole0 => ip2Bus_RdAck_intr_reg_hole0,
      ip2Bus_RdAck_intr_reg_hole_d1 => ip2Bus_RdAck_intr_reg_hole_d1,
      ip2Bus_WrAck_intr_reg_hole0 => ip2Bus_WrAck_intr_reg_hole0,
      ip2Bus_WrAck_intr_reg_hole_d1 => ip2Bus_WrAck_intr_reg_hole_d1,
      \ip2bus_data_i_D1_reg[0]\ => \ip2bus_data_i_D1_reg[0]\,
      \ip2bus_data_i_D1_reg[31]\ => \ip2bus_data_i_D1_reg[31]\,
      \ip2bus_data_i_D1_reg[31]_0\ => \ip2bus_data_i_D1_reg[31]_0\,
      ip2bus_rdack_i_D1 => ip2bus_rdack_i_D1,
      ip2bus_rdack_i_D1_reg => \^ip2bus_rdack_i_d1_reg\,
      ip2bus_wrack_i_D1 => ip2bus_wrack_i_D1,
      ip2bus_wrack_i_D1_reg => \^ip2bus_wrack_i_d1_reg\,
      ipif_glbl_irpt_enable_reg => ipif_glbl_irpt_enable_reg,
      irpt_rdack => irpt_rdack,
      irpt_rdack_d1 => irpt_rdack_d1,
      irpt_wrack => irpt_wrack,
      irpt_wrack_d1 => irpt_wrack_d1,
      irpt_wrack_d1_reg => irpt_wrack_d1_reg,
      p_0_in0_in => p_0_in0_in,
      p_0_in3_in => p_0_in3_in,
      p_18_in => p_18_in,
      p_19_in => p_19_in,
      p_1_in => p_1_in,
      p_1_in2_in => p_1_in2_in,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => is_read_reg_n_0,
      s_axi_arready_0(3 downto 0) => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(3 downto 0),
      s_axi_wdata(0) => s_axi_wdata(0),
      \s_axi_wdata[31]\ => \s_axi_wdata[31]\,
      s_axi_wready => is_write_reg_n_0
    );
\bus2ip_addr_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axi_araddr(0),
      I1 => s_axi_awaddr(0),
      I2 => s_axi_arvalid,
      O => \p_1_in__0\(2)
    );
\bus2ip_addr_i[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axi_araddr(1),
      I1 => s_axi_awaddr(1),
      I2 => s_axi_arvalid,
      O => \p_1_in__0\(3)
    );
\bus2ip_addr_i[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axi_araddr(2),
      I1 => s_axi_awaddr(2),
      I2 => s_axi_arvalid,
      O => \p_1_in__0\(4)
    );
\bus2ip_addr_i[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axi_araddr(3),
      I1 => s_axi_awaddr(3),
      I2 => s_axi_arvalid,
      O => \p_1_in__0\(5)
    );
\bus2ip_addr_i[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axi_araddr(4),
      I1 => s_axi_awaddr(4),
      I2 => s_axi_arvalid,
      O => \p_1_in__0\(6)
    );
\bus2ip_addr_i[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axi_araddr(5),
      I1 => s_axi_awaddr(5),
      I2 => s_axi_arvalid,
      O => \p_1_in__0\(7)
    );
\bus2ip_addr_i[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000EA"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => s_axi_awvalid,
      I2 => s_axi_wvalid,
      I3 => state(1),
      I4 => state(0),
      O => \bus2ip_addr_i[8]_i_1_n_0\
    );
\bus2ip_addr_i[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axi_araddr(6),
      I1 => s_axi_awaddr(6),
      I2 => s_axi_arvalid,
      O => \p_1_in__0\(8)
    );
\bus2ip_addr_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \p_1_in__0\(2),
      Q => \^q\(0),
      R => \^sr\(0)
    );
\bus2ip_addr_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \p_1_in__0\(3),
      Q => \^q\(1),
      R => \^sr\(0)
    );
\bus2ip_addr_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \p_1_in__0\(4),
      Q => bus2ip_addr(4),
      R => \^sr\(0)
    );
\bus2ip_addr_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \p_1_in__0\(5),
      Q => bus2ip_addr(3),
      R => \^sr\(0)
    );
\bus2ip_addr_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \p_1_in__0\(6),
      Q => bus2ip_addr(2),
      R => \^sr\(0)
    );
\bus2ip_addr_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \p_1_in__0\(7),
      Q => bus2ip_addr(1),
      R => \^sr\(0)
    );
\bus2ip_addr_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \p_1_in__0\(8),
      Q => bus2ip_addr(0),
      R => \^sr\(0)
    );
bus2ip_rnw_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => s_axi_arvalid,
      Q => \^bus2ip_rnw_i_reg_0\,
      R => \^sr\(0)
    );
is_read_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BBB8888"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \state1__2\,
      I3 => \FSM_onehot_state_reg_n_0_[3]\,
      I4 => is_read_reg_n_0,
      O => is_read_i_1_n_0
    );
is_read_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => is_read_i_1_n_0,
      Q => is_read_reg_n_0,
      R => \^sr\(0)
    );
is_write_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000FFFF20000000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => s_axi_arvalid,
      I2 => s_axi_awvalid,
      I3 => s_axi_wvalid,
      I4 => is_write_i_2_n_0,
      I5 => is_write_reg_n_0,
      O => is_write_i_1_n_0
    );
is_write_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAEAEAAAAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => s_axi_bready,
      I2 => \^s_axi_bvalid_i_reg_0\,
      I3 => s_axi_rready,
      I4 => \^s_axi_rvalid_i_reg_0\,
      I5 => \FSM_onehot_state_reg_n_0_[3]\,
      O => is_write_i_2_n_0
    );
is_write_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => is_write_i_1_n_0,
      Q => is_write_reg_n_0,
      R => \^sr\(0)
    );
rst_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => rst_i_1_n_0
    );
rst_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => rst_i_1_n_0,
      Q => \^sr\(0),
      R => '0'
    );
s_axi_bvalid_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08FF0808"
    )
        port map (
      I0 => \^ip2bus_wrack_i_d1_reg\,
      I1 => state(1),
      I2 => state(0),
      I3 => s_axi_bready,
      I4 => \^s_axi_bvalid_i_reg_0\,
      O => s_axi_bvalid_i_i_1_n_0
    );
s_axi_bvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_bvalid_i_i_1_n_0,
      Q => \^s_axi_bvalid_i_reg_0\,
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(0),
      Q => s_axi_rdata(0),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(10),
      Q => s_axi_rdata(10),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(11),
      Q => s_axi_rdata(11),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(12),
      Q => s_axi_rdata(12),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(13),
      Q => s_axi_rdata(13),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(14),
      Q => s_axi_rdata(14),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(15),
      Q => s_axi_rdata(15),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(16),
      Q => s_axi_rdata(16),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(17),
      Q => s_axi_rdata(17),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(18),
      Q => s_axi_rdata(18),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(19),
      Q => s_axi_rdata(19),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(1),
      Q => s_axi_rdata(1),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(20),
      Q => s_axi_rdata(20),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(21),
      Q => s_axi_rdata(21),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(22),
      Q => s_axi_rdata(22),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(23),
      Q => s_axi_rdata(23),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(24),
      Q => s_axi_rdata(24),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(25),
      Q => s_axi_rdata(25),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(26),
      Q => s_axi_rdata(26),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(27),
      Q => s_axi_rdata(27),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(28),
      Q => s_axi_rdata(28),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(29),
      Q => s_axi_rdata(29),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(2),
      Q => s_axi_rdata(2),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(30),
      Q => s_axi_rdata(30),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(31),
      Q => s_axi_rdata(31),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(3),
      Q => s_axi_rdata(3),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(4),
      Q => s_axi_rdata(4),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(5),
      Q => s_axi_rdata(5),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(6),
      Q => s_axi_rdata(6),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(7),
      Q => s_axi_rdata(7),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(8),
      Q => s_axi_rdata(8),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(9),
      Q => s_axi_rdata(9),
      R => \^sr\(0)
    );
s_axi_rvalid_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08FF0808"
    )
        port map (
      I0 => \^ip2bus_rdack_i_d1_reg\,
      I1 => state(0),
      I2 => state(1),
      I3 => s_axi_rready,
      I4 => \^s_axi_rvalid_i_reg_0\,
      O => s_axi_rvalid_i_i_1_n_0
    );
s_axi_rvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_rvalid_i_i_1_n_0,
      Q => \^s_axi_rvalid_i_reg_0\,
      R => \^sr\(0)
    );
start2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000F8"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      I2 => s_axi_arvalid,
      I3 => state(1),
      I4 => state(0),
      O => start2_i_1_n_0
    );
start2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => start2_i_1_n_0,
      Q => start2,
      R => \^sr\(0)
    );
\state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77FC44FC"
    )
        port map (
      I0 => \state1__2\,
      I1 => state(0),
      I2 => s_axi_arvalid,
      I3 => state(1),
      I4 => \^ip2bus_wrack_i_d1_reg\,
      O => p_0_out(0)
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55FFFF0C5500FF0C"
    )
        port map (
      I0 => \state1__2\,
      I1 => p_5_in,
      I2 => s_axi_arvalid,
      I3 => state(1),
      I4 => state(0),
      I5 => \^ip2bus_rdack_i_d1_reg\,
      O => p_0_out(1)
    );
\state[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      O => p_5_in
    );
\state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_0_out(0),
      Q => state(0),
      R => \^sr\(0)
    );
\state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_0_out(1),
      Q => state(1),
      R => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_gpio_0_0_axi_lite_ipif is
  port (
    bus2ip_reset : out STD_LOGIC;
    p_5_in : out STD_LOGIC;
    p_16_in : out STD_LOGIC;
    p_17_in : out STD_LOGIC;
    p_18_in : out STD_LOGIC;
    p_19_in : out STD_LOGIC;
    bus2ip_rnw : out STD_LOGIC;
    bus2ip_cs : out STD_LOGIC_VECTOR ( 0 to 0 );
    Bus_RNW_reg : out STD_LOGIC;
    s_axi_rvalid_i_reg : out STD_LOGIC;
    s_axi_bvalid_i_reg : out STD_LOGIC;
    p_0_in3_in : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    p_1_in2_in : out STD_LOGIC;
    gpio_reg_en : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    bus2ip_rnw_i_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    bus2ip_rnw_i_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    bus2ip_rnw_i_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    irpt_rdack : out STD_LOGIC;
    intr2bus_rdack0 : out STD_LOGIC;
    irpt_wrack : out STD_LOGIC;
    interrupt_wrce_strb : out STD_LOGIC;
    irpt_wrack_d1_reg : out STD_LOGIC;
    ip2Bus_WrAck_intr_reg_hole0 : out STD_LOGIC;
    intr_rd_ce_or_reduce : out STD_LOGIC;
    ip2Bus_RdAck_intr_reg_hole0 : out STD_LOGIC;
    intr_wr_ce_or_reduce : out STD_LOGIC;
    ip2bus_rdack_i_D1_reg : out STD_LOGIC;
    ip2bus_wrack_i_D1_reg : out STD_LOGIC;
    \s_axi_wdata[31]\ : out STD_LOGIC;
    bus2ip_rnw_i_reg_2 : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    data0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data3 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ipif_glbl_irpt_enable_reg : in STD_LOGIC;
    irpt_rdack_d1 : in STD_LOGIC;
    irpt_wrack_d1 : in STD_LOGIC;
    ip2Bus_WrAck_intr_reg_hole_d1 : in STD_LOGIC;
    ip2Bus_RdAck_intr_reg_hole_d1 : in STD_LOGIC;
    data1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \ip2bus_data_i_D1_reg[0]\ : in STD_LOGIC;
    p_1_in : in STD_LOGIC;
    p_0_in0_in : in STD_LOGIC;
    \ip2bus_data_i_D1_reg[31]\ : in STD_LOGIC;
    \ip2bus_data_i_D1_reg[31]_0\ : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 0 to 0 );
    GPIO_xferAck_i : in STD_LOGIC;
    gpio_xferAck_Reg : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    \s_axi_rdata_i_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    ip2bus_rdack_i_D1 : in STD_LOGIC;
    ip2bus_wrack_i_D1 : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_axi_gpio_0_0_axi_lite_ipif : entity is "axi_lite_ipif";
end icyradio_axi_gpio_0_0_axi_lite_ipif;

architecture STRUCTURE of icyradio_axi_gpio_0_0_axi_lite_ipif is
begin
I_SLAVE_ATTACHMENT: entity work.icyradio_axi_gpio_0_0_slave_attachment
     port map (
      Bus_RNW_reg_reg => Bus_RNW_reg,
      D(31 downto 0) => D(31 downto 0),
      E(0) => E(0),
      \GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14]\ => p_5_in,
      \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\ => p_17_in,
      \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\ => p_16_in,
      GPIO_xferAck_i => GPIO_xferAck_i,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]\ => bus2ip_cs(0),
      Q(1 downto 0) => Q(1 downto 0),
      SR(0) => bus2ip_reset,
      bus2ip_rnw_i_reg_0 => bus2ip_rnw,
      bus2ip_rnw_i_reg_1(0) => bus2ip_rnw_i_reg(0),
      bus2ip_rnw_i_reg_2(0) => bus2ip_rnw_i_reg_0(0),
      bus2ip_rnw_i_reg_3(0) => bus2ip_rnw_i_reg_1(0),
      bus2ip_rnw_i_reg_4 => bus2ip_rnw_i_reg_2,
      data0(31 downto 0) => data0(31 downto 0),
      data1(31 downto 0) => data1(31 downto 0),
      data2(31 downto 0) => data2(31 downto 0),
      data3(31 downto 0) => data3(31 downto 0),
      gpio_reg_en => gpio_reg_en,
      gpio_xferAck_Reg => gpio_xferAck_Reg,
      interrupt_wrce_strb => interrupt_wrce_strb,
      intr2bus_rdack0 => intr2bus_rdack0,
      intr_rd_ce_or_reduce => intr_rd_ce_or_reduce,
      intr_wr_ce_or_reduce => intr_wr_ce_or_reduce,
      ip2Bus_RdAck_intr_reg_hole0 => ip2Bus_RdAck_intr_reg_hole0,
      ip2Bus_RdAck_intr_reg_hole_d1 => ip2Bus_RdAck_intr_reg_hole_d1,
      ip2Bus_WrAck_intr_reg_hole0 => ip2Bus_WrAck_intr_reg_hole0,
      ip2Bus_WrAck_intr_reg_hole_d1 => ip2Bus_WrAck_intr_reg_hole_d1,
      \ip2bus_data_i_D1_reg[0]\ => \ip2bus_data_i_D1_reg[0]\,
      \ip2bus_data_i_D1_reg[31]\ => \ip2bus_data_i_D1_reg[31]\,
      \ip2bus_data_i_D1_reg[31]_0\ => \ip2bus_data_i_D1_reg[31]_0\,
      ip2bus_rdack_i_D1 => ip2bus_rdack_i_D1,
      ip2bus_rdack_i_D1_reg => ip2bus_rdack_i_D1_reg,
      ip2bus_wrack_i_D1 => ip2bus_wrack_i_D1,
      ip2bus_wrack_i_D1_reg => ip2bus_wrack_i_D1_reg,
      ipif_glbl_irpt_enable_reg => ipif_glbl_irpt_enable_reg,
      irpt_rdack => irpt_rdack,
      irpt_rdack_d1 => irpt_rdack_d1,
      irpt_wrack => irpt_wrack,
      irpt_wrack_d1 => irpt_wrack_d1,
      irpt_wrack_d1_reg => irpt_wrack_d1_reg,
      p_0_in0_in => p_0_in0_in,
      p_0_in3_in => p_0_in3_in,
      p_18_in => p_18_in,
      p_19_in => p_19_in,
      p_1_in => p_1_in,
      p_1_in2_in => p_1_in2_in,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(6 downto 0) => s_axi_araddr(6 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(6 downto 0) => s_axi_awaddr(6 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid_i_reg_0 => s_axi_bvalid_i_reg,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      \s_axi_rdata_i_reg[31]_0\(31 downto 0) => \s_axi_rdata_i_reg[31]\(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid_i_reg_0 => s_axi_rvalid_i_reg,
      s_axi_wdata(0) => s_axi_wdata(0),
      \s_axi_wdata[31]\ => \s_axi_wdata[31]\,
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_gpio_0_0_axi_gpio is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    gpio_io_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio_io_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio_io_t : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio2_io_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio2_io_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio2_io_t : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute C_ALL_INPUTS : integer;
  attribute C_ALL_INPUTS of icyradio_axi_gpio_0_0_axi_gpio : entity is 0;
  attribute C_ALL_INPUTS_2 : integer;
  attribute C_ALL_INPUTS_2 of icyradio_axi_gpio_0_0_axi_gpio : entity is 0;
  attribute C_ALL_OUTPUTS : integer;
  attribute C_ALL_OUTPUTS of icyradio_axi_gpio_0_0_axi_gpio : entity is 0;
  attribute C_ALL_OUTPUTS_2 : integer;
  attribute C_ALL_OUTPUTS_2 of icyradio_axi_gpio_0_0_axi_gpio : entity is 0;
  attribute C_DOUT_DEFAULT : integer;
  attribute C_DOUT_DEFAULT of icyradio_axi_gpio_0_0_axi_gpio : entity is 0;
  attribute C_DOUT_DEFAULT_2 : integer;
  attribute C_DOUT_DEFAULT_2 of icyradio_axi_gpio_0_0_axi_gpio : entity is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of icyradio_axi_gpio_0_0_axi_gpio : entity is "artix7";
  attribute C_GPIO2_WIDTH : integer;
  attribute C_GPIO2_WIDTH of icyradio_axi_gpio_0_0_axi_gpio : entity is 32;
  attribute C_GPIO_WIDTH : integer;
  attribute C_GPIO_WIDTH of icyradio_axi_gpio_0_0_axi_gpio : entity is 32;
  attribute C_INTERRUPT_PRESENT : integer;
  attribute C_INTERRUPT_PRESENT of icyradio_axi_gpio_0_0_axi_gpio : entity is 1;
  attribute C_IS_DUAL : integer;
  attribute C_IS_DUAL of icyradio_axi_gpio_0_0_axi_gpio : entity is 1;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of icyradio_axi_gpio_0_0_axi_gpio : entity is 9;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of icyradio_axi_gpio_0_0_axi_gpio : entity is 32;
  attribute C_TRI_DEFAULT : integer;
  attribute C_TRI_DEFAULT of icyradio_axi_gpio_0_0_axi_gpio : entity is -1;
  attribute C_TRI_DEFAULT_2 : integer;
  attribute C_TRI_DEFAULT_2 of icyradio_axi_gpio_0_0_axi_gpio : entity is -1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_axi_gpio_0_0_axi_gpio : entity is "axi_gpio";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of icyradio_axi_gpio_0_0_axi_gpio : entity is "yes";
  attribute ip_group : string;
  attribute ip_group of icyradio_axi_gpio_0_0_axi_gpio : entity is "LOGICORE";
end icyradio_axi_gpio_0_0_axi_gpio;

architecture STRUCTURE of icyradio_axi_gpio_0_0_axi_gpio is
  signal \<const0>\ : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_16 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_17 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_18 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_19 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_56 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_63 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_64 : STD_LOGIC;
  signal GPIO2_intr : STD_LOGIC;
  signal GPIO_intr : STD_LOGIC;
  signal GPIO_xferAck_i : STD_LOGIC;
  signal \INTR_CTRLR_GEN.INTERRUPT_CONTROL_I_n_1\ : STD_LOGIC;
  signal \INTR_CTRLR_GEN.INTERRUPT_CONTROL_I_n_9\ : STD_LOGIC;
  signal IP2INTC_Irpt_i : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\ : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/I_DECODER/p_16_in\ : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/I_DECODER/p_17_in\ : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/I_DECODER/p_18_in\ : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/I_DECODER/p_19_in\ : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/I_DECODER/p_5_in\ : STD_LOGIC;
  signal bus2ip_addr : STD_LOGIC_VECTOR ( 5 to 6 );
  signal bus2ip_cs : STD_LOGIC_VECTOR ( 1 to 1 );
  signal bus2ip_reset : STD_LOGIC;
  signal bus2ip_rnw : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal gpio_core_1_n_132 : STD_LOGIC;
  signal gpio_reg_en : STD_LOGIC;
  signal gpio_xferAck_Reg : STD_LOGIC;
  signal interrupt_wrce_strb : STD_LOGIC;
  signal intr2bus_rdack0 : STD_LOGIC;
  signal intr_rd_ce_or_reduce : STD_LOGIC;
  signal intr_wr_ce_or_reduce : STD_LOGIC;
  signal ip2Bus_RdAck_intr_reg_hole : STD_LOGIC;
  signal ip2Bus_RdAck_intr_reg_hole0 : STD_LOGIC;
  signal ip2Bus_RdAck_intr_reg_hole_d1 : STD_LOGIC;
  signal ip2Bus_WrAck_intr_reg_hole : STD_LOGIC;
  signal ip2Bus_WrAck_intr_reg_hole0 : STD_LOGIC;
  signal ip2Bus_WrAck_intr_reg_hole_d1 : STD_LOGIC;
  signal ip2bus_data : STD_LOGIC_VECTOR ( 1 to 29 );
  signal ip2bus_data_i : STD_LOGIC_VECTOR ( 0 to 31 );
  signal ip2bus_data_i_D1 : STD_LOGIC_VECTOR ( 0 to 31 );
  signal ip2bus_rdack_i : STD_LOGIC;
  signal ip2bus_rdack_i_D1 : STD_LOGIC;
  signal ip2bus_wrack_i : STD_LOGIC;
  signal ip2bus_wrack_i_D1 : STD_LOGIC;
  signal ipif_glbl_irpt_enable_reg : STD_LOGIC;
  signal irpt_rdack : STD_LOGIC;
  signal irpt_rdack_d1 : STD_LOGIC;
  signal irpt_wrack : STD_LOGIC;
  signal irpt_wrack_d1 : STD_LOGIC;
  signal p_0_in0_in : STD_LOGIC;
  signal p_0_in3_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_1_in2_in : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  attribute sigis : string;
  attribute sigis of \INTR_CTRLR_GEN.ip2intc_irpt_reg\ : label is "INTR_LEVEL_HIGH";
  attribute sigis of ip2intc_irpt : signal is "INTR_LEVEL_HIGH";
  attribute sigis of s_axi_aclk : signal is "Clk";
  attribute sigis of s_axi_aresetn : signal is "Rst";
begin
  s_axi_awready <= \^s_axi_wready\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_wready <= \^s_axi_wready\;
AXI_LITE_IPIF_I: entity work.icyradio_axi_gpio_0_0_axi_lite_ipif
     port map (
      Bus_RNW_reg => \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\,
      D(31) => ip2bus_data_i(0),
      D(30) => ip2bus_data(1),
      D(29) => ip2bus_data(2),
      D(28) => ip2bus_data(3),
      D(27) => ip2bus_data(4),
      D(26) => ip2bus_data(5),
      D(25) => ip2bus_data(6),
      D(24) => ip2bus_data(7),
      D(23) => ip2bus_data(8),
      D(22) => ip2bus_data(9),
      D(21) => ip2bus_data(10),
      D(20) => ip2bus_data(11),
      D(19) => ip2bus_data(12),
      D(18) => ip2bus_data(13),
      D(17) => ip2bus_data(14),
      D(16) => ip2bus_data(15),
      D(15) => ip2bus_data(16),
      D(14) => ip2bus_data(17),
      D(13) => ip2bus_data(18),
      D(12) => ip2bus_data(19),
      D(11) => ip2bus_data(20),
      D(10) => ip2bus_data(21),
      D(9) => ip2bus_data(22),
      D(8) => ip2bus_data(23),
      D(7) => ip2bus_data(24),
      D(6) => ip2bus_data(25),
      D(5) => ip2bus_data(26),
      D(4) => ip2bus_data(27),
      D(3) => ip2bus_data(28),
      D(2) => ip2bus_data(29),
      D(1) => ip2bus_data_i(30),
      D(0) => ip2bus_data_i(31),
      E(0) => AXI_LITE_IPIF_I_n_16,
      GPIO_xferAck_i => GPIO_xferAck_i,
      Q(1) => bus2ip_addr(5),
      Q(0) => bus2ip_addr(6),
      bus2ip_cs(0) => bus2ip_cs(1),
      bus2ip_reset => bus2ip_reset,
      bus2ip_rnw => bus2ip_rnw,
      bus2ip_rnw_i_reg(0) => AXI_LITE_IPIF_I_n_17,
      bus2ip_rnw_i_reg_0(0) => AXI_LITE_IPIF_I_n_18,
      bus2ip_rnw_i_reg_1(0) => AXI_LITE_IPIF_I_n_19,
      bus2ip_rnw_i_reg_2 => AXI_LITE_IPIF_I_n_64,
      data0(31 downto 0) => data0(31 downto 0),
      data1(31 downto 0) => data1(31 downto 0),
      data2(31 downto 0) => data2(31 downto 0),
      data3(31 downto 0) => data3(31 downto 0),
      gpio_reg_en => gpio_reg_en,
      gpio_xferAck_Reg => gpio_xferAck_Reg,
      interrupt_wrce_strb => interrupt_wrce_strb,
      intr2bus_rdack0 => intr2bus_rdack0,
      intr_rd_ce_or_reduce => intr_rd_ce_or_reduce,
      intr_wr_ce_or_reduce => intr_wr_ce_or_reduce,
      ip2Bus_RdAck_intr_reg_hole0 => ip2Bus_RdAck_intr_reg_hole0,
      ip2Bus_RdAck_intr_reg_hole_d1 => ip2Bus_RdAck_intr_reg_hole_d1,
      ip2Bus_WrAck_intr_reg_hole0 => ip2Bus_WrAck_intr_reg_hole0,
      ip2Bus_WrAck_intr_reg_hole_d1 => ip2Bus_WrAck_intr_reg_hole_d1,
      \ip2bus_data_i_D1_reg[0]\ => gpio_core_1_n_132,
      \ip2bus_data_i_D1_reg[31]\ => \INTR_CTRLR_GEN.INTERRUPT_CONTROL_I_n_1\,
      \ip2bus_data_i_D1_reg[31]_0\ => \INTR_CTRLR_GEN.INTERRUPT_CONTROL_I_n_9\,
      ip2bus_rdack_i_D1 => ip2bus_rdack_i_D1,
      ip2bus_rdack_i_D1_reg => s_axi_arready,
      ip2bus_wrack_i_D1 => ip2bus_wrack_i_D1,
      ip2bus_wrack_i_D1_reg => \^s_axi_wready\,
      ipif_glbl_irpt_enable_reg => ipif_glbl_irpt_enable_reg,
      irpt_rdack => irpt_rdack,
      irpt_rdack_d1 => irpt_rdack_d1,
      irpt_wrack => irpt_wrack,
      irpt_wrack_d1 => irpt_wrack_d1,
      irpt_wrack_d1_reg => AXI_LITE_IPIF_I_n_56,
      p_0_in0_in => p_0_in0_in,
      p_0_in3_in => p_0_in3_in,
      p_16_in => \I_SLAVE_ATTACHMENT/I_DECODER/p_16_in\,
      p_17_in => \I_SLAVE_ATTACHMENT/I_DECODER/p_17_in\,
      p_18_in => \I_SLAVE_ATTACHMENT/I_DECODER/p_18_in\,
      p_19_in => \I_SLAVE_ATTACHMENT/I_DECODER/p_19_in\,
      p_1_in => p_1_in,
      p_1_in2_in => p_1_in2_in,
      p_5_in => \I_SLAVE_ATTACHMENT/I_DECODER/p_5_in\,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(6 downto 0) => s_axi_araddr(8 downto 2),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(6 downto 0) => s_axi_awaddr(8 downto 2),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid_i_reg => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      \s_axi_rdata_i_reg[31]\(31) => ip2bus_data_i_D1(0),
      \s_axi_rdata_i_reg[31]\(30) => ip2bus_data_i_D1(1),
      \s_axi_rdata_i_reg[31]\(29) => ip2bus_data_i_D1(2),
      \s_axi_rdata_i_reg[31]\(28) => ip2bus_data_i_D1(3),
      \s_axi_rdata_i_reg[31]\(27) => ip2bus_data_i_D1(4),
      \s_axi_rdata_i_reg[31]\(26) => ip2bus_data_i_D1(5),
      \s_axi_rdata_i_reg[31]\(25) => ip2bus_data_i_D1(6),
      \s_axi_rdata_i_reg[31]\(24) => ip2bus_data_i_D1(7),
      \s_axi_rdata_i_reg[31]\(23) => ip2bus_data_i_D1(8),
      \s_axi_rdata_i_reg[31]\(22) => ip2bus_data_i_D1(9),
      \s_axi_rdata_i_reg[31]\(21) => ip2bus_data_i_D1(10),
      \s_axi_rdata_i_reg[31]\(20) => ip2bus_data_i_D1(11),
      \s_axi_rdata_i_reg[31]\(19) => ip2bus_data_i_D1(12),
      \s_axi_rdata_i_reg[31]\(18) => ip2bus_data_i_D1(13),
      \s_axi_rdata_i_reg[31]\(17) => ip2bus_data_i_D1(14),
      \s_axi_rdata_i_reg[31]\(16) => ip2bus_data_i_D1(15),
      \s_axi_rdata_i_reg[31]\(15) => ip2bus_data_i_D1(16),
      \s_axi_rdata_i_reg[31]\(14) => ip2bus_data_i_D1(17),
      \s_axi_rdata_i_reg[31]\(13) => ip2bus_data_i_D1(18),
      \s_axi_rdata_i_reg[31]\(12) => ip2bus_data_i_D1(19),
      \s_axi_rdata_i_reg[31]\(11) => ip2bus_data_i_D1(20),
      \s_axi_rdata_i_reg[31]\(10) => ip2bus_data_i_D1(21),
      \s_axi_rdata_i_reg[31]\(9) => ip2bus_data_i_D1(22),
      \s_axi_rdata_i_reg[31]\(8) => ip2bus_data_i_D1(23),
      \s_axi_rdata_i_reg[31]\(7) => ip2bus_data_i_D1(24),
      \s_axi_rdata_i_reg[31]\(6) => ip2bus_data_i_D1(25),
      \s_axi_rdata_i_reg[31]\(5) => ip2bus_data_i_D1(26),
      \s_axi_rdata_i_reg[31]\(4) => ip2bus_data_i_D1(27),
      \s_axi_rdata_i_reg[31]\(3) => ip2bus_data_i_D1(28),
      \s_axi_rdata_i_reg[31]\(2) => ip2bus_data_i_D1(29),
      \s_axi_rdata_i_reg[31]\(1) => ip2bus_data_i_D1(30),
      \s_axi_rdata_i_reg[31]\(0) => ip2bus_data_i_D1(31),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid_i_reg => s_axi_rvalid,
      s_axi_wdata(0) => s_axi_wdata(31),
      \s_axi_wdata[31]\ => AXI_LITE_IPIF_I_n_63,
      s_axi_wvalid => s_axi_wvalid
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\INTR_CTRLR_GEN.INTERRUPT_CONTROL_I\: entity work.icyradio_axi_gpio_0_0_interrupt_control
     port map (
      Bus_RNW_reg => \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\,
      \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\ => \INTR_CTRLR_GEN.INTERRUPT_CONTROL_I_n_1\,
      \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0\ => AXI_LITE_IPIF_I_n_56,
      GPIO2_intr => GPIO2_intr,
      GPIO_intr => GPIO_intr,
      GPIO_xferAck_i => GPIO_xferAck_i,
      IP2INTC_Irpt_i => IP2INTC_Irpt_i,
      bus2ip_reset => bus2ip_reset,
      bus2ip_rnw => bus2ip_rnw,
      interrupt_wrce_strb => interrupt_wrce_strb,
      intr2bus_rdack0 => intr2bus_rdack0,
      ip2Bus_RdAck_intr_reg_hole => ip2Bus_RdAck_intr_reg_hole,
      ip2Bus_WrAck_intr_reg_hole => ip2Bus_WrAck_intr_reg_hole,
      ip2bus_rdack_i => ip2bus_rdack_i,
      ip2bus_wrack_i => ip2bus_wrack_i,
      \ip_irpt_enable_reg_reg[0]_0\ => \INTR_CTRLR_GEN.INTERRUPT_CONTROL_I_n_9\,
      ipif_glbl_irpt_enable_reg => ipif_glbl_irpt_enable_reg,
      ipif_glbl_irpt_enable_reg_reg_0 => AXI_LITE_IPIF_I_n_63,
      irpt_rdack => irpt_rdack,
      irpt_rdack_d1 => irpt_rdack_d1,
      irpt_wrack => irpt_wrack,
      irpt_wrack_d1 => irpt_wrack_d1,
      p_0_in0_in => p_0_in0_in,
      p_1_in => p_1_in,
      p_5_in => \I_SLAVE_ATTACHMENT/I_DECODER/p_5_in\,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(1 downto 0) => s_axi_wdata(1 downto 0)
    );
\INTR_CTRLR_GEN.ip2Bus_RdAck_intr_reg_hole_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => intr_rd_ce_or_reduce,
      Q => ip2Bus_RdAck_intr_reg_hole_d1,
      R => bus2ip_reset
    );
\INTR_CTRLR_GEN.ip2Bus_RdAck_intr_reg_hole_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2Bus_RdAck_intr_reg_hole0,
      Q => ip2Bus_RdAck_intr_reg_hole,
      R => bus2ip_reset
    );
\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => intr_wr_ce_or_reduce,
      Q => ip2Bus_WrAck_intr_reg_hole_d1,
      R => bus2ip_reset
    );
\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2Bus_WrAck_intr_reg_hole0,
      Q => ip2Bus_WrAck_intr_reg_hole,
      R => bus2ip_reset
    );
\INTR_CTRLR_GEN.ip2intc_irpt_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => IP2INTC_Irpt_i,
      Q => ip2intc_irpt,
      R => bus2ip_reset
    );
gpio_core_1: entity work.icyradio_axi_gpio_0_0_GPIO_Core
     port map (
      Bus_RNW_reg => \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\,
      \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[0]_0\ => AXI_LITE_IPIF_I_n_64,
      \Dual.gpio2_Data_Out_reg[0]_0\(0) => AXI_LITE_IPIF_I_n_19,
      \Dual.gpio2_OE_reg[0]_0\(0) => AXI_LITE_IPIF_I_n_18,
      \Dual.gpio_Data_Out_reg[0]_0\(0) => AXI_LITE_IPIF_I_n_17,
      E(0) => AXI_LITE_IPIF_I_n_16,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\ => gpio_core_1_n_132,
      GPIO2_intr => GPIO2_intr,
      GPIO_intr => GPIO_intr,
      GPIO_xferAck_i => GPIO_xferAck_i,
      Q(1) => bus2ip_addr(5),
      Q(0) => bus2ip_addr(6),
      bus2ip_cs(0) => bus2ip_cs(1),
      bus2ip_reset => bus2ip_reset,
      data0(31 downto 0) => data0(31 downto 0),
      data1(31 downto 0) => data1(31 downto 0),
      data2(31 downto 0) => data2(31 downto 0),
      data3(31 downto 0) => data3(31 downto 0),
      gpio2_io_i(31 downto 0) => gpio2_io_i(31 downto 0),
      gpio2_io_o(31 downto 0) => gpio2_io_o(31 downto 0),
      gpio2_io_t(31 downto 0) => gpio2_io_t(31 downto 0),
      gpio_io_i(31 downto 0) => gpio_io_i(31 downto 0),
      gpio_io_o(31 downto 0) => gpio_io_o(31 downto 0),
      gpio_io_t(31 downto 0) => gpio_io_t(31 downto 0),
      gpio_reg_en => gpio_reg_en,
      gpio_xferAck_Reg => gpio_xferAck_Reg,
      p_0_in3_in => p_0_in3_in,
      p_16_in => \I_SLAVE_ATTACHMENT/I_DECODER/p_16_in\,
      p_17_in => \I_SLAVE_ATTACHMENT/I_DECODER/p_17_in\,
      p_18_in => \I_SLAVE_ATTACHMENT/I_DECODER/p_18_in\,
      p_19_in => \I_SLAVE_ATTACHMENT/I_DECODER/p_19_in\,
      p_1_in2_in => p_1_in2_in,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0)
    );
\ip2bus_data_i_D1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data_i(0),
      Q => ip2bus_data_i_D1(0),
      R => bus2ip_reset
    );
\ip2bus_data_i_D1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data(10),
      Q => ip2bus_data_i_D1(10),
      R => bus2ip_reset
    );
\ip2bus_data_i_D1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data(11),
      Q => ip2bus_data_i_D1(11),
      R => bus2ip_reset
    );
\ip2bus_data_i_D1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data(12),
      Q => ip2bus_data_i_D1(12),
      R => bus2ip_reset
    );
\ip2bus_data_i_D1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data(13),
      Q => ip2bus_data_i_D1(13),
      R => bus2ip_reset
    );
\ip2bus_data_i_D1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data(14),
      Q => ip2bus_data_i_D1(14),
      R => bus2ip_reset
    );
\ip2bus_data_i_D1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data(15),
      Q => ip2bus_data_i_D1(15),
      R => bus2ip_reset
    );
\ip2bus_data_i_D1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data(16),
      Q => ip2bus_data_i_D1(16),
      R => bus2ip_reset
    );
\ip2bus_data_i_D1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data(17),
      Q => ip2bus_data_i_D1(17),
      R => bus2ip_reset
    );
\ip2bus_data_i_D1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data(18),
      Q => ip2bus_data_i_D1(18),
      R => bus2ip_reset
    );
\ip2bus_data_i_D1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data(19),
      Q => ip2bus_data_i_D1(19),
      R => bus2ip_reset
    );
\ip2bus_data_i_D1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data(1),
      Q => ip2bus_data_i_D1(1),
      R => bus2ip_reset
    );
\ip2bus_data_i_D1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data(20),
      Q => ip2bus_data_i_D1(20),
      R => bus2ip_reset
    );
\ip2bus_data_i_D1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data(21),
      Q => ip2bus_data_i_D1(21),
      R => bus2ip_reset
    );
\ip2bus_data_i_D1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data(22),
      Q => ip2bus_data_i_D1(22),
      R => bus2ip_reset
    );
\ip2bus_data_i_D1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data(23),
      Q => ip2bus_data_i_D1(23),
      R => bus2ip_reset
    );
\ip2bus_data_i_D1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data(24),
      Q => ip2bus_data_i_D1(24),
      R => bus2ip_reset
    );
\ip2bus_data_i_D1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data(25),
      Q => ip2bus_data_i_D1(25),
      R => bus2ip_reset
    );
\ip2bus_data_i_D1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data(26),
      Q => ip2bus_data_i_D1(26),
      R => bus2ip_reset
    );
\ip2bus_data_i_D1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data(27),
      Q => ip2bus_data_i_D1(27),
      R => bus2ip_reset
    );
\ip2bus_data_i_D1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data(28),
      Q => ip2bus_data_i_D1(28),
      R => bus2ip_reset
    );
\ip2bus_data_i_D1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data(29),
      Q => ip2bus_data_i_D1(29),
      R => bus2ip_reset
    );
\ip2bus_data_i_D1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data(2),
      Q => ip2bus_data_i_D1(2),
      R => bus2ip_reset
    );
\ip2bus_data_i_D1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data_i(30),
      Q => ip2bus_data_i_D1(30),
      R => bus2ip_reset
    );
\ip2bus_data_i_D1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data_i(31),
      Q => ip2bus_data_i_D1(31),
      R => bus2ip_reset
    );
\ip2bus_data_i_D1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data(3),
      Q => ip2bus_data_i_D1(3),
      R => bus2ip_reset
    );
\ip2bus_data_i_D1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data(4),
      Q => ip2bus_data_i_D1(4),
      R => bus2ip_reset
    );
\ip2bus_data_i_D1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data(5),
      Q => ip2bus_data_i_D1(5),
      R => bus2ip_reset
    );
\ip2bus_data_i_D1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data(6),
      Q => ip2bus_data_i_D1(6),
      R => bus2ip_reset
    );
\ip2bus_data_i_D1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data(7),
      Q => ip2bus_data_i_D1(7),
      R => bus2ip_reset
    );
\ip2bus_data_i_D1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data(8),
      Q => ip2bus_data_i_D1(8),
      R => bus2ip_reset
    );
\ip2bus_data_i_D1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data(9),
      Q => ip2bus_data_i_D1(9),
      R => bus2ip_reset
    );
ip2bus_rdack_i_D1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_rdack_i,
      Q => ip2bus_rdack_i_D1,
      R => bus2ip_reset
    );
ip2bus_wrack_i_D1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_wrack_i,
      Q => ip2bus_wrack_i_D1,
      R => bus2ip_reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_gpio_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    gpio_io_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio_io_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio_io_t : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio2_io_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio2_io_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio2_io_t : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of icyradio_axi_gpio_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of icyradio_axi_gpio_0_0 : entity is "icyradio_axi_gpio_0_0,axi_gpio,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of icyradio_axi_gpio_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of icyradio_axi_gpio_0_0 : entity is "axi_gpio,Vivado 2021.1";
end icyradio_axi_gpio_0_0;

architecture STRUCTURE of icyradio_axi_gpio_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_ALL_INPUTS : integer;
  attribute C_ALL_INPUTS of U0 : label is 0;
  attribute C_ALL_INPUTS_2 : integer;
  attribute C_ALL_INPUTS_2 of U0 : label is 0;
  attribute C_ALL_OUTPUTS : integer;
  attribute C_ALL_OUTPUTS of U0 : label is 0;
  attribute C_ALL_OUTPUTS_2 : integer;
  attribute C_ALL_OUTPUTS_2 of U0 : label is 0;
  attribute C_DOUT_DEFAULT : integer;
  attribute C_DOUT_DEFAULT of U0 : label is 0;
  attribute C_DOUT_DEFAULT_2 : integer;
  attribute C_DOUT_DEFAULT_2 of U0 : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "artix7";
  attribute C_GPIO2_WIDTH : integer;
  attribute C_GPIO2_WIDTH of U0 : label is 32;
  attribute C_GPIO_WIDTH : integer;
  attribute C_GPIO_WIDTH of U0 : label is 32;
  attribute C_INTERRUPT_PRESENT : integer;
  attribute C_INTERRUPT_PRESENT of U0 : label is 1;
  attribute C_IS_DUAL : integer;
  attribute C_IS_DUAL of U0 : label is 1;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of U0 : label is 9;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of U0 : label is 32;
  attribute C_TRI_DEFAULT : integer;
  attribute C_TRI_DEFAULT of U0 : label is -1;
  attribute C_TRI_DEFAULT_2 : integer;
  attribute C_TRI_DEFAULT_2 of U0 : label is -1;
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute ip_group : string;
  attribute ip_group of U0 : label is "LOGICORE";
  attribute x_interface_info : string;
  attribute x_interface_info of ip2intc_irpt : signal is "xilinx.com:signal:interrupt:1.0 IP2INTC_IRQ INTERRUPT";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of ip2intc_irpt : signal is "XIL_INTERFACENAME IP2INTC_IRQ, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute x_interface_info of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK";
  attribute x_interface_parameter of s_axi_aclk : signal is "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN icyradio_axi_pcie_0_0_axi_aclk_out, INSERT_VIP 0";
  attribute x_interface_info of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST";
  attribute x_interface_parameter of s_axi_aresetn : signal is "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute x_interface_info of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute x_interface_info of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute x_interface_info of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute x_interface_info of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute x_interface_info of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute x_interface_info of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute x_interface_info of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute x_interface_info of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute x_interface_info of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute x_interface_info of gpio2_io_i : signal is "xilinx.com:interface:gpio:1.0 GPIO2 TRI_I";
  attribute x_interface_parameter of gpio2_io_i : signal is "XIL_INTERFACENAME GPIO2, BOARD.ASSOCIATED_PARAM GPIO2_BOARD_INTERFACE";
  attribute x_interface_info of gpio2_io_o : signal is "xilinx.com:interface:gpio:1.0 GPIO2 TRI_O";
  attribute x_interface_info of gpio2_io_t : signal is "xilinx.com:interface:gpio:1.0 GPIO2 TRI_T";
  attribute x_interface_info of gpio_io_i : signal is "xilinx.com:interface:gpio:1.0 GPIO TRI_I";
  attribute x_interface_parameter of gpio_io_i : signal is "XIL_INTERFACENAME GPIO, BOARD.ASSOCIATED_PARAM GPIO_BOARD_INTERFACE";
  attribute x_interface_info of gpio_io_o : signal is "xilinx.com:interface:gpio:1.0 GPIO TRI_O";
  attribute x_interface_info of gpio_io_t : signal is "xilinx.com:interface:gpio:1.0 GPIO TRI_T";
  attribute x_interface_info of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute x_interface_info of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute x_interface_parameter of s_axi_awaddr : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 125000000, ID_WIDTH 0, ADDR_WIDTH 9, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN icyradio_axi_pcie_0_0_axi_aclk_out, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute x_interface_info of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute x_interface_info of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute x_interface_info of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute x_interface_info of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.icyradio_axi_gpio_0_0_axi_gpio
     port map (
      gpio2_io_i(31 downto 0) => gpio2_io_i(31 downto 0),
      gpio2_io_o(31 downto 0) => gpio2_io_o(31 downto 0),
      gpio2_io_t(31 downto 0) => gpio2_io_t(31 downto 0),
      gpio_io_i(31 downto 0) => gpio_io_i(31 downto 0),
      gpio_io_o(31 downto 0) => gpio_io_o(31 downto 0),
      gpio_io_t(31 downto 0) => gpio_io_t(31 downto 0),
      ip2intc_irpt => ip2intc_irpt,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(8 downto 2) => s_axi_araddr(8 downto 2),
      s_axi_araddr(1 downto 0) => B"00",
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(8 downto 2) => s_axi_awaddr(8 downto 2),
      s_axi_awaddr(1 downto 0) => B"00",
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => B"0000",
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
