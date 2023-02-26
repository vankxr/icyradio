-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Wed Jan 11 17:28:42 2023
-- Host        : xubuntu-dev running 64-bit Ubuntu 20.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/joao/icyradio/firmware/icyradio.gen/sources_1/bd/icyradio/ip/icyradio_axi_quad_spi_0_0/icyradio_axi_quad_spi_0_0_sim_netlist.vhdl
-- Design      : icyradio_axi_quad_spi_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_quad_spi_0_0_address_decoder is
  port (
    Bus_RNW_reg_reg_0 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ : out STD_LOGIC;
    ip2bus_rdack_core_reg_d20 : out STD_LOGIC;
    ip2bus_rdack_core_reg_d10 : out STD_LOGIC;
    ip2bus_wrack_core_reg0 : out STD_LOGIC;
    ip2bus_wrack_core_reg_d10 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \XIP_MODE_GEN.ip2Bus_RdAck_core_reg_d3_reg\ : out STD_LOGIC;
    \XIP_MODE_GEN.ip2bus_wrack_core_reg_reg\ : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    ip2bus_rdack_core_reg_d1 : in STD_LOGIC;
    ip2bus_wrack_core_reg_d1 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    XIPCR_0_CPHA_int : in STD_LOGIC;
    XIPCR_1_CPOL_int : in STD_LOGIC;
    ip2Bus_RdAck_core_reg_d3 : in STD_LOGIC;
    s_axi_arready : in STD_LOGIC;
    ip2bus_wrack_core_reg : in STD_LOGIC;
    s_axi_wready : in STD_LOGIC;
    s_axi_wready_0 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2\ : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    Bus_RNW_reg_reg_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_axi_quad_spi_0_0_address_decoder : entity is "address_decoder";
end icyradio_axi_quad_spi_0_0_address_decoder;

architecture STRUCTURE of icyradio_axi_quad_spi_0_0_address_decoder is
  signal Bus_RNW_reg_i_1_n_0 : STD_LOGIC;
  signal \^bus_rnw_reg_reg_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\ : STD_LOGIC;
  signal \^xip_mode_gen.ip2bus_rdack_core_reg_d3_reg\ : STD_LOGIC;
  signal \^xip_mode_gen.ip2bus_wrack_core_reg_reg\ : STD_LOGIC;
  signal \eqOp__4\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \XIP_MODE_GEN.ip2bus_data_int[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \XIP_MODE_GEN.ip2bus_data_int[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \XIP_MODE_GEN.ip2bus_data_int[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \XIP_MODE_GEN.ip2bus_data_int[4]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \XIP_MODE_GEN.ip2bus_rdack_core_reg_d1_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \XIP_MODE_GEN.ip2bus_rdack_core_reg_d2_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \XIP_MODE_GEN.ip2bus_wrack_core_reg_d1_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \XIP_MODE_GEN.ip2bus_wrack_core_reg_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of s_axi_arready_INST_0 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of s_axi_wready_INST_0 : label is "soft_lutpair3";
begin
  Bus_RNW_reg_reg_0 <= \^bus_rnw_reg_reg_0\;
  \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ <= \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\;
  \XIP_MODE_GEN.ip2Bus_RdAck_core_reg_d3_reg\ <= \^xip_mode_gen.ip2bus_rdack_core_reg_d3_reg\;
  \XIP_MODE_GEN.ip2bus_wrack_core_reg_reg\ <= \^xip_mode_gen.ip2bus_wrack_core_reg_reg\;
Bus_RNW_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Bus_RNW_reg_reg_1,
      I1 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1\,
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
\GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002E00"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1\,
      I2 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2\,
      I3 => s_axi_aresetn,
      I4 => \^xip_mode_gen.ip2bus_rdack_core_reg_d3_reg\,
      I5 => \^xip_mode_gen.ip2bus_wrack_core_reg_reg\,
      O => \GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1_n_0\,
      Q => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      R => '0'
    );
\GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000E200"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I1 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1\,
      I2 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2\,
      I3 => s_axi_aresetn,
      I4 => \^xip_mode_gen.ip2bus_rdack_core_reg_d3_reg\,
      I5 => \^xip_mode_gen.ip2bus_wrack_core_reg_reg\,
      O => \GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1_n_0\,
      Q => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      R => '0'
    );
\XIP_MODE_GEN.ip2bus_data_int[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8008800"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      I1 => XIPCR_0_CPHA_int,
      I2 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => Q(0),
      O => D(0)
    );
\XIP_MODE_GEN.ip2bus_data_int[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8008800"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      I1 => XIPCR_1_CPOL_int,
      I2 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => Q(1),
      O => D(1)
    );
\XIP_MODE_GEN.ip2bus_data_int[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Q(2),
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      O => D(2)
    );
\XIP_MODE_GEN.ip2bus_data_int[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Q(3),
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      O => D(3)
    );
\XIP_MODE_GEN.ip2bus_rdack_core_reg_d1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      O => ip2bus_rdack_core_reg_d10
    );
\XIP_MODE_GEN.ip2bus_rdack_core_reg_d2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00C8"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      I3 => ip2bus_rdack_core_reg_d1,
      O => ip2bus_rdack_core_reg_d20
    );
\XIP_MODE_GEN.ip2bus_wrack_core_reg_d1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"32"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      O => ip2bus_wrack_core_reg_d10
    );
\XIP_MODE_GEN.ip2bus_wrack_core_reg_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0032"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      I3 => ip2bus_wrack_core_reg_d1,
      O => ip2bus_wrack_core_reg0
    );
s_axi_arready_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => ip2Bus_RdAck_core_reg_d3,
      I1 => s_axi_arready,
      I2 => \eqOp__4\,
      O => \^xip_mode_gen.ip2bus_rdack_core_reg_d3_reg\
    );
s_axi_wready_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => ip2bus_wrack_core_reg,
      I1 => s_axi_wready,
      I2 => \eqOp__4\,
      O => \^xip_mode_gen.ip2bus_wrack_core_reg_reg\
    );
s_axi_wready_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => s_axi_wready_0(5),
      I1 => s_axi_wready_0(1),
      I2 => s_axi_wready_0(3),
      I3 => s_axi_wready_0(0),
      I4 => s_axi_wready_0(2),
      I5 => s_axi_wready_0(4),
      O => \eqOp__4\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_quad_spi_0_0_cdc_sync is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    prmry_in : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_axi_quad_spi_0_0_cdc_sync : entity is "cdc_sync";
end icyradio_axi_quad_spi_0_0_cdc_sync;

architecture STRUCTURE of icyradio_axi_quad_spi_0_0_cdc_sync is
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
begin
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => prmry_in,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => D(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_quad_spi_0_0_cdc_sync_0 is
  port (
    scndry_out : out STD_LOGIC;
    prmry_in : in STD_LOGIC;
    ext_spi_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_axi_quad_spi_0_0_cdc_sync_0 : entity is "cdc_sync";
end icyradio_axi_quad_spi_0_0_cdc_sync_0;

architecture STRUCTURE of icyradio_axi_quad_spi_0_0_cdc_sync_0 is
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
begin
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => prmry_in,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => scndry_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_quad_spi_0_0_qspi_address_decoder is
  port (
    SS_frm_axi : out STD_LOGIC;
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\ : in STD_LOGIC;
    s_axi4_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_axi_quad_spi_0_0_qspi_address_decoder : entity is "qspi_address_decoder";
end icyradio_axi_quad_spi_0_0_qspi_address_decoder;

architecture STRUCTURE of icyradio_axi_quad_spi_0_0_qspi_address_decoder is
begin
\MEM_DECODE_GEN[0].cs_out_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\,
      Q => SS_frm_axi,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_quad_spi_0_0_qspi_startup_block is
  port (
    cfgclk : out STD_LOGIC;
    cfgmclk : out STD_LOGIC;
    eos : out STD_LOGIC;
    preq : out STD_LOGIC;
    clk : in STD_LOGIC;
    gsr : in STD_LOGIC;
    gts : in STD_LOGIC;
    keyclearb : in STD_LOGIC;
    SCK_O_int : in STD_LOGIC;
    usrcclkts : in STD_LOGIC;
    usrdoneo : in STD_LOGIC;
    usrdonets : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_axi_quad_spi_0_0_qspi_startup_block : entity is "qspi_startup_block";
end icyradio_axi_quad_spi_0_0_qspi_startup_block;

architecture STRUCTURE of icyradio_axi_quad_spi_0_0_qspi_startup_block is
  attribute box_type : string;
  attribute box_type of \STARTUP_SHARE_7SERIES_GEN.STARTUP2_7SERIES_inst\ : label is "PRIMITIVE";
begin
\STARTUP_SHARE_7SERIES_GEN.STARTUP2_7SERIES_inst\: unisim.vcomponents.STARTUPE2
    generic map(
      PROG_USR => "FALSE",
      SIM_CCLK_FREQ => 0.000000
    )
        port map (
      CFGCLK => cfgclk,
      CFGMCLK => cfgmclk,
      CLK => clk,
      EOS => eos,
      GSR => gsr,
      GTS => gts,
      KEYCLEARB => keyclearb,
      PACK => '0',
      PREQ => preq,
      USRCCLKO => SCK_O_int,
      USRCCLKTS => usrcclkts,
      USRDONEO => usrdoneo,
      USRDONETS => usrdonets
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_quad_spi_0_0_reset_sync_module is
  port (
    Rst_to_spi : out STD_LOGIC;
    Soft_Reset_frm_axi : in STD_LOGIC;
    ext_spi_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_axi_quad_spi_0_0_reset_sync_module : entity is "reset_sync_module";
end icyradio_axi_quad_spi_0_0_reset_sync_module;

architecture STRUCTURE of icyradio_axi_quad_spi_0_0_reset_sync_module is
  signal Soft_Reset_frm_axi_d1 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of RESET_SYNC_AX2S_1 : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of RESET_SYNC_AX2S_1 : label is "FDR";
  attribute box_type : string;
  attribute box_type of RESET_SYNC_AX2S_1 : label is "PRIMITIVE";
  attribute ASYNC_REG of RESET_SYNC_AX2S_2 : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of RESET_SYNC_AX2S_2 : label is "FDR";
  attribute box_type of RESET_SYNC_AX2S_2 : label is "PRIMITIVE";
begin
RESET_SYNC_AX2S_1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => Soft_Reset_frm_axi,
      Q => Soft_Reset_frm_axi_d1,
      R => '0'
    );
RESET_SYNC_AX2S_2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => Soft_Reset_frm_axi_d1,
      Q => Rst_to_spi,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_quad_spi_0_0_xip_cntrl_reg is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    XIPCR_0_CPHA_int : out STD_LOGIC;
    XIPCR_1_CPOL_int : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ip2bus_wrack_core_reg : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ : in STD_LOGIC;
    bus2ip_reset_ipif_inverted : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_axi_quad_spi_0_0_xip_cntrl_reg : entity is "xip_cntrl_reg";
end icyradio_axi_quad_spi_0_0_xip_cntrl_reg;

architecture STRUCTURE of icyradio_axi_quad_spi_0_0_xip_cntrl_reg is
  signal \^xipcr_0_cpha_int\ : STD_LOGIC;
  signal \^xipcr_1_cpol_int\ : STD_LOGIC;
  signal \XIPCR_data_int[0]_i_1_n_0\ : STD_LOGIC;
  signal \XIPCR_data_int[1]_i_1_n_0\ : STD_LOGIC;
begin
  XIPCR_0_CPHA_int <= \^xipcr_0_cpha_int\;
  XIPCR_1_CPOL_int <= \^xipcr_1_cpol_int\;
\LOGIC_GENERATION_FDR.CPHA_CPOL_ERR_AXI2AXI4_CDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^xipcr_0_cpha_int\,
      I1 => \^xipcr_1_cpol_int\,
      O => D(0)
    );
\XIPCR_data_int[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFF0800"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => ip2bus_wrack_core_reg,
      I2 => Bus_RNW_reg,
      I3 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I4 => \^xipcr_0_cpha_int\,
      O => \XIPCR_data_int[0]_i_1_n_0\
    );
\XIPCR_data_int[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFF0800"
    )
        port map (
      I0 => s_axi_wdata(1),
      I1 => ip2bus_wrack_core_reg,
      I2 => Bus_RNW_reg,
      I3 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I4 => \^xipcr_1_cpol_int\,
      O => \XIPCR_data_int[1]_i_1_n_0\
    );
\XIPCR_data_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \XIPCR_data_int[0]_i_1_n_0\,
      Q => \^xipcr_0_cpha_int\,
      R => bus2ip_reset_ipif_inverted
    );
\XIPCR_data_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \XIPCR_data_int[1]_i_1_n_0\,
      Q => \^xipcr_1_cpol_int\,
      R => bus2ip_reset_ipif_inverted
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_quad_spi_0_0_xip_cross_clk_sync is
  port (
    \LOGIC_GENERATION_FDR.LD_CMD_SYNC_AXI2SPI_1_0\ : out STD_LOGIC;
    \LOGIC_GENERATION_FDR.LD_CMD_SYNC_AXI2SPI_2_0\ : out STD_LOGIC;
    \LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_1_0\ : out STD_LOGIC;
    \LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_2_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    RESET_SYNC_AX2S_2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[18]\ : out STD_LOGIC;
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[19]\ : out STD_LOGIC;
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[20]\ : out STD_LOGIC;
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[22]\ : out STD_LOGIC;
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8]\ : out STD_LOGIC;
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9]\ : out STD_LOGIC;
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[10]\ : out STD_LOGIC;
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[11]\ : out STD_LOGIC;
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[12]\ : out STD_LOGIC;
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[13]\ : out STD_LOGIC;
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[14]\ : out STD_LOGIC;
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[15]\ : out STD_LOGIC;
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[16]\ : out STD_LOGIC;
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[17]\ : out STD_LOGIC;
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[18]\ : out STD_LOGIC;
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[19]\ : out STD_LOGIC;
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20]\ : out STD_LOGIC;
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[21]\ : out STD_LOGIC;
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[22]\ : out STD_LOGIC;
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]\ : out STD_LOGIC;
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[16]\ : out STD_LOGIC;
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[17]\ : out STD_LOGIC;
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[21]\ : out STD_LOGIC;
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[23]\ : out STD_LOGIC;
    wrap_around_reg : out STD_LOGIC;
    wrap_around_reg_0 : out STD_LOGIC;
    wrap_around_reg_1 : out STD_LOGIC;
    wrap_around_reg_2 : out STD_LOGIC;
    wrap_around_reg_3 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \LOGIC_GENERATION_FDR.WORD_XFER_SYNC_AXI2SPI_1_0\ : out STD_LOGIC;
    \size_length_cntr_reg[1]\ : out STD_LOGIC;
    \size_length_cntr_fixed_reg[1]\ : out STD_LOGIC;
    \LOGIC_GENERATION_FDR.HW_XFER_SYNC_AXI2SPI_1_0\ : out STD_LOGIC;
    \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[5].TRANS_ADDR_SYNC_AXI2SPI_CDC_0\ : out STD_LOGIC;
    \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[4].TRANS_ADDR_SYNC_AXI2SPI_CDC_0\ : out STD_LOGIC;
    \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[3].TRANS_ADDR_SYNC_AXI2SPI_CDC_0\ : out STD_LOGIC;
    \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[2].TRANS_ADDR_SYNC_AXI2SPI_CDC_0\ : out STD_LOGIC;
    \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[1].TRANS_ADDR_SYNC_AXI2SPI_CDC_0\ : out STD_LOGIC;
    \LOGIC_GENERATION_FDR.TYP_OF_XFER_SYNC_AXI2SPI_1_0\ : out STD_LOGIC;
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[2]\ : out STD_LOGIC;
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[0]\ : out STD_LOGIC;
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[1]\ : out STD_LOGIC;
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.hw_wd_cntr_reg[1]\ : out STD_LOGIC;
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.hw_wd_cntr_reg[0]\ : out STD_LOGIC;
    load_axi_data_to_spi_clk : out STD_LOGIC;
    \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[1].TRANS_ADDR_SYNC_AXI2SPI_CDC_1\ : out STD_LOGIC;
    \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[0].TRANS_ADDR_SYNC_AXI2SPI_CDC_0\ : out STD_LOGIC;
    load_axi_data_frm_axi_clk : out STD_LOGIC;
    \gen_fwft.empty_fwft_i_reg\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    xip_sm_ns : out STD_LOGIC;
    \dtr_length_reg[5]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi4_rready_0 : out STD_LOGIC;
    \LOGIC_GENERATION_FDR.CPOL_SYNC_AXI2SPI_1_0\ : out STD_LOGIC;
    wrap_around_reg_4 : out STD_LOGIC;
    RESET_SYNC_AX2S_2_0 : out STD_LOGIC;
    cmd_addr_cntr1 : out STD_LOGIC;
    Tx_Data_d1 : out STD_LOGIC;
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5]\ : out STD_LOGIC;
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[4]\ : out STD_LOGIC;
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3]\ : out STD_LOGIC;
    \size_length_cntr_fixed_reg[1]_0\ : out STD_LOGIC;
    \LOGIC_GENERATION_FDR.CPOL_SYNC_AXI2SPI_1_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_reg\ : out STD_LOGIC;
    \LOGIC_GENERATION_FDR.CPOL_SYNC_AXI2SPI_1_2\ : out STD_LOGIC;
    wrap_around_d2_reg : out STD_LOGIC;
    wrap_around_d2_reg_0 : out STD_LOGIC;
    wrap_around_d2_reg_1 : out STD_LOGIC;
    wrap_around_d2_reg_2 : out STD_LOGIC;
    wrap_around_d2_reg_3 : out STD_LOGIC;
    wrap_around_d2_reg_4 : out STD_LOGIC;
    wrap_around_d2_reg_5 : out STD_LOGIC;
    \spi_addr_wrap_1_reg[13]\ : out STD_LOGIC;
    \spi_addr_wrap_1_reg[14]\ : out STD_LOGIC;
    \spi_addr_wrap_1_reg[15]\ : out STD_LOGIC;
    \spi_addr_wrap_1_reg[16]\ : out STD_LOGIC;
    \spi_addr_wrap_1_reg[17]\ : out STD_LOGIC;
    \spi_addr_wrap_1_reg[18]\ : out STD_LOGIC;
    \spi_addr_wrap_1_reg[19]\ : out STD_LOGIC;
    \spi_addr_wrap_1_reg[20]\ : out STD_LOGIC;
    \spi_addr_wrap_1_reg[21]\ : out STD_LOGIC;
    \spi_addr_wrap_1_reg[22]\ : out STD_LOGIC;
    \spi_addr_wrap_1_reg[23]\ : out STD_LOGIC;
    SPIXfer_done_int_pulse_d2_reg : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_reg_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Rst_to_spi : in STD_LOGIC;
    one_byte_xfer : in STD_LOGIC;
    ext_spi_clk : in STD_LOGIC;
    two_byte_xfer : in STD_LOGIC;
    four_byte_xfer : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 23 downto 0 );
    XIPCR_1_CPOL_int : in STD_LOGIC;
    XIPCR_0_CPHA_int : in STD_LOGIC;
    SS_frm_axi : in STD_LOGIC;
    type_of_burst : in STD_LOGIC;
    \LOGIC_GENERATION_FDR.AXI_LEN_SYNC_AXI_SPI_GEN[3].AXI_LEN_SYNC_AXI2SPI_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[7].DTR_LEN_SYNC_AXI2SPI_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    bus2ip_reset_ipif_inverted : in STD_LOGIC;
    Rx_FIFO_Full : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    bus2ip_reset_ipif4_inverted : in STD_LOGIC;
    s_axi4_aclk : in STD_LOGIC;
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[26]\ : in STD_LOGIC;
    wrap_around_reg_5 : in STD_LOGIC;
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[27]\ : in STD_LOGIC;
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[28]\ : in STD_LOGIC;
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[30]\ : in STD_LOGIC;
    data2 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[8]\ : in STD_LOGIC;
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[9]\ : in STD_LOGIC;
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[10]\ : in STD_LOGIC;
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[11]\ : in STD_LOGIC;
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[12]\ : in STD_LOGIC;
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[13]\ : in STD_LOGIC;
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[14]\ : in STD_LOGIC;
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[15]\ : in STD_LOGIC;
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[16]_0\ : in STD_LOGIC;
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[17]_0\ : in STD_LOGIC;
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[18]_0\ : in STD_LOGIC;
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[19]_0\ : in STD_LOGIC;
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[20]_0\ : in STD_LOGIC;
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[21]_0\ : in STD_LOGIC;
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[22]_0\ : in STD_LOGIC;
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[23]_0\ : in STD_LOGIC;
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[24]\ : in STD_LOGIC;
    \LEN_CNTR_24_BIT_GEN.length_cntr_reg[0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[25]\ : in STD_LOGIC;
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[29]\ : in STD_LOGIC;
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[31]\ : in STD_LOGIC;
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2]\ : in STD_LOGIC;
    p_8_in : in STD_LOGIC;
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0]\ : in STD_LOGIC;
    \size_length_cntr_fixed_reg[1]_1\ : in STD_LOGIC;
    \size_length_cntr_fixed_reg[0]\ : in STD_LOGIC;
    SPIXfer_done_int : in STD_LOGIC;
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]\ : in STD_LOGIC;
    size_length_cntr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    hpm_under_process_d1 : in STD_LOGIC;
    \RATIO_OF_2_GENERATE.sck_o_int_reg\ : in STD_LOGIC;
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0]_0\ : in STD_LOGIC;
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[4]_0\ : in STD_LOGIC;
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0]_1\ : in STD_LOGIC;
    \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[1]_0\ : in STD_LOGIC;
    O : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_3_0\ : in STD_LOGIC;
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \size_length_cntr_reg[0]\ : in STD_LOGIC;
    \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3]_0\ : in STD_LOGIC;
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[2]_0\ : in STD_LOGIC;
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[2]_1\ : in STD_LOGIC;
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[2]_2\ : in STD_LOGIC;
    hw_wd_cntr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    hw_wd_cntr0 : in STD_LOGIC;
    \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_0\ : in STD_LOGIC;
    \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1\ : in STD_LOGIC;
    wrap_around_d1 : in STD_LOGIC;
    p_3_in1_in : in STD_LOGIC;
    \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[0]\ : in STD_LOGIC;
    \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[0]_0\ : in STD_LOGIC;
    empty : in STD_LOGIC;
    s_axi4_rready : in STD_LOGIC;
    last_data_acked : in STD_LOGIC;
    xip_sm_ps : in STD_LOGIC;
    \dtr_length_reg[7]\ : in STD_LOGIC;
    s_axi4_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \dtr_length_reg[5]_0\ : in STD_LOGIC;
    \dtr_length_reg[3]\ : in STD_LOGIC;
    s_axi4_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi4_arvalid : in STD_LOGIC;
    XIPSR_CPHA_CPOL_ERR_d2 : in STD_LOGIC;
    \RATIO_OF_2_GENERATE.sck_o_int_reg_0\ : in STD_LOGIC;
    \RATIO_OF_2_GENERATE.SCK_O_NQ_4_STARTUP_USED.SCK_O_reg_reg\ : in STD_LOGIC;
    sck_o_int : in STD_LOGIC;
    wrap_around_reg_6 : in STD_LOGIC;
    \TRANSFER_START_24_BIT_ADDR_GEN.transfer_start_reg\ : in STD_LOGIC;
    start_after_wrap_d1 : in STD_LOGIC;
    wrap_around_reg_7 : in STD_LOGIC;
    wrap_around_reg_8 : in STD_LOGIC;
    wrap_around_reg_9 : in STD_LOGIC;
    wrap_around_reg_10 : in STD_LOGIC;
    \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_1\ : in STD_LOGIC;
    \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_2\ : in STD_LOGIC;
    \LEN_CNTR_24_BIT_GEN.length_cntr_reg[5]\ : in STD_LOGIC;
    \LEN_CNTR_24_BIT_GEN.length_cntr_reg[4]\ : in STD_LOGIC;
    \LEN_CNTR_24_BIT_GEN.length_cntr_reg[3]\ : in STD_LOGIC;
    transfer_start_d2 : in STD_LOGIC;
    \RATIO_OF_2_GENERATE.Count_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2\ : in STD_LOGIC;
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0\ : in STD_LOGIC_VECTOR ( 23 downto 0 );
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_1\ : in STD_LOGIC;
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[22]_0\ : in STD_LOGIC;
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[12]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[12]_1\ : in STD_LOGIC;
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[11]_0\ : in STD_LOGIC;
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[10]_0\ : in STD_LOGIC;
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9]_0\ : in STD_LOGIC;
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8]_1\ : in STD_LOGIC;
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[7]\ : in STD_LOGIC;
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[6]\ : in STD_LOGIC;
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[7]\ : in STD_LOGIC;
    \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[0]\ : in STD_LOGIC;
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5]_0\ : in STD_LOGIC;
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[13]_0\ : in STD_LOGIC;
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[14]_0\ : in STD_LOGIC;
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[15]_0\ : in STD_LOGIC;
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[16]_0\ : in STD_LOGIC;
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[17]_0\ : in STD_LOGIC;
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[18]_0\ : in STD_LOGIC;
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[19]_0\ : in STD_LOGIC;
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20]_0\ : in STD_LOGIC;
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[21]_0\ : in STD_LOGIC;
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_2_0\ : in STD_LOGIC;
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_3\ : in STD_LOGIC;
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_2_1\ : in STD_LOGIC;
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_3_0\ : in STD_LOGIC;
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_axi_quad_spi_0_0_xip_cross_clk_sync : entity is "xip_cross_clk_sync";
end icyradio_axi_quad_spi_0_0_xip_cross_clk_sync;

architecture STRUCTURE of icyradio_axi_quad_spi_0_0_xip_cross_clk_sync is
  signal CPHA_cdc_to_spi_d1 : STD_LOGIC;
  signal CPHA_to_spi_clk : STD_LOGIC;
  signal CPOL_cdc_to_spi_d1 : STD_LOGIC;
  signal CPOL_to_spi_clk : STD_LOGIC;
  signal D0 : STD_LOGIC;
  signal D01_out : STD_LOGIC;
  signal \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[0]_i_2_n_0\ : STD_LOGIC;
  signal \^logic_generation_fdr.ld_axi_data_sync_axi2spi_1_0\ : STD_LOGIC;
  signal \^logic_generation_fdr.ld_axi_data_sync_axi2spi_2_0\ : STD_LOGIC;
  signal \^logic_generation_fdr.ld_cmd_sync_axi2spi_1_0\ : STD_LOGIC;
  signal \^logic_generation_fdr.ld_cmd_sync_axi2spi_2_0\ : STD_LOGIC;
  signal \LOGIC_GENERATION_FDR.ld_axi_data_cdc_from_axi_int_2_reg_n_0\ : STD_LOGIC;
  signal \LOGIC_GENERATION_FDR.load_cmd_cdc_from_axi_int_2_reg_n_0\ : STD_LOGIC;
  signal \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[10]_i_2_n_0\ : STD_LOGIC;
  signal \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[11]_i_2_n_0\ : STD_LOGIC;
  signal \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[12]_i_2_n_0\ : STD_LOGIC;
  signal \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[13]_i_2_n_0\ : STD_LOGIC;
  signal \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[14]_i_2_n_0\ : STD_LOGIC;
  signal \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[14]_i_3_n_0\ : STD_LOGIC;
  signal \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[15]_i_3_n_0\ : STD_LOGIC;
  signal \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[15]_i_4_n_0\ : STD_LOGIC;
  signal \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[15]_i_5_n_0\ : STD_LOGIC;
  signal \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[15]_i_6_n_0\ : STD_LOGIC;
  signal \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[23]_i_3_n_0\ : STD_LOGIC;
  signal \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_3_n_0\ : STD_LOGIC;
  signal \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_4_n_0\ : STD_LOGIC;
  signal \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[7]_i_4_n_0\ : STD_LOGIC;
  signal \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[8]_i_2_n_0\ : STD_LOGIC;
  signal \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[9]_i_2_n_0\ : STD_LOGIC;
  signal \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr[2]_i_2_n_0\ : STD_LOGIC;
  signal \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.hw_wd_cntr[1]_i_2_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.sck_o_int_i_2_n_0\ : STD_LOGIC;
  signal \^reset_sync_ax2s_2\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Rx_FIFO_Full_to_axi4_clk : STD_LOGIC;
  signal \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[0]_i_2_n_0\ : STD_LOGIC;
  signal \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[0]_i_4_n_0\ : STD_LOGIC;
  signal \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[1]_i_2_n_0\ : STD_LOGIC;
  signal \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[1]_i_3_n_0\ : STD_LOGIC;
  signal \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[1]_i_4_n_0\ : STD_LOGIC;
  signal \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[1]_i_5_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[0]_i_2_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[0]_i_4_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[10]_i_2_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[11]_i_2_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[12]_i_2_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[13]_i_2_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[14]_i_2_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[15]_i_2_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[16]_i_2_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[17]_i_2_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[18]_i_2_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[19]_i_2_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_2_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_3_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_4_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_5_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_6_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_8_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[20]_i_2_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[21]_i_2_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[22]_i_2_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_4_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_5_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_6_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_9_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_2_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_3_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_4_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_5_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_6_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_7_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_10_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_3_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_4_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_5_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_6_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_7_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_8_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_10_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_11_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_12_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_3_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_4_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_5_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_6_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_7_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_8_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_10_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_11_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_2_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_3_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_4_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_5_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_7_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_8_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_9_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[6]_i_2_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[7]_i_2_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[8]_i_2_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[9]_i_2_n_0\ : STD_LOGIC;
  signal SS_cdc_from_spi_d1 : STD_LOGIC;
  signal SS_to_spi_clk : STD_LOGIC;
  signal S_AXI4_ARREADY_i_i_2_n_0 : STD_LOGIC;
  signal Sync_Set : STD_LOGIC;
  signal \TRANSFER_START_24_BIT_ADDR_GEN.transfer_start_i_2_n_0\ : STD_LOGIC;
  signal Transmit_Addr_to_spi_clk : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal axi_length_cdc_to_spi_d1_0 : STD_LOGIC;
  signal axi_length_cdc_to_spi_d1_1 : STD_LOGIC;
  signal axi_length_cdc_to_spi_d1_2 : STD_LOGIC;
  signal axi_length_cdc_to_spi_d1_3 : STD_LOGIC;
  signal axi_length_to_spi_clk : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal byte_xfer_cdc_from_axi_d1 : STD_LOGIC;
  signal dtr_length_cdc_from_axi_d1_0 : STD_LOGIC;
  signal dtr_length_cdc_from_axi_d1_1 : STD_LOGIC;
  signal dtr_length_cdc_from_axi_d1_2 : STD_LOGIC;
  signal dtr_length_cdc_from_axi_d1_3 : STD_LOGIC;
  signal dtr_length_cdc_from_axi_d1_4 : STD_LOGIC;
  signal dtr_length_cdc_from_axi_d1_5 : STD_LOGIC;
  signal dtr_length_cdc_from_axi_d1_6 : STD_LOGIC;
  signal dtr_length_cdc_from_axi_d1_7 : STD_LOGIC;
  signal dtr_length_to_spi_clk : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal four_byte_xfer_to_spi_clk : STD_LOGIC;
  signal hw_xfer_cdc_from_axi_d1 : STD_LOGIC;
  signal load_axi_data_cdc_to_spi_d1 : STD_LOGIC;
  signal \^load_axi_data_frm_axi_clk\ : STD_LOGIC;
  signal \^load_axi_data_to_spi_clk\ : STD_LOGIC;
  signal load_cmd_cdc_from_axi_d1 : STD_LOGIC;
  signal new_tr0 : STD_LOGIC;
  signal one_byte_xfer_to_spi_clk : STD_LOGIC;
  signal rx_fifo_full_d1 : STD_LOGIC;
  signal rx_fifo_full_d3 : STD_LOGIC;
  signal \size_length_cntr[1]_i_2_n_0\ : STD_LOGIC;
  signal \size_length_cntr[1]_i_4_n_0\ : STD_LOGIC;
  signal two_byte_xfer_to_spi_clk : STD_LOGIC;
  signal type_of_burst_cdc_to_spi_d1 : STD_LOGIC;
  signal type_of_burst_to_spi_clk : STD_LOGIC;
  signal wb_hpm_done_cdc_from_spi_d1 : STD_LOGIC;
  signal wb_hpm_done_to_axi : STD_LOGIC;
  signal word_xfer_cdc_from_axi_d1 : STD_LOGIC;
  signal wrap_around25_out : STD_LOGIC;
  signal wrap_around_i_10_n_0 : STD_LOGIC;
  signal wrap_around_i_12_n_0 : STD_LOGIC;
  signal wrap_around_i_13_n_0 : STD_LOGIC;
  signal wrap_around_i_14_n_0 : STD_LOGIC;
  signal wrap_around_i_3_n_0 : STD_LOGIC;
  signal wrap_around_i_4_n_0 : STD_LOGIC;
  signal wrap_around_i_6_n_0 : STD_LOGIC;
  signal wrap_around_i_8_n_0 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \LOGIC_GENERATION_FDR.AXI_LEN_SYNC_AXI_SPI_GEN[0].AXI_LEN_SYNC_AXI2SPI\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.AXI_LEN_SYNC_AXI_SPI_GEN[0].AXI_LEN_SYNC_AXI2SPI\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \LOGIC_GENERATION_FDR.AXI_LEN_SYNC_AXI_SPI_GEN[0].AXI_LEN_SYNC_AXI2SPI\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.AXI_LEN_SYNC_AXI_SPI_GEN[0].AXI_LEN_SYNC_AXI2SPI_1\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.AXI_LEN_SYNC_AXI_SPI_GEN[0].AXI_LEN_SYNC_AXI2SPI_1\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \LOGIC_GENERATION_FDR.AXI_LEN_SYNC_AXI_SPI_GEN[1].AXI_LEN_SYNC_AXI2SPI\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.AXI_LEN_SYNC_AXI_SPI_GEN[1].AXI_LEN_SYNC_AXI2SPI\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.AXI_LEN_SYNC_AXI_SPI_GEN[1].AXI_LEN_SYNC_AXI2SPI\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.AXI_LEN_SYNC_AXI_SPI_GEN[1].AXI_LEN_SYNC_AXI2SPI_1\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.AXI_LEN_SYNC_AXI_SPI_GEN[1].AXI_LEN_SYNC_AXI2SPI_1\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \LOGIC_GENERATION_FDR.AXI_LEN_SYNC_AXI_SPI_GEN[2].AXI_LEN_SYNC_AXI2SPI\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.AXI_LEN_SYNC_AXI_SPI_GEN[2].AXI_LEN_SYNC_AXI2SPI\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.AXI_LEN_SYNC_AXI_SPI_GEN[2].AXI_LEN_SYNC_AXI2SPI\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.AXI_LEN_SYNC_AXI_SPI_GEN[2].AXI_LEN_SYNC_AXI2SPI_1\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.AXI_LEN_SYNC_AXI_SPI_GEN[2].AXI_LEN_SYNC_AXI2SPI_1\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \LOGIC_GENERATION_FDR.AXI_LEN_SYNC_AXI_SPI_GEN[3].AXI_LEN_SYNC_AXI2SPI\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.AXI_LEN_SYNC_AXI_SPI_GEN[3].AXI_LEN_SYNC_AXI2SPI\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.AXI_LEN_SYNC_AXI_SPI_GEN[3].AXI_LEN_SYNC_AXI2SPI\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.AXI_LEN_SYNC_AXI_SPI_GEN[3].AXI_LEN_SYNC_AXI2SPI_1\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.AXI_LEN_SYNC_AXI_SPI_GEN[3].AXI_LEN_SYNC_AXI2SPI_1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.BYTE_XFER_SYNC_AXI2SPI\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.BYTE_XFER_SYNC_AXI2SPI\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.BYTE_XFER_SYNC_AXI2SPI_1\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.BYTE_XFER_SYNC_AXI2SPI_1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.CPHA_SYNC_AXI2SPI\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.CPHA_SYNC_AXI2SPI\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.CPHA_SYNC_AXI2SPI_1\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.CPHA_SYNC_AXI2SPI_1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.CPOL_SYNC_AXI2SPI\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.CPOL_SYNC_AXI2SPI\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.CPOL_SYNC_AXI2SPI_1\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.CPOL_SYNC_AXI2SPI_1\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[0].DTR_LEN_SYNC_AXI2SPI\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[0].DTR_LEN_SYNC_AXI2SPI\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[0].DTR_LEN_SYNC_AXI2SPI\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[0].DTR_LEN_SYNC_AXI2SPI_1\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[0].DTR_LEN_SYNC_AXI2SPI_1\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[1].DTR_LEN_SYNC_AXI2SPI\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[1].DTR_LEN_SYNC_AXI2SPI\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[1].DTR_LEN_SYNC_AXI2SPI\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[1].DTR_LEN_SYNC_AXI2SPI_1\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[1].DTR_LEN_SYNC_AXI2SPI_1\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[2].DTR_LEN_SYNC_AXI2SPI\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[2].DTR_LEN_SYNC_AXI2SPI\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[2].DTR_LEN_SYNC_AXI2SPI\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[2].DTR_LEN_SYNC_AXI2SPI_1\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[2].DTR_LEN_SYNC_AXI2SPI_1\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[3].DTR_LEN_SYNC_AXI2SPI\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[3].DTR_LEN_SYNC_AXI2SPI\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[3].DTR_LEN_SYNC_AXI2SPI\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[3].DTR_LEN_SYNC_AXI2SPI_1\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[3].DTR_LEN_SYNC_AXI2SPI_1\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[4].DTR_LEN_SYNC_AXI2SPI\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[4].DTR_LEN_SYNC_AXI2SPI\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[4].DTR_LEN_SYNC_AXI2SPI\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[4].DTR_LEN_SYNC_AXI2SPI_1\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[4].DTR_LEN_SYNC_AXI2SPI_1\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[5].DTR_LEN_SYNC_AXI2SPI\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[5].DTR_LEN_SYNC_AXI2SPI\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[5].DTR_LEN_SYNC_AXI2SPI\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[5].DTR_LEN_SYNC_AXI2SPI_1\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[5].DTR_LEN_SYNC_AXI2SPI_1\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[6].DTR_LEN_SYNC_AXI2SPI\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[6].DTR_LEN_SYNC_AXI2SPI\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[6].DTR_LEN_SYNC_AXI2SPI\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[6].DTR_LEN_SYNC_AXI2SPI_1\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[6].DTR_LEN_SYNC_AXI2SPI_1\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[7].DTR_LEN_SYNC_AXI2SPI\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[7].DTR_LEN_SYNC_AXI2SPI\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[7].DTR_LEN_SYNC_AXI2SPI\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[7].DTR_LEN_SYNC_AXI2SPI_1\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[7].DTR_LEN_SYNC_AXI2SPI_1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.HW_XFER_SYNC_AXI2SPI\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.HW_XFER_SYNC_AXI2SPI\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.HW_XFER_SYNC_AXI2SPI_1\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.HW_XFER_SYNC_AXI2SPI_1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_1\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_2\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.LD_CMD_SYNC_AXI2SPI\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.LD_CMD_SYNC_AXI2SPI\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.LD_CMD_SYNC_AXI2SPI_1\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.LD_CMD_SYNC_AXI2SPI_1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.LD_CMD_SYNC_AXI2SPI_2\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.LD_CMD_SYNC_AXI2SPI_2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.Rx_FIFO_Full_SYNC_SPI2AXI\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.Rx_FIFO_Full_SYNC_SPI2AXI\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.Rx_FIFO_Full_SYNC_SPI2AXI4\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.Rx_FIFO_Full_SYNC_SPI2AXI4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.Rx_FIFO_Full_SYNC_SPI2AXI4_1\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.Rx_FIFO_Full_SYNC_SPI2AXI4_1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.Rx_FIFO_Full_SYNC_SPI2AXI_1\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.Rx_FIFO_Full_SYNC_SPI2AXI_1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SS_SYNC_AXI_SPI_GEN[0].SS_SYNC_AXI2SPI_1\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.SS_SYNC_AXI_SPI_GEN[0].SS_SYNC_AXI2SPI_1\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \LOGIC_GENERATION_FDR.SS_SYNC_AXI_SPI_GEN[0].SS_SYNC_AXI2SPI_CDC\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SS_SYNC_AXI_SPI_GEN[0].SS_SYNC_AXI2SPI_CDC\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.SS_SYNC_AXI_SPI_GEN[0].SS_SYNC_AXI2SPI_CDC\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[0].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[0].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[0].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[10].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[10].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[10].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[11].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[11].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[11].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[12].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[12].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[12].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[13].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[13].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[13].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[14].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[14].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[14].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[15].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[15].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[15].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[16].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[16].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[16].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[17].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[17].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[17].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[18].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[18].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[18].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[19].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[19].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[19].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[1].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[1].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[1].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[20].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[20].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[20].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[21].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[21].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[21].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[22].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[22].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[22].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[23].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[23].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[23].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[2].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[2].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[2].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[3].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[3].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[3].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[4].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[4].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[4].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[5].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[5].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[5].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[6].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[6].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[6].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[7].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[7].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[7].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[8].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[8].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[8].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[9].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[9].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[9].TRANS_ADDR_SYNC_AXI2SPI_CDC\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.TYP_OF_XFER_SYNC_AXI2SPI\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.TYP_OF_XFER_SYNC_AXI2SPI\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.TYP_OF_XFER_SYNC_AXI2SPI_1\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.TYP_OF_XFER_SYNC_AXI2SPI_1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.WB_HPM_DONE_SYNC_SPI2AXI\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.WB_HPM_DONE_SYNC_SPI2AXI\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.WB_HPM_DONE_SYNC_SPI2AXI_1\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.WB_HPM_DONE_SYNC_SPI2AXI_1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.WORD_XFER_SYNC_AXI2SPI\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.WORD_XFER_SYNC_AXI2SPI\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.WORD_XFER_SYNC_AXI2SPI_1\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.WORD_XFER_SYNC_AXI2SPI_1\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \LOGIC_GENERATION_FDR.ld_axi_data_cdc_from_axi_int_2_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \LOGIC_GENERATION_FDR.load_cmd_cdc_from_axi_int_2_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[14]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[15]_i_3\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[15]_i_4\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[15]_i_5\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_4\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[7]_i_4\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr[0]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.hw_wd_cntr[1]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[7]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[26]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[27]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[28]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[30]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[0]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[1]_i_5\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_4\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_5\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_9\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_10\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_7\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_11\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_7\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_8\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \TRANSFER_START_24_BIT_ADDR_GEN.transfer_start_i_3\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \dtr_length[7]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of wrap_around_d1_i_1 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of wrap_around_i_6 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of xip_sm_ps_i_1 : label is "soft_lutpair19";
begin
  \LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_1_0\ <= \^logic_generation_fdr.ld_axi_data_sync_axi2spi_1_0\;
  \LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_2_0\ <= \^logic_generation_fdr.ld_axi_data_sync_axi2spi_2_0\;
  \LOGIC_GENERATION_FDR.LD_CMD_SYNC_AXI2SPI_1_0\ <= \^logic_generation_fdr.ld_cmd_sync_axi2spi_1_0\;
  \LOGIC_GENERATION_FDR.LD_CMD_SYNC_AXI2SPI_2_0\ <= \^logic_generation_fdr.ld_cmd_sync_axi2spi_2_0\;
  RESET_SYNC_AX2S_2(0) <= \^reset_sync_ax2s_2\(0);
  load_axi_data_frm_axi_clk <= \^load_axi_data_frm_axi_clk\;
  load_axi_data_to_spi_clk <= \^load_axi_data_to_spi_clk\;
\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBA003000"
    )
        port map (
      I0 => SS_to_spi_clk,
      I1 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2\,
      I2 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1\,
      I3 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]\(2),
      I4 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_0\,
      I5 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[0]_i_2_n_0\,
      O => \SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_reg_0\(0)
    );
\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F080FFFFF080F080"
    )
        port map (
      I0 => SS_to_spi_clk,
      I1 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]\(3),
      I2 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_0\,
      I3 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]\(1),
      I4 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[0]\,
      I5 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]\(0),
      O => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[0]_i_2_n_0\
    );
\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAA8A00"
    )
        port map (
      I0 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_0\,
      I1 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2\,
      I2 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1\,
      I3 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]\(2),
      I4 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]\(3),
      I5 => SS_to_spi_clk,
      O => \SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_reg_0\(1)
    );
\LEN_CNTR_24_BIT_GEN.length_cntr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5501010155550155"
    )
        port map (
      I0 => Rst_to_spi,
      I1 => \LEN_CNTR_24_BIT_GEN.length_cntr_reg[0]\(0),
      I2 => \LEN_CNTR_24_BIT_GEN.length_cntr_reg[0]\(1),
      I3 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0\,
      I4 => dtr_length_to_spi_clk(0),
      I5 => \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_0\(0),
      O => \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]\(0)
    );
\LEN_CNTR_24_BIT_GEN.length_cntr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555444454455445"
    )
        port map (
      I0 => Rst_to_spi,
      I1 => \RATIO_OF_2_GENERATE.sck_o_int_reg\,
      I2 => \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_0\(1),
      I3 => \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_0\(0),
      I4 => dtr_length_to_spi_clk(1),
      I5 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0\,
      O => \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]\(1)
    );
\LEN_CNTR_24_BIT_GEN.length_cntr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00A9A900000000"
    )
        port map (
      I0 => \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_0\(2),
      I1 => \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_0\(0),
      I2 => \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_0\(1),
      I3 => dtr_length_to_spi_clk(2),
      I4 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0\,
      I5 => \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_2\,
      O => \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]\(2)
    );
\LEN_CNTR_24_BIT_GEN.length_cntr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"99F0F09900000000"
    )
        port map (
      I0 => \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_0\(3),
      I1 => \LEN_CNTR_24_BIT_GEN.length_cntr_reg[3]\,
      I2 => dtr_length_to_spi_clk(3),
      I3 => \^logic_generation_fdr.ld_cmd_sync_axi2spi_1_0\,
      I4 => \^logic_generation_fdr.ld_cmd_sync_axi2spi_2_0\,
      I5 => \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_2\,
      O => \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]\(3)
    );
\LEN_CNTR_24_BIT_GEN.length_cntr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"99F0F09900000000"
    )
        port map (
      I0 => \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_0\(4),
      I1 => \LEN_CNTR_24_BIT_GEN.length_cntr_reg[4]\,
      I2 => dtr_length_to_spi_clk(4),
      I3 => \^logic_generation_fdr.ld_cmd_sync_axi2spi_1_0\,
      I4 => \^logic_generation_fdr.ld_cmd_sync_axi2spi_2_0\,
      I5 => \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_2\,
      O => \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]\(4)
    );
\LEN_CNTR_24_BIT_GEN.length_cntr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"99F0F09900000000"
    )
        port map (
      I0 => \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_0\(5),
      I1 => \LEN_CNTR_24_BIT_GEN.length_cntr_reg[5]\,
      I2 => dtr_length_to_spi_clk(5),
      I3 => \^logic_generation_fdr.ld_cmd_sync_axi2spi_1_0\,
      I4 => \^logic_generation_fdr.ld_cmd_sync_axi2spi_2_0\,
      I5 => \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_2\,
      O => \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]\(5)
    );
\LEN_CNTR_24_BIT_GEN.length_cntr[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"66F0F06600000000"
    )
        port map (
      I0 => \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_0\(6),
      I1 => \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_1\,
      I2 => dtr_length_to_spi_clk(6),
      I3 => \^logic_generation_fdr.ld_cmd_sync_axi2spi_1_0\,
      I4 => \^logic_generation_fdr.ld_cmd_sync_axi2spi_2_0\,
      I5 => \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_2\,
      O => \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]\(6)
    );
\LEN_CNTR_24_BIT_GEN.length_cntr[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEAFFFFFFFF"
    )
        port map (
      I0 => Rst_to_spi,
      I1 => hpm_under_process_d1,
      I2 => SPIXfer_done_int,
      I3 => \RATIO_OF_2_GENERATE.sck_o_int_reg\,
      I4 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0\,
      I5 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0]_0\,
      O => E(0)
    );
\LEN_CNTR_24_BIT_GEN.length_cntr[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF009A9A00000000"
    )
        port map (
      I0 => \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_0\(7),
      I1 => \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_0\(6),
      I2 => \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_1\,
      I3 => dtr_length_to_spi_clk(7),
      I4 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0\,
      I5 => \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_2\,
      O => \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]\(7)
    );
\LOGIC_GENERATION_FDR.AXI_LEN_SYNC_AXI_SPI_GEN[0].AXI_LEN_SYNC_AXI2SPI\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => \LOGIC_GENERATION_FDR.AXI_LEN_SYNC_AXI_SPI_GEN[3].AXI_LEN_SYNC_AXI2SPI_0\(0),
      Q => axi_length_cdc_to_spi_d1_0,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.AXI_LEN_SYNC_AXI_SPI_GEN[0].AXI_LEN_SYNC_AXI2SPI_1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => axi_length_cdc_to_spi_d1_0,
      Q => axi_length_to_spi_clk(0),
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.AXI_LEN_SYNC_AXI_SPI_GEN[1].AXI_LEN_SYNC_AXI2SPI\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => \LOGIC_GENERATION_FDR.AXI_LEN_SYNC_AXI_SPI_GEN[3].AXI_LEN_SYNC_AXI2SPI_0\(1),
      Q => axi_length_cdc_to_spi_d1_1,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.AXI_LEN_SYNC_AXI_SPI_GEN[1].AXI_LEN_SYNC_AXI2SPI_1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => axi_length_cdc_to_spi_d1_1,
      Q => axi_length_to_spi_clk(1),
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.AXI_LEN_SYNC_AXI_SPI_GEN[2].AXI_LEN_SYNC_AXI2SPI\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => \LOGIC_GENERATION_FDR.AXI_LEN_SYNC_AXI_SPI_GEN[3].AXI_LEN_SYNC_AXI2SPI_0\(2),
      Q => axi_length_cdc_to_spi_d1_2,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.AXI_LEN_SYNC_AXI_SPI_GEN[2].AXI_LEN_SYNC_AXI2SPI_1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => axi_length_cdc_to_spi_d1_2,
      Q => axi_length_to_spi_clk(2),
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.AXI_LEN_SYNC_AXI_SPI_GEN[3].AXI_LEN_SYNC_AXI2SPI\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => \LOGIC_GENERATION_FDR.AXI_LEN_SYNC_AXI_SPI_GEN[3].AXI_LEN_SYNC_AXI2SPI_0\(3),
      Q => axi_length_cdc_to_spi_d1_3,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.AXI_LEN_SYNC_AXI_SPI_GEN[3].AXI_LEN_SYNC_AXI2SPI_1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => axi_length_cdc_to_spi_d1_3,
      Q => axi_length_to_spi_clk(3),
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.BYTE_XFER_SYNC_AXI2SPI\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => one_byte_xfer,
      Q => byte_xfer_cdc_from_axi_d1,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.BYTE_XFER_SYNC_AXI2SPI_1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => byte_xfer_cdc_from_axi_d1,
      Q => one_byte_xfer_to_spi_clk,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.CPHA_SYNC_AXI2SPI\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => XIPCR_0_CPHA_int,
      Q => CPHA_cdc_to_spi_d1,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.CPHA_SYNC_AXI2SPI_1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => CPHA_cdc_to_spi_d1,
      Q => CPHA_to_spi_clk,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.CPOL_SYNC_AXI2SPI\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => XIPCR_1_CPOL_int,
      Q => CPOL_cdc_to_spi_d1,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.CPOL_SYNC_AXI2SPI_1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => CPOL_cdc_to_spi_d1,
      Q => CPOL_to_spi_clk,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[0].DTR_LEN_SYNC_AXI2SPI\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[7].DTR_LEN_SYNC_AXI2SPI_0\(0),
      Q => dtr_length_cdc_from_axi_d1_0,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[0].DTR_LEN_SYNC_AXI2SPI_1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => dtr_length_cdc_from_axi_d1_0,
      Q => dtr_length_to_spi_clk(0),
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[1].DTR_LEN_SYNC_AXI2SPI\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[7].DTR_LEN_SYNC_AXI2SPI_0\(1),
      Q => dtr_length_cdc_from_axi_d1_1,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[1].DTR_LEN_SYNC_AXI2SPI_1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => dtr_length_cdc_from_axi_d1_1,
      Q => dtr_length_to_spi_clk(1),
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[2].DTR_LEN_SYNC_AXI2SPI\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[7].DTR_LEN_SYNC_AXI2SPI_0\(2),
      Q => dtr_length_cdc_from_axi_d1_2,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[2].DTR_LEN_SYNC_AXI2SPI_1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => dtr_length_cdc_from_axi_d1_2,
      Q => dtr_length_to_spi_clk(2),
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[3].DTR_LEN_SYNC_AXI2SPI\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[7].DTR_LEN_SYNC_AXI2SPI_0\(3),
      Q => dtr_length_cdc_from_axi_d1_3,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[3].DTR_LEN_SYNC_AXI2SPI_1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => dtr_length_cdc_from_axi_d1_3,
      Q => dtr_length_to_spi_clk(3),
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[4].DTR_LEN_SYNC_AXI2SPI\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[7].DTR_LEN_SYNC_AXI2SPI_0\(4),
      Q => dtr_length_cdc_from_axi_d1_4,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[4].DTR_LEN_SYNC_AXI2SPI_1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => dtr_length_cdc_from_axi_d1_4,
      Q => dtr_length_to_spi_clk(4),
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[5].DTR_LEN_SYNC_AXI2SPI\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[7].DTR_LEN_SYNC_AXI2SPI_0\(5),
      Q => dtr_length_cdc_from_axi_d1_5,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[5].DTR_LEN_SYNC_AXI2SPI_1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => dtr_length_cdc_from_axi_d1_5,
      Q => dtr_length_to_spi_clk(5),
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[6].DTR_LEN_SYNC_AXI2SPI\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[7].DTR_LEN_SYNC_AXI2SPI_0\(6),
      Q => dtr_length_cdc_from_axi_d1_6,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[6].DTR_LEN_SYNC_AXI2SPI_1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => dtr_length_cdc_from_axi_d1_6,
      Q => dtr_length_to_spi_clk(6),
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[7].DTR_LEN_SYNC_AXI2SPI\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[7].DTR_LEN_SYNC_AXI2SPI_0\(7),
      Q => dtr_length_cdc_from_axi_d1_7,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[7].DTR_LEN_SYNC_AXI2SPI_1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => dtr_length_cdc_from_axi_d1_7,
      Q => dtr_length_to_spi_clk(7),
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.HW_XFER_SYNC_AXI2SPI\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => two_byte_xfer,
      Q => hw_xfer_cdc_from_axi_d1,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.HW_XFER_SYNC_AXI2SPI_1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => hw_xfer_cdc_from_axi_d1,
      Q => two_byte_xfer_to_spi_clk,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => \LOGIC_GENERATION_FDR.ld_axi_data_cdc_from_axi_int_2_reg_n_0\,
      Q => load_axi_data_cdc_to_spi_d1,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => load_axi_data_cdc_to_spi_d1,
      Q => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_1_0\,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_1_0\,
      Q => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_2_0\,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.LD_CMD_SYNC_AXI2SPI\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => \LOGIC_GENERATION_FDR.load_cmd_cdc_from_axi_int_2_reg_n_0\,
      Q => load_cmd_cdc_from_axi_d1,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.LD_CMD_SYNC_AXI2SPI_1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => load_cmd_cdc_from_axi_d1,
      Q => \^logic_generation_fdr.ld_cmd_sync_axi2spi_1_0\,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.LD_CMD_SYNC_AXI2SPI_2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => \^logic_generation_fdr.ld_cmd_sync_axi2spi_1_0\,
      Q => \^logic_generation_fdr.ld_cmd_sync_axi2spi_2_0\,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.Rx_FIFO_Full_SYNC_SPI2AXI\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => Rx_FIFO_Full,
      Q => rx_fifo_full_d1,
      R => bus2ip_reset_ipif_inverted
    );
\LOGIC_GENERATION_FDR.Rx_FIFO_Full_SYNC_SPI2AXI4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => Rx_FIFO_Full,
      Q => rx_fifo_full_d3,
      R => bus2ip_reset_ipif4_inverted
    );
\LOGIC_GENERATION_FDR.Rx_FIFO_Full_SYNC_SPI2AXI4_1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => rx_fifo_full_d3,
      Q => Rx_FIFO_Full_to_axi4_clk,
      R => bus2ip_reset_ipif4_inverted
    );
\LOGIC_GENERATION_FDR.Rx_FIFO_Full_SYNC_SPI2AXI_1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => rx_fifo_full_d1,
      Q => D(0),
      R => bus2ip_reset_ipif_inverted
    );
\LOGIC_GENERATION_FDR.SS_SYNC_AXI_SPI_GEN[0].SS_SYNC_AXI2SPI_1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => SS_cdc_from_spi_d1,
      Q => SS_to_spi_clk,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.SS_SYNC_AXI_SPI_GEN[0].SS_SYNC_AXI2SPI_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => SS_frm_axi,
      Q => SS_cdc_from_spi_d1,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[0].TRANS_ADDR_SYNC_AXI2SPI_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => Q(0),
      Q => Transmit_Addr_to_spi_clk(0),
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[10].TRANS_ADDR_SYNC_AXI2SPI_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => Q(10),
      Q => Transmit_Addr_to_spi_clk(10),
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[11].TRANS_ADDR_SYNC_AXI2SPI_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => Q(11),
      Q => Transmit_Addr_to_spi_clk(11),
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[12].TRANS_ADDR_SYNC_AXI2SPI_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => Q(12),
      Q => Transmit_Addr_to_spi_clk(12),
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[13].TRANS_ADDR_SYNC_AXI2SPI_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => Q(13),
      Q => Transmit_Addr_to_spi_clk(13),
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[14].TRANS_ADDR_SYNC_AXI2SPI_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => Q(14),
      Q => Transmit_Addr_to_spi_clk(14),
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[15].TRANS_ADDR_SYNC_AXI2SPI_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => Q(15),
      Q => Transmit_Addr_to_spi_clk(15),
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[16].TRANS_ADDR_SYNC_AXI2SPI_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => Q(16),
      Q => Transmit_Addr_to_spi_clk(16),
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[17].TRANS_ADDR_SYNC_AXI2SPI_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => Q(17),
      Q => Transmit_Addr_to_spi_clk(17),
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[18].TRANS_ADDR_SYNC_AXI2SPI_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => Q(18),
      Q => Transmit_Addr_to_spi_clk(18),
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[19].TRANS_ADDR_SYNC_AXI2SPI_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => Q(19),
      Q => Transmit_Addr_to_spi_clk(19),
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[1].TRANS_ADDR_SYNC_AXI2SPI_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => Q(1),
      Q => Transmit_Addr_to_spi_clk(1),
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[20].TRANS_ADDR_SYNC_AXI2SPI_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => Q(20),
      Q => Transmit_Addr_to_spi_clk(20),
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[21].TRANS_ADDR_SYNC_AXI2SPI_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => Q(21),
      Q => Transmit_Addr_to_spi_clk(21),
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[22].TRANS_ADDR_SYNC_AXI2SPI_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => Q(22),
      Q => Transmit_Addr_to_spi_clk(22),
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[23].TRANS_ADDR_SYNC_AXI2SPI_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => Q(23),
      Q => Transmit_Addr_to_spi_clk(23),
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[2].TRANS_ADDR_SYNC_AXI2SPI_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => Q(2),
      Q => Transmit_Addr_to_spi_clk(2),
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[3].TRANS_ADDR_SYNC_AXI2SPI_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => Q(3),
      Q => Transmit_Addr_to_spi_clk(3),
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[4].TRANS_ADDR_SYNC_AXI2SPI_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => Q(4),
      Q => Transmit_Addr_to_spi_clk(4),
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[5].TRANS_ADDR_SYNC_AXI2SPI_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => Q(5),
      Q => Transmit_Addr_to_spi_clk(5),
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[6].TRANS_ADDR_SYNC_AXI2SPI_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => Q(6),
      Q => Transmit_Addr_to_spi_clk(6),
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[7].TRANS_ADDR_SYNC_AXI2SPI_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => Q(7),
      Q => Transmit_Addr_to_spi_clk(7),
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[8].TRANS_ADDR_SYNC_AXI2SPI_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => Q(8),
      Q => Transmit_Addr_to_spi_clk(8),
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[9].TRANS_ADDR_SYNC_AXI2SPI_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => Q(9),
      Q => Transmit_Addr_to_spi_clk(9),
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.TYP_OF_XFER_SYNC_AXI2SPI\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => type_of_burst,
      Q => type_of_burst_cdc_to_spi_d1,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.TYP_OF_XFER_SYNC_AXI2SPI_1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => type_of_burst_cdc_to_spi_d1,
      Q => type_of_burst_to_spi_clk,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.WB_HPM_DONE_SYNC_SPI2AXI\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \^reset_sync_ax2s_2\(0),
      Q => wb_hpm_done_cdc_from_spi_d1,
      R => bus2ip_reset_ipif4_inverted
    );
\LOGIC_GENERATION_FDR.WB_HPM_DONE_SYNC_SPI2AXI_1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => wb_hpm_done_cdc_from_spi_d1,
      Q => wb_hpm_done_to_axi,
      R => bus2ip_reset_ipif4_inverted
    );
\LOGIC_GENERATION_FDR.WB_HPM_DONE_SYNC_SPI2AXI_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3404"
    )
        port map (
      I0 => Rst_to_spi,
      I1 => \LEN_CNTR_24_BIT_GEN.length_cntr_reg[0]\(1),
      I2 => \LEN_CNTR_24_BIT_GEN.length_cntr_reg[0]\(0),
      I3 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_0\,
      O => \^reset_sync_ax2s_2\(0)
    );
\LOGIC_GENERATION_FDR.WORD_XFER_SYNC_AXI2SPI\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => four_byte_xfer,
      Q => word_xfer_cdc_from_axi_d1,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.WORD_XFER_SYNC_AXI2SPI_1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => word_xfer_cdc_from_axi_d1,
      Q => four_byte_xfer_to_spi_clk,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.ld_axi_data_cdc_from_axi_int_2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \LOGIC_GENERATION_FDR.ld_axi_data_cdc_from_axi_int_2_reg_n_0\,
      I1 => \^load_axi_data_frm_axi_clk\,
      O => D0
    );
\LOGIC_GENERATION_FDR.ld_axi_data_cdc_from_axi_int_2_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => D0,
      Q => \LOGIC_GENERATION_FDR.ld_axi_data_cdc_from_axi_int_2_reg_n_0\,
      R => bus2ip_reset_ipif4_inverted
    );
\LOGIC_GENERATION_FDR.load_cmd_cdc_from_axi_int_2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \LOGIC_GENERATION_FDR.load_cmd_cdc_from_axi_int_2_reg_n_0\,
      I1 => \^load_axi_data_frm_axi_clk\,
      O => D01_out
    );
\LOGIC_GENERATION_FDR.load_cmd_cdc_from_axi_int_2_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => D01_out,
      Q => \LOGIC_GENERATION_FDR.load_cmd_cdc_from_axi_int_2_reg_n_0\,
      R => bus2ip_reset_ipif4_inverted
    );
\MEM_DECODE_GEN[0].cs_out_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007F7F7F00"
    )
        port map (
      I0 => s_axi4_rready,
      I1 => last_data_acked,
      I2 => xip_sm_ps,
      I3 => \^load_axi_data_frm_axi_clk\,
      I4 => SS_frm_axi,
      I5 => bus2ip_reset_ipif4_inverted,
      O => s_axi4_rready_0
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CDC8DDDDCDC88888"
    )
        port map (
      I0 => one_byte_xfer_to_spi_clk,
      I1 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]\(0),
      I2 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[7]\,
      I3 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(0),
      I4 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_4_n_0\,
      I5 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(8),
      O => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7]\(0)
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1011FFFF10111011"
    )
        port map (
      I0 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[10]_i_2_n_0\,
      I1 => one_byte_xfer_to_spi_clk,
      I2 => type_of_burst_to_spi_clk,
      I3 => two_byte_xfer_to_spi_clk,
      I4 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[14]_i_2_n_0\,
      I5 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]\(2),
      O => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7]\(10)
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"35F53535F5F5F5F5"
    )
        port map (
      I0 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(18),
      I1 => type_of_burst_to_spi_clk,
      I2 => two_byte_xfer_to_spi_clk,
      I3 => hw_wd_cntr(1),
      I4 => hw_wd_cntr(0),
      I5 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(10),
      O => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[10]_i_2_n_0\
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFFAEAEAE"
    )
        port map (
      I0 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[11]_i_2_n_0\,
      I1 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(19),
      I2 => two_byte_xfer_to_spi_clk,
      I3 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[15]_i_3_n_0\,
      I4 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(11),
      I5 => one_byte_xfer_to_spi_clk,
      O => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7]\(11)
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA20AA0000"
    )
        port map (
      I0 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]\(3),
      I1 => hw_wd_cntr(1),
      I2 => hw_wd_cntr(0),
      I3 => type_of_burst_to_spi_clk,
      I4 => two_byte_xfer_to_spi_clk,
      I5 => one_byte_xfer_to_spi_clk,
      O => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[11]_i_2_n_0\
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"444F4444444F444F"
    )
        port map (
      I0 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[14]_i_2_n_0\,
      I1 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]\(4),
      I2 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[12]_i_2_n_0\,
      I3 => one_byte_xfer_to_spi_clk,
      I4 => type_of_burst_to_spi_clk,
      I5 => two_byte_xfer_to_spi_clk,
      O => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7]\(12)
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"35F53535F5F5F5F5"
    )
        port map (
      I0 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(20),
      I1 => type_of_burst_to_spi_clk,
      I2 => two_byte_xfer_to_spi_clk,
      I3 => hw_wd_cntr(1),
      I4 => hw_wd_cntr(0),
      I5 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(12),
      O => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[12]_i_2_n_0\
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFFAEAEAE"
    )
        port map (
      I0 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[13]_i_2_n_0\,
      I1 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(21),
      I2 => two_byte_xfer_to_spi_clk,
      I3 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[15]_i_3_n_0\,
      I4 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(13),
      I5 => one_byte_xfer_to_spi_clk,
      O => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7]\(13)
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA20AA0000"
    )
        port map (
      I0 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]\(5),
      I1 => hw_wd_cntr(1),
      I2 => hw_wd_cntr(0),
      I3 => type_of_burst_to_spi_clk,
      I4 => two_byte_xfer_to_spi_clk,
      I5 => one_byte_xfer_to_spi_clk,
      O => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[13]_i_2_n_0\
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"444F4444444F444F"
    )
        port map (
      I0 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[14]_i_2_n_0\,
      I1 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]\(6),
      I2 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[14]_i_3_n_0\,
      I3 => one_byte_xfer_to_spi_clk,
      I4 => type_of_burst_to_spi_clk,
      I5 => two_byte_xfer_to_spi_clk,
      O => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7]\(14)
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"51511151"
    )
        port map (
      I0 => one_byte_xfer_to_spi_clk,
      I1 => two_byte_xfer_to_spi_clk,
      I2 => type_of_burst_to_spi_clk,
      I3 => hw_wd_cntr(0),
      I4 => hw_wd_cntr(1),
      O => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[14]_i_2_n_0\
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"35F53535F5F5F5F5"
    )
        port map (
      I0 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(22),
      I1 => type_of_burst_to_spi_clk,
      I2 => two_byte_xfer_to_spi_clk,
      I3 => hw_wd_cntr(1),
      I4 => hw_wd_cntr(0),
      I5 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(14),
      O => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[14]_i_3_n_0\
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0A022200000222"
    )
        port map (
      I0 => hw_wd_cntr0,
      I1 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[15]_i_3_n_0\,
      I2 => p_3_in1_in,
      I3 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[15]_i_4_n_0\,
      I4 => one_byte_xfer_to_spi_clk,
      I5 => \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[0]_0\,
      O => SPIXfer_done_int_pulse_d2_reg(1)
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444444FFFFF444"
    )
        port map (
      I0 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[15]_i_5_n_0\,
      I1 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]\(7),
      I2 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[15]_i_3_n_0\,
      I3 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(15),
      I4 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[15]_i_6_n_0\,
      I5 => one_byte_xfer_to_spi_clk,
      O => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7]\(15)
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[15]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8088"
    )
        port map (
      I0 => type_of_burst_to_spi_clk,
      I1 => two_byte_xfer_to_spi_clk,
      I2 => hw_wd_cntr(1),
      I3 => hw_wd_cntr(0),
      O => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[15]_i_3_n_0\
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => two_byte_xfer_to_spi_clk,
      I1 => type_of_burst_to_spi_clk,
      O => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[15]_i_4_n_0\
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[15]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => one_byte_xfer_to_spi_clk,
      I1 => type_of_burst_to_spi_clk,
      I2 => two_byte_xfer_to_spi_clk,
      O => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[15]_i_5_n_0\
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[15]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3000AAAA0000AAAA"
    )
        port map (
      I0 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(23),
      I1 => hw_wd_cntr(1),
      I2 => hw_wd_cntr(0),
      I3 => type_of_burst_to_spi_clk,
      I4 => two_byte_xfer_to_spi_clk,
      I5 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]\(7),
      O => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[15]_i_6_n_0\
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFAEEEE05004444"
    )
        port map (
      I0 => one_byte_xfer_to_spi_clk,
      I1 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(24),
      I2 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]_0\,
      I3 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(16),
      I4 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_4_n_0\,
      I5 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]\(0),
      O => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7]\(16)
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFAEEEE05004444"
    )
        port map (
      I0 => one_byte_xfer_to_spi_clk,
      I1 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(25),
      I2 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]_0\,
      I3 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(17),
      I4 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_4_n_0\,
      I5 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]\(1),
      O => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7]\(17)
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFAEEEE05004444"
    )
        port map (
      I0 => one_byte_xfer_to_spi_clk,
      I1 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(26),
      I2 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]_0\,
      I3 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(18),
      I4 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_4_n_0\,
      I5 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]\(2),
      O => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7]\(18)
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFAEEEE05004444"
    )
        port map (
      I0 => one_byte_xfer_to_spi_clk,
      I1 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(27),
      I2 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]_0\,
      I3 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(19),
      I4 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_4_n_0\,
      I5 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]\(3),
      O => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7]\(19)
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CDC8DDDDCDC88888"
    )
        port map (
      I0 => one_byte_xfer_to_spi_clk,
      I1 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]\(1),
      I2 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[7]\,
      I3 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(1),
      I4 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_4_n_0\,
      I5 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(9),
      O => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7]\(1)
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CDC8DDDDCDC88888"
    )
        port map (
      I0 => one_byte_xfer_to_spi_clk,
      I1 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]\(4),
      I2 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]_0\,
      I3 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(20),
      I4 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_4_n_0\,
      I5 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(28),
      O => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7]\(20)
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFAEEEE05004444"
    )
        port map (
      I0 => one_byte_xfer_to_spi_clk,
      I1 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(29),
      I2 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]_0\,
      I3 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(21),
      I4 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_4_n_0\,
      I5 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]\(5),
      O => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7]\(21)
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFAEEEE05004444"
    )
        port map (
      I0 => one_byte_xfer_to_spi_clk,
      I1 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(30),
      I2 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]_0\,
      I3 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(22),
      I4 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_4_n_0\,
      I5 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]\(6),
      O => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7]\(22)
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800088888888"
    )
        port map (
      I0 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[1]_0\,
      I1 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]\,
      I2 => one_byte_xfer_to_spi_clk,
      I3 => p_3_in1_in,
      I4 => \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[0]_0\,
      I5 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[23]_i_3_n_0\,
      O => SPIXfer_done_int_pulse_d2_reg(2)
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFAEEEE05004444"
    )
        port map (
      I0 => one_byte_xfer_to_spi_clk,
      I1 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(31),
      I2 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]_0\,
      I3 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(23),
      I4 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_4_n_0\,
      I5 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]\(7),
      O => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7]\(23)
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCFCCCCDDDDCCCC"
    )
        port map (
      I0 => p_3_in1_in,
      I1 => one_byte_xfer_to_spi_clk,
      I2 => hw_wd_cntr(1),
      I3 => hw_wd_cntr(0),
      I4 => two_byte_xfer_to_spi_clk,
      I5 => type_of_burst_to_spi_clk,
      O => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[23]_i_3_n_0\
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABFAAAAAA80AA"
    )
        port map (
      I0 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]\(0),
      I1 => hw_wd_cntr(1),
      I2 => hw_wd_cntr(0),
      I3 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_4_n_0\,
      I4 => one_byte_xfer_to_spi_clk,
      I5 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(24),
      O => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7]\(24)
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABFAAAAAA80AA"
    )
        port map (
      I0 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]\(1),
      I1 => hw_wd_cntr(1),
      I2 => hw_wd_cntr(0),
      I3 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_4_n_0\,
      I4 => one_byte_xfer_to_spi_clk,
      I5 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(25),
      O => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7]\(25)
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABFAAAAAA80AA"
    )
        port map (
      I0 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]\(2),
      I1 => hw_wd_cntr(1),
      I2 => hw_wd_cntr(0),
      I3 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_4_n_0\,
      I4 => one_byte_xfer_to_spi_clk,
      I5 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(26),
      O => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7]\(26)
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABFAAAAAA80AA"
    )
        port map (
      I0 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]\(3),
      I1 => hw_wd_cntr(1),
      I2 => hw_wd_cntr(0),
      I3 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_4_n_0\,
      I4 => one_byte_xfer_to_spi_clk,
      I5 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(27),
      O => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7]\(27)
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABFAAAAAA80AA"
    )
        port map (
      I0 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]\(4),
      I1 => hw_wd_cntr(1),
      I2 => hw_wd_cntr(0),
      I3 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_4_n_0\,
      I4 => one_byte_xfer_to_spi_clk,
      I5 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(28),
      O => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7]\(28)
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABFAAAAAA80AA"
    )
        port map (
      I0 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]\(5),
      I1 => hw_wd_cntr(1),
      I2 => hw_wd_cntr(0),
      I3 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_4_n_0\,
      I4 => one_byte_xfer_to_spi_clk,
      I5 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(29),
      O => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7]\(29)
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CDC8DDDDCDC88888"
    )
        port map (
      I0 => one_byte_xfer_to_spi_clk,
      I1 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]\(2),
      I2 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[7]\,
      I3 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(2),
      I4 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_4_n_0\,
      I5 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(10),
      O => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7]\(2)
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABFAAAAAA80AA"
    )
        port map (
      I0 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]\(6),
      I1 => hw_wd_cntr(1),
      I2 => hw_wd_cntr(0),
      I3 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_4_n_0\,
      I4 => one_byte_xfer_to_spi_clk,
      I5 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(30),
      O => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7]\(30)
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000088888888"
    )
        port map (
      I0 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[1]_0\,
      I1 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]\,
      I2 => \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[0]_0\,
      I3 => one_byte_xfer_to_spi_clk,
      I4 => p_3_in1_in,
      I5 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_3_n_0\,
      O => SPIXfer_done_int_pulse_d2_reg(3)
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABFAAAAAA80AA"
    )
        port map (
      I0 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]\(7),
      I1 => hw_wd_cntr(1),
      I2 => hw_wd_cntr(0),
      I3 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_4_n_0\,
      I4 => one_byte_xfer_to_spi_clk,
      I5 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(31),
      O => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7]\(31)
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF70007F00"
    )
        port map (
      I0 => hw_wd_cntr(0),
      I1 => hw_wd_cntr(1),
      I2 => type_of_burst_to_spi_clk,
      I3 => two_byte_xfer_to_spi_clk,
      I4 => p_3_in1_in,
      I5 => one_byte_xfer_to_spi_clk,
      O => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_3_n_0\
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => two_byte_xfer_to_spi_clk,
      I1 => type_of_burst_to_spi_clk,
      O => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_4_n_0\
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CDC8DDDDCDC88888"
    )
        port map (
      I0 => one_byte_xfer_to_spi_clk,
      I1 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]\(3),
      I2 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[7]\,
      I3 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(3),
      I4 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_4_n_0\,
      I5 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(11),
      O => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7]\(3)
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CDC8DDDDCDC88888"
    )
        port map (
      I0 => one_byte_xfer_to_spi_clk,
      I1 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]\(4),
      I2 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[7]\,
      I3 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(4),
      I4 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_4_n_0\,
      I5 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(12),
      O => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7]\(4)
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CDC8DDDDCDC88888"
    )
        port map (
      I0 => one_byte_xfer_to_spi_clk,
      I1 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]\(5),
      I2 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[7]\,
      I3 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(5),
      I4 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_4_n_0\,
      I5 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(13),
      O => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7]\(5)
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CDC8DDDDCDC88888"
    )
        port map (
      I0 => one_byte_xfer_to_spi_clk,
      I1 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]\(6),
      I2 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[7]\,
      I3 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(6),
      I4 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_4_n_0\,
      I5 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(14),
      O => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7]\(6)
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005555CF5F"
    )
        port map (
      I0 => p_3_in1_in,
      I1 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[7]\,
      I2 => two_byte_xfer_to_spi_clk,
      I3 => type_of_burst_to_spi_clk,
      I4 => one_byte_xfer_to_spi_clk,
      I5 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[7]_i_4_n_0\,
      O => SPIXfer_done_int_pulse_d2_reg(0)
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CDC8DDDDCDC88888"
    )
        port map (
      I0 => one_byte_xfer_to_spi_clk,
      I1 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]\(7),
      I2 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[7]\,
      I3 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(7),
      I4 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_4_n_0\,
      I5 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(15),
      O => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7]\(7)
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8FFF"
    )
        port map (
      I0 => \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[0]_0\,
      I1 => one_byte_xfer_to_spi_clk,
      I2 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[1]_0\,
      I3 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]\,
      O => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[7]_i_4_n_0\
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFFAEAEAE"
    )
        port map (
      I0 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[8]_i_2_n_0\,
      I1 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(16),
      I2 => two_byte_xfer_to_spi_clk,
      I3 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[15]_i_3_n_0\,
      I4 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(8),
      I5 => one_byte_xfer_to_spi_clk,
      O => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7]\(8)
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA20AA0000"
    )
        port map (
      I0 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]\(0),
      I1 => hw_wd_cntr(1),
      I2 => hw_wd_cntr(0),
      I3 => type_of_burst_to_spi_clk,
      I4 => two_byte_xfer_to_spi_clk,
      I5 => one_byte_xfer_to_spi_clk,
      O => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[8]_i_2_n_0\
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFFAEAEAE"
    )
        port map (
      I0 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[9]_i_2_n_0\,
      I1 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(17),
      I2 => two_byte_xfer_to_spi_clk,
      I3 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[15]_i_3_n_0\,
      I4 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(9),
      I5 => one_byte_xfer_to_spi_clk,
      O => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7]\(9)
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA20AA0000"
    )
        port map (
      I0 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]\(1),
      I1 => hw_wd_cntr(1),
      I2 => hw_wd_cntr(0),
      I3 => type_of_burst_to_spi_clk,
      I4 => two_byte_xfer_to_spi_clk,
      I5 => one_byte_xfer_to_spi_clk,
      O => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[9]_i_2_n_0\
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002666"
    )
        port map (
      I0 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[2]_2\,
      I1 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[1]_0\,
      I2 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[2]_1\,
      I3 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[2]_0\,
      I4 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr[2]_i_2_n_0\,
      O => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[0]\
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
        port map (
      I0 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[2]_1\,
      I1 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[2]_2\,
      I2 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[1]_0\,
      I3 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr[2]_i_2_n_0\,
      O => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[1]\
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
        port map (
      I0 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[2]_0\,
      I1 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[2]_1\,
      I2 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[2]_2\,
      I3 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[1]_0\,
      I4 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr[2]_i_2_n_0\,
      O => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[2]\
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF6"
    )
        port map (
      I0 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_1_0\,
      I1 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_2_0\,
      I2 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]\(0),
      I3 => Rst_to_spi,
      O => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr[2]_i_2_n_0\
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.hw_wd_cntr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000066666066"
    )
        port map (
      I0 => hw_wd_cntr(0),
      I1 => hw_wd_cntr0,
      I2 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_0\,
      I3 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1\,
      I4 => wrap_around_d1,
      I5 => \^load_axi_data_to_spi_clk\,
      O => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.hw_wd_cntr_reg[0]\
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.hw_wd_cntr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
        port map (
      I0 => hw_wd_cntr(1),
      I1 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[1]_0\,
      I2 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]\,
      I3 => hw_wd_cntr(0),
      I4 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.hw_wd_cntr[1]_i_2_n_0\,
      O => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.hw_wd_cntr_reg[1]\
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.hw_wd_cntr[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66666F66"
    )
        port map (
      I0 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_1_0\,
      I1 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_2_0\,
      I2 => wrap_around_d1,
      I3 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1\,
      I4 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_0\,
      O => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.hw_wd_cntr[1]_i_2_n_0\
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_2_0\,
      I1 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_1_0\,
      O => \^load_axi_data_to_spi_clk\
    );
\RATIO_OF_2_GENERATE.Count[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F7"
    )
        port map (
      I0 => CPOL_to_spi_clk,
      I1 => CPHA_to_spi_clk,
      I2 => transfer_start_d2,
      I3 => \RATIO_OF_2_GENERATE.Count_reg[0]\(0),
      O => \LOGIC_GENERATION_FDR.CPOL_SYNC_AXI2SPI_1_1\(0)
    );
\RATIO_OF_2_GENERATE.SCK_O_NQ_4_STARTUP_USED.SCK_O_reg_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => CPOL_to_spi_clk,
      I1 => \RATIO_OF_2_GENERATE.SCK_O_NQ_4_STARTUP_USED.SCK_O_reg_reg\,
      I2 => sck_o_int,
      I3 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]\(0),
      I4 => Rst_to_spi,
      O => \LOGIC_GENERATION_FDR.CPOL_SYNC_AXI2SPI_1_2\
    );
\RATIO_OF_2_GENERATE.SS_O_24_BIT_ADDR_GEN.SS_O[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEBFFFFFFFFFFEB"
    )
        port map (
      I0 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_0\,
      I1 => hpm_under_process_d1,
      I2 => SS_to_spi_clk,
      I3 => Rst_to_spi,
      I4 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1\,
      I5 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2\,
      O => \SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_reg\
    );
\RATIO_OF_2_GENERATE.sck_o_int_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006666666F"
    )
        port map (
      I0 => CPOL_to_spi_clk,
      I1 => CPHA_to_spi_clk,
      I2 => SPIXfer_done_int,
      I3 => \RATIO_OF_2_GENERATE.sck_o_int_reg\,
      I4 => \^load_axi_data_to_spi_clk\,
      I5 => \RATIO_OF_2_GENERATE.sck_o_int_i_2_n_0\,
      O => \LOGIC_GENERATION_FDR.CPOL_SYNC_AXI2SPI_1_0\
    );
\RATIO_OF_2_GENERATE.sck_o_int_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFBFFFBFBFBFBFF"
    )
        port map (
      I0 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[4]_0\,
      I1 => \RATIO_OF_2_GENERATE.sck_o_int_reg_0\,
      I2 => Rst_to_spi,
      I3 => \RATIO_OF_2_GENERATE.SCK_O_NQ_4_STARTUP_USED.SCK_O_reg_reg\,
      I4 => Sync_Set,
      I5 => sck_o_int,
      O => \RATIO_OF_2_GENERATE.sck_o_int_i_2_n_0\
    );
\RATIO_OF_2_GENERATE.sck_o_int_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666666660606066"
    )
        port map (
      I0 => CPHA_to_spi_clk,
      I1 => CPOL_to_spi_clk,
      I2 => \^load_axi_data_to_spi_clk\,
      I3 => \LEN_CNTR_24_BIT_GEN.length_cntr_reg[0]\(0),
      I4 => \LEN_CNTR_24_BIT_GEN.length_cntr_reg[0]\(1),
      I5 => SPIXfer_done_int,
      O => Sync_Set
    );
\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDF0F0DD"
    )
        port map (
      I0 => wrap_around_reg_5,
      I1 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0]\,
      I2 => Transmit_Addr_to_spi_clk(0),
      I3 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_2_0\,
      I4 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_1_0\,
      O => wrap_around_reg_3
    );
\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0CCCCCCCCAAF0"
    )
        port map (
      I0 => data2(6),
      I1 => Transmit_Addr_to_spi_clk(10),
      I2 => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[10]\,
      I3 => wrap_around_reg_5,
      I4 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_1_0\,
      I5 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_2_0\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[10]\
    );
\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0CCCCCCCCAAF0"
    )
        port map (
      I0 => data2(7),
      I1 => Transmit_Addr_to_spi_clk(11),
      I2 => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[11]\,
      I3 => wrap_around_reg_5,
      I4 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_1_0\,
      I5 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_2_0\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[11]\
    );
\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0CCCCCCCCAAF0"
    )
        port map (
      I0 => data2(8),
      I1 => Transmit_Addr_to_spi_clk(12),
      I2 => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[12]\,
      I3 => wrap_around_reg_5,
      I4 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_1_0\,
      I5 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_2_0\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[12]\
    );
\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0CCCCCCCCAAF0"
    )
        port map (
      I0 => data2(9),
      I1 => Transmit_Addr_to_spi_clk(13),
      I2 => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[13]\,
      I3 => wrap_around_reg_5,
      I4 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_1_0\,
      I5 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_2_0\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[13]\
    );
\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0CCCCCCCCAAF0"
    )
        port map (
      I0 => data2(10),
      I1 => Transmit_Addr_to_spi_clk(14),
      I2 => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[14]\,
      I3 => wrap_around_reg_5,
      I4 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_1_0\,
      I5 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_2_0\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[14]\
    );
\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0CCCCCCCCAAF0"
    )
        port map (
      I0 => data2(11),
      I1 => Transmit_Addr_to_spi_clk(15),
      I2 => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[15]\,
      I3 => wrap_around_reg_5,
      I4 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_1_0\,
      I5 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_2_0\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[15]\
    );
\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0CCCCCCCCAAF0"
    )
        port map (
      I0 => data2(12),
      I1 => Transmit_Addr_to_spi_clk(16),
      I2 => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[16]_0\,
      I3 => wrap_around_reg_5,
      I4 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_1_0\,
      I5 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_2_0\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[16]\
    );
\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0CCCCCCCCAAF0"
    )
        port map (
      I0 => data2(13),
      I1 => Transmit_Addr_to_spi_clk(17),
      I2 => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[17]_0\,
      I3 => wrap_around_reg_5,
      I4 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_1_0\,
      I5 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_2_0\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[17]\
    );
\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0CCCCCCCCAAF0"
    )
        port map (
      I0 => data2(14),
      I1 => Transmit_Addr_to_spi_clk(18),
      I2 => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[18]_0\,
      I3 => wrap_around_reg_5,
      I4 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_1_0\,
      I5 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_2_0\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[18]\
    );
\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0CCCCCCCCAAF0"
    )
        port map (
      I0 => data2(15),
      I1 => Transmit_Addr_to_spi_clk(19),
      I2 => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[19]_0\,
      I3 => wrap_around_reg_5,
      I4 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_1_0\,
      I5 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_2_0\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[19]\
    );
\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDF0F0DD"
    )
        port map (
      I0 => wrap_around_reg_5,
      I1 => p_8_in,
      I2 => Transmit_Addr_to_spi_clk(1),
      I3 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_2_0\,
      I4 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_1_0\,
      O => wrap_around_reg_2
    );
\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0CCCCCCCCAAF0"
    )
        port map (
      I0 => data2(16),
      I1 => Transmit_Addr_to_spi_clk(20),
      I2 => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[20]_0\,
      I3 => wrap_around_reg_5,
      I4 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_1_0\,
      I5 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_2_0\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20]\
    );
\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0CCCCCCCCAAF0"
    )
        port map (
      I0 => data2(17),
      I1 => Transmit_Addr_to_spi_clk(21),
      I2 => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[21]_0\,
      I3 => wrap_around_reg_5,
      I4 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_1_0\,
      I5 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_2_0\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[21]\
    );
\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0CCCCCCCCAAF0"
    )
        port map (
      I0 => data2(18),
      I1 => Transmit_Addr_to_spi_clk(22),
      I2 => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[22]_0\,
      I3 => wrap_around_reg_5,
      I4 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_1_0\,
      I5 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_2_0\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[22]\
    );
\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0CCCCCCCCAAF0"
    )
        port map (
      I0 => data2(19),
      I1 => Transmit_Addr_to_spi_clk(23),
      I2 => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[23]_0\,
      I3 => wrap_around_reg_5,
      I4 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_1_0\,
      I5 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_2_0\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]\
    );
\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFEEFFEEFFEFFFF"
    )
        port map (
      I0 => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[24]\,
      I1 => wrap_around_reg_5,
      I2 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_1_0\,
      I3 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_2_0\,
      I4 => \LEN_CNTR_24_BIT_GEN.length_cntr_reg[0]\(1),
      I5 => \LEN_CNTR_24_BIT_GEN.length_cntr_reg[0]\(0),
      O => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[16]\
    );
\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFEEFFEEFFEFFFF"
    )
        port map (
      I0 => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[25]\,
      I1 => wrap_around_reg_5,
      I2 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_1_0\,
      I3 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_2_0\,
      I4 => \LEN_CNTR_24_BIT_GEN.length_cntr_reg[0]\(1),
      I5 => \LEN_CNTR_24_BIT_GEN.length_cntr_reg[0]\(0),
      O => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[17]\
    );
\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0082"
    )
        port map (
      I0 => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[26]\,
      I1 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_2_0\,
      I2 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_1_0\,
      I3 => wrap_around_reg_5,
      O => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[18]\
    );
\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFBE"
    )
        port map (
      I0 => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[27]\,
      I1 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_2_0\,
      I2 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_1_0\,
      I3 => wrap_around_reg_5,
      O => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[19]\
    );
\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0082"
    )
        port map (
      I0 => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[28]\,
      I1 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_2_0\,
      I2 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_1_0\,
      I3 => wrap_around_reg_5,
      O => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[20]\
    );
\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFEEFFEEFFEFFFF"
    )
        port map (
      I0 => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[29]\,
      I1 => wrap_around_reg_5,
      I2 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_1_0\,
      I3 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_2_0\,
      I4 => \LEN_CNTR_24_BIT_GEN.length_cntr_reg[0]\(1),
      I5 => \LEN_CNTR_24_BIT_GEN.length_cntr_reg[0]\(0),
      O => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[21]\
    );
\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDF0F0DD"
    )
        port map (
      I0 => wrap_around_reg_5,
      I1 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2]\,
      I2 => Transmit_Addr_to_spi_clk(2),
      I3 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_2_0\,
      I4 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_1_0\,
      O => wrap_around_reg_1
    );
\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[30]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFBE"
    )
        port map (
      I0 => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[30]\,
      I1 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_2_0\,
      I2 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_1_0\,
      I3 => wrap_around_reg_5,
      O => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[22]\
    );
\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEFEFEFF"
    )
        port map (
      I0 => wrap_around_reg_5,
      I1 => Rst_to_spi,
      I2 => \^load_axi_data_to_spi_clk\,
      I3 => \LEN_CNTR_24_BIT_GEN.length_cntr_reg[0]\(0),
      I4 => \LEN_CNTR_24_BIT_GEN.length_cntr_reg[0]\(1),
      I5 => SPIXfer_done_int,
      O => Tx_Data_d1
    );
\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFEEFFEEFFEFFFF"
    )
        port map (
      I0 => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[31]\,
      I1 => wrap_around_reg_5,
      I2 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_1_0\,
      I3 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_2_0\,
      I4 => \LEN_CNTR_24_BIT_GEN.length_cntr_reg[0]\(1),
      I5 => \LEN_CNTR_24_BIT_GEN.length_cntr_reg[0]\(0),
      O => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[23]\
    );
\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFBB00B"
    )
        port map (
      I0 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3]_0\,
      I1 => wrap_around_reg_5,
      I2 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_1_0\,
      I3 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_2_0\,
      I4 => Transmit_Addr_to_spi_clk(3),
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3]\
    );
\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFBB00B"
    )
        port map (
      I0 => data2(0),
      I1 => wrap_around_reg_5,
      I2 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_1_0\,
      I3 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_2_0\,
      I4 => Transmit_Addr_to_spi_clk(4),
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[4]\
    );
\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFBB00B"
    )
        port map (
      I0 => data2(1),
      I1 => wrap_around_reg_5,
      I2 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_1_0\,
      I3 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_2_0\,
      I4 => Transmit_Addr_to_spi_clk(5),
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5]\
    );
\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDF0F0DD"
    )
        port map (
      I0 => wrap_around_reg_5,
      I1 => data2(2),
      I2 => Transmit_Addr_to_spi_clk(6),
      I3 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_2_0\,
      I4 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_1_0\,
      O => wrap_around_reg_0
    );
\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDF0F0DD"
    )
        port map (
      I0 => wrap_around_reg_5,
      I1 => data2(3),
      I2 => Transmit_Addr_to_spi_clk(7),
      I3 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_2_0\,
      I4 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_1_0\,
      O => wrap_around_reg
    );
\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0CCCCCCCCAAF0"
    )
        port map (
      I0 => data2(4),
      I1 => Transmit_Addr_to_spi_clk(8),
      I2 => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[8]\,
      I3 => wrap_around_reg_5,
      I4 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_1_0\,
      I5 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_2_0\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8]\
    );
\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0CCCCCCCCAAF0"
    )
        port map (
      I0 => data2(5),
      I1 => Transmit_Addr_to_spi_clk(9),
      I2 => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[9]\,
      I3 => wrap_around_reg_5,
      I4 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_1_0\,
      I5 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_2_0\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9]\
    );
\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888FFFF8BBB0000"
    )
        port map (
      I0 => Transmit_Addr_to_spi_clk(0),
      I1 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0\,
      I2 => \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[0]_i_2_n_0\,
      I3 => \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[0]\,
      I4 => \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[0]_i_4_n_0\,
      I5 => \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[0]_0\,
      O => \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[0].TRANS_ADDR_SYNC_AXI2SPI_CDC_0\
    );
\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[1]_0\,
      I1 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]\,
      I2 => type_of_burst_to_spi_clk,
      O => \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[0]_i_2_n_0\
    );
\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF7000F000"
    )
        port map (
      I0 => size_length_cntr(1),
      I1 => size_length_cntr(0),
      I2 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[1]_0\,
      I3 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]\,
      I4 => type_of_burst_to_spi_clk,
      I5 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0\,
      O => \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[0]_i_4_n_0\
    );
\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EB28FFFFEB280000"
    )
        port map (
      I0 => Transmit_Addr_to_spi_clk(1),
      I1 => \^logic_generation_fdr.ld_cmd_sync_axi2spi_2_0\,
      I2 => \^logic_generation_fdr.ld_cmd_sync_axi2spi_1_0\,
      I3 => \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[1]_i_2_n_0\,
      I4 => \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[1]_i_3_n_0\,
      I5 => p_3_in1_in,
      O => \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[1].TRANS_ADDR_SYNC_AXI2SPI_CDC_1\
    );
\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44777744447F7F44"
    )
        port map (
      I0 => \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[1]_i_4_n_0\,
      I1 => \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[0]_i_2_n_0\,
      I2 => \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[0]\,
      I3 => p_3_in1_in,
      I4 => \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[0]_0\,
      I5 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_9_n_0\,
      O => \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[1]_i_2_n_0\
    );
\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF76FFFFFF00FF00"
    )
        port map (
      I0 => size_length_cntr(0),
      I1 => size_length_cntr(1),
      I2 => \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[1]_i_5_n_0\,
      I3 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0\,
      I4 => type_of_burst_to_spi_clk,
      I5 => hw_wd_cntr0,
      O => \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[1]_i_3_n_0\
    );
\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5455ABBB4444BBBB"
    )
        port map (
      I0 => size_length_cntr(1),
      I1 => size_length_cntr(0),
      I2 => \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[0]_0\,
      I3 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_9_n_0\,
      I4 => p_3_in1_in,
      I5 => \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[1]_i_5_n_0\,
      O => \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[1]_i_4_n_0\
    );
\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[1]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFBFFFF"
    )
        port map (
      I0 => axi_length_to_spi_clk(1),
      I1 => type_of_burst_to_spi_clk,
      I2 => axi_length_to_spi_clk(3),
      I3 => axi_length_to_spi_clk(2),
      I4 => axi_length_to_spi_clk(0),
      O => \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[1]_i_5_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFAAAA0020AAAA"
    )
        port map (
      I0 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[0]_i_2_n_0\,
      I1 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0]_0\,
      I2 => type_of_burst_to_spi_clk,
      I3 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0]_1\,
      I4 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_5_n_0\,
      I5 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0]\,
      O => \LOGIC_GENERATION_FDR.TYP_OF_XFER_SYNC_AXI2SPI_1_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8B888B8B8"
    )
        port map (
      I0 => Transmit_Addr_to_spi_clk(0),
      I1 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0\,
      I2 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[0]_i_4_n_0\,
      I3 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0\(0),
      I4 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1\,
      I5 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[0]_i_2_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF0F0E40F"
    )
        port map (
      I0 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_9_n_0\,
      I1 => O(0),
      I2 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0]\,
      I3 => \size_length_cntr_fixed_reg[0]\,
      I4 => \size_length_cntr_fixed_reg[1]_1\,
      I5 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[4]_0\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[0]_i_4_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF200020"
    )
        port map (
      I0 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1\,
      I1 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2\,
      I2 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0\(10),
      I3 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0\,
      I4 => Transmit_Addr_to_spi_clk(10),
      I5 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[10]_i_2_n_0\,
      O => wrap_around_d2_reg_3
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF000000EA00EA00"
    )
        port map (
      I0 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[10]_0\,
      I1 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[12]_0\(1),
      I2 => \size_length_cntr_fixed_reg[1]_1\,
      I3 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_5_n_0\,
      I4 => data2(6),
      I5 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_9_n_0\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[10]_i_2_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAEAAAAAAAEAA"
    )
        port map (
      I0 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[11]_i_2_n_0\,
      I1 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1\,
      I2 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2\,
      I3 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0\(11),
      I4 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0\,
      I5 => Transmit_Addr_to_spi_clk(11),
      O => wrap_around_d2_reg_4
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF000000EA00EA00"
    )
        port map (
      I0 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[11]_0\,
      I1 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[12]_0\(2),
      I2 => \size_length_cntr_fixed_reg[1]_1\,
      I3 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_5_n_0\,
      I4 => data2(7),
      I5 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_9_n_0\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[11]_i_2_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAEAAAAAAAEAA"
    )
        port map (
      I0 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[12]_i_2_n_0\,
      I1 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1\,
      I2 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2\,
      I3 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0\(12),
      I4 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0\,
      I5 => Transmit_Addr_to_spi_clk(12),
      O => wrap_around_d2_reg_5
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C8C8C8C8C8080808"
    )
        port map (
      I0 => data2(8),
      I1 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_5_n_0\,
      I2 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_4_n_0\,
      I3 => \size_length_cntr_fixed_reg[1]_1\,
      I4 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[12]_0\(3),
      I5 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[12]_1\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[12]_i_2_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFB000000FB00"
    )
        port map (
      I0 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0\(13),
      I1 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1\,
      I2 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2\,
      I3 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[13]_i_2_n_0\,
      I4 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0\,
      I5 => Transmit_Addr_to_spi_clk(13),
      O => \spi_addr_wrap_1_reg[13]\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5C5CFF5C"
    )
        port map (
      I0 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[13]_0\,
      I1 => data2(9),
      I2 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_4_n_0\,
      I3 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1\,
      I4 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[13]_i_2_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFB000000FB00"
    )
        port map (
      I0 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0\(14),
      I1 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1\,
      I2 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2\,
      I3 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[14]_i_2_n_0\,
      I4 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0\,
      I5 => Transmit_Addr_to_spi_clk(14),
      O => \spi_addr_wrap_1_reg[14]\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5C5CFF5C"
    )
        port map (
      I0 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[14]_0\,
      I1 => data2(10),
      I2 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_4_n_0\,
      I3 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1\,
      I4 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[14]_i_2_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFB000000FB00"
    )
        port map (
      I0 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0\(15),
      I1 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1\,
      I2 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2\,
      I3 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[15]_i_2_n_0\,
      I4 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0\,
      I5 => Transmit_Addr_to_spi_clk(15),
      O => \spi_addr_wrap_1_reg[15]\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5C5CFF5C"
    )
        port map (
      I0 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[15]_0\,
      I1 => data2(11),
      I2 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_4_n_0\,
      I3 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1\,
      I4 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[15]_i_2_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFB000000FB00"
    )
        port map (
      I0 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0\(16),
      I1 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1\,
      I2 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2\,
      I3 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[16]_i_2_n_0\,
      I4 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0\,
      I5 => Transmit_Addr_to_spi_clk(16),
      O => \spi_addr_wrap_1_reg[16]\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[16]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5C5CFF5C"
    )
        port map (
      I0 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[16]_0\,
      I1 => data2(12),
      I2 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_4_n_0\,
      I3 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1\,
      I4 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[16]_i_2_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFB000000FB00"
    )
        port map (
      I0 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0\(17),
      I1 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1\,
      I2 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2\,
      I3 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[17]_i_2_n_0\,
      I4 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0\,
      I5 => Transmit_Addr_to_spi_clk(17),
      O => \spi_addr_wrap_1_reg[17]\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[17]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5C5CFF5C"
    )
        port map (
      I0 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[17]_0\,
      I1 => data2(13),
      I2 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_4_n_0\,
      I3 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1\,
      I4 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[17]_i_2_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFB000000FB00"
    )
        port map (
      I0 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0\(18),
      I1 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1\,
      I2 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2\,
      I3 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[18]_i_2_n_0\,
      I4 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0\,
      I5 => Transmit_Addr_to_spi_clk(18),
      O => \spi_addr_wrap_1_reg[18]\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[18]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5C5CFF5C"
    )
        port map (
      I0 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[18]_0\,
      I1 => data2(14),
      I2 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_4_n_0\,
      I3 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1\,
      I4 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[18]_i_2_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFB000000FB00"
    )
        port map (
      I0 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0\(19),
      I1 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1\,
      I2 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2\,
      I3 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[19]_i_2_n_0\,
      I4 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0\,
      I5 => Transmit_Addr_to_spi_clk(19),
      O => \spi_addr_wrap_1_reg[19]\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[19]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5C5CFF5C"
    )
        port map (
      I0 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[19]_0\,
      I1 => data2(15),
      I2 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_4_n_0\,
      I3 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1\,
      I4 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[19]_i_2_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFB8FF0000B800"
    )
        port map (
      I0 => Transmit_Addr_to_spi_clk(1),
      I1 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0\,
      I2 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_2_n_0\,
      I3 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_3_n_0\,
      I4 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_4_n_0\,
      I5 => p_8_in,
      O => \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[1].TRANS_ADDR_SYNC_AXI2SPI_CDC_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000EEEFEEEF"
    )
        port map (
      I0 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_5_n_0\,
      I1 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_6_n_0\,
      I2 => wrap_around_reg_8,
      I3 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_8_n_0\,
      I4 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0\(1),
      I5 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[4]_0\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_2_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0444"
    )
        port map (
      I0 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0]_0\,
      I1 => type_of_burst_to_spi_clk,
      I2 => \size_length_cntr_fixed_reg[0]\,
      I3 => \size_length_cntr_fixed_reg[1]_1\,
      I4 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[4]_0\,
      I5 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_3_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[4]_0\,
      I1 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0\,
      I2 => \size_length_cntr_fixed_reg[0]\,
      I3 => \size_length_cntr_fixed_reg[1]_1\,
      I4 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_8_n_0\,
      I5 => axi_length_to_spi_clk(1),
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_4_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_0\(0),
      I1 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_9_n_0\,
      I2 => p_8_in,
      I3 => \size_length_cntr_fixed_reg[1]_1\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_5_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"002E0000"
    )
        port map (
      I0 => O(1),
      I1 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_9_n_0\,
      I2 => p_8_in,
      I3 => \size_length_cntr_fixed_reg[1]_1\,
      I4 => \size_length_cntr_fixed_reg[0]\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_6_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A353A353A35300F3"
    )
        port map (
      I0 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0]\,
      I1 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_1\(0),
      I2 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_9_n_0\,
      I3 => p_8_in,
      I4 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_8_n_0\,
      I5 => axi_length_to_spi_clk(1),
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_8_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFB000000FB00"
    )
        port map (
      I0 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0\(20),
      I1 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1\,
      I2 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2\,
      I3 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[20]_i_2_n_0\,
      I4 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0\,
      I5 => Transmit_Addr_to_spi_clk(20),
      O => \spi_addr_wrap_1_reg[20]\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[20]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5C5CFF5C"
    )
        port map (
      I0 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20]_0\,
      I1 => data2(16),
      I2 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_4_n_0\,
      I3 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1\,
      I4 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[20]_i_2_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFB000000FB00"
    )
        port map (
      I0 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0\(21),
      I1 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1\,
      I2 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2\,
      I3 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[21]_i_2_n_0\,
      I4 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0\,
      I5 => Transmit_Addr_to_spi_clk(21),
      O => \spi_addr_wrap_1_reg[21]\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[21]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5C5CFF5C"
    )
        port map (
      I0 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[21]_0\,
      I1 => data2(17),
      I2 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_4_n_0\,
      I3 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1\,
      I4 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[21]_i_2_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAA8A0000AA8A"
    )
        port map (
      I0 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[22]_i_2_n_0\,
      I1 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0\(22),
      I2 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1\,
      I3 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2\,
      I4 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0\,
      I5 => Transmit_Addr_to_spi_clk(22),
      O => \spi_addr_wrap_1_reg[22]\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFCFCCEFEEEFEE"
    )
        port map (
      I0 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[22]_0\,
      I1 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0\,
      I2 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2\,
      I3 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1\,
      I4 => data2(18),
      I5 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_9_n_0\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[22]_i_2_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00700000FFFFFFFF"
    )
        port map (
      I0 => \size_length_cntr_fixed_reg[1]_1\,
      I1 => \size_length_cntr_fixed_reg[0]\,
      I2 => type_of_burst_to_spi_clk,
      I3 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0]_0\,
      I4 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_4_n_0\,
      I5 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_5_n_0\,
      O => \size_length_cntr_fixed_reg[1]_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAA8A0000AA8A"
    )
        port map (
      I0 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_6_n_0\,
      I1 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0\(23),
      I2 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1\,
      I3 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2\,
      I4 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0\,
      I5 => Transmit_Addr_to_spi_clk(23),
      O => \spi_addr_wrap_1_reg[23]\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"75FFFDFF"
    )
        port map (
      I0 => axi_length_to_spi_clk(0),
      I1 => axi_length_to_spi_clk(2),
      I2 => axi_length_to_spi_clk(3),
      I3 => type_of_burst_to_spi_clk,
      I4 => axi_length_to_spi_clk(1),
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_4_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9099"
    )
        port map (
      I0 => \^logic_generation_fdr.ld_cmd_sync_axi2spi_1_0\,
      I1 => \^logic_generation_fdr.ld_cmd_sync_axi2spi_2_0\,
      I2 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2\,
      I3 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_5_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFCFCCEFEEEFEE"
    )
        port map (
      I0 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_1\,
      I1 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0\,
      I2 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2\,
      I3 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1\,
      I4 => data2(19),
      I5 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_9_n_0\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_6_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^logic_generation_fdr.ld_cmd_sync_axi2spi_2_0\,
      I1 => \^logic_generation_fdr.ld_cmd_sync_axi2spi_1_0\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"880C0000"
    )
        port map (
      I0 => axi_length_to_spi_clk(1),
      I1 => type_of_burst_to_spi_clk,
      I2 => axi_length_to_spi_clk(3),
      I3 => axi_length_to_spi_clk(2),
      I4 => axi_length_to_spi_clk(0),
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_9_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAACCCFAAAACCC0"
    )
        port map (
      I0 => Transmit_Addr_to_spi_clk(2),
      I1 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_2_n_0\,
      I2 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_3_n_0\,
      I3 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[4]_0\,
      I4 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0\,
      I5 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2]\,
      O => \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[2].TRANS_ADDR_SYNC_AXI2SPI_CDC_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFFEFFFE"
    )
        port map (
      I0 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_4_n_0\,
      I1 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_5_n_0\,
      I2 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_6_n_0\,
      I3 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_7_n_0\,
      I4 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0\(2),
      I5 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[4]_0\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_2_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00003F3800000000"
    )
        port map (
      I0 => axi_length_to_spi_clk(1),
      I1 => \size_length_cntr_fixed_reg[0]\,
      I2 => \size_length_cntr_fixed_reg[1]_1\,
      I3 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_8_n_0\,
      I4 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0]_0\,
      I5 => type_of_burst_to_spi_clk,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_3_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C404"
    )
        port map (
      I0 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2]\,
      I1 => \size_length_cntr_fixed_reg[1]_1\,
      I2 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_4_n_0\,
      I3 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_0\(1),
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_4_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000080000"
    )
        port map (
      I0 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2]\,
      I1 => axi_length_to_spi_clk(0),
      I2 => axi_length_to_spi_clk(2),
      I3 => axi_length_to_spi_clk(3),
      I4 => type_of_burst_to_spi_clk,
      I5 => wrap_around_reg_8,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_5_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0090009000F00000"
    )
        port map (
      I0 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2]\,
      I1 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_2_1\,
      I2 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_8_n_0\,
      I3 => wrap_around_reg_8,
      I4 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_1\(1),
      I5 => wrap_around_i_6_n_0,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_6_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"28AA2820A0AAA020"
    )
        port map (
      I0 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_2_0\,
      I1 => \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[1]_i_5_n_0\,
      I2 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2]\,
      I3 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_9_n_0\,
      I4 => O(2),
      I5 => p_8_in,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_7_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F444FFFFF4440000"
    )
        port map (
      I0 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2_n_0\,
      I1 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_3_n_0\,
      I2 => Transmit_Addr_to_spi_clk(3),
      I3 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0\,
      I4 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_4_n_0\,
      I5 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3]_0\,
      O => \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[3].TRANS_ADDR_SYNC_AXI2SPI_CDC_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => axi_length_to_spi_clk(3),
      I1 => axi_length_to_spi_clk(0),
      I2 => axi_length_to_spi_clk(2),
      I3 => axi_length_to_spi_clk(1),
      I4 => type_of_burst_to_spi_clk,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_10_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66666F66"
    )
        port map (
      I0 => \^logic_generation_fdr.ld_cmd_sync_axi2spi_1_0\,
      I1 => \^logic_generation_fdr.ld_cmd_sync_axi2spi_2_0\,
      I2 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0\(3),
      I3 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1\,
      I4 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF001BFF1B"
    )
        port map (
      I0 => \size_length_cntr_fixed_reg[0]\,
      I1 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_5_n_0\,
      I2 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_6_n_0\,
      I3 => \size_length_cntr_fixed_reg[1]_1\,
      I4 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_7_n_0\,
      I5 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[4]_0\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_3_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"11004544FFFFFFFF"
    )
        port map (
      I0 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_8_n_0\,
      I1 => \size_length_cntr_fixed_reg[1]_1\,
      I2 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_7_n_0\,
      I3 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_8_n_0\,
      I4 => \size_length_cntr_fixed_reg[0]\,
      I5 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_5_n_0\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_4_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DEE0E0000EE0E"
    )
        port map (
      I0 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_3_0\,
      I1 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_10_n_0\,
      I2 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_1\(2),
      I3 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_9_n_0\,
      I4 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3]_0\,
      I5 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_11_n_0\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_5_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88000F0077770FFF"
    )
        port map (
      I0 => p_8_in,
      I1 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2]\,
      I2 => O(3),
      I3 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_8_n_0\,
      I4 => wrap_around_i_6_n_0,
      I5 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3]_0\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_6_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F70404F7C40407F7"
    )
        port map (
      I0 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_0\(2),
      I1 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_8_n_0\,
      I2 => wrap_around_i_6_n_0,
      I3 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2]\,
      I4 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3]_0\,
      I5 => axi_length_to_spi_clk(1),
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_7_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0100FFFF"
    )
        port map (
      I0 => axi_length_to_spi_clk(1),
      I1 => axi_length_to_spi_clk(3),
      I2 => axi_length_to_spi_clk(2),
      I3 => axi_length_to_spi_clk(0),
      I4 => type_of_burst_to_spi_clk,
      I5 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0]_0\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_8_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEAAAFEEEEAAA0"
    )
        port map (
      I0 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_n_0\,
      I1 => Transmit_Addr_to_spi_clk(4),
      I2 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_3_n_0\,
      I3 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[4]_0\,
      I4 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0\,
      I5 => data2(0),
      O => \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[4].TRANS_ADDR_SYNC_AXI2SPI_CDC_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => axi_length_to_spi_clk(0),
      I1 => axi_length_to_spi_clk(2),
      I2 => axi_length_to_spi_clk(1),
      I3 => type_of_burst_to_spi_clk,
      I4 => axi_length_to_spi_clk(3),
      I5 => data2(0),
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_10_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F77777777FFFFFFF"
    )
        port map (
      I0 => wrap_around_i_6_n_0,
      I1 => axi_length_to_spi_clk(3),
      I2 => p_8_in,
      I3 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3]_0\,
      I4 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2]\,
      I5 => data2(0),
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_11_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"444444444F444444"
    )
        port map (
      I0 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2\,
      I1 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1\,
      I2 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_8_n_0\,
      I3 => data2(0),
      I4 => \size_length_cntr_fixed_reg[0]\,
      I5 => \size_length_cntr_fixed_reg[1]_1\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_12_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FEFE00FE"
    )
        port map (
      I0 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_4_n_0\,
      I1 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_5_n_0\,
      I2 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_6_n_0\,
      I3 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[4]_0\,
      I4 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0\(4),
      I5 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000037260000"
    )
        port map (
      I0 => \size_length_cntr_fixed_reg[1]_1\,
      I1 => \size_length_cntr_fixed_reg[0]\,
      I2 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_7_n_0\,
      I3 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_7_n_0\,
      I4 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_8_n_0\,
      I5 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_8_n_0\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_3_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8088808088888888"
    )
        port map (
      I0 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_8_n_0\,
      I1 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_2_0\,
      I2 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_10_n_0\,
      I3 => wrap_around_i_6_n_0,
      I4 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_2\(0),
      I5 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_11_n_0\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_4_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF10111000"
    )
        port map (
      I0 => \size_length_cntr_fixed_reg[0]\,
      I1 => \size_length_cntr_fixed_reg[1]_1\,
      I2 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_1\(3),
      I3 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_4_n_0\,
      I4 => data2(0),
      I5 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_12_n_0\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_5_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88A888082AA82A08"
    )
        port map (
      I0 => \size_length_cntr_fixed_reg[1]_1\,
      I1 => data2(0),
      I2 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_8_n_0\,
      I3 => wrap_around_i_6_n_0,
      I4 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_0\(3),
      I5 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_3\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_6_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => axi_length_to_spi_clk(3),
      I1 => type_of_burst_to_spi_clk,
      I2 => axi_length_to_spi_clk(1),
      I3 => axi_length_to_spi_clk(2),
      I4 => axi_length_to_spi_clk(0),
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_7_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF7FFFF"
    )
        port map (
      I0 => SPIXfer_done_int,
      I1 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]\,
      I2 => size_length_cntr(1),
      I3 => size_length_cntr(0),
      I4 => type_of_burst_to_spi_clk,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_8_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F88FFFF8F880000"
    )
        port map (
      I0 => Transmit_Addr_to_spi_clk(5),
      I1 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0\,
      I2 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_2_n_0\,
      I3 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_3_n_0\,
      I4 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_4_n_0\,
      I5 => data2(1),
      O => \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[5].TRANS_ADDR_SYNC_AXI2SPI_CDC_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => \size_length_cntr_fixed_reg[1]_1\,
      I1 => type_of_burst_to_spi_clk,
      I2 => axi_length_to_spi_clk(1),
      I3 => axi_length_to_spi_clk(2),
      I4 => axi_length_to_spi_clk(0),
      I5 => axi_length_to_spi_clk(3),
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_10_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF5DFF"
    )
        port map (
      I0 => axi_length_to_spi_clk(0),
      I1 => axi_length_to_spi_clk(2),
      I2 => axi_length_to_spi_clk(1),
      I3 => type_of_burst_to_spi_clk,
      I4 => axi_length_to_spi_clk(3),
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_11_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66666F66"
    )
        port map (
      I0 => \^logic_generation_fdr.ld_cmd_sync_axi2spi_1_0\,
      I1 => \^logic_generation_fdr.ld_cmd_sync_axi2spi_2_0\,
      I2 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0\(5),
      I3 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1\,
      I4 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_2_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF7500"
    )
        port map (
      I0 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_5_n_0\,
      I1 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5]_0\,
      I2 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_7_n_0\,
      I3 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_8_n_0\,
      I4 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_9_n_0\,
      I5 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[4]_0\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_3_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00100000FFFFFFFF"
    )
        port map (
      I0 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_10_n_0\,
      I1 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0]_0\,
      I2 => type_of_burst_to_spi_clk,
      I3 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0]_1\,
      I4 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_11_n_0\,
      I5 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_5_n_0\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_4_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5515FFBFFFFFFFFF"
    )
        port map (
      I0 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_7_n_0\,
      I1 => axi_length_to_spi_clk(3),
      I2 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_3_0\,
      I3 => data2(1),
      I4 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8]_0\(0),
      I5 => \size_length_cntr_fixed_reg[1]_1\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_5_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => axi_length_to_spi_clk(0),
      I1 => axi_length_to_spi_clk(2),
      I2 => axi_length_to_spi_clk(1),
      I3 => type_of_burst_to_spi_clk,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_7_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FDFF"
    )
        port map (
      I0 => axi_length_to_spi_clk(0),
      I1 => axi_length_to_spi_clk(2),
      I2 => axi_length_to_spi_clk(3),
      I3 => type_of_burst_to_spi_clk,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_8_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080AAAA8080AAAA"
    )
        port map (
      I0 => data2(1),
      I1 => wrap_around_i_6_n_0,
      I2 => axi_length_to_spi_clk(3),
      I3 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_3_0\,
      I4 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_11_n_0\,
      I5 => \size_length_cntr_fixed_reg[1]_1\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_9_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAEAAAAAAAEAA"
    )
        port map (
      I0 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[6]_i_2_n_0\,
      I1 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1\,
      I2 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2\,
      I3 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0\(6),
      I4 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0\,
      I5 => Transmit_Addr_to_spi_clk(6),
      O => wrap_around_d2_reg
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF000000EA00EA00"
    )
        port map (
      I0 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[6]\,
      I1 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8]_0\(1),
      I2 => \size_length_cntr_fixed_reg[1]_1\,
      I3 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_5_n_0\,
      I4 => data2(2),
      I5 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_9_n_0\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[6]_i_2_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAEAAAAAAAEAA"
    )
        port map (
      I0 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[7]_i_2_n_0\,
      I1 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1\,
      I2 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2\,
      I3 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0\(7),
      I4 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0\,
      I5 => Transmit_Addr_to_spi_clk(7),
      O => wrap_around_d2_reg_0
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF000000EA00EA00"
    )
        port map (
      I0 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[7]\,
      I1 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8]_0\(2),
      I2 => \size_length_cntr_fixed_reg[1]_1\,
      I3 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_5_n_0\,
      I4 => data2(3),
      I5 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_9_n_0\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[7]_i_2_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAEAAAAAAAEAA"
    )
        port map (
      I0 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[8]_i_2_n_0\,
      I1 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1\,
      I2 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2\,
      I3 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0\(8),
      I4 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0\,
      I5 => Transmit_Addr_to_spi_clk(8),
      O => wrap_around_d2_reg_1
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF000000EA00EA00"
    )
        port map (
      I0 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8]_1\,
      I1 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8]_0\(3),
      I2 => \size_length_cntr_fixed_reg[1]_1\,
      I3 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_5_n_0\,
      I4 => data2(4),
      I5 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_9_n_0\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[8]_i_2_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAEAAAAAAAEAA"
    )
        port map (
      I0 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[9]_i_2_n_0\,
      I1 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1\,
      I2 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2\,
      I3 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0\(9),
      I4 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0\,
      I5 => Transmit_Addr_to_spi_clk(9),
      O => wrap_around_d2_reg_2
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF000000EA00EA00"
    )
        port map (
      I0 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9]_0\,
      I1 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[12]_0\(0),
      I2 => \size_length_cntr_fixed_reg[1]_1\,
      I3 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_5_n_0\,
      I4 => data2(5),
      I5 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_9_n_0\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[9]_i_2_n_0\
    );
S_AXI4_ARREADY_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FB"
    )
        port map (
      I0 => s_axi4_arburst(0),
      I1 => s_axi4_arvalid,
      I2 => s_axi4_arburst(1),
      I3 => S_AXI4_ARREADY_i_i_2_n_0,
      O => \^load_axi_data_frm_axi_clk\
    );
S_AXI4_ARREADY_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF7FF"
    )
        port map (
      I0 => wb_hpm_done_to_axi,
      I1 => empty,
      I2 => XIPSR_CPHA_CPOL_ERR_d2,
      I3 => s_axi4_arvalid,
      I4 => xip_sm_ps,
      I5 => Rx_FIFO_Full_to_axi4_clk,
      O => S_AXI4_ARREADY_i_i_2_n_0
    );
\TRANSFER_START_24_BIT_ADDR_GEN.transfer_start_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CBFBFFFF"
    )
        port map (
      I0 => Rst_to_spi,
      I1 => \LEN_CNTR_24_BIT_GEN.length_cntr_reg[0]\(1),
      I2 => \LEN_CNTR_24_BIT_GEN.length_cntr_reg[0]\(0),
      I3 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_0\,
      I4 => hpm_under_process_d1,
      I5 => \TRANSFER_START_24_BIT_ADDR_GEN.transfer_start_i_2_n_0\,
      O => RESET_SYNC_AX2S_2_0
    );
\TRANSFER_START_24_BIT_ADDR_GEN.transfer_start_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEEEFFEEEF"
    )
        port map (
      I0 => wrap_around_reg_5,
      I1 => Rst_to_spi,
      I2 => \RATIO_OF_2_GENERATE.SCK_O_NQ_4_STARTUP_USED.SCK_O_reg_reg\,
      I3 => new_tr0,
      I4 => \TRANSFER_START_24_BIT_ADDR_GEN.transfer_start_reg\,
      I5 => start_after_wrap_d1,
      O => \TRANSFER_START_24_BIT_ADDR_GEN.transfer_start_i_2_n_0\
    );
\TRANSFER_START_24_BIT_ADDR_GEN.transfer_start_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"666F"
    )
        port map (
      I0 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_1_0\,
      I1 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_2_0\,
      I2 => \LEN_CNTR_24_BIT_GEN.length_cntr_reg[0]\(0),
      I3 => \LEN_CNTR_24_BIT_GEN.length_cntr_reg[0]\(1),
      O => new_tr0
    );
\dtr_length[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"020002FF"
    )
        port map (
      I0 => s_axi4_arlen(0),
      I1 => s_axi4_arlen(6),
      I2 => s_axi4_arlen(7),
      I3 => \^load_axi_data_frm_axi_clk\,
      I4 => \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[7].DTR_LEN_SYNC_AXI2SPI_0\(0),
      O => \dtr_length_reg[5]\(0)
    );
\dtr_length[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02FF0200020002FF"
    )
        port map (
      I0 => s_axi4_arlen(1),
      I1 => s_axi4_arlen(6),
      I2 => s_axi4_arlen(7),
      I3 => \^load_axi_data_frm_axi_clk\,
      I4 => \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[7].DTR_LEN_SYNC_AXI2SPI_0\(1),
      I5 => \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[7].DTR_LEN_SYNC_AXI2SPI_0\(0),
      O => \dtr_length_reg[5]\(1)
    );
\dtr_length[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F8F8F808080808F"
    )
        port map (
      I0 => s_axi4_arlen(2),
      I1 => \dtr_length_reg[5]_0\,
      I2 => \^load_axi_data_frm_axi_clk\,
      I3 => \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[7].DTR_LEN_SYNC_AXI2SPI_0\(1),
      I4 => \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[7].DTR_LEN_SYNC_AXI2SPI_0\(0),
      I5 => \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[7].DTR_LEN_SYNC_AXI2SPI_0\(2),
      O => \dtr_length_reg[5]\(2)
    );
\dtr_length[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F808F808F80808F"
    )
        port map (
      I0 => s_axi4_arlen(3),
      I1 => \dtr_length_reg[5]_0\,
      I2 => \^load_axi_data_frm_axi_clk\,
      I3 => \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[7].DTR_LEN_SYNC_AXI2SPI_0\(3),
      I4 => \dtr_length_reg[3]\,
      I5 => \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[7].DTR_LEN_SYNC_AXI2SPI_0\(2),
      O => \dtr_length_reg[5]\(3)
    );
\dtr_length[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"020002FF02FF0200"
    )
        port map (
      I0 => s_axi4_arlen(4),
      I1 => s_axi4_arlen(6),
      I2 => s_axi4_arlen(7),
      I3 => \^load_axi_data_frm_axi_clk\,
      I4 => \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[7].DTR_LEN_SYNC_AXI2SPI_0\(4),
      I5 => \dtr_length_reg[7]\,
      O => \dtr_length_reg[5]\(4)
    );
\dtr_length[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F80808F8F808F80"
    )
        port map (
      I0 => s_axi4_arlen(5),
      I1 => \dtr_length_reg[5]_0\,
      I2 => \^load_axi_data_frm_axi_clk\,
      I3 => \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[7].DTR_LEN_SYNC_AXI2SPI_0\(5),
      I4 => \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[7].DTR_LEN_SYNC_AXI2SPI_0\(4),
      I5 => \dtr_length_reg[7]\,
      O => \dtr_length_reg[5]\(5)
    );
\dtr_length[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FB04"
    )
        port map (
      I0 => \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[7].DTR_LEN_SYNC_AXI2SPI_0\(4),
      I1 => \dtr_length_reg[7]\,
      I2 => \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[7].DTR_LEN_SYNC_AXI2SPI_0\(5),
      I3 => \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[7].DTR_LEN_SYNC_AXI2SPI_0\(6),
      I4 => \^load_axi_data_frm_axi_clk\,
      O => \dtr_length_reg[5]\(6)
    );
\dtr_length[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \^load_axi_data_frm_axi_clk\,
      I1 => empty,
      I2 => s_axi4_rready,
      O => \gen_fwft.empty_fwft_i_reg\(0)
    );
\dtr_length[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFB0004"
    )
        port map (
      I0 => \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[7].DTR_LEN_SYNC_AXI2SPI_0\(5),
      I1 => \dtr_length_reg[7]\,
      I2 => \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[7].DTR_LEN_SYNC_AXI2SPI_0\(4),
      I3 => \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[7].DTR_LEN_SYNC_AXI2SPI_0\(6),
      I4 => \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[7].DTR_LEN_SYNC_AXI2SPI_0\(7),
      I5 => \^load_axi_data_frm_axi_clk\,
      O => \dtr_length_reg[5]\(7)
    );
\size_length_cntr[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3F3BCFC8"
    )
        port map (
      I0 => four_byte_xfer_to_spi_clk,
      I1 => \size_length_cntr[1]_i_2_n_0\,
      I2 => \size_length_cntr_reg[0]\,
      I3 => two_byte_xfer_to_spi_clk,
      I4 => size_length_cntr(0),
      O => \LOGIC_GENERATION_FDR.WORD_XFER_SYNC_AXI2SPI_1_0\
    );
\size_length_cntr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAE266E2"
    )
        port map (
      I0 => size_length_cntr(1),
      I1 => \size_length_cntr[1]_i_2_n_0\,
      I2 => four_byte_xfer_to_spi_clk,
      I3 => \size_length_cntr_reg[0]\,
      I4 => size_length_cntr(0),
      I5 => \size_length_cntr[1]_i_4_n_0\,
      O => \size_length_cntr_reg[1]\
    );
\size_length_cntr[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1F0F1F0FFF0F1F0"
    )
        port map (
      I0 => size_length_cntr(0),
      I1 => size_length_cntr(1),
      I2 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]\(0),
      I3 => SPIXfer_done_int,
      I4 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]\,
      I5 => one_byte_xfer_to_spi_clk,
      O => \size_length_cntr[1]_i_2_n_0\
    );
\size_length_cntr[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEFEEEEAAAAAAAA"
    )
        port map (
      I0 => Rst_to_spi,
      I1 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]\(0),
      I2 => size_length_cntr(1),
      I3 => size_length_cntr(0),
      I4 => SPIXfer_done_int,
      I5 => two_byte_xfer_to_spi_clk,
      O => \size_length_cntr[1]_i_4_n_0\
    );
\size_length_cntr_fixed[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFFFBAAAA0008"
    )
        port map (
      I0 => two_byte_xfer_to_spi_clk,
      I1 => SPIXfer_done_int,
      I2 => size_length_cntr(0),
      I3 => size_length_cntr(1),
      I4 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]\(0),
      I5 => \size_length_cntr_fixed_reg[0]\,
      O => \LOGIC_GENERATION_FDR.HW_XFER_SYNC_AXI2SPI_1_0\
    );
\size_length_cntr_fixed[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AA0C"
    )
        port map (
      I0 => \size_length_cntr_fixed_reg[1]_1\,
      I1 => four_byte_xfer_to_spi_clk,
      I2 => two_byte_xfer_to_spi_clk,
      I3 => \size_length_cntr_reg[0]\,
      I4 => Rst_to_spi,
      O => \size_length_cntr_fixed_reg[1]\
    );
wrap_around_d1_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BE"
    )
        port map (
      I0 => Rst_to_spi,
      I1 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_1_0\,
      I2 => \^logic_generation_fdr.ld_axi_data_sync_axi2spi_2_0\,
      O => cmd_addr_cntr1
    );
wrap_around_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000A8AAA800"
    )
        port map (
      I0 => wrap_around_reg_6,
      I1 => wrap_around_i_3_n_0,
      I2 => wrap_around_i_4_n_0,
      I3 => wrap_around25_out,
      I4 => wrap_around_reg_5,
      I5 => Rst_to_spi,
      O => wrap_around_reg_4
    );
wrap_around_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F8AAFF8888AAFF"
    )
        port map (
      I0 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3]_0\,
      I1 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_10_n_0\,
      I2 => data2(1),
      I3 => axi_length_to_spi_clk(1),
      I4 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_8_n_0\,
      I5 => wrap_around_i_14_n_0,
      O => wrap_around_i_10_n_0
    );
wrap_around_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EA00FF00EA00FFFF"
    )
        port map (
      I0 => wrap_around_i_14_n_0,
      I1 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_7_n_0\,
      I2 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3]_0\,
      I3 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2]\,
      I4 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_8_n_0\,
      I5 => axi_length_to_spi_clk(1),
      O => wrap_around_i_12_n_0
    );
wrap_around_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55DDDDDDFDFDFDFD"
    )
        port map (
      I0 => p_8_in,
      I1 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_8_n_0\,
      I2 => axi_length_to_spi_clk(1),
      I3 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_7_n_0\,
      I4 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2]\,
      I5 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0]\,
      O => wrap_around_i_13_n_0
    );
wrap_around_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_7_n_0\,
      I1 => axi_length_to_spi_clk(3),
      I2 => data2(0),
      I3 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3]_0\,
      O => wrap_around_i_14_n_0
    );
wrap_around_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000080800FF"
    )
        port map (
      I0 => wrap_around_i_6_n_0,
      I1 => axi_length_to_spi_clk(3),
      I2 => wrap_around_reg_7,
      I3 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_0\,
      I4 => wrap_around_i_8_n_0,
      I5 => wrap_around_reg_8,
      O => wrap_around_i_3_n_0
    );
wrap_around_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000F00040004"
    )
        port map (
      I0 => wrap_around_reg_9,
      I1 => wrap_around_i_10_n_0,
      I2 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0]_0\,
      I3 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_0\,
      I4 => wrap_around_reg_10,
      I5 => wrap_around_i_12_n_0,
      O => wrap_around_i_4_n_0
    );
wrap_around_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => type_of_burst_to_spi_clk,
      I1 => \size_length_cntr_fixed_reg[0]\,
      I2 => \size_length_cntr_fixed_reg[1]_1\,
      O => wrap_around25_out
    );
wrap_around_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => type_of_burst_to_spi_clk,
      I1 => axi_length_to_spi_clk(1),
      I2 => axi_length_to_spi_clk(2),
      I3 => axi_length_to_spi_clk(0),
      O => wrap_around_i_6_n_0
    );
wrap_around_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF7"
    )
        port map (
      I0 => SPIXfer_done_int,
      I1 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]\,
      I2 => size_length_cntr(1),
      I3 => size_length_cntr(0),
      I4 => wrap_around_i_13_n_0,
      O => wrap_around_i_8_n_0
    );
xip_sm_ps_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFAA"
    )
        port map (
      I0 => \^load_axi_data_frm_axi_clk\,
      I1 => s_axi4_rready,
      I2 => last_data_acked,
      I3 => xip_sm_ps,
      O => xip_sm_ns
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_quad_spi_0_0_xip_status_reg is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_axi_quad_spi_0_0_xip_status_reg : entity is "xip_status_reg";
end icyradio_axi_quad_spi_0_0_xip_status_reg;

architecture STRUCTURE of icyradio_axi_quad_spi_0_0_xip_status_reg is
begin
\XIPSR_data_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(0),
      Q => Q(0),
      R => SR(0)
    );
\XIPSR_data_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(1),
      Q => Q(1),
      R => SR(0)
    );
\XIPSR_data_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(2),
      Q => Q(2),
      R => SR(0)
    );
\XIPSR_data_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(3),
      Q => Q(3),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_quad_spi_0_0_xpm_cdc_gray is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 5 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of icyradio_axi_quad_spi_0_0_xpm_cdc_gray : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of icyradio_axi_quad_spi_0_0_xpm_cdc_gray : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_axi_quad_spi_0_0_xpm_cdc_gray : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of icyradio_axi_quad_spi_0_0_xpm_cdc_gray : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of icyradio_axi_quad_spi_0_0_xpm_cdc_gray : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of icyradio_axi_quad_spi_0_0_xpm_cdc_gray : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of icyradio_axi_quad_spi_0_0_xpm_cdc_gray : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of icyradio_axi_quad_spi_0_0_xpm_cdc_gray : entity is 6;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of icyradio_axi_quad_spi_0_0_xpm_cdc_gray : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of icyradio_axi_quad_spi_0_0_xpm_cdc_gray : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of icyradio_axi_quad_spi_0_0_xpm_cdc_gray : entity is "GRAY";
end icyradio_axi_quad_spi_0_0_xpm_cdc_gray;

architecture STRUCTURE of icyradio_axi_quad_spi_0_0_xpm_cdc_gray is
  signal async_path : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \^dest_out_bin\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal gray_enc : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][5]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair31";
begin
  dest_out_bin(5) <= \dest_graysync_ff[1]\(5);
  dest_out_bin(4 downto 0) <= \^dest_out_bin\(4 downto 0);
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(5),
      Q => \dest_graysync_ff[0]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(5),
      Q => \dest_graysync_ff[1]\(5),
      R => '0'
    );
\dest_out_bin[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(0),
      I1 => \dest_graysync_ff[1]\(2),
      I2 => \dest_graysync_ff[1]\(4),
      I3 => \dest_graysync_ff[1]\(5),
      I4 => \dest_graysync_ff[1]\(3),
      I5 => \dest_graysync_ff[1]\(1),
      O => \^dest_out_bin\(0)
    );
\dest_out_bin[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(1),
      I1 => \dest_graysync_ff[1]\(3),
      I2 => \dest_graysync_ff[1]\(5),
      I3 => \dest_graysync_ff[1]\(4),
      I4 => \dest_graysync_ff[1]\(2),
      O => \^dest_out_bin\(1)
    );
\dest_out_bin[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => \dest_graysync_ff[1]\(4),
      I2 => \dest_graysync_ff[1]\(5),
      I3 => \dest_graysync_ff[1]\(3),
      O => \^dest_out_bin\(2)
    );
\dest_out_bin[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(5),
      I2 => \dest_graysync_ff[1]\(4),
      O => \^dest_out_bin\(3)
    );
\dest_out_bin[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(4),
      I1 => \dest_graysync_ff[1]\(5),
      O => \^dest_out_bin\(4)
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(4),
      I1 => src_in_bin(3),
      O => gray_enc(3)
    );
\src_gray_ff[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(5),
      I1 => src_in_bin(4),
      O => gray_enc(4)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(4),
      Q => async_path(4),
      R => '0'
    );
\src_gray_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(5),
      Q => async_path(5),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \icyradio_axi_quad_spi_0_0_xpm_cdc_gray__1\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 5 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \icyradio_axi_quad_spi_0_0_xpm_cdc_gray__1\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \icyradio_axi_quad_spi_0_0_xpm_cdc_gray__1\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \icyradio_axi_quad_spi_0_0_xpm_cdc_gray__1\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \icyradio_axi_quad_spi_0_0_xpm_cdc_gray__1\ : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \icyradio_axi_quad_spi_0_0_xpm_cdc_gray__1\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \icyradio_axi_quad_spi_0_0_xpm_cdc_gray__1\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \icyradio_axi_quad_spi_0_0_xpm_cdc_gray__1\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \icyradio_axi_quad_spi_0_0_xpm_cdc_gray__1\ : entity is 6;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \icyradio_axi_quad_spi_0_0_xpm_cdc_gray__1\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \icyradio_axi_quad_spi_0_0_xpm_cdc_gray__1\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \icyradio_axi_quad_spi_0_0_xpm_cdc_gray__1\ : entity is "GRAY";
end \icyradio_axi_quad_spi_0_0_xpm_cdc_gray__1\;

architecture STRUCTURE of \icyradio_axi_quad_spi_0_0_xpm_cdc_gray__1\ is
  signal async_path : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \^dest_out_bin\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal gray_enc : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][5]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair26";
begin
  dest_out_bin(5) <= \dest_graysync_ff[1]\(5);
  dest_out_bin(4 downto 0) <= \^dest_out_bin\(4 downto 0);
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(5),
      Q => \dest_graysync_ff[0]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(5),
      Q => \dest_graysync_ff[1]\(5),
      R => '0'
    );
\dest_out_bin[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(0),
      I1 => \dest_graysync_ff[1]\(2),
      I2 => \dest_graysync_ff[1]\(4),
      I3 => \dest_graysync_ff[1]\(5),
      I4 => \dest_graysync_ff[1]\(3),
      I5 => \dest_graysync_ff[1]\(1),
      O => \^dest_out_bin\(0)
    );
\dest_out_bin[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(1),
      I1 => \dest_graysync_ff[1]\(3),
      I2 => \dest_graysync_ff[1]\(5),
      I3 => \dest_graysync_ff[1]\(4),
      I4 => \dest_graysync_ff[1]\(2),
      O => \^dest_out_bin\(1)
    );
\dest_out_bin[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => \dest_graysync_ff[1]\(4),
      I2 => \dest_graysync_ff[1]\(5),
      I3 => \dest_graysync_ff[1]\(3),
      O => \^dest_out_bin\(2)
    );
\dest_out_bin[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(5),
      I2 => \dest_graysync_ff[1]\(4),
      O => \^dest_out_bin\(3)
    );
\dest_out_bin[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(4),
      I1 => \dest_graysync_ff[1]\(5),
      O => \^dest_out_bin\(4)
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(4),
      I1 => src_in_bin(3),
      O => gray_enc(3)
    );
\src_gray_ff[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(5),
      I1 => src_in_bin(4),
      O => gray_enc(4)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(4),
      Q => async_path(4),
      R => '0'
    );
\src_gray_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(5),
      Q => async_path(5),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \icyradio_axi_quad_spi_0_0_xpm_cdc_gray__parameterized0\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 6 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \icyradio_axi_quad_spi_0_0_xpm_cdc_gray__parameterized0\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \icyradio_axi_quad_spi_0_0_xpm_cdc_gray__parameterized0\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \icyradio_axi_quad_spi_0_0_xpm_cdc_gray__parameterized0\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \icyradio_axi_quad_spi_0_0_xpm_cdc_gray__parameterized0\ : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \icyradio_axi_quad_spi_0_0_xpm_cdc_gray__parameterized0\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \icyradio_axi_quad_spi_0_0_xpm_cdc_gray__parameterized0\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \icyradio_axi_quad_spi_0_0_xpm_cdc_gray__parameterized0\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \icyradio_axi_quad_spi_0_0_xpm_cdc_gray__parameterized0\ : entity is 7;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \icyradio_axi_quad_spi_0_0_xpm_cdc_gray__parameterized0\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \icyradio_axi_quad_spi_0_0_xpm_cdc_gray__parameterized0\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \icyradio_axi_quad_spi_0_0_xpm_cdc_gray__parameterized0\ : entity is "GRAY";
end \icyradio_axi_quad_spi_0_0_xpm_cdc_gray__parameterized0\;

architecture STRUCTURE of \icyradio_axi_quad_spi_0_0_xpm_cdc_gray__parameterized0\ is
  signal async_path : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \dest_graysync_ff[2]\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[2]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[2]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[2]\ : signal is "GRAY";
  signal \dest_graysync_ff[3]\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[3]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[3]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[3]\ : signal is "GRAY";
  signal \^dest_out_bin\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal gray_enc : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][6]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \src_gray_ff[4]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \src_gray_ff[5]_i_1\ : label is "soft_lutpair29";
begin
  dest_out_bin(6) <= \dest_graysync_ff[3]\(6);
  dest_out_bin(5 downto 0) <= \^dest_out_bin\(5 downto 0);
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(5),
      Q => \dest_graysync_ff[0]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(6),
      Q => \dest_graysync_ff[0]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(5),
      Q => \dest_graysync_ff[1]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(6),
      Q => \dest_graysync_ff[1]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(0),
      Q => \dest_graysync_ff[2]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(1),
      Q => \dest_graysync_ff[2]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(2),
      Q => \dest_graysync_ff[2]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(3),
      Q => \dest_graysync_ff[2]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(4),
      Q => \dest_graysync_ff[2]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[2][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(5),
      Q => \dest_graysync_ff[2]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[2][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(6),
      Q => \dest_graysync_ff[2]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(0),
      Q => \dest_graysync_ff[3]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(1),
      Q => \dest_graysync_ff[3]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(2),
      Q => \dest_graysync_ff[3]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[3][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(3),
      Q => \dest_graysync_ff[3]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[3][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(4),
      Q => \dest_graysync_ff[3]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[3][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(5),
      Q => \dest_graysync_ff[3]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[3][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(6),
      Q => \dest_graysync_ff[3]\(6),
      R => '0'
    );
\dest_out_bin[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(0),
      I1 => \^dest_out_bin\(1),
      O => \^dest_out_bin\(0)
    );
\dest_out_bin[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(1),
      I1 => \dest_graysync_ff[3]\(3),
      I2 => \dest_graysync_ff[3]\(5),
      I3 => \dest_graysync_ff[3]\(6),
      I4 => \dest_graysync_ff[3]\(4),
      I5 => \dest_graysync_ff[3]\(2),
      O => \^dest_out_bin\(1)
    );
\dest_out_bin[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(2),
      I1 => \dest_graysync_ff[3]\(4),
      I2 => \dest_graysync_ff[3]\(6),
      I3 => \dest_graysync_ff[3]\(5),
      I4 => \dest_graysync_ff[3]\(3),
      O => \^dest_out_bin\(2)
    );
\dest_out_bin[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(3),
      I1 => \dest_graysync_ff[3]\(5),
      I2 => \dest_graysync_ff[3]\(6),
      I3 => \dest_graysync_ff[3]\(4),
      O => \^dest_out_bin\(3)
    );
\dest_out_bin[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(4),
      I1 => \dest_graysync_ff[3]\(6),
      I2 => \dest_graysync_ff[3]\(5),
      O => \^dest_out_bin\(4)
    );
\dest_out_bin[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(5),
      I1 => \dest_graysync_ff[3]\(6),
      O => \^dest_out_bin\(5)
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(4),
      I1 => src_in_bin(3),
      O => gray_enc(3)
    );
\src_gray_ff[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(5),
      I1 => src_in_bin(4),
      O => gray_enc(4)
    );
\src_gray_ff[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(6),
      I1 => src_in_bin(5),
      O => gray_enc(5)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(4),
      Q => async_path(4),
      R => '0'
    );
\src_gray_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(5),
      Q => async_path(5),
      R => '0'
    );
\src_gray_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(6),
      Q => async_path(6),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \icyradio_axi_quad_spi_0_0_xpm_cdc_gray__parameterized1\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 6 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \icyradio_axi_quad_spi_0_0_xpm_cdc_gray__parameterized1\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \icyradio_axi_quad_spi_0_0_xpm_cdc_gray__parameterized1\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \icyradio_axi_quad_spi_0_0_xpm_cdc_gray__parameterized1\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \icyradio_axi_quad_spi_0_0_xpm_cdc_gray__parameterized1\ : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \icyradio_axi_quad_spi_0_0_xpm_cdc_gray__parameterized1\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \icyradio_axi_quad_spi_0_0_xpm_cdc_gray__parameterized1\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \icyradio_axi_quad_spi_0_0_xpm_cdc_gray__parameterized1\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \icyradio_axi_quad_spi_0_0_xpm_cdc_gray__parameterized1\ : entity is 7;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \icyradio_axi_quad_spi_0_0_xpm_cdc_gray__parameterized1\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \icyradio_axi_quad_spi_0_0_xpm_cdc_gray__parameterized1\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \icyradio_axi_quad_spi_0_0_xpm_cdc_gray__parameterized1\ : entity is "GRAY";
end \icyradio_axi_quad_spi_0_0_xpm_cdc_gray__parameterized1\;

architecture STRUCTURE of \icyradio_axi_quad_spi_0_0_xpm_cdc_gray__parameterized1\ is
  signal async_path : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \^dest_out_bin\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal gray_enc : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][6]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \src_gray_ff[4]_i_1\ : label is "soft_lutpair32";
begin
  dest_out_bin(6) <= \dest_graysync_ff[1]\(6);
  dest_out_bin(5 downto 0) <= \^dest_out_bin\(5 downto 0);
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(5),
      Q => \dest_graysync_ff[0]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(6),
      Q => \dest_graysync_ff[0]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(5),
      Q => \dest_graysync_ff[1]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(6),
      Q => \dest_graysync_ff[1]\(6),
      R => '0'
    );
\dest_out_bin[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(0),
      I1 => \^dest_out_bin\(1),
      O => \^dest_out_bin\(0)
    );
\dest_out_bin[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(1),
      I1 => \dest_graysync_ff[1]\(3),
      I2 => \dest_graysync_ff[1]\(5),
      I3 => \dest_graysync_ff[1]\(6),
      I4 => \dest_graysync_ff[1]\(4),
      I5 => \dest_graysync_ff[1]\(2),
      O => \^dest_out_bin\(1)
    );
\dest_out_bin[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => \dest_graysync_ff[1]\(4),
      I2 => \dest_graysync_ff[1]\(6),
      I3 => \dest_graysync_ff[1]\(5),
      I4 => \dest_graysync_ff[1]\(3),
      O => \^dest_out_bin\(2)
    );
\dest_out_bin[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(5),
      I2 => \dest_graysync_ff[1]\(6),
      I3 => \dest_graysync_ff[1]\(4),
      O => \^dest_out_bin\(3)
    );
\dest_out_bin[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(4),
      I1 => \dest_graysync_ff[1]\(6),
      I2 => \dest_graysync_ff[1]\(5),
      O => \^dest_out_bin\(4)
    );
\dest_out_bin[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(5),
      I1 => \dest_graysync_ff[1]\(6),
      O => \^dest_out_bin\(5)
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(4),
      I1 => src_in_bin(3),
      O => gray_enc(3)
    );
\src_gray_ff[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(5),
      I1 => src_in_bin(4),
      O => gray_enc(4)
    );
\src_gray_ff[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(6),
      I1 => src_in_bin(5),
      O => gray_enc(5)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(4),
      Q => async_path(4),
      R => '0'
    );
\src_gray_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(5),
      Q => async_path(5),
      R => '0'
    );
\src_gray_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(6),
      Q => async_path(6),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_quad_spi_0_0_xpm_cdc_sync_rst is
  port (
    src_rst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_rst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of icyradio_axi_quad_spi_0_0_xpm_cdc_sync_rst : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of icyradio_axi_quad_spi_0_0_xpm_cdc_sync_rst : entity is 2;
  attribute INIT : string;
  attribute INIT of icyradio_axi_quad_spi_0_0_xpm_cdc_sync_rst : entity is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of icyradio_axi_quad_spi_0_0_xpm_cdc_sync_rst : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_axi_quad_spi_0_0_xpm_cdc_sync_rst : entity is "xpm_cdc_sync_rst";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of icyradio_axi_quad_spi_0_0_xpm_cdc_sync_rst : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of icyradio_axi_quad_spi_0_0_xpm_cdc_sync_rst : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of icyradio_axi_quad_spi_0_0_xpm_cdc_sync_rst : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of icyradio_axi_quad_spi_0_0_xpm_cdc_sync_rst : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of icyradio_axi_quad_spi_0_0_xpm_cdc_sync_rst : entity is "SYNC_RST";
end icyradio_axi_quad_spi_0_0_xpm_cdc_sync_rst;

architecture STRUCTURE of icyradio_axi_quad_spi_0_0_xpm_cdc_sync_rst is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SYNC_RST";
begin
  dest_rst <= syncstages_ff(1);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => src_rst,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
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
entity \icyradio_axi_quad_spi_0_0_xpm_cdc_sync_rst__2\ is
  port (
    src_rst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_rst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \icyradio_axi_quad_spi_0_0_xpm_cdc_sync_rst__2\ : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \icyradio_axi_quad_spi_0_0_xpm_cdc_sync_rst__2\ : entity is 2;
  attribute INIT : string;
  attribute INIT of \icyradio_axi_quad_spi_0_0_xpm_cdc_sync_rst__2\ : entity is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \icyradio_axi_quad_spi_0_0_xpm_cdc_sync_rst__2\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \icyradio_axi_quad_spi_0_0_xpm_cdc_sync_rst__2\ : entity is "xpm_cdc_sync_rst";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \icyradio_axi_quad_spi_0_0_xpm_cdc_sync_rst__2\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \icyradio_axi_quad_spi_0_0_xpm_cdc_sync_rst__2\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \icyradio_axi_quad_spi_0_0_xpm_cdc_sync_rst__2\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \icyradio_axi_quad_spi_0_0_xpm_cdc_sync_rst__2\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \icyradio_axi_quad_spi_0_0_xpm_cdc_sync_rst__2\ : entity is "SYNC_RST";
end \icyradio_axi_quad_spi_0_0_xpm_cdc_sync_rst__2\;

architecture STRUCTURE of \icyradio_axi_quad_spi_0_0_xpm_cdc_sync_rst__2\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SYNC_RST";
begin
  dest_rst <= syncstages_ff(1);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => src_rst,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
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
entity icyradio_axi_quad_spi_0_0_xpm_counter_updn is
  port (
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg\ : out STD_LOGIC;
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg\ : in STD_LOGIC;
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0\ : in STD_LOGIC;
    rst : in STD_LOGIC;
    clr_full : in STD_LOGIC;
    almost_full : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    rst_d1 : in STD_LOGIC;
    wrst_busy : in STD_LOGIC;
    \count_value_i_reg[2]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_axi_quad_spi_0_0_xpm_counter_updn : entity is "xpm_counter_updn";
end icyradio_axi_quad_spi_0_0_xpm_counter_updn;

architecture STRUCTURE of icyradio_axi_quad_spi_0_0_xpm_counter_updn is
  signal count_value_i : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \count_value_i[0]_i_1__4_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_2__1_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_4_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[0]_i_1__4\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1__2\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__2\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__2\ : label is "soft_lutpair34";
begin
\count_value_i[0]_i_1__4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_value_i(0),
      O => \count_value_i[0]_i_1__4_n_0\
    );
\count_value_i[1]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => count_value_i(0),
      I1 => count_value_i(1),
      O => \count_value_i[1]_i_1__2_n_0\
    );
\count_value_i[2]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9AAA"
    )
        port map (
      I0 => count_value_i(2),
      I1 => \count_value_i_reg[2]_0\,
      I2 => count_value_i(0),
      I3 => count_value_i(1),
      O => \count_value_i[2]_i_1__2_n_0\
    );
\count_value_i[3]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA6AAAAA"
    )
        port map (
      I0 => count_value_i(3),
      I1 => count_value_i(1),
      I2 => count_value_i(0),
      I3 => \count_value_i_reg[2]_0\,
      I4 => count_value_i(2),
      O => \count_value_i[3]_i_1__2_n_0\
    );
\count_value_i[4]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A6AAAAAAAAAAAAAA"
    )
        port map (
      I0 => count_value_i(4),
      I1 => count_value_i(2),
      I2 => \count_value_i_reg[2]_0\,
      I3 => count_value_i(0),
      I4 => count_value_i(1),
      I5 => count_value_i(3),
      O => \count_value_i[4]_i_1__2_n_0\
    );
\count_value_i[5]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => count_value_i(5),
      I1 => count_value_i(3),
      I2 => \count_value_i[5]_i_2__1_n_0\,
      I3 => count_value_i(2),
      I4 => count_value_i(4),
      O => \count_value_i[5]_i_1__2_n_0\
    );
\count_value_i[5]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => count_value_i(1),
      I1 => count_value_i(0),
      I2 => wrst_busy,
      I3 => rst_d1,
      I4 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0\,
      I5 => wr_en,
      O => \count_value_i[5]_i_2__1_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[0]_i_1__4_n_0\,
      Q => count_value_i(0),
      S => wrst_busy
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[1]_i_1__2_n_0\,
      Q => count_value_i(1),
      S => wrst_busy
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[2]_i_1__2_n_0\,
      Q => count_value_i(2),
      R => wrst_busy
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[3]_i_1__2_n_0\,
      Q => count_value_i(3),
      R => wrst_busy
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[4]_i_1__2_n_0\,
      Q => count_value_i(4),
      R => wrst_busy
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[5]_i_1__2_n_0\,
      Q => count_value_i(5),
      R => wrst_busy
    );
\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFF700000007"
    )
        port map (
      I0 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2_n_0\,
      I1 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg\,
      I2 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0\,
      I3 => rst,
      I4 => clr_full,
      I5 => almost_full,
      O => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg\
    );
\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => wr_en,
      I1 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0\,
      I2 => rst_d1,
      I3 => wrst_busy,
      I4 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3_n_0\,
      I5 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_4_n_0\,
      O => \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2_n_0\
    );
\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => count_value_i(0),
      I1 => Q(0),
      I2 => Q(2),
      I3 => count_value_i(2),
      I4 => Q(1),
      I5 => count_value_i(1),
      O => \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3_n_0\
    );
\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => count_value_i(3),
      I1 => Q(3),
      I2 => Q(5),
      I3 => count_value_i(5),
      I4 => Q(4),
      I5 => count_value_i(4),
      O => \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_4_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \icyradio_axi_quad_spi_0_0_xpm_counter_updn__parameterized0\ is
  port (
    \count_value_i_reg[3]_0\ : out STD_LOGIC;
    \count_value_i_reg[2]_0\ : in STD_LOGIC;
    wrst_busy : in STD_LOGIC;
    rst_d1 : in STD_LOGIC;
    \count_value_i_reg[5]_0\ : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \icyradio_axi_quad_spi_0_0_xpm_counter_updn__parameterized0\ : entity is "xpm_counter_updn";
end \icyradio_axi_quad_spi_0_0_xpm_counter_updn__parameterized0\;

architecture STRUCTURE of \icyradio_axi_quad_spi_0_0_xpm_counter_updn__parameterized0\ is
  signal \count_value_i[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_2_n_0\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[4]\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[5]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_7_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_8_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1\ : label is "soft_lutpair44";
begin
\count_value_i[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[0]\,
      O => \count_value_i[0]_i_1__1_n_0\
    );
\count_value_i[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[0]\,
      I1 => \count_value_i_reg_n_0_[1]\,
      O => \count_value_i[1]_i_1_n_0\
    );
\count_value_i[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9AAA"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[2]\,
      I1 => \count_value_i_reg[2]_0\,
      I2 => \count_value_i_reg_n_0_[0]\,
      I3 => \count_value_i_reg_n_0_[1]\,
      O => \count_value_i[2]_i_1_n_0\
    );
\count_value_i[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA6AAAAA"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[3]\,
      I1 => \count_value_i_reg_n_0_[1]\,
      I2 => \count_value_i_reg_n_0_[0]\,
      I3 => \count_value_i_reg[2]_0\,
      I4 => \count_value_i_reg_n_0_[2]\,
      O => \count_value_i[3]_i_1_n_0\
    );
\count_value_i[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A6AAAAAAAAAAAAAA"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[4]\,
      I1 => \count_value_i_reg_n_0_[2]\,
      I2 => \count_value_i_reg[2]_0\,
      I3 => \count_value_i_reg_n_0_[0]\,
      I4 => \count_value_i_reg_n_0_[1]\,
      I5 => \count_value_i_reg_n_0_[3]\,
      O => \count_value_i[4]_i_1_n_0\
    );
\count_value_i[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[5]\,
      I1 => \count_value_i_reg_n_0_[3]\,
      I2 => \count_value_i[5]_i_2_n_0\,
      I3 => \count_value_i_reg_n_0_[2]\,
      I4 => \count_value_i_reg_n_0_[4]\,
      O => \count_value_i[5]_i_1_n_0\
    );
\count_value_i[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[1]\,
      I1 => \count_value_i_reg_n_0_[0]\,
      I2 => wrst_busy,
      I3 => rst_d1,
      I4 => \count_value_i_reg[5]_0\,
      I5 => wr_en,
      O => \count_value_i[5]_i_2_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[0]_i_1__1_n_0\,
      Q => \count_value_i_reg_n_0_[0]\,
      R => wrst_busy
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[1]_i_1_n_0\,
      Q => \count_value_i_reg_n_0_[1]\,
      S => wrst_busy
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[2]_i_1_n_0\,
      Q => \count_value_i_reg_n_0_[2]\,
      R => wrst_busy
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[3]_i_1_n_0\,
      Q => \count_value_i_reg_n_0_[3]\,
      R => wrst_busy
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[4]_i_1_n_0\,
      Q => \count_value_i_reg_n_0_[4]\,
      R => wrst_busy
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[5]_i_1_n_0\,
      Q => \count_value_i_reg_n_0_[5]\,
      R => wrst_busy
    );
\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_7_n_0\,
      I1 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_8_n_0\,
      O => \count_value_i_reg[3]_0\
    );
\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[3]\,
      I1 => Q(3),
      I2 => Q(5),
      I3 => \count_value_i_reg_n_0_[5]\,
      I4 => Q(4),
      I5 => \count_value_i_reg_n_0_[4]\,
      O => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_7_n_0\
    );
\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[0]\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => \count_value_i_reg_n_0_[1]\,
      I4 => Q(2),
      I5 => \count_value_i_reg_n_0_[2]\,
      O => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_8_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \icyradio_axi_quad_spi_0_0_xpm_counter_updn__parameterized1\ is
  port (
    src_in_bin : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_value_i_reg[0]_0\ : out STD_LOGIC;
    DI : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_value_i_reg[1]_0\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \count_value_i_reg[1]_1\ : in STD_LOGIC;
    \count_value_i_reg[1]_2\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \icyradio_axi_quad_spi_0_0_xpm_counter_updn__parameterized1\ : entity is "xpm_counter_updn";
end \icyradio_axi_quad_spi_0_0_xpm_counter_updn__parameterized1\;

architecture STRUCTURE of \icyradio_axi_quad_spi_0_0_xpm_counter_updn__parameterized1\ is
  signal \count_value_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_2_n_0\ : STD_LOGIC;
  signal \^count_value_i_reg[0]_0\ : STD_LOGIC;
  signal \^count_value_i_reg[1]_0\ : STD_LOGIC;
begin
  \count_value_i_reg[0]_0\ <= \^count_value_i_reg[0]_0\;
  \count_value_i_reg[1]_0\ <= \^count_value_i_reg[1]_0\;
\count_value_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1210222021211121"
    )
        port map (
      I0 => \^count_value_i_reg[0]_0\,
      I1 => \count_value_i_reg[1]_1\,
      I2 => \count_value_i_reg[1]_2\(1),
      I3 => \count_value_i_reg[1]_2\(0),
      I4 => rd_en,
      I5 => ram_empty_i,
      O => \count_value_i[0]_i_1_n_0\
    );
\count_value_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2220222022222222"
    )
        port map (
      I0 => \count_value_i[1]_i_2_n_0\,
      I1 => \count_value_i_reg[1]_1\,
      I2 => \count_value_i_reg[1]_2\(1),
      I3 => \count_value_i_reg[1]_2\(0),
      I4 => rd_en,
      I5 => ram_empty_i,
      O => \count_value_i[1]_i_1_n_0\
    );
\count_value_i[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BDBFDDDD42402222"
    )
        port map (
      I0 => \^count_value_i_reg[0]_0\,
      I1 => ram_empty_i,
      I2 => rd_en,
      I3 => \count_value_i_reg[1]_2\(0),
      I4 => \count_value_i_reg[1]_2\(1),
      I5 => \^count_value_i_reg[1]_0\,
      O => \count_value_i[1]_i_2_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \count_value_i[0]_i_1_n_0\,
      Q => \^count_value_i_reg[0]_0\,
      R => '0'
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \count_value_i[1]_i_1_n_0\,
      Q => \^count_value_i_reg[1]_0\,
      R => '0'
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^count_value_i_reg[0]_0\,
      I1 => Q(0),
      O => src_in_bin(0)
    );
\grdc.rd_data_count_i[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^count_value_i_reg[0]_0\,
      I1 => Q(0),
      O => DI(1)
    );
\grdc.rd_data_count_i[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^count_value_i_reg[0]_0\,
      I1 => Q(0),
      O => DI(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \icyradio_axi_quad_spi_0_0_xpm_counter_updn__parameterized2\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 6 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    src_in_bin : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \count_value_i_reg[1]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \count_value_i_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_value_i_reg[4]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_value_i_reg[0]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    \grdc.rd_data_count_i_reg[3]\ : in STD_LOGIC;
    \grdc.rd_data_count_i_reg[3]_0\ : in STD_LOGIC;
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \grdc.rd_data_count_i_reg[6]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    \grdc.rd_data_count_i_reg[6]_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \count_value_i_reg[6]_0\ : in STD_LOGIC;
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \icyradio_axi_quad_spi_0_0_xpm_counter_updn__parameterized2\ : entity is "xpm_counter_updn";
end \icyradio_axi_quad_spi_0_0_xpm_counter_updn__parameterized2\;

architecture STRUCTURE of \icyradio_axi_quad_spi_0_0_xpm_counter_updn__parameterized2\ is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \count_value_i[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__4_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__4_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__4_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__4_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1__4_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_2__0_n_0\ : STD_LOGIC;
  signal \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_8_n_0\ : STD_LOGIC;
  signal \grdc.rd_data_count_i[3]_i_6_n_0\ : STD_LOGIC;
  signal \grdc.rd_data_count_i[3]_i_7_n_0\ : STD_LOGIC;
  signal \grdc.rd_data_count_i[3]_i_8_n_0\ : STD_LOGIC;
  signal \grdc.rd_data_count_i[3]_i_9_n_0\ : STD_LOGIC;
  signal \grdc.rd_data_count_i[6]_i_6_n_0\ : STD_LOGIC;
  signal \grdc.rd_data_count_i[6]_i_7_n_0\ : STD_LOGIC;
  signal \grdc.rd_data_count_i_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \grdc.rd_data_count_i_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \grdc.rd_data_count_i_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \grdc.rd_data_count_i_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \grdc.rd_data_count_i_reg[6]_i_2_n_2\ : STD_LOGIC;
  signal \grdc.rd_data_count_i_reg[6]_i_2_n_3\ : STD_LOGIC;
  signal \NLW_grdc.rd_data_count_i_reg[3]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_grdc.rd_data_count_i_reg[6]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_grdc.rd_data_count_i_reg[6]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__4\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__4\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1__4\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_5\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_8\ : label is "soft_lutpair37";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \grdc.rd_data_count_i_reg[3]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \grdc.rd_data_count_i_reg[3]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \grdc.rd_data_count_i_reg[6]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \grdc.rd_data_count_i_reg[6]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
begin
  E(0) <= \^e\(0);
  Q(6 downto 0) <= \^q\(6 downto 0);
\count_value_i[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABA5545"
    )
        port map (
      I0 => ram_empty_i,
      I1 => rd_en,
      I2 => \count_value_i_reg[0]_0\(1),
      I3 => \count_value_i_reg[0]_0\(0),
      I4 => \^q\(0),
      O => \count_value_i[0]_i_1__0_n_0\
    );
\count_value_i[1]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FFFB00"
    )
        port map (
      I0 => \count_value_i_reg[0]_0\(0),
      I1 => \count_value_i_reg[0]_0\(1),
      I2 => rd_en,
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => \count_value_i[1]_i_1__4_n_0\
    );
\count_value_i[2]_i_1__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__4_n_0\
    );
\count_value_i[3]_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__4_n_0\
    );
\count_value_i[4]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \count_value_i[4]_i_1__4_n_0\
    );
\count_value_i[5]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(2),
      I3 => \count_value_i[6]_i_2__0_n_0\,
      I4 => \^q\(5),
      O => \count_value_i[5]_i_1__4_n_0\
    );
\count_value_i[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(5),
      I1 => \count_value_i[6]_i_2__0_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \^q\(4),
      I5 => \^q\(6),
      O => \count_value_i[6]_i_1__0_n_0\
    );
\count_value_i[6]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA8A00000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \count_value_i_reg[0]_0\(0),
      I2 => \count_value_i_reg[0]_0\(1),
      I3 => rd_en,
      I4 => ram_empty_i,
      I5 => \^q\(0),
      O => \count_value_i[6]_i_2__0_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i[0]_i_1__0_n_0\,
      Q => \^q\(0),
      R => \count_value_i_reg[6]_0\
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i[1]_i_1__4_n_0\,
      Q => \^q\(1),
      R => \count_value_i_reg[6]_0\
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i[2]_i_1__4_n_0\,
      Q => \^q\(2),
      R => \count_value_i_reg[6]_0\
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i[3]_i_1__4_n_0\,
      Q => \^q\(3),
      R => \count_value_i_reg[6]_0\
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i[4]_i_1__4_n_0\,
      Q => \^q\(4),
      R => \count_value_i_reg[6]_0\
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i[5]_i_1__4_n_0\,
      Q => \^q\(5),
      R => \count_value_i_reg[6]_0\
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i[6]_i_1__0_n_0\,
      Q => \^q\(6),
      R => \count_value_i_reg[6]_0\
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(3),
      I2 => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_8_n_0\,
      I3 => \^q\(4),
      I4 => \^q\(6),
      O => src_in_bin(5)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(3),
      I2 => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_8_n_0\,
      I3 => \^q\(4),
      O => src_in_bin(4)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => \^q\(4),
      I1 => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_8_n_0\,
      I2 => \^q\(3),
      O => src_in_bin(3)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAFFEF10550010"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \grdc.rd_data_count_i_reg[3]_0\,
      I3 => \^q\(1),
      I4 => \grdc.rd_data_count_i_reg[3]\,
      I5 => \^q\(3),
      O => src_in_bin(2)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9A55AA9A"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \grdc.rd_data_count_i_reg[3]_0\,
      I3 => \^q\(1),
      I4 => \grdc.rd_data_count_i_reg[3]\,
      O => src_in_bin(1)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6696"
    )
        port map (
      I0 => \^q\(1),
      I1 => \grdc.rd_data_count_i_reg[3]\,
      I2 => \grdc.rd_data_count_i_reg[3]_0\,
      I3 => \^q\(0),
      O => src_in_bin(0)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFDD4D"
    )
        port map (
      I0 => \grdc.rd_data_count_i_reg[3]\,
      I1 => \^q\(1),
      I2 => \grdc.rd_data_count_i_reg[3]_0\,
      I3 => \^q\(0),
      I4 => \^q\(2),
      O => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_8_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]\(3),
      O => \count_value_i_reg[3]_0\(3)
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(2),
      I1 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]\(2),
      O => \count_value_i_reg[3]_0\(2)
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(1),
      I1 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]\(1),
      O => \count_value_i_reg[3]_0\(1)
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABA5545"
    )
        port map (
      I0 => ram_empty_i,
      I1 => rd_en,
      I2 => \count_value_i_reg[0]_0\(1),
      I3 => \count_value_i_reg[0]_0\(0),
      I4 => \^q\(0),
      O => \count_value_i_reg[3]_0\(0)
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[5]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(4),
      I1 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]\(4),
      O => \count_value_i_reg[4]_0\(0)
    );
\gen_pf_ic_rc.ram_empty_i_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(1),
      I1 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]\(1),
      I2 => \^q\(0),
      I3 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]\(0),
      I4 => \^q\(2),
      I5 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]\(2),
      O => \count_value_i_reg[1]_0\
    );
\gen_sdpram.xpm_memory_base_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FB"
    )
        port map (
      I0 => \count_value_i_reg[0]_0\(0),
      I1 => \count_value_i_reg[0]_0\(1),
      I2 => rd_en,
      I3 => ram_empty_i,
      O => \^e\(0)
    );
\grdc.rd_data_count_i[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(2),
      I1 => \grdc.rd_data_count_i_reg[6]_0\(2),
      I2 => \^q\(3),
      I3 => \grdc.rd_data_count_i_reg[6]_0\(3),
      O => \grdc.rd_data_count_i[3]_i_6_n_0\
    );
\grdc.rd_data_count_i[3]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2BD4D42B"
    )
        port map (
      I0 => \^q\(1),
      I1 => \grdc.rd_data_count_i_reg[3]\,
      I2 => \grdc.rd_data_count_i_reg[6]_0\(1),
      I3 => \^q\(2),
      I4 => \grdc.rd_data_count_i_reg[6]_0\(2),
      O => \grdc.rd_data_count_i[3]_i_7_n_0\
    );
\grdc.rd_data_count_i[3]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D22D2DD2"
    )
        port map (
      I0 => \^q\(0),
      I1 => \grdc.rd_data_count_i_reg[3]_0\,
      I2 => \grdc.rd_data_count_i_reg[6]_0\(1),
      I3 => \grdc.rd_data_count_i_reg[3]\,
      I4 => \^q\(1),
      O => \grdc.rd_data_count_i[3]_i_8_n_0\
    );
\grdc.rd_data_count_i[3]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^q\(0),
      I1 => \grdc.rd_data_count_i_reg[3]_0\,
      I2 => \grdc.rd_data_count_i_reg[6]_0\(0),
      O => \grdc.rd_data_count_i[3]_i_9_n_0\
    );
\grdc.rd_data_count_i[6]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(4),
      I1 => \grdc.rd_data_count_i_reg[6]_0\(4),
      I2 => \^q\(5),
      I3 => \grdc.rd_data_count_i_reg[6]_0\(5),
      O => \grdc.rd_data_count_i[6]_i_6_n_0\
    );
\grdc.rd_data_count_i[6]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(3),
      I1 => \grdc.rd_data_count_i_reg[6]_0\(3),
      I2 => \^q\(4),
      I3 => \grdc.rd_data_count_i_reg[6]_0\(4),
      O => \grdc.rd_data_count_i[6]_i_7_n_0\
    );
\grdc.rd_data_count_i_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \grdc.rd_data_count_i_reg[3]_i_1_n_0\,
      CO(2) => \grdc.rd_data_count_i_reg[3]_i_1_n_1\,
      CO(1) => \grdc.rd_data_count_i_reg[3]_i_1_n_2\,
      CO(0) => \grdc.rd_data_count_i_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => DI(3 downto 0),
      O(3 downto 1) => D(2 downto 0),
      O(0) => \NLW_grdc.rd_data_count_i_reg[3]_i_1_O_UNCONNECTED\(0),
      S(3) => \grdc.rd_data_count_i[3]_i_6_n_0\,
      S(2) => \grdc.rd_data_count_i[3]_i_7_n_0\,
      S(1) => \grdc.rd_data_count_i[3]_i_8_n_0\,
      S(0) => \grdc.rd_data_count_i[3]_i_9_n_0\
    );
\grdc.rd_data_count_i_reg[6]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \grdc.rd_data_count_i_reg[3]_i_1_n_0\,
      CO(3 downto 2) => \NLW_grdc.rd_data_count_i_reg[6]_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \grdc.rd_data_count_i_reg[6]_i_2_n_2\,
      CO(0) => \grdc.rd_data_count_i_reg[6]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => \grdc.rd_data_count_i_reg[6]\(1 downto 0),
      O(3) => \NLW_grdc.rd_data_count_i_reg[6]_i_2_O_UNCONNECTED\(3),
      O(2 downto 0) => D(5 downto 3),
      S(3) => '0',
      S(2) => S(0),
      S(1) => \grdc.rd_data_count_i[6]_i_6_n_0\,
      S(0) => \grdc.rd_data_count_i[6]_i_7_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \icyradio_axi_quad_spi_0_0_xpm_counter_updn__parameterized2_3\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 6 downto 0 );
    D : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \count_value_i_reg[2]_0\ : in STD_LOGIC;
    wrst_busy : in STD_LOGIC;
    rst_d1 : in STD_LOGIC;
    \count_value_i_reg[6]_0\ : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \gwdc.wr_data_count_i_reg[6]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \icyradio_axi_quad_spi_0_0_xpm_counter_updn__parameterized2_3\ : entity is "xpm_counter_updn";
end \icyradio_axi_quad_spi_0_0_xpm_counter_updn__parameterized2_3\;

architecture STRUCTURE of \icyradio_axi_quad_spi_0_0_xpm_counter_updn__parameterized2_3\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \count_value_i[0]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_2_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[3]_i_2_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[3]_i_3_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[3]_i_4_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[3]_i_5_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[6]_i_2_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[6]_i_3_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[6]_i_4_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[6]_i_1_n_2\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[6]_i_1_n_3\ : STD_LOGIC;
  signal \NLW_gwdc.wr_data_count_i_reg[3]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_gwdc.wr_data_count_i_reg[6]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_gwdc.wr_data_count_i_reg[6]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[0]_i_1__3\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1__1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__1\ : label is "soft_lutpair41";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \gwdc.wr_data_count_i_reg[3]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \gwdc.wr_data_count_i_reg[6]_i_1\ : label is 35;
begin
  Q(6 downto 0) <= \^q\(6 downto 0);
\count_value_i[0]_i_1__3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count_value_i[0]_i_1__3_n_0\
    );
\count_value_i[1]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \count_value_i[1]_i_1__1_n_0\
    );
\count_value_i[2]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9AAA"
    )
        port map (
      I0 => \^q\(2),
      I1 => \count_value_i_reg[2]_0\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      O => \count_value_i[2]_i_1__1_n_0\
    );
\count_value_i[3]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA6AAAAA"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \count_value_i_reg[2]_0\,
      I4 => \^q\(2),
      O => \count_value_i[3]_i_1__1_n_0\
    );
\count_value_i[4]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A6AAAAAAAAAAAAAA"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \count_value_i_reg[2]_0\,
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => \^q\(3),
      O => \count_value_i[4]_i_1__1_n_0\
    );
\count_value_i[5]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(3),
      I2 => \count_value_i[6]_i_2_n_0\,
      I3 => \^q\(2),
      I4 => \^q\(4),
      O => \count_value_i[5]_i_1__1_n_0\
    );
\count_value_i[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \count_value_i[6]_i_2_n_0\,
      I4 => \^q\(3),
      I5 => \^q\(5),
      O => \count_value_i[6]_i_1_n_0\
    );
\count_value_i[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => wrst_busy,
      I3 => rst_d1,
      I4 => \count_value_i_reg[6]_0\,
      I5 => wr_en,
      O => \count_value_i[6]_i_2_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[0]_i_1__3_n_0\,
      Q => \^q\(0),
      R => wrst_busy
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[1]_i_1__1_n_0\,
      Q => \^q\(1),
      R => wrst_busy
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[2]_i_1__1_n_0\,
      Q => \^q\(2),
      R => wrst_busy
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[3]_i_1__1_n_0\,
      Q => \^q\(3),
      R => wrst_busy
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[4]_i_1__1_n_0\,
      Q => \^q\(4),
      R => wrst_busy
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[5]_i_1__1_n_0\,
      Q => \^q\(5),
      R => wrst_busy
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[6]_i_1_n_0\,
      Q => \^q\(6),
      R => wrst_busy
    );
\gwdc.wr_data_count_i[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gwdc.wr_data_count_i_reg[6]\(3),
      O => \gwdc.wr_data_count_i[3]_i_2_n_0\
    );
\gwdc.wr_data_count_i[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(2),
      I1 => \gwdc.wr_data_count_i_reg[6]\(2),
      O => \gwdc.wr_data_count_i[3]_i_3_n_0\
    );
\gwdc.wr_data_count_i[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(1),
      I1 => \gwdc.wr_data_count_i_reg[6]\(1),
      O => \gwdc.wr_data_count_i[3]_i_4_n_0\
    );
\gwdc.wr_data_count_i[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gwdc.wr_data_count_i_reg[6]\(0),
      O => \gwdc.wr_data_count_i[3]_i_5_n_0\
    );
\gwdc.wr_data_count_i[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gwdc.wr_data_count_i_reg[6]\(6),
      O => \gwdc.wr_data_count_i[6]_i_2_n_0\
    );
\gwdc.wr_data_count_i[6]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(5),
      I1 => \gwdc.wr_data_count_i_reg[6]\(5),
      O => \gwdc.wr_data_count_i[6]_i_3_n_0\
    );
\gwdc.wr_data_count_i[6]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(4),
      I1 => \gwdc.wr_data_count_i_reg[6]\(4),
      O => \gwdc.wr_data_count_i[6]_i_4_n_0\
    );
\gwdc.wr_data_count_i_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gwdc.wr_data_count_i_reg[3]_i_1_n_0\,
      CO(2) => \gwdc.wr_data_count_i_reg[3]_i_1_n_1\,
      CO(1) => \gwdc.wr_data_count_i_reg[3]_i_1_n_2\,
      CO(0) => \gwdc.wr_data_count_i_reg[3]_i_1_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => \^q\(3 downto 0),
      O(3 downto 1) => D(2 downto 0),
      O(0) => \NLW_gwdc.wr_data_count_i_reg[3]_i_1_O_UNCONNECTED\(0),
      S(3) => \gwdc.wr_data_count_i[3]_i_2_n_0\,
      S(2) => \gwdc.wr_data_count_i[3]_i_3_n_0\,
      S(1) => \gwdc.wr_data_count_i[3]_i_4_n_0\,
      S(0) => \gwdc.wr_data_count_i[3]_i_5_n_0\
    );
\gwdc.wr_data_count_i_reg[6]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gwdc.wr_data_count_i_reg[3]_i_1_n_0\,
      CO(3 downto 2) => \NLW_gwdc.wr_data_count_i_reg[6]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \gwdc.wr_data_count_i_reg[6]_i_1_n_2\,
      CO(0) => \gwdc.wr_data_count_i_reg[6]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => \^q\(5 downto 4),
      O(3) => \NLW_gwdc.wr_data_count_i_reg[6]_i_1_O_UNCONNECTED\(3),
      O(2 downto 0) => D(5 downto 3),
      S(3) => '0',
      S(2) => \gwdc.wr_data_count_i[6]_i_2_n_0\,
      S(1) => \gwdc.wr_data_count_i[6]_i_3_n_0\,
      S(0) => \gwdc.wr_data_count_i[6]_i_4_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \icyradio_axi_quad_spi_0_0_xpm_counter_updn__parameterized3\ is
  port (
    ram_empty_i0 : out STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_pf_ic_rc.ram_empty_i_reg\ : in STD_LOGIC;
    \gen_pf_ic_rc.ram_empty_i_reg_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    \gen_pf_ic_rc.ram_empty_i_reg_1\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \count_value_i_reg[0]_0\ : in STD_LOGIC;
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \icyradio_axi_quad_spi_0_0_xpm_counter_updn__parameterized3\ : entity is "xpm_counter_updn";
end \icyradio_axi_quad_spi_0_0_xpm_counter_updn__parameterized3\;

architecture STRUCTURE of \icyradio_axi_quad_spi_0_0_xpm_counter_updn__parameterized3\ is
  signal \count_value_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_2__2_n_0\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[4]\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[5]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_i_2_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_i_3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__3\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1__3\ : label is "soft_lutpair40";
begin
\count_value_i[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"04FB"
    )
        port map (
      I0 => rd_en,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \count_value_i_reg_n_0_[0]\,
      O => \count_value_i[0]_i_1_n_0\
    );
\count_value_i[1]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FFFB00"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => rd_en,
      I3 => \count_value_i_reg_n_0_[0]\,
      I4 => \count_value_i_reg_n_0_[1]\,
      O => \count_value_i[1]_i_1__3_n_0\
    );
\count_value_i[2]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[0]\,
      I1 => \count_value_i_reg_n_0_[1]\,
      I2 => \count_value_i_reg_n_0_[2]\,
      O => \count_value_i[2]_i_1__3_n_0\
    );
\count_value_i[3]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[2]\,
      I1 => \count_value_i_reg_n_0_[1]\,
      I2 => \count_value_i_reg_n_0_[0]\,
      I3 => \count_value_i_reg_n_0_[3]\,
      O => \count_value_i[3]_i_1__3_n_0\
    );
\count_value_i[4]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[0]\,
      I1 => \count_value_i_reg_n_0_[1]\,
      I2 => \count_value_i_reg_n_0_[2]\,
      I3 => \count_value_i_reg_n_0_[3]\,
      I4 => \count_value_i_reg_n_0_[4]\,
      O => \count_value_i[4]_i_1__3_n_0\
    );
\count_value_i[5]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[4]\,
      I1 => \count_value_i_reg_n_0_[3]\,
      I2 => \count_value_i_reg_n_0_[2]\,
      I3 => \count_value_i[5]_i_2__2_n_0\,
      I4 => \count_value_i_reg_n_0_[5]\,
      O => \count_value_i[5]_i_1__3_n_0\
    );
\count_value_i[5]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA8A00000000"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[1]\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => rd_en,
      I4 => ram_empty_i,
      I5 => \count_value_i_reg_n_0_[0]\,
      O => \count_value_i[5]_i_2__2_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[0]_i_1_n_0\,
      Q => \count_value_i_reg_n_0_[0]\,
      S => \count_value_i_reg[0]_0\
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[1]_i_1__3_n_0\,
      Q => \count_value_i_reg_n_0_[1]\,
      R => \count_value_i_reg[0]_0\
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[2]_i_1__3_n_0\,
      Q => \count_value_i_reg_n_0_[2]\,
      R => \count_value_i_reg[0]_0\
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[3]_i_1__3_n_0\,
      Q => \count_value_i_reg_n_0_[3]\,
      R => \count_value_i_reg[0]_0\
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[4]_i_1__3_n_0\,
      Q => \count_value_i_reg_n_0_[4]\,
      R => \count_value_i_reg[0]_0\
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[5]_i_1__3_n_0\,
      Q => \count_value_i_reg_n_0_[5]\,
      R => \count_value_i_reg[0]_0\
    );
\gen_pf_ic_rc.ram_empty_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => \gen_pf_ic_rc.ram_empty_i_i_2_n_0\,
      I1 => \gen_pf_ic_rc.ram_empty_i_i_3_n_0\,
      I2 => E(0),
      I3 => \gen_pf_ic_rc.ram_empty_i_reg\,
      I4 => \gen_pf_ic_rc.ram_empty_i_reg_0\,
      O => ram_empty_i0
    );
\gen_pf_ic_rc.ram_empty_i_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[1]\,
      I1 => \gen_pf_ic_rc.ram_empty_i_reg_1\(1),
      I2 => \count_value_i_reg_n_0_[0]\,
      I3 => \gen_pf_ic_rc.ram_empty_i_reg_1\(0),
      I4 => \gen_pf_ic_rc.ram_empty_i_reg_1\(2),
      I5 => \count_value_i_reg_n_0_[2]\,
      O => \gen_pf_ic_rc.ram_empty_i_i_2_n_0\
    );
\gen_pf_ic_rc.ram_empty_i_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[4]\,
      I1 => \gen_pf_ic_rc.ram_empty_i_reg_1\(4),
      I2 => \count_value_i_reg_n_0_[3]\,
      I3 => \gen_pf_ic_rc.ram_empty_i_reg_1\(3),
      I4 => \gen_pf_ic_rc.ram_empty_i_reg_1\(5),
      I5 => \count_value_i_reg_n_0_[5]\,
      O => \gen_pf_ic_rc.ram_empty_i_i_3_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \icyradio_axi_quad_spi_0_0_xpm_counter_updn__parameterized3_4\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \count_value_i_reg[0]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \count_value_i_reg[2]_0\ : in STD_LOGIC;
    wrst_busy : in STD_LOGIC;
    rst_d1 : in STD_LOGIC;
    \count_value_i_reg[5]_0\ : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \icyradio_axi_quad_spi_0_0_xpm_counter_updn__parameterized3_4\ : entity is "xpm_counter_updn";
end \icyradio_axi_quad_spi_0_0_xpm_counter_updn__parameterized3_4\;

architecture STRUCTURE of \icyradio_axi_quad_spi_0_0_xpm_counter_updn__parameterized3_4\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \count_value_i[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_2__0_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_3_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_4_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_5_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[6]_i_3_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6]_i_1_n_3\ : STD_LOGIC;
  signal wr_pntr_plus1_pf : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__0\ : label is "soft_lutpair43";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6]_i_1\ : label is 35;
begin
  Q(2 downto 0) <= \^q\(2 downto 0);
\count_value_i[0]_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wr_pntr_plus1_pf(1),
      O => \count_value_i[0]_i_1__2_n_0\
    );
\count_value_i[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => wr_pntr_plus1_pf(1),
      I1 => wr_pntr_plus1_pf(2),
      O => \count_value_i[1]_i_1__0_n_0\
    );
\count_value_i[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9AAA"
    )
        port map (
      I0 => wr_pntr_plus1_pf(3),
      I1 => \count_value_i_reg[2]_0\,
      I2 => wr_pntr_plus1_pf(1),
      I3 => wr_pntr_plus1_pf(2),
      O => \count_value_i[2]_i_1__0_n_0\
    );
\count_value_i[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA6AAAAA"
    )
        port map (
      I0 => \^q\(0),
      I1 => wr_pntr_plus1_pf(2),
      I2 => wr_pntr_plus1_pf(1),
      I3 => \count_value_i_reg[2]_0\,
      I4 => wr_pntr_plus1_pf(3),
      O => \count_value_i[3]_i_1__0_n_0\
    );
\count_value_i[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A6AAAAAAAAAAAAAA"
    )
        port map (
      I0 => \^q\(1),
      I1 => wr_pntr_plus1_pf(3),
      I2 => \count_value_i_reg[2]_0\,
      I3 => wr_pntr_plus1_pf(1),
      I4 => wr_pntr_plus1_pf(2),
      I5 => \^q\(0),
      O => \count_value_i[4]_i_1__0_n_0\
    );
\count_value_i[5]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \count_value_i[5]_i_2__0_n_0\,
      I3 => wr_pntr_plus1_pf(3),
      I4 => \^q\(1),
      O => \count_value_i[5]_i_1__0_n_0\
    );
\count_value_i[5]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => wr_pntr_plus1_pf(2),
      I1 => wr_pntr_plus1_pf(1),
      I2 => wrst_busy,
      I3 => rst_d1,
      I4 => \count_value_i_reg[5]_0\,
      I5 => wr_en,
      O => \count_value_i[5]_i_2__0_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[0]_i_1__2_n_0\,
      Q => wr_pntr_plus1_pf(1),
      S => wrst_busy
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[1]_i_1__0_n_0\,
      Q => wr_pntr_plus1_pf(2),
      R => wrst_busy
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[2]_i_1__0_n_0\,
      Q => wr_pntr_plus1_pf(3),
      R => wrst_busy
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[3]_i_1__0_n_0\,
      Q => \^q\(0),
      R => wrst_busy
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[4]_i_1__0_n_0\,
      Q => \^q\(1),
      R => wrst_busy
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[5]_i_1__0_n_0\,
      Q => \^q\(2),
      R => wrst_busy
    );
\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => wr_pntr_plus1_pf(1),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6]\(0),
      I2 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6]\(2),
      I3 => wr_pntr_plus1_pf(3),
      I4 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6]\(1),
      I5 => wr_pntr_plus1_pf(2),
      O => \count_value_i_reg[0]_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6]\(3),
      O => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2_n_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => wr_pntr_plus1_pf(3),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6]\(2),
      O => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_3_n_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => wr_pntr_plus1_pf(2),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6]\(1),
      O => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_4_n_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => wr_pntr_plus1_pf(1),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6]\(0),
      O => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_5_n_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[6]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(1),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6]\(4),
      O => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[6]_i_3_n_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_0\,
      CO(2) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_1\,
      CO(1) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_2\,
      CO(0) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_3\,
      CYINIT => E(0),
      DI(3) => \^q\(0),
      DI(2 downto 0) => wr_pntr_plus1_pf(3 downto 1),
      O(3) => D(0),
      O(2 downto 0) => \NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_O_UNCONNECTED\(2 downto 0),
      S(3) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2_n_0\,
      S(2) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_3_n_0\,
      S(1) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_4_n_0\,
      S(0) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_5_n_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_0\,
      CO(3 downto 1) => \NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \^q\(1),
      O(3 downto 2) => \NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => D(2 downto 1),
      S(3 downto 2) => B"00",
      S(1) => S(0),
      S(0) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[6]_i_3_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_quad_spi_0_0_xpm_fifo_reg_bit is
  port (
    rst_d1 : out STD_LOGIC;
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6]\ : out STD_LOGIC;
    clr_full : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    wrst_busy : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \gen_pf_ic_rc.gpf_ic.prog_full_i_reg\ : in STD_LOGIC;
    prog_full : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_axi_quad_spi_0_0_xpm_fifo_reg_bit : entity is "xpm_fifo_reg_bit";
end icyradio_axi_quad_spi_0_0_xpm_fifo_reg_bit;

architecture STRUCTURE of icyradio_axi_quad_spi_0_0_xpm_fifo_reg_bit is
  signal \^clr_full\ : STD_LOGIC;
  signal \^rst_d1\ : STD_LOGIC;
begin
  clr_full <= \^clr_full\;
  rst_d1 <= \^rst_d1\;
d_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => wrst_busy,
      Q => \^rst_d1\,
      R => '0'
    );
\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^rst_d1\,
      I1 => wrst_busy,
      I2 => rst,
      O => \^clr_full\
    );
\gen_pf_ic_rc.gpf_ic.prog_full_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF00FE000000FE"
    )
        port map (
      I0 => Q(2),
      I1 => Q(0),
      I2 => Q(1),
      I3 => \^clr_full\,
      I4 => \gen_pf_ic_rc.gpf_ic.prog_full_i_reg\,
      I5 => prog_full,
      O => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6]\
    );
\gen_sdpram.xpm_memory_base_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => wr_en,
      I1 => \gen_pf_ic_rc.gpf_ic.prog_full_i_reg\,
      I2 => \^rst_d1\,
      I3 => wrst_busy,
      O => E(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_quad_spi_0_0_xpm_fifo_reg_vec is
  port (
    Q : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    \reg_out_i_reg[4]_0\ : out STD_LOGIC;
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0\ : in STD_LOGIC;
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_1\ : in STD_LOGIC;
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_2\ : in STD_LOGIC;
    clr_full : in STD_LOGIC;
    wrst_busy : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 5 downto 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_axi_quad_spi_0_0_xpm_fifo_reg_vec : entity is "xpm_fifo_reg_vec";
end icyradio_axi_quad_spi_0_0_xpm_fifo_reg_vec;

architecture STRUCTURE of icyradio_axi_quad_spi_0_0_xpm_fifo_reg_vec is
  signal \^q\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2_n_0\ : STD_LOGIC;
begin
  Q(5 downto 0) <= \^q\(5 downto 0);
\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000222F"
    )
        port map (
      I0 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2_n_0\,
      I1 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0\,
      I2 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_1\,
      I3 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_2\,
      I4 => clr_full,
      O => \reg_out_i_reg[4]_0\
    );
\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(4),
      I1 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg\(1),
      I2 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg\(2),
      I3 => \^q\(5),
      I4 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg\(0),
      I5 => \^q\(3),
      O => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2_n_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(5),
      I1 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg\(2),
      O => S(0)
    );
\reg_out_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(0),
      Q => \^q\(0),
      R => wrst_busy
    );
\reg_out_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(1),
      Q => \^q\(1),
      R => wrst_busy
    );
\reg_out_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(2),
      Q => \^q\(2),
      R => wrst_busy
    );
\reg_out_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(3),
      Q => \^q\(3),
      R => wrst_busy
    );
\reg_out_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(4),
      Q => \^q\(4),
      R => wrst_busy
    );
\reg_out_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(5),
      Q => \^q\(5),
      R => wrst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_quad_spi_0_0_xpm_fifo_reg_vec_1 is
  port (
    \reg_out_i_reg[5]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 5 downto 0 );
    D : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \gen_pf_ic_rc.ram_empty_i_reg\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \reg_out_i_reg[0]_0\ : in STD_LOGIC;
    \reg_out_i_reg[5]_1\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_axi_quad_spi_0_0_xpm_fifo_reg_vec_1 : entity is "xpm_fifo_reg_vec";
end icyradio_axi_quad_spi_0_0_xpm_fifo_reg_vec_1;

architecture STRUCTURE of icyradio_axi_quad_spi_0_0_xpm_fifo_reg_vec_1 is
  signal \^q\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[5]_i_2_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]_i_1_n_3\ : STD_LOGIC;
  signal \NLW_gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
begin
  Q(5 downto 0) <= \^q\(5 downto 0);
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(5),
      I1 => \gen_pf_ic_rc.ram_empty_i_reg\(2),
      O => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[5]_i_2_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_0\,
      CO(2) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_1\,
      CO(1) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_2\,
      CO(0) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_3\,
      CYINIT => \^q\(0),
      DI(3 downto 1) => \^q\(3 downto 1),
      DI(0) => DI(0),
      O(3 downto 0) => D(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_0\,
      CO(3 downto 1) => \NLW_gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \^q\(4),
      O(3 downto 2) => \NLW_gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => D(5 downto 4),
      S(3 downto 2) => B"00",
      S(1) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[5]_i_2_n_0\,
      S(0) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]\(0)
    );
\gen_pf_ic_rc.ram_empty_i_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(5),
      I1 => \gen_pf_ic_rc.ram_empty_i_reg\(2),
      I2 => \gen_pf_ic_rc.ram_empty_i_reg\(1),
      I3 => \^q\(4),
      I4 => \^q\(3),
      I5 => \gen_pf_ic_rc.ram_empty_i_reg\(0),
      O => \reg_out_i_reg[5]_0\
    );
\reg_out_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[5]_1\(0),
      Q => \^q\(0),
      R => \reg_out_i_reg[0]_0\
    );
\reg_out_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[5]_1\(1),
      Q => \^q\(1),
      R => \reg_out_i_reg[0]_0\
    );
\reg_out_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[5]_1\(2),
      Q => \^q\(2),
      R => \reg_out_i_reg[0]_0\
    );
\reg_out_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[5]_1\(3),
      Q => \^q\(3),
      R => \reg_out_i_reg[0]_0\
    );
\reg_out_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[5]_1\(4),
      Q => \^q\(4),
      R => \reg_out_i_reg[0]_0\
    );
\reg_out_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[5]_1\(5),
      Q => \^q\(5),
      R => \reg_out_i_reg[0]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \icyradio_axi_quad_spi_0_0_xpm_fifo_reg_vec__parameterized0\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 6 downto 0 );
    wrst_busy : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 6 downto 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \icyradio_axi_quad_spi_0_0_xpm_fifo_reg_vec__parameterized0\ : entity is "xpm_fifo_reg_vec";
end \icyradio_axi_quad_spi_0_0_xpm_fifo_reg_vec__parameterized0\;

architecture STRUCTURE of \icyradio_axi_quad_spi_0_0_xpm_fifo_reg_vec__parameterized0\ is
begin
\reg_out_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(0),
      Q => Q(0),
      R => wrst_busy
    );
\reg_out_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(1),
      Q => Q(1),
      R => wrst_busy
    );
\reg_out_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(2),
      Q => Q(2),
      R => wrst_busy
    );
\reg_out_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(3),
      Q => Q(3),
      R => wrst_busy
    );
\reg_out_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(4),
      Q => Q(4),
      R => wrst_busy
    );
\reg_out_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(5),
      Q => Q(5),
      R => wrst_busy
    );
\reg_out_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(6),
      Q => Q(6),
      R => wrst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \icyradio_axi_quad_spi_0_0_xpm_fifo_reg_vec__parameterized0_2\ is
  port (
    DI : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \reg_out_i_reg[4]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    \grdc.rd_data_count_i_reg[3]\ : in STD_LOGIC;
    \grdc.rd_data_count_i_reg[6]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \reg_out_i_reg[6]_0\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 6 downto 0 );
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \icyradio_axi_quad_spi_0_0_xpm_fifo_reg_vec__parameterized0_2\ : entity is "xpm_fifo_reg_vec";
end \icyradio_axi_quad_spi_0_0_xpm_fifo_reg_vec__parameterized0_2\;

architecture STRUCTURE of \icyradio_axi_quad_spi_0_0_xpm_fifo_reg_vec__parameterized0_2\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \reg_out_i_reg_n_0_[6]\ : STD_LOGIC;
begin
  Q(5 downto 0) <= \^q\(5 downto 0);
\grdc.rd_data_count_i[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(2),
      I1 => \grdc.rd_data_count_i_reg[6]\(1),
      O => DI(1)
    );
\grdc.rd_data_count_i[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => \^q\(1),
      I1 => \grdc.rd_data_count_i_reg[3]\,
      I2 => \grdc.rd_data_count_i_reg[6]\(0),
      O => DI(0)
    );
\grdc.rd_data_count_i[6]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(4),
      I1 => \grdc.rd_data_count_i_reg[6]\(3),
      O => \reg_out_i_reg[4]_0\(1)
    );
\grdc.rd_data_count_i[6]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(3),
      I1 => \grdc.rd_data_count_i_reg[6]\(2),
      O => \reg_out_i_reg[4]_0\(0)
    );
\grdc.rd_data_count_i[6]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => \^q\(5),
      I1 => \grdc.rd_data_count_i_reg[6]\(4),
      I2 => \grdc.rd_data_count_i_reg[6]\(5),
      I3 => \reg_out_i_reg_n_0_[6]\,
      O => S(0)
    );
\reg_out_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(0),
      Q => \^q\(0),
      R => \reg_out_i_reg[6]_0\
    );
\reg_out_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(1),
      Q => \^q\(1),
      R => \reg_out_i_reg[6]_0\
    );
\reg_out_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(2),
      Q => \^q\(2),
      R => \reg_out_i_reg[6]_0\
    );
\reg_out_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(3),
      Q => \^q\(3),
      R => \reg_out_i_reg[6]_0\
    );
\reg_out_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(4),
      Q => \^q\(4),
      R => \reg_out_i_reg[6]_0\
    );
\reg_out_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(5),
      Q => \^q\(5),
      R => \reg_out_i_reg[6]_0\
    );
\reg_out_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(6),
      Q => \reg_out_i_reg_n_0_[6]\,
      R => \reg_out_i_reg[6]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_quad_spi_0_0_xpm_memory_base is
  port (
    sleep : in STD_LOGIC;
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 5 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    injectsbiterra : in STD_LOGIC;
    injectdbiterra : in STD_LOGIC;
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sbiterra : out STD_LOGIC;
    dbiterra : out STD_LOGIC;
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 5 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    injectsbiterrb : in STD_LOGIC;
    injectdbiterrb : in STD_LOGIC;
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sbiterrb : out STD_LOGIC;
    dbiterrb : out STD_LOGIC
  );
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of icyradio_axi_quad_spi_0_0_xpm_memory_base : entity is 6;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of icyradio_axi_quad_spi_0_0_xpm_memory_base : entity is 6;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of icyradio_axi_quad_spi_0_0_xpm_memory_base : entity is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of icyradio_axi_quad_spi_0_0_xpm_memory_base : entity is 32;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of icyradio_axi_quad_spi_0_0_xpm_memory_base : entity is 32;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of icyradio_axi_quad_spi_0_0_xpm_memory_base : entity is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of icyradio_axi_quad_spi_0_0_xpm_memory_base : entity is 1;
  attribute ECC_MODE : integer;
  attribute ECC_MODE of icyradio_axi_quad_spi_0_0_xpm_memory_base : entity is 0;
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of icyradio_axi_quad_spi_0_0_xpm_memory_base : entity is 0;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of icyradio_axi_quad_spi_0_0_xpm_memory_base : entity is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of icyradio_axi_quad_spi_0_0_xpm_memory_base : entity is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of icyradio_axi_quad_spi_0_0_xpm_memory_base : entity is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of icyradio_axi_quad_spi_0_0_xpm_memory_base : entity is 0;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of icyradio_axi_quad_spi_0_0_xpm_memory_base : entity is 2048;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of icyradio_axi_quad_spi_0_0_xpm_memory_base : entity is 1;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of icyradio_axi_quad_spi_0_0_xpm_memory_base : entity is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of icyradio_axi_quad_spi_0_0_xpm_memory_base : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_axi_quad_spi_0_0_xpm_memory_base : entity is "xpm_memory_base";
  attribute P_ECC_MODE : string;
  attribute P_ECC_MODE of icyradio_axi_quad_spi_0_0_xpm_memory_base : entity is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of icyradio_axi_quad_spi_0_0_xpm_memory_base : entity is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of icyradio_axi_quad_spi_0_0_xpm_memory_base : entity is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of icyradio_axi_quad_spi_0_0_xpm_memory_base : entity is 64;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of icyradio_axi_quad_spi_0_0_xpm_memory_base : entity is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of icyradio_axi_quad_spi_0_0_xpm_memory_base : entity is "auto";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of icyradio_axi_quad_spi_0_0_xpm_memory_base : entity is 32;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of icyradio_axi_quad_spi_0_0_xpm_memory_base : entity is 32;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of icyradio_axi_quad_spi_0_0_xpm_memory_base : entity is 32;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of icyradio_axi_quad_spi_0_0_xpm_memory_base : entity is 32;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of icyradio_axi_quad_spi_0_0_xpm_memory_base : entity is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of icyradio_axi_quad_spi_0_0_xpm_memory_base : entity is 32;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of icyradio_axi_quad_spi_0_0_xpm_memory_base : entity is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of icyradio_axi_quad_spi_0_0_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of icyradio_axi_quad_spi_0_0_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of icyradio_axi_quad_spi_0_0_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of icyradio_axi_quad_spi_0_0_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of icyradio_axi_quad_spi_0_0_xpm_memory_base : entity is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of icyradio_axi_quad_spi_0_0_xpm_memory_base : entity is "yes";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of icyradio_axi_quad_spi_0_0_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of icyradio_axi_quad_spi_0_0_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of icyradio_axi_quad_spi_0_0_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of icyradio_axi_quad_spi_0_0_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of icyradio_axi_quad_spi_0_0_xpm_memory_base : entity is 6;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of icyradio_axi_quad_spi_0_0_xpm_memory_base : entity is 6;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of icyradio_axi_quad_spi_0_0_xpm_memory_base : entity is 6;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of icyradio_axi_quad_spi_0_0_xpm_memory_base : entity is 6;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of icyradio_axi_quad_spi_0_0_xpm_memory_base : entity is 32;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of icyradio_axi_quad_spi_0_0_xpm_memory_base : entity is 32;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of icyradio_axi_quad_spi_0_0_xpm_memory_base : entity is 32;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of icyradio_axi_quad_spi_0_0_xpm_memory_base : entity is 32;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of icyradio_axi_quad_spi_0_0_xpm_memory_base : entity is 2;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of icyradio_axi_quad_spi_0_0_xpm_memory_base : entity is 2;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of icyradio_axi_quad_spi_0_0_xpm_memory_base : entity is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of icyradio_axi_quad_spi_0_0_xpm_memory_base : entity is "0";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of icyradio_axi_quad_spi_0_0_xpm_memory_base : entity is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of icyradio_axi_quad_spi_0_0_xpm_memory_base : entity is "SYNC";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of icyradio_axi_quad_spi_0_0_xpm_memory_base : entity is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of icyradio_axi_quad_spi_0_0_xpm_memory_base : entity is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of icyradio_axi_quad_spi_0_0_xpm_memory_base : entity is 0;
  attribute USE_MEM_INIT_MMI : integer;
  attribute USE_MEM_INIT_MMI of icyradio_axi_quad_spi_0_0_xpm_memory_base : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of icyradio_axi_quad_spi_0_0_xpm_memory_base : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of icyradio_axi_quad_spi_0_0_xpm_memory_base : entity is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of icyradio_axi_quad_spi_0_0_xpm_memory_base : entity is 32;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of icyradio_axi_quad_spi_0_0_xpm_memory_base : entity is 32;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of icyradio_axi_quad_spi_0_0_xpm_memory_base : entity is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of icyradio_axi_quad_spi_0_0_xpm_memory_base : entity is 2;
  attribute WRITE_PROTECT : integer;
  attribute WRITE_PROTECT of icyradio_axi_quad_spi_0_0_xpm_memory_base : entity is 1;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of icyradio_axi_quad_spi_0_0_xpm_memory_base : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of icyradio_axi_quad_spi_0_0_xpm_memory_base : entity is "soft";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of icyradio_axi_quad_spi_0_0_xpm_memory_base : entity is 32;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of icyradio_axi_quad_spi_0_0_xpm_memory_base : entity is 32;
end icyradio_axi_quad_spi_0_0_xpm_memory_base;

architecture STRUCTURE of icyradio_axi_quad_spi_0_0_xpm_memory_base is
  signal \<const0>\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute \MEM.PORTA.ADDRESS_BEGIN\ : integer;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ : integer;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 511;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is "p0_d32";
  attribute \MEM.PORTA.DATA_LSB\ : integer;
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute \MEM.PORTA.DATA_MSB\ : integer;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 31;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ : integer;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute \MEM.PORTB.ADDRESS_END\ : integer;
  attribute \MEM.PORTB.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 511;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is "p0_d32";
  attribute \MEM.PORTB.DATA_LSB\ : integer;
  attribute \MEM.PORTB.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute \MEM.PORTB.DATA_MSB\ : integer;
  attribute \MEM.PORTB.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 31;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg\ : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 2048;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg\ : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 511;
  attribute ram_offset : integer;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 31;
begin
  dbiterra <= \<const0>\;
  dbiterrb <= \<const0>\;
  douta(31) <= \<const0>\;
  douta(30) <= \<const0>\;
  douta(29) <= \<const0>\;
  douta(28) <= \<const0>\;
  douta(27) <= \<const0>\;
  douta(26) <= \<const0>\;
  douta(25) <= \<const0>\;
  douta(24) <= \<const0>\;
  douta(23) <= \<const0>\;
  douta(22) <= \<const0>\;
  douta(21) <= \<const0>\;
  douta(20) <= \<const0>\;
  douta(19) <= \<const0>\;
  douta(18) <= \<const0>\;
  douta(17) <= \<const0>\;
  douta(16) <= \<const0>\;
  douta(15) <= \<const0>\;
  douta(14) <= \<const0>\;
  douta(13) <= \<const0>\;
  douta(12) <= \<const0>\;
  douta(11) <= \<const0>\;
  douta(10) <= \<const0>\;
  douta(9) <= \<const0>\;
  douta(8) <= \<const0>\;
  douta(7) <= \<const0>\;
  douta(6) <= \<const0>\;
  douta(5) <= \<const0>\;
  douta(4) <= \<const0>\;
  douta(3) <= \<const0>\;
  douta(2) <= \<const0>\;
  douta(1) <= \<const0>\;
  douta(0) <= \<const0>\;
  sbiterra <= \<const0>\;
  sbiterrb <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_wr_a.gen_word_narrow.mem_reg\: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 1,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "SDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(13 downto 11) => B"000",
      ADDRARDADDR(10 downto 5) => addrb(5 downto 0),
      ADDRARDADDR(4 downto 0) => B"11111",
      ADDRBWRADDR(13 downto 11) => B"000",
      ADDRBWRADDR(10 downto 5) => addra(5 downto 0),
      ADDRBWRADDR(4 downto 0) => B"11111",
      CLKARDCLK => clkb,
      CLKBWRCLK => clka,
      DIADI(15 downto 0) => dina(15 downto 0),
      DIBDI(15 downto 0) => dina(31 downto 16),
      DIPADIP(1 downto 0) => B"11",
      DIPBDIP(1 downto 0) => B"11",
      DOADO(15 downto 0) => doutb(15 downto 0),
      DOBDO(15 downto 0) => doutb(31 downto 16),
      DOPADOP(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOPADOP_UNCONNECTED\(1 downto 0),
      DOPBDOP(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOPBDOP_UNCONNECTED\(1 downto 0),
      ENARDEN => enb,
      ENBWREN => '1',
      REGCEAREGCE => regceb,
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => rstb,
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3) => wea(0),
      WEBWE(2) => wea(0),
      WEBWE(1) => wea(0),
      WEBWE(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_quad_spi_0_0_slave_attachment is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    Bus_RNW_reg_reg : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\ : out STD_LOGIC;
    s_axi_rvalid_i_reg_0 : out STD_LOGIC;
    s_axi_bvalid_i_reg_0 : out STD_LOGIC;
    \XIP_MODE_GEN.ip2Bus_RdAck_core_reg_d3_reg\ : out STD_LOGIC;
    \XIP_MODE_GEN.ip2bus_wrack_core_reg_reg\ : out STD_LOGIC;
    rst_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    ip2bus_rdack_core_reg_d20 : out STD_LOGIC;
    ip2bus_rdack_core_reg_d10 : out STD_LOGIC;
    ip2bus_wrack_core_reg0 : out STD_LOGIC;
    ip2bus_wrack_core_reg_d10 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    ip2Bus_RdAck_core_reg_d3 : in STD_LOGIC;
    ip2bus_rdack_core_reg_d1 : in STD_LOGIC;
    ip2bus_wrack_core_reg_d1 : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    XIPCR_0_CPHA_int : in STD_LOGIC;
    XIPCR_1_CPOL_int : in STD_LOGIC;
    ip2bus_wrack_core_reg : in STD_LOGIC;
    \s_axi_rdata_i_reg[4]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_axi_quad_spi_0_0_slave_attachment : entity is "slave_attachment";
end icyradio_axi_quad_spi_0_0_slave_attachment;

architecture STRUCTURE of icyradio_axi_quad_spi_0_0_slave_attachment is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^xip_mode_gen.ip2bus_rdack_core_reg_d3_reg\ : STD_LOGIC;
  signal \^xip_mode_gen.ip2bus_wrack_core_reg_reg\ : STD_LOGIC;
  signal \bus2ip_addr_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[2]_i_2_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i_reg_n_0_[2]\ : STD_LOGIC;
  signal bus2ip_rnw_i_i_1_n_0 : STD_LOGIC;
  signal bus2ip_rnw_i_reg_n_0 : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal is_read_i_1_n_0 : STD_LOGIC;
  signal is_read_reg_n_0 : STD_LOGIC;
  signal is_write_i_1_n_0 : STD_LOGIC;
  signal is_write_i_2_n_0 : STD_LOGIC;
  signal is_write_reg_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_5_in : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 5 downto 0 );
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
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[2]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of start2_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \state[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \state[1]_i_2\ : label is "soft_lutpair7";
begin
  SR(0) <= \^sr\(0);
  \XIP_MODE_GEN.ip2Bus_RdAck_core_reg_d3_reg\ <= \^xip_mode_gen.ip2bus_rdack_core_reg_d3_reg\;
  \XIP_MODE_GEN.ip2bus_wrack_core_reg_reg\ <= \^xip_mode_gen.ip2bus_wrack_core_reg_reg\;
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
      I2 => \^xip_mode_gen.ip2bus_rdack_core_reg_d3_reg\,
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
      I4 => \^xip_mode_gen.ip2bus_wrack_core_reg_reg\,
      I5 => s_axi_bresp_i,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888F888FFFFF888"
    )
        port map (
      I0 => \^xip_mode_gen.ip2bus_wrack_core_reg_reg\,
      I1 => s_axi_bresp_i,
      I2 => s_axi_rresp_i,
      I3 => \^xip_mode_gen.ip2bus_rdack_core_reg_d3_reg\,
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
\INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1\: unisim.vcomponents.LUT4
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
\INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(2),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      I3 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(3),
      I4 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(4),
      O => plusOp(4)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      O => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(3),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      I3 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(2),
      I4 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(4),
      I5 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(5),
      O => plusOp(5)
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
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(4),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(4),
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(5),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(5),
      R => clear
    );
I_DECODER: entity work.icyradio_axi_quad_spi_0_0_address_decoder
     port map (
      Bus_RNW_reg_reg_0 => Bus_RNW_reg_reg,
      Bus_RNW_reg_reg_1 => bus2ip_rnw_i_reg_n_0,
      D(3 downto 0) => D(3 downto 0),
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1\ => start2,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2\ => \bus2ip_addr_i_reg_n_0_[2]\,
      Q(3 downto 0) => Q(3 downto 0),
      XIPCR_0_CPHA_int => XIPCR_0_CPHA_int,
      XIPCR_1_CPOL_int => XIPCR_1_CPOL_int,
      \XIP_MODE_GEN.ip2Bus_RdAck_core_reg_d3_reg\ => \^xip_mode_gen.ip2bus_rdack_core_reg_d3_reg\,
      \XIP_MODE_GEN.ip2bus_wrack_core_reg_reg\ => \^xip_mode_gen.ip2bus_wrack_core_reg_reg\,
      ip2Bus_RdAck_core_reg_d3 => ip2Bus_RdAck_core_reg_d3,
      ip2bus_rdack_core_reg_d1 => ip2bus_rdack_core_reg_d1,
      ip2bus_rdack_core_reg_d10 => ip2bus_rdack_core_reg_d10,
      ip2bus_rdack_core_reg_d20 => ip2bus_rdack_core_reg_d20,
      ip2bus_wrack_core_reg => ip2bus_wrack_core_reg,
      ip2bus_wrack_core_reg0 => ip2bus_wrack_core_reg0,
      ip2bus_wrack_core_reg_d1 => ip2bus_wrack_core_reg_d1,
      ip2bus_wrack_core_reg_d10 => ip2bus_wrack_core_reg_d10,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => is_read_reg_n_0,
      s_axi_wready => is_write_reg_n_0,
      s_axi_wready_0(5 downto 0) => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(5 downto 0)
    );
\XIPSR_data_int[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^sr\(0),
      I1 => ip2Bus_RdAck_core_reg_d3,
      O => rst_reg_0(0)
    );
\bus2ip_addr_i[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACAFFFFFACA00000"
    )
        port map (
      I0 => s_axi_araddr(0),
      I1 => s_axi_awaddr(0),
      I2 => s_axi_arvalid,
      I3 => p_5_in,
      I4 => \bus2ip_addr_i[2]_i_2_n_0\,
      I5 => \bus2ip_addr_i_reg_n_0_[2]\,
      O => \bus2ip_addr_i[2]_i_1_n_0\
    );
\bus2ip_addr_i[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      O => \bus2ip_addr_i[2]_i_2_n_0\
    );
\bus2ip_addr_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \bus2ip_addr_i[2]_i_1_n_0\,
      Q => \bus2ip_addr_i_reg_n_0_[2]\,
      R => \^sr\(0)
    );
bus2ip_rnw_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF000000AA"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => s_axi_awvalid,
      I2 => s_axi_wvalid,
      I3 => state(1),
      I4 => state(0),
      I5 => bus2ip_rnw_i_reg_n_0,
      O => bus2ip_rnw_i_i_1_n_0
    );
bus2ip_rnw_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => bus2ip_rnw_i_i_1_n_0,
      Q => bus2ip_rnw_i_reg_n_0,
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
      O => p_0_in
    );
rst_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_0_in,
      Q => \^sr\(0),
      R => '0'
    );
s_axi_bvalid_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08FF0808"
    )
        port map (
      I0 => \^xip_mode_gen.ip2bus_wrack_core_reg_reg\,
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
      D => \s_axi_rdata_i_reg[4]_0\(0),
      Q => s_axi_rdata(0),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[4]_0\(1),
      Q => s_axi_rdata(1),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[4]_0\(2),
      Q => s_axi_rdata(2),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[4]_0\(3),
      Q => s_axi_rdata(3),
      R => \^sr\(0)
    );
s_axi_rvalid_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08FF0808"
    )
        port map (
      I0 => \^xip_mode_gen.ip2bus_rdack_core_reg_d3_reg\,
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
      I4 => \^xip_mode_gen.ip2bus_wrack_core_reg_reg\,
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
      I5 => \^xip_mode_gen.ip2bus_rdack_core_reg_d3_reg\,
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
entity icyradio_axi_quad_spi_0_0_xpm_fifo_rst is
  port (
    \gen_rst_ic.fifo_rd_rst_ic_reg_0\ : out STD_LOGIC;
    wrst_busy : out STD_LOGIC;
    RESET_SYNC_AX2S_2 : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    underflow_i0 : out STD_LOGIC;
    \gen_rst_ic.wr_rst_busy_ic_reg_0\ : out STD_LOGIC;
    \gen_rst_ic.wr_rst_busy_ic_reg_1\ : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \gwack.wr_ack_i_reg\ : in STD_LOGIC;
    rst_d1 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \guf.underflow_i_reg\ : in STD_LOGIC;
    rd_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_axi_quad_spi_0_0_xpm_fifo_rst : entity is "xpm_fifo_rst";
end icyradio_axi_quad_spi_0_0_xpm_fifo_rst;

architecture STRUCTURE of icyradio_axi_quad_spi_0_0_xpm_fifo_rst is
  signal \/i__n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\ : signal is "yes";
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\ : signal is "yes";
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\ : signal is "yes";
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\ : signal is "yes";
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\ : signal is "yes";
  signal \gen_rst_ic.curr_rrst_state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP of \gen_rst_ic.curr_rrst_state\ : signal is "yes";
  signal \gen_rst_ic.fifo_rd_rst_i\ : STD_LOGIC;
  signal \^gen_rst_ic.fifo_rd_rst_ic_reg_0\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_rd_rst_wr_i\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_wr_rst_ic\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_wr_rst_ic_i_1_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_wr_rst_ic_i_2_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_wr_rst_ic_i_3_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_wr_rst_rd\ : STD_LOGIC;
  signal \gen_rst_ic.next_rrst_state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_rst_ic.rst_seq_reentered\ : STD_LOGIC;
  signal \gen_rst_ic.rst_seq_reentered_i_1_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.rst_seq_reentered_reg_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.wr_rst_busy_ic_i_1_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.wr_rst_busy_ic_i_2_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \power_on_rst_reg_n_0_[0]\ : STD_LOGIC;
  signal \^wrst_busy\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[0]\ : label is "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001";
  attribute KEEP : string;
  attribute KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[1]\ : label is "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001";
  attribute KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[2]\ : label is "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001";
  attribute KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[2]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[3]\ : label is "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001";
  attribute KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[3]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[4]\ : label is "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001";
  attribute KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[4]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[0]\ : label is "RRST_IDLE:00,RRST_IN:01,RRST_OUT:10,RRST_EXIT:11";
  attribute KEEP of \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[1]\ : label is "RRST_IDLE:00,RRST_IN:01,RRST_OUT:10,RRST_EXIT:11";
  attribute KEEP of \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[1]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_4\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \gen_rst_ic.fifo_wr_rst_ic_i_2\ : label is "soft_lutpair46";
  attribute DEF_VAL : string;
  attribute DEF_VAL of \gen_rst_ic.rrst_wr_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \gen_rst_ic.rrst_wr_inst\ : label is 2;
  attribute INIT : string;
  attribute INIT of \gen_rst_ic.rrst_wr_inst\ : label is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \gen_rst_ic.rrst_wr_inst\ : label is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \gen_rst_ic.rrst_wr_inst\ : label is 0;
  attribute VERSION : integer;
  attribute VERSION of \gen_rst_ic.rrst_wr_inst\ : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \gen_rst_ic.rrst_wr_inst\ : label is "SYNC_RST";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \gen_rst_ic.rrst_wr_inst\ : label is "TRUE";
  attribute SOFT_HLUTNM of \gen_rst_ic.rst_seq_reentered_i_1\ : label is "soft_lutpair46";
  attribute DEF_VAL of \gen_rst_ic.wrst_rd_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF of \gen_rst_ic.wrst_rd_inst\ : label is 2;
  attribute INIT of \gen_rst_ic.wrst_rd_inst\ : label is "0";
  attribute INIT_SYNC_FF of \gen_rst_ic.wrst_rd_inst\ : label is 1;
  attribute SIM_ASSERT_CHK of \gen_rst_ic.wrst_rd_inst\ : label is 0;
  attribute VERSION of \gen_rst_ic.wrst_rd_inst\ : label is 0;
  attribute XPM_CDC of \gen_rst_ic.wrst_rd_inst\ : label is "SYNC_RST";
  attribute XPM_MODULE of \gen_rst_ic.wrst_rd_inst\ : label is "TRUE";
  attribute SOFT_HLUTNM of \gof.overflow_i_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \grdc.rd_data_count_i[6]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \guf.underflow_i_i_1\ : label is "soft_lutpair47";
begin
  \gen_rst_ic.fifo_rd_rst_ic_reg_0\ <= \^gen_rst_ic.fifo_rd_rst_ic_reg_0\;
  wrst_busy <= \^wrst_busy\;
\/i_\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010116"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      I3 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      O => \/i__n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"333F333B333B333B"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I1 => \/i__n_0\,
      I2 => p_0_in,
      I3 => rst,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I5 => \gen_rst_ic.rst_seq_reentered_reg_n_0\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A888A8A8A8A8"
    )
        port map (
      I0 => \/i__n_0\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0\,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I3 => rst,
      I4 => p_0_in,
      I5 => \gen_rst_ic.fifo_rd_rst_wr_i\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEFEFE00"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I3 => p_0_in,
      I4 => rst,
      I5 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200020002000000"
    )
        port map (
      I0 => \/i__n_0\,
      I1 => rst,
      I2 => p_0_in,
      I3 => \gen_rst_ic.fifo_rd_rst_wr_i\,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I5 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000200"
    )
        port map (
      I0 => \/i__n_0\,
      I1 => rst,
      I2 => p_0_in,
      I3 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      I4 => \gen_rst_ic.fifo_rd_rst_wr_i\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000200"
    )
        port map (
      I0 => \/i__n_0\,
      I1 => rst,
      I2 => p_0_in,
      I3 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I4 => \gen_rst_ic.rst_seq_reentered_reg_n_0\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0\,
      Q => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      R => '0'
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0\,
      Q => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      R => '0'
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0\,
      Q => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      R => '0'
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0\,
      Q => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      R => '0'
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\,
      Q => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      R => '0'
    );
\FSM_sequential_gen_rst_ic.curr_rrst_state[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gen_rst_ic.curr_rrst_state\(0),
      I1 => \gen_rst_ic.curr_rrst_state\(1),
      O => \gen_rst_ic.next_rrst_state\(1)
    );
\FSM_sequential_gen_rst_ic.curr_rrst_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_rst_ic.next_rrst_state\(0),
      Q => \gen_rst_ic.curr_rrst_state\(0),
      R => '0'
    );
\FSM_sequential_gen_rst_ic.curr_rrst_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_rst_ic.next_rrst_state\(1),
      Q => \gen_rst_ic.curr_rrst_state\(1),
      R => '0'
    );
\__0/i_\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \gen_rst_ic.fifo_wr_rst_rd\,
      I1 => \gen_rst_ic.curr_rrst_state\(1),
      I2 => \gen_rst_ic.curr_rrst_state\(0),
      O => \gen_rst_ic.next_rrst_state\(0)
    );
\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => \^wrst_busy\,
      I1 => rst_d1,
      I2 => \gwack.wr_ack_i_reg\,
      I3 => wr_en,
      O => \gen_rst_ic.wr_rst_busy_ic_reg_0\
    );
\gen_rst_ic.fifo_rd_rst_ic_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3E"
    )
        port map (
      I0 => \gen_rst_ic.fifo_wr_rst_rd\,
      I1 => \gen_rst_ic.curr_rrst_state\(1),
      I2 => \gen_rst_ic.curr_rrst_state\(0),
      O => \gen_rst_ic.fifo_rd_rst_i\
    );
\gen_rst_ic.fifo_rd_rst_ic_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_rst_ic.fifo_rd_rst_i\,
      Q => \^gen_rst_ic.fifo_rd_rst_ic_reg_0\,
      R => '0'
    );
\gen_rst_ic.fifo_wr_rst_ic_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAEFFFFFFAE0000"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I2 => \gen_rst_ic.fifo_wr_rst_ic_i_2_n_0\,
      I3 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      I4 => \gen_rst_ic.fifo_wr_rst_ic_i_3_n_0\,
      I5 => \gen_rst_ic.fifo_wr_rst_ic\,
      O => \gen_rst_ic.fifo_wr_rst_ic_i_1_n_0\
    );
\gen_rst_ic.fifo_wr_rst_ic_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst,
      I1 => p_0_in,
      O => \gen_rst_ic.fifo_wr_rst_ic_i_2_n_0\
    );
\gen_rst_ic.fifo_wr_rst_ic_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010116"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I3 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      O => \gen_rst_ic.fifo_wr_rst_ic_i_3_n_0\
    );
\gen_rst_ic.fifo_wr_rst_ic_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_ic.fifo_wr_rst_ic_i_1_n_0\,
      Q => \gen_rst_ic.fifo_wr_rst_ic\,
      R => '0'
    );
\gen_rst_ic.rrst_wr_inst\: entity work.icyradio_axi_quad_spi_0_0_xpm_cdc_sync_rst
     port map (
      dest_clk => wr_clk,
      dest_rst => \gen_rst_ic.fifo_rd_rst_wr_i\,
      src_rst => \^gen_rst_ic.fifo_rd_rst_ic_reg_0\
    );
\gen_rst_ic.rst_seq_reentered_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000E"
    )
        port map (
      I0 => \gen_rst_ic.rst_seq_reentered_reg_n_0\,
      I1 => \gen_rst_ic.rst_seq_reentered\,
      I2 => p_0_in,
      I3 => rst,
      O => \gen_rst_ic.rst_seq_reentered_i_1_n_0\
    );
\gen_rst_ic.rst_seq_reentered_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      I3 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      O => \gen_rst_ic.rst_seq_reentered\
    );
\gen_rst_ic.rst_seq_reentered_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_ic.rst_seq_reentered_i_1_n_0\,
      Q => \gen_rst_ic.rst_seq_reentered_reg_n_0\,
      R => '0'
    );
\gen_rst_ic.wr_rst_busy_ic_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFFEF00"
    )
        port map (
      I0 => rst,
      I1 => p_0_in,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I3 => \gen_rst_ic.wr_rst_busy_ic_i_2_n_0\,
      I4 => \^wrst_busy\,
      O => \gen_rst_ic.wr_rst_busy_ic_i_1_n_0\
    );
\gen_rst_ic.wr_rst_busy_ic_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000116"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I3 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      O => \gen_rst_ic.wr_rst_busy_ic_i_2_n_0\
    );
\gen_rst_ic.wr_rst_busy_ic_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_ic.wr_rst_busy_ic_i_1_n_0\,
      Q => \^wrst_busy\,
      R => '0'
    );
\gen_rst_ic.wrst_rd_inst\: entity work.\icyradio_axi_quad_spi_0_0_xpm_cdc_sync_rst__2\
     port map (
      dest_clk => rd_clk,
      dest_rst => \gen_rst_ic.fifo_wr_rst_rd\,
      src_rst => \gen_rst_ic.fifo_wr_rst_ic\
    );
\gof.overflow_i_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \^wrst_busy\,
      I1 => rst_d1,
      I2 => \gwack.wr_ack_i_reg\,
      I3 => wr_en,
      O => \gen_rst_ic.wr_rst_busy_ic_reg_1\
    );
\grdc.rd_data_count_i[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F1"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => \^gen_rst_ic.fifo_rd_rst_ic_reg_0\,
      O => SR(0)
    );
\guf.underflow_i_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^gen_rst_ic.fifo_rd_rst_ic_reg_0\,
      I1 => \guf.underflow_i_reg\,
      I2 => rd_en,
      O => underflow_i0
    );
\gwack.wr_ack_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => rst,
      I1 => \gen_rst_ic.fifo_wr_rst_ic\,
      I2 => wr_en,
      I3 => \gwack.wr_ack_i_reg\,
      I4 => rst_d1,
      I5 => \^wrst_busy\,
      O => RESET_SYNC_AX2S_2
    );
\power_on_rst_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => '0',
      Q => \power_on_rst_reg_n_0_[0]\,
      R => '0'
    );
\power_on_rst_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \power_on_rst_reg_n_0_[0]\,
      Q => p_0_in,
      R => '0'
    );
wr_rst_busy_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^wrst_busy\,
      I1 => rst_d1,
      O => wr_rst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_quad_spi_0_0_axi_lite_ipif is
  port (
    bus2ip_reset_ipif_inverted : out STD_LOGIC;
    Bus_RNW_reg : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ : out STD_LOGIC;
    s_axi_rvalid_i_reg : out STD_LOGIC;
    s_axi_bvalid_i_reg : out STD_LOGIC;
    \XIP_MODE_GEN.ip2Bus_RdAck_core_reg_d3_reg\ : out STD_LOGIC;
    \XIP_MODE_GEN.ip2bus_wrack_core_reg_reg\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    ip2bus_rdack_core_reg_d20 : out STD_LOGIC;
    ip2bus_rdack_core_reg_d10 : out STD_LOGIC;
    ip2bus_wrack_core_reg0 : out STD_LOGIC;
    ip2bus_wrack_core_reg_d10 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    ip2Bus_RdAck_core_reg_d3 : in STD_LOGIC;
    ip2bus_rdack_core_reg_d1 : in STD_LOGIC;
    ip2bus_wrack_core_reg_d1 : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    XIPCR_0_CPHA_int : in STD_LOGIC;
    XIPCR_1_CPOL_int : in STD_LOGIC;
    ip2bus_wrack_core_reg : in STD_LOGIC;
    \s_axi_rdata_i_reg[4]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_axi_quad_spi_0_0_axi_lite_ipif : entity is "axi_lite_ipif";
end icyradio_axi_quad_spi_0_0_axi_lite_ipif;

architecture STRUCTURE of icyradio_axi_quad_spi_0_0_axi_lite_ipif is
begin
I_SLAVE_ATTACHMENT: entity work.icyradio_axi_quad_spi_0_0_slave_attachment
     port map (
      Bus_RNW_reg_reg => Bus_RNW_reg,
      D(3 downto 0) => D(3 downto 0),
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\ => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      Q(3 downto 0) => Q(3 downto 0),
      SR(0) => bus2ip_reset_ipif_inverted,
      XIPCR_0_CPHA_int => XIPCR_0_CPHA_int,
      XIPCR_1_CPOL_int => XIPCR_1_CPOL_int,
      \XIP_MODE_GEN.ip2Bus_RdAck_core_reg_d3_reg\ => \XIP_MODE_GEN.ip2Bus_RdAck_core_reg_d3_reg\,
      \XIP_MODE_GEN.ip2bus_wrack_core_reg_reg\ => \XIP_MODE_GEN.ip2bus_wrack_core_reg_reg\,
      ip2Bus_RdAck_core_reg_d3 => ip2Bus_RdAck_core_reg_d3,
      ip2bus_rdack_core_reg_d1 => ip2bus_rdack_core_reg_d1,
      ip2bus_rdack_core_reg_d10 => ip2bus_rdack_core_reg_d10,
      ip2bus_rdack_core_reg_d20 => ip2bus_rdack_core_reg_d20,
      ip2bus_wrack_core_reg => ip2bus_wrack_core_reg,
      ip2bus_wrack_core_reg0 => ip2bus_wrack_core_reg0,
      ip2bus_wrack_core_reg_d1 => ip2bus_wrack_core_reg_d1,
      ip2bus_wrack_core_reg_d10 => ip2bus_wrack_core_reg_d10,
      rst_reg_0(0) => SR(0),
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(0) => s_axi_araddr(0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(0) => s_axi_awaddr(0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid_i_reg_0 => s_axi_bvalid_i_reg,
      s_axi_rdata(3 downto 0) => s_axi_rdata(3 downto 0),
      \s_axi_rdata_i_reg[4]_0\(3 downto 0) => \s_axi_rdata_i_reg[4]\(3 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid_i_reg_0 => s_axi_rvalid_i_reg,
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_quad_spi_0_0_xpm_fifo_base is
  port (
    sleep : in STD_LOGIC;
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    full : out STD_LOGIC;
    full_n : out STD_LOGIC;
    prog_full : out STD_LOGIC;
    wr_data_count : out STD_LOGIC_VECTOR ( 5 downto 0 );
    overflow : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    empty : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    rd_data_count : out STD_LOGIC_VECTOR ( 5 downto 0 );
    underflow : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    data_valid : out STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC
  );
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of icyradio_axi_quad_spi_0_0_xpm_fifo_base : entity is 0;
  attribute CDC_DEST_SYNC_FF : integer;
  attribute CDC_DEST_SYNC_FF of icyradio_axi_quad_spi_0_0_xpm_fifo_base : entity is 2;
  attribute COMMON_CLOCK : integer;
  attribute COMMON_CLOCK of icyradio_axi_quad_spi_0_0_xpm_fifo_base : entity is 0;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of icyradio_axi_quad_spi_0_0_xpm_fifo_base : entity is "0";
  attribute ECC_MODE : integer;
  attribute ECC_MODE of icyradio_axi_quad_spi_0_0_xpm_fifo_base : entity is 0;
  attribute ENABLE_ECC : integer;
  attribute ENABLE_ECC of icyradio_axi_quad_spi_0_0_xpm_fifo_base : entity is 0;
  attribute EN_ADV_FEATURE : string;
  attribute EN_ADV_FEATURE of icyradio_axi_quad_spi_0_0_xpm_fifo_base : entity is "16'b0001111100011111";
  attribute EN_AE : string;
  attribute EN_AE of icyradio_axi_quad_spi_0_0_xpm_fifo_base : entity is "1'b1";
  attribute EN_AF : string;
  attribute EN_AF of icyradio_axi_quad_spi_0_0_xpm_fifo_base : entity is "1'b1";
  attribute EN_DVLD : string;
  attribute EN_DVLD of icyradio_axi_quad_spi_0_0_xpm_fifo_base : entity is "1'b1";
  attribute EN_OF : string;
  attribute EN_OF of icyradio_axi_quad_spi_0_0_xpm_fifo_base : entity is "1'b1";
  attribute EN_PE : string;
  attribute EN_PE of icyradio_axi_quad_spi_0_0_xpm_fifo_base : entity is "1'b1";
  attribute EN_PF : string;
  attribute EN_PF of icyradio_axi_quad_spi_0_0_xpm_fifo_base : entity is "1'b1";
  attribute EN_RDC : string;
  attribute EN_RDC of icyradio_axi_quad_spi_0_0_xpm_fifo_base : entity is "1'b1";
  attribute EN_UF : string;
  attribute EN_UF of icyradio_axi_quad_spi_0_0_xpm_fifo_base : entity is "1'b1";
  attribute EN_WACK : string;
  attribute EN_WACK of icyradio_axi_quad_spi_0_0_xpm_fifo_base : entity is "1'b1";
  attribute EN_WDC : string;
  attribute EN_WDC of icyradio_axi_quad_spi_0_0_xpm_fifo_base : entity is "1'b1";
  attribute FG_EQ_ASYM_DOUT : string;
  attribute FG_EQ_ASYM_DOUT of icyradio_axi_quad_spi_0_0_xpm_fifo_base : entity is "1'b0";
  attribute FIFO_MEMORY_TYPE : integer;
  attribute FIFO_MEMORY_TYPE of icyradio_axi_quad_spi_0_0_xpm_fifo_base : entity is 0;
  attribute FIFO_MEM_TYPE : integer;
  attribute FIFO_MEM_TYPE of icyradio_axi_quad_spi_0_0_xpm_fifo_base : entity is 0;
  attribute FIFO_READ_DEPTH : integer;
  attribute FIFO_READ_DEPTH of icyradio_axi_quad_spi_0_0_xpm_fifo_base : entity is 64;
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of icyradio_axi_quad_spi_0_0_xpm_fifo_base : entity is 0;
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of icyradio_axi_quad_spi_0_0_xpm_fifo_base : entity is 2048;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of icyradio_axi_quad_spi_0_0_xpm_fifo_base : entity is 64;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of icyradio_axi_quad_spi_0_0_xpm_fifo_base : entity is 1;
  attribute FULL_RST_VAL : string;
  attribute FULL_RST_VAL of icyradio_axi_quad_spi_0_0_xpm_fifo_base : entity is "1'b1";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_axi_quad_spi_0_0_xpm_fifo_base : entity is "xpm_fifo_base";
  attribute PE_THRESH_ADJ : integer;
  attribute PE_THRESH_ADJ of icyradio_axi_quad_spi_0_0_xpm_fifo_base : entity is 8;
  attribute PE_THRESH_MAX : integer;
  attribute PE_THRESH_MAX of icyradio_axi_quad_spi_0_0_xpm_fifo_base : entity is 59;
  attribute PE_THRESH_MIN : integer;
  attribute PE_THRESH_MIN of icyradio_axi_quad_spi_0_0_xpm_fifo_base : entity is 5;
  attribute PF_THRESH_ADJ : integer;
  attribute PF_THRESH_ADJ of icyradio_axi_quad_spi_0_0_xpm_fifo_base : entity is 8;
  attribute PF_THRESH_MAX : integer;
  attribute PF_THRESH_MAX of icyradio_axi_quad_spi_0_0_xpm_fifo_base : entity is 59;
  attribute PF_THRESH_MIN : integer;
  attribute PF_THRESH_MIN of icyradio_axi_quad_spi_0_0_xpm_fifo_base : entity is 7;
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of icyradio_axi_quad_spi_0_0_xpm_fifo_base : entity is 10;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of icyradio_axi_quad_spi_0_0_xpm_fifo_base : entity is 10;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of icyradio_axi_quad_spi_0_0_xpm_fifo_base : entity is 6;
  attribute RD_DC_WIDTH_EXT : integer;
  attribute RD_DC_WIDTH_EXT of icyradio_axi_quad_spi_0_0_xpm_fifo_base : entity is 7;
  attribute RD_LATENCY : integer;
  attribute RD_LATENCY of icyradio_axi_quad_spi_0_0_xpm_fifo_base : entity is 2;
  attribute RD_MODE : integer;
  attribute RD_MODE of icyradio_axi_quad_spi_0_0_xpm_fifo_base : entity is 1;
  attribute RD_PNTR_WIDTH : integer;
  attribute RD_PNTR_WIDTH of icyradio_axi_quad_spi_0_0_xpm_fifo_base : entity is 6;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of icyradio_axi_quad_spi_0_0_xpm_fifo_base : entity is 32;
  attribute READ_MODE : integer;
  attribute READ_MODE of icyradio_axi_quad_spi_0_0_xpm_fifo_base : entity is 1;
  attribute READ_MODE_LL : integer;
  attribute READ_MODE_LL of icyradio_axi_quad_spi_0_0_xpm_fifo_base : entity is 1;
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of icyradio_axi_quad_spi_0_0_xpm_fifo_base : entity is 0;
  attribute REMOVE_WR_RD_PROT_LOGIC : integer;
  attribute REMOVE_WR_RD_PROT_LOGIC of icyradio_axi_quad_spi_0_0_xpm_fifo_base : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of icyradio_axi_quad_spi_0_0_xpm_fifo_base : entity is 0;
  attribute USE_ADV_FEATURES : string;
  attribute USE_ADV_FEATURES of icyradio_axi_quad_spi_0_0_xpm_fifo_base : entity is "1F1F";
  attribute VERSION : integer;
  attribute VERSION of icyradio_axi_quad_spi_0_0_xpm_fifo_base : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of icyradio_axi_quad_spi_0_0_xpm_fifo_base : entity is 0;
  attribute WIDTH_RATIO : integer;
  attribute WIDTH_RATIO of icyradio_axi_quad_spi_0_0_xpm_fifo_base : entity is 1;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of icyradio_axi_quad_spi_0_0_xpm_fifo_base : entity is 32;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of icyradio_axi_quad_spi_0_0_xpm_fifo_base : entity is 6;
  attribute WR_DC_WIDTH_EXT : integer;
  attribute WR_DC_WIDTH_EXT of icyradio_axi_quad_spi_0_0_xpm_fifo_base : entity is 7;
  attribute WR_DEPTH_LOG : integer;
  attribute WR_DEPTH_LOG of icyradio_axi_quad_spi_0_0_xpm_fifo_base : entity is 6;
  attribute WR_PNTR_WIDTH : integer;
  attribute WR_PNTR_WIDTH of icyradio_axi_quad_spi_0_0_xpm_fifo_base : entity is 6;
  attribute WR_RD_RATIO : integer;
  attribute WR_RD_RATIO of icyradio_axi_quad_spi_0_0_xpm_fifo_base : entity is 0;
  attribute WR_WIDTH_LOG : integer;
  attribute WR_WIDTH_LOG of icyradio_axi_quad_spi_0_0_xpm_fifo_base : entity is 5;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of icyradio_axi_quad_spi_0_0_xpm_fifo_base : entity is "TRUE";
  attribute both_stages_valid : integer;
  attribute both_stages_valid of icyradio_axi_quad_spi_0_0_xpm_fifo_base : entity is 3;
  attribute invalid : integer;
  attribute invalid of icyradio_axi_quad_spi_0_0_xpm_fifo_base : entity is 0;
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of icyradio_axi_quad_spi_0_0_xpm_fifo_base : entity is "soft";
  attribute stage1_valid : integer;
  attribute stage1_valid of icyradio_axi_quad_spi_0_0_xpm_fifo_base : entity is 2;
  attribute stage2_valid : integer;
  attribute stage2_valid of icyradio_axi_quad_spi_0_0_xpm_fifo_base : entity is 1;
end icyradio_axi_quad_spi_0_0_xpm_fifo_base;

architecture STRUCTURE of icyradio_axi_quad_spi_0_0_xpm_fifo_base is
  signal \<const0>\ : STD_LOGIC;
  signal aempty_fwft_i0 : STD_LOGIC;
  signal \^almost_empty\ : STD_LOGIC;
  signal \^almost_full\ : STD_LOGIC;
  signal clr_full : STD_LOGIC;
  signal curr_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal data_valid_fwft1 : STD_LOGIC;
  signal diff_pntr_pe : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal diff_pntr_pf_q : STD_LOGIC_VECTOR ( 6 downto 4 );
  signal diff_pntr_pf_q0 : STD_LOGIC_VECTOR ( 6 downto 4 );
  signal \^empty\ : STD_LOGIC;
  signal \^full\ : STD_LOGIC;
  signal \gaf_wptr_p3.wrpp3_inst_n_0\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_0\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_1\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_2\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_3\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_4\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_5\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_6\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_n_6\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_n_7\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_0\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_1\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_10\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_2\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_3\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_4\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_5\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_6\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_7\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_8\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_9\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_0\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_1\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_2\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_3\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_4\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_5\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_6\ : STD_LOGIC;
  signal \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0\ : STD_LOGIC;
  signal \gen_fwft.ram_regout_en\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_1\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_2\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_3\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_4\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[4]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[5]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_2_n_0\ : STD_LOGIC;
  signal \grdc.diff_wr_rd_pntr_rdc\ : STD_LOGIC_VECTOR ( 6 downto 1 );
  signal \grdc.rd_data_count_i0\ : STD_LOGIC;
  signal \gwdc.diff_wr_rd_pntr1_out\ : STD_LOGIC_VECTOR ( 6 downto 1 );
  signal \next_fwft_state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_1_in : STD_LOGIC;
  signal \^prog_empty\ : STD_LOGIC;
  signal \^prog_full\ : STD_LOGIC;
  signal ram_empty_i : STD_LOGIC;
  signal ram_empty_i0 : STD_LOGIC;
  signal ram_rd_en_i : STD_LOGIC;
  signal rd_pntr_ext : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal rd_pntr_wr : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal rd_pntr_wr_cdc : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal rd_pntr_wr_cdc_dc : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^rd_rst_busy\ : STD_LOGIC;
  signal rdp_inst_n_0 : STD_LOGIC;
  signal rdp_inst_n_14 : STD_LOGIC;
  signal rdp_inst_n_21 : STD_LOGIC;
  signal rdp_inst_n_22 : STD_LOGIC;
  signal rdp_inst_n_23 : STD_LOGIC;
  signal rdp_inst_n_24 : STD_LOGIC;
  signal rdp_inst_n_25 : STD_LOGIC;
  signal rst_d1 : STD_LOGIC;
  signal rst_d1_inst_n_1 : STD_LOGIC;
  signal src_in_bin00_out : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal underflow_i0 : STD_LOGIC;
  signal wr_pntr_ext : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal wr_pntr_plus1_pf : STD_LOGIC_VECTOR ( 6 downto 4 );
  signal wr_pntr_plus1_pf_carry : STD_LOGIC;
  signal wr_pntr_rd_cdc : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal wr_pntr_rd_cdc_dc : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal wrpp1_inst_n_3 : STD_LOGIC;
  signal wrpp2_inst_n_0 : STD_LOGIC;
  signal wrst_busy : STD_LOGIC;
  signal xpm_fifo_rst_inst_n_2 : STD_LOGIC;
  signal xpm_fifo_rst_inst_n_6 : STD_LOGIC;
  signal xpm_fifo_rst_inst_n_7 : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1\ : label is "soft_lutpair48";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_fwft.curr_fwft_state_reg[0]\ : label is "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ : label is "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 1;
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 0;
  attribute VERSION of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 7;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is "GRAY";
  attribute XPM_MODULE of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is "TRUE";
  attribute DEST_SYNC_FF of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 2;
  attribute INIT_SYNC_FF of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 1;
  attribute REG_OUTPUT of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 0;
  attribute VERSION of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 0;
  attribute WIDTH of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 6;
  attribute XPM_CDC of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is "GRAY";
  attribute XPM_MODULE of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is "TRUE";
  attribute DEST_SYNC_FF of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 4;
  attribute INIT_SYNC_FF of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 1;
  attribute REG_OUTPUT of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 0;
  attribute VERSION of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 0;
  attribute WIDTH of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 7;
  attribute XPM_CDC of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is "GRAY";
  attribute XPM_MODULE of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is "TRUE";
  attribute DEST_SYNC_FF of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 2;
  attribute INIT_SYNC_FF of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 1;
  attribute REG_OUTPUT of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 0;
  attribute VERSION of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 0;
  attribute WIDTH of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 6;
  attribute XPM_CDC of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is "GRAY";
  attribute XPM_MODULE of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is "TRUE";
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 6;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 6;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 32;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 32;
  attribute CASCADE_HEIGHT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute ECC_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute KEEP_HIERARCHY of \gen_sdpram.xpm_memory_base_inst\ : label is "soft";
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute \MEM.ADDRESS_SPACE\ : boolean;
  attribute \MEM.ADDRESS_SPACE\ of \gen_sdpram.xpm_memory_base_inst\ : label is std.standard.true;
  attribute \MEM.ADDRESS_SPACE_BEGIN\ : integer;
  attribute \MEM.ADDRESS_SPACE_BEGIN\ of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute \MEM.ADDRESS_SPACE_DATA_LSB\ : integer;
  attribute \MEM.ADDRESS_SPACE_DATA_LSB\ of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute \MEM.ADDRESS_SPACE_DATA_MSB\ : integer;
  attribute \MEM.ADDRESS_SPACE_DATA_MSB\ of \gen_sdpram.xpm_memory_base_inst\ : label is 31;
  attribute \MEM.ADDRESS_SPACE_END\ : integer;
  attribute \MEM.ADDRESS_SPACE_END\ of \gen_sdpram.xpm_memory_base_inst\ : label is 511;
  attribute \MEM.CORE_MEMORY_WIDTH\ : integer;
  attribute \MEM.CORE_MEMORY_WIDTH\ of \gen_sdpram.xpm_memory_base_inst\ : label is 32;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of \gen_sdpram.xpm_memory_base_inst\ : label is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of \gen_sdpram.xpm_memory_base_inst\ : label is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of \gen_sdpram.xpm_memory_base_inst\ : label is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of \gen_sdpram.xpm_memory_base_inst\ : label is 2048;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_ECC_MODE : string;
  attribute P_ECC_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of \gen_sdpram.xpm_memory_base_inst\ : label is 64;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of \gen_sdpram.xpm_memory_base_inst\ : label is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of \gen_sdpram.xpm_memory_base_inst\ : label is "auto";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of \gen_sdpram.xpm_memory_base_inst\ : label is 32;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of \gen_sdpram.xpm_memory_base_inst\ : label is 32;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of \gen_sdpram.xpm_memory_base_inst\ : label is 32;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of \gen_sdpram.xpm_memory_base_inst\ : label is 32;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of \gen_sdpram.xpm_memory_base_inst\ : label is 32;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is "yes";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 6;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 6;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 6;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 6;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 32;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 32;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 32;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 32;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of \gen_sdpram.xpm_memory_base_inst\ : label is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of \gen_sdpram.xpm_memory_base_inst\ : label is "0";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of \gen_sdpram.xpm_memory_base_inst\ : label is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of \gen_sdpram.xpm_memory_base_inst\ : label is "SYNC";
  attribute SIM_ASSERT_CHK of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_MEM_INIT_MMI : integer;
  attribute USE_MEM_INIT_MMI of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute VERSION of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute WAKEUP_TIME of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 32;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 32;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute WRITE_PROTECT : integer;
  attribute WRITE_PROTECT of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute XPM_MODULE of \gen_sdpram.xpm_memory_base_inst\ : label is "TRUE";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of \gen_sdpram.xpm_memory_base_inst\ : label is 32;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of \gen_sdpram.xpm_memory_base_inst\ : label is 32;
begin
  almost_empty <= \^almost_empty\;
  almost_full <= \^almost_full\;
  dbiterr <= \<const0>\;
  empty <= \^empty\;
  full <= \^full\;
  full_n <= \<const0>\;
  prog_empty <= \^prog_empty\;
  prog_full <= \^prog_full\;
  rd_rst_busy <= \^rd_rst_busy\;
  sbiterr <= \<const0>\;
\FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7883"
    )
        port map (
      I0 => rd_en,
      I1 => curr_fwft_state(1),
      I2 => ram_empty_i,
      I3 => curr_fwft_state(0),
      O => \next_fwft_state__0\(0)
    );
\FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3FF0"
    )
        port map (
      I0 => ram_empty_i,
      I1 => rd_en,
      I2 => curr_fwft_state(0),
      I3 => curr_fwft_state(1),
      O => \next_fwft_state__0\(1)
    );
\FSM_sequential_gen_fwft.curr_fwft_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \next_fwft_state__0\(0),
      Q => curr_fwft_state(0),
      R => \^rd_rst_busy\
    );
\FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \next_fwft_state__0\(1),
      Q => curr_fwft_state(1),
      R => \^rd_rst_busy\
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gaf_wptr_p3.wrpp3_inst\: entity work.icyradio_axi_quad_spi_0_0_xpm_counter_updn
     port map (
      E(0) => wr_pntr_plus1_pf_carry,
      Q(5 downto 0) => rd_pntr_wr(5 downto 0),
      almost_full => \^almost_full\,
      clr_full => clr_full,
      \count_value_i_reg[2]_0\ => xpm_fifo_rst_inst_n_6,
      \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg\ => wrpp2_inst_n_0,
      \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0\ => \^full\,
      \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg\ => \gaf_wptr_p3.wrpp3_inst_n_0\,
      rst => rst,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en,
      wrst_busy => wrst_busy
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst\: entity work.\icyradio_axi_quad_spi_0_0_xpm_cdc_gray__parameterized1\
     port map (
      dest_clk => wr_clk,
      dest_out_bin(6 downto 0) => rd_pntr_wr_cdc_dc(6 downto 0),
      src_clk => rd_clk,
      src_in_bin(6 downto 0) => src_in_bin00_out(6 downto 0)
    );
\gen_cdc_pntr.rd_pntr_cdc_inst\: entity work.icyradio_axi_quad_spi_0_0_xpm_cdc_gray
     port map (
      dest_clk => wr_clk,
      dest_out_bin(5 downto 0) => rd_pntr_wr_cdc(5 downto 0),
      src_clk => rd_clk,
      src_in_bin(5 downto 0) => rd_pntr_ext(5 downto 0)
    );
\gen_cdc_pntr.rpw_gray_reg\: entity work.icyradio_axi_quad_spi_0_0_xpm_fifo_reg_vec
     port map (
      D(5 downto 0) => rd_pntr_wr_cdc(5 downto 0),
      Q(5 downto 0) => rd_pntr_wr(5 downto 0),
      S(0) => \gen_cdc_pntr.rpw_gray_reg_n_6\,
      clr_full => clr_full,
      \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg\(2 downto 0) => wr_pntr_plus1_pf(6 downto 4),
      \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0\ => wrpp1_inst_n_3,
      \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_1\ => xpm_fifo_rst_inst_n_6,
      \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_2\ => wrpp2_inst_n_0,
      \reg_out_i_reg[4]_0\ => \gen_cdc_pntr.rpw_gray_reg_n_7\,
      wr_clk => wr_clk,
      wrst_busy => wrst_busy
    );
\gen_cdc_pntr.rpw_gray_reg_dc\: entity work.\icyradio_axi_quad_spi_0_0_xpm_fifo_reg_vec__parameterized0\
     port map (
      D(6 downto 0) => rd_pntr_wr_cdc_dc(6 downto 0),
      Q(6) => \gen_cdc_pntr.rpw_gray_reg_dc_n_0\,
      Q(5) => \gen_cdc_pntr.rpw_gray_reg_dc_n_1\,
      Q(4) => \gen_cdc_pntr.rpw_gray_reg_dc_n_2\,
      Q(3) => \gen_cdc_pntr.rpw_gray_reg_dc_n_3\,
      Q(2) => \gen_cdc_pntr.rpw_gray_reg_dc_n_4\,
      Q(1) => \gen_cdc_pntr.rpw_gray_reg_dc_n_5\,
      Q(0) => \gen_cdc_pntr.rpw_gray_reg_dc_n_6\,
      wr_clk => wr_clk,
      wrst_busy => wrst_busy
    );
\gen_cdc_pntr.wpr_gray_reg\: entity work.icyradio_axi_quad_spi_0_0_xpm_fifo_reg_vec_1
     port map (
      D(5 downto 0) => diff_pntr_pe(5 downto 0),
      DI(0) => p_1_in,
      Q(5) => \gen_cdc_pntr.wpr_gray_reg_n_1\,
      Q(4) => \gen_cdc_pntr.wpr_gray_reg_n_2\,
      Q(3) => \gen_cdc_pntr.wpr_gray_reg_n_3\,
      Q(2) => \gen_cdc_pntr.wpr_gray_reg_n_4\,
      Q(1) => \gen_cdc_pntr.wpr_gray_reg_n_5\,
      Q(0) => \gen_cdc_pntr.wpr_gray_reg_n_6\,
      S(3) => rdp_inst_n_21,
      S(2) => rdp_inst_n_22,
      S(1) => rdp_inst_n_23,
      S(0) => rdp_inst_n_24,
      \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]\(0) => rdp_inst_n_25,
      \gen_pf_ic_rc.ram_empty_i_reg\(2 downto 0) => rd_pntr_ext(5 downto 3),
      rd_clk => rd_clk,
      \reg_out_i_reg[0]_0\ => \^rd_rst_busy\,
      \reg_out_i_reg[5]_0\ => \gen_cdc_pntr.wpr_gray_reg_n_0\,
      \reg_out_i_reg[5]_1\(5 downto 0) => wr_pntr_rd_cdc(5 downto 0)
    );
\gen_cdc_pntr.wpr_gray_reg_dc\: entity work.\icyradio_axi_quad_spi_0_0_xpm_fifo_reg_vec__parameterized0_2\
     port map (
      D(6 downto 0) => wr_pntr_rd_cdc_dc(6 downto 0),
      DI(1) => \gen_cdc_pntr.wpr_gray_reg_dc_n_0\,
      DI(0) => \gen_cdc_pntr.wpr_gray_reg_dc_n_1\,
      Q(5) => \gen_cdc_pntr.wpr_gray_reg_dc_n_2\,
      Q(4) => \gen_cdc_pntr.wpr_gray_reg_dc_n_3\,
      Q(3) => \gen_cdc_pntr.wpr_gray_reg_dc_n_4\,
      Q(2) => \gen_cdc_pntr.wpr_gray_reg_dc_n_5\,
      Q(1) => \gen_cdc_pntr.wpr_gray_reg_dc_n_6\,
      Q(0) => \gen_cdc_pntr.wpr_gray_reg_dc_n_7\,
      S(0) => \gen_cdc_pntr.wpr_gray_reg_dc_n_10\,
      \grdc.rd_data_count_i_reg[3]\ => \gen_fwft.rdpp1_inst_n_4\,
      \grdc.rd_data_count_i_reg[6]\(5) => rdp_inst_n_0,
      \grdc.rd_data_count_i_reg[6]\(4 downto 0) => rd_pntr_ext(5 downto 1),
      rd_clk => rd_clk,
      \reg_out_i_reg[4]_0\(1) => \gen_cdc_pntr.wpr_gray_reg_dc_n_8\,
      \reg_out_i_reg[4]_0\(0) => \gen_cdc_pntr.wpr_gray_reg_dc_n_9\,
      \reg_out_i_reg[6]_0\ => \^rd_rst_busy\
    );
\gen_cdc_pntr.wr_pntr_cdc_dc_inst\: entity work.\icyradio_axi_quad_spi_0_0_xpm_cdc_gray__parameterized0\
     port map (
      dest_clk => rd_clk,
      dest_out_bin(6 downto 0) => wr_pntr_rd_cdc_dc(6 downto 0),
      src_clk => wr_clk,
      src_in_bin(6 downto 0) => wr_pntr_ext(6 downto 0)
    );
\gen_cdc_pntr.wr_pntr_cdc_inst\: entity work.\icyradio_axi_quad_spi_0_0_xpm_cdc_gray__1\
     port map (
      dest_clk => rd_clk,
      dest_out_bin(5 downto 0) => wr_pntr_rd_cdc(5 downto 0),
      src_clk => wr_clk,
      src_in_bin(5 downto 0) => wr_pntr_ext(5 downto 0)
    );
\gen_fwft.empty_fwft_i_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E0CC"
    )
        port map (
      I0 => rd_en,
      I1 => \^empty\,
      I2 => curr_fwft_state(1),
      I3 => curr_fwft_state(0),
      O => data_valid_fwft1
    );
\gen_fwft.empty_fwft_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => data_valid_fwft1,
      Q => \^empty\,
      S => \^rd_rst_busy\
    );
\gen_fwft.gae_fwft.aempty_fwft_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DCCCC444"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => \^almost_empty\,
      I2 => rd_en,
      I3 => curr_fwft_state(1),
      I4 => ram_empty_i,
      O => aempty_fwft_i0
    );
\gen_fwft.gae_fwft.aempty_fwft_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => aempty_fwft_i0,
      Q => \^almost_empty\,
      S => \^rd_rst_busy\
    );
\gen_fwft.gdvld_fwft.data_valid_fwft_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"15F5"
    )
        port map (
      I0 => \^empty\,
      I1 => rd_en,
      I2 => curr_fwft_state(0),
      I3 => curr_fwft_state(1),
      O => \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0\
    );
\gen_fwft.gdvld_fwft.data_valid_fwft_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0\,
      Q => data_valid,
      R => \^rd_rst_busy\
    );
\gen_fwft.rdpp1_inst\: entity work.\icyradio_axi_quad_spi_0_0_xpm_counter_updn__parameterized1\
     port map (
      DI(1) => \gen_fwft.rdpp1_inst_n_2\,
      DI(0) => \gen_fwft.rdpp1_inst_n_3\,
      Q(0) => rd_pntr_ext(0),
      \count_value_i_reg[0]_0\ => \gen_fwft.rdpp1_inst_n_1\,
      \count_value_i_reg[1]_0\ => \gen_fwft.rdpp1_inst_n_4\,
      \count_value_i_reg[1]_1\ => \^rd_rst_busy\,
      \count_value_i_reg[1]_2\(1 downto 0) => curr_fwft_state(1 downto 0),
      ram_empty_i => ram_empty_i,
      rd_clk => rd_clk,
      rd_en => rd_en,
      src_in_bin(0) => src_in_bin00_out(0)
    );
\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gaf_wptr_p3.wrpp3_inst_n_0\,
      Q => \^almost_full\,
      S => wrst_busy
    );
\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_cdc_pntr.rpw_gray_reg_n_7\,
      Q => \^full\,
      S => wrst_busy
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AABA"
    )
        port map (
      I0 => ram_empty_i,
      I1 => rd_en,
      I2 => curr_fwft_state(1),
      I3 => curr_fwft_state(0),
      O => p_1_in
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(0),
      Q => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0]\,
      R => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(1),
      Q => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1]\,
      R => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(2),
      Q => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2]\,
      R => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(3),
      Q => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3]\,
      R => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(4),
      Q => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[4]\,
      R => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(5),
      Q => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[5]\,
      R => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^prog_empty\,
      I1 => \^empty\,
      I2 => \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_2_n_0\,
      O => \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0\
    );
\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005557"
    )
        port map (
      I0 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3]\,
      I1 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2]\,
      I2 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1]\,
      I3 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0]\,
      I4 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[5]\,
      I5 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[4]\,
      O => \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_2_n_0\
    );
\gen_pf_ic_rc.gpe_ic.prog_empty_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0\,
      Q => \^prog_empty\,
      S => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(4),
      Q => diff_pntr_pf_q(4),
      R => wrst_busy
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(5),
      Q => diff_pntr_pf_q(5),
      R => wrst_busy
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(6),
      Q => diff_pntr_pf_q(6),
      R => wrst_busy
    );
\gen_pf_ic_rc.gpf_ic.prog_full_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => rst_d1_inst_n_1,
      Q => \^prog_full\,
      S => wrst_busy
    );
\gen_pf_ic_rc.ram_empty_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => ram_empty_i0,
      Q => ram_empty_i,
      S => \^rd_rst_busy\
    );
\gen_sdpram.xpm_memory_base_inst\: entity work.icyradio_axi_quad_spi_0_0_xpm_memory_base
     port map (
      addra(5 downto 0) => wr_pntr_ext(5 downto 0),
      addrb(5 downto 0) => rd_pntr_ext(5 downto 0),
      clka => wr_clk,
      clkb => rd_clk,
      dbiterra => \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED\,
      dbiterrb => \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED\,
      dina(31 downto 0) => din(31 downto 0),
      dinb(31 downto 0) => B"00000000000000000000000000000000",
      douta(31 downto 0) => \NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED\(31 downto 0),
      doutb(31 downto 0) => dout(31 downto 0),
      ena => '0',
      enb => ram_rd_en_i,
      injectdbiterra => '0',
      injectdbiterrb => '0',
      injectsbiterra => '0',
      injectsbiterrb => '0',
      regcea => '0',
      regceb => \gen_fwft.ram_regout_en\,
      rsta => '0',
      rstb => \^rd_rst_busy\,
      sbiterra => \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED\,
      sbiterrb => \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED\,
      sleep => sleep,
      wea(0) => wr_pntr_plus1_pf_carry,
      web(0) => '0'
    );
\gen_sdpram.xpm_memory_base_inst_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2C"
    )
        port map (
      I0 => rd_en,
      I1 => curr_fwft_state(0),
      I2 => curr_fwft_state(1),
      O => \gen_fwft.ram_regout_en\
    );
\gof.overflow_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => xpm_fifo_rst_inst_n_7,
      Q => overflow,
      R => '0'
    );
\grdc.rd_data_count_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(1),
      Q => rd_data_count(0),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(2),
      Q => rd_data_count(1),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(3),
      Q => rd_data_count(2),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(4),
      Q => rd_data_count(3),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(5),
      Q => rd_data_count(4),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(6),
      Q => rd_data_count(5),
      R => \grdc.rd_data_count_i0\
    );
\guf.underflow_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => underflow_i0,
      Q => underflow,
      R => '0'
    );
\gwack.wr_ack_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => xpm_fifo_rst_inst_n_2,
      Q => wr_ack,
      R => '0'
    );
\gwdc.wr_data_count_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \gwdc.diff_wr_rd_pntr1_out\(1),
      Q => wr_data_count(0),
      R => wrst_busy
    );
\gwdc.wr_data_count_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \gwdc.diff_wr_rd_pntr1_out\(2),
      Q => wr_data_count(1),
      R => wrst_busy
    );
\gwdc.wr_data_count_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \gwdc.diff_wr_rd_pntr1_out\(3),
      Q => wr_data_count(2),
      R => wrst_busy
    );
\gwdc.wr_data_count_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \gwdc.diff_wr_rd_pntr1_out\(4),
      Q => wr_data_count(3),
      R => wrst_busy
    );
\gwdc.wr_data_count_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \gwdc.diff_wr_rd_pntr1_out\(5),
      Q => wr_data_count(4),
      R => wrst_busy
    );
\gwdc.wr_data_count_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \gwdc.diff_wr_rd_pntr1_out\(6),
      Q => wr_data_count(5),
      R => wrst_busy
    );
rdp_inst: entity work.\icyradio_axi_quad_spi_0_0_xpm_counter_updn__parameterized2\
     port map (
      D(5 downto 0) => \grdc.diff_wr_rd_pntr_rdc\(6 downto 1),
      DI(3) => \gen_cdc_pntr.wpr_gray_reg_dc_n_0\,
      DI(2) => \gen_cdc_pntr.wpr_gray_reg_dc_n_1\,
      DI(1) => \gen_fwft.rdpp1_inst_n_2\,
      DI(0) => \gen_fwft.rdpp1_inst_n_3\,
      E(0) => ram_rd_en_i,
      Q(6) => rdp_inst_n_0,
      Q(5 downto 0) => rd_pntr_ext(5 downto 0),
      S(0) => \gen_cdc_pntr.wpr_gray_reg_dc_n_10\,
      \count_value_i_reg[0]_0\(1 downto 0) => curr_fwft_state(1 downto 0),
      \count_value_i_reg[1]_0\ => rdp_inst_n_14,
      \count_value_i_reg[3]_0\(3) => rdp_inst_n_21,
      \count_value_i_reg[3]_0\(2) => rdp_inst_n_22,
      \count_value_i_reg[3]_0\(1) => rdp_inst_n_23,
      \count_value_i_reg[3]_0\(0) => rdp_inst_n_24,
      \count_value_i_reg[4]_0\(0) => rdp_inst_n_25,
      \count_value_i_reg[6]_0\ => \^rd_rst_busy\,
      \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]\(4) => \gen_cdc_pntr.wpr_gray_reg_n_2\,
      \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]\(3) => \gen_cdc_pntr.wpr_gray_reg_n_3\,
      \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]\(2) => \gen_cdc_pntr.wpr_gray_reg_n_4\,
      \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]\(1) => \gen_cdc_pntr.wpr_gray_reg_n_5\,
      \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]\(0) => \gen_cdc_pntr.wpr_gray_reg_n_6\,
      \grdc.rd_data_count_i_reg[3]\ => \gen_fwft.rdpp1_inst_n_4\,
      \grdc.rd_data_count_i_reg[3]_0\ => \gen_fwft.rdpp1_inst_n_1\,
      \grdc.rd_data_count_i_reg[6]\(1) => \gen_cdc_pntr.wpr_gray_reg_dc_n_8\,
      \grdc.rd_data_count_i_reg[6]\(0) => \gen_cdc_pntr.wpr_gray_reg_dc_n_9\,
      \grdc.rd_data_count_i_reg[6]_0\(5) => \gen_cdc_pntr.wpr_gray_reg_dc_n_2\,
      \grdc.rd_data_count_i_reg[6]_0\(4) => \gen_cdc_pntr.wpr_gray_reg_dc_n_3\,
      \grdc.rd_data_count_i_reg[6]_0\(3) => \gen_cdc_pntr.wpr_gray_reg_dc_n_4\,
      \grdc.rd_data_count_i_reg[6]_0\(2) => \gen_cdc_pntr.wpr_gray_reg_dc_n_5\,
      \grdc.rd_data_count_i_reg[6]_0\(1) => \gen_cdc_pntr.wpr_gray_reg_dc_n_6\,
      \grdc.rd_data_count_i_reg[6]_0\(0) => \gen_cdc_pntr.wpr_gray_reg_dc_n_7\,
      ram_empty_i => ram_empty_i,
      rd_clk => rd_clk,
      rd_en => rd_en,
      src_in_bin(5 downto 0) => src_in_bin00_out(6 downto 1)
    );
rdpp1_inst: entity work.\icyradio_axi_quad_spi_0_0_xpm_counter_updn__parameterized3\
     port map (
      E(0) => ram_rd_en_i,
      Q(1 downto 0) => curr_fwft_state(1 downto 0),
      \count_value_i_reg[0]_0\ => \^rd_rst_busy\,
      \gen_pf_ic_rc.ram_empty_i_reg\ => rdp_inst_n_14,
      \gen_pf_ic_rc.ram_empty_i_reg_0\ => \gen_cdc_pntr.wpr_gray_reg_n_0\,
      \gen_pf_ic_rc.ram_empty_i_reg_1\(5) => \gen_cdc_pntr.wpr_gray_reg_n_1\,
      \gen_pf_ic_rc.ram_empty_i_reg_1\(4) => \gen_cdc_pntr.wpr_gray_reg_n_2\,
      \gen_pf_ic_rc.ram_empty_i_reg_1\(3) => \gen_cdc_pntr.wpr_gray_reg_n_3\,
      \gen_pf_ic_rc.ram_empty_i_reg_1\(2) => \gen_cdc_pntr.wpr_gray_reg_n_4\,
      \gen_pf_ic_rc.ram_empty_i_reg_1\(1) => \gen_cdc_pntr.wpr_gray_reg_n_5\,
      \gen_pf_ic_rc.ram_empty_i_reg_1\(0) => \gen_cdc_pntr.wpr_gray_reg_n_6\,
      ram_empty_i => ram_empty_i,
      ram_empty_i0 => ram_empty_i0,
      rd_clk => rd_clk,
      rd_en => rd_en
    );
rst_d1_inst: entity work.icyradio_axi_quad_spi_0_0_xpm_fifo_reg_bit
     port map (
      E(0) => wr_pntr_plus1_pf_carry,
      Q(2 downto 0) => diff_pntr_pf_q(6 downto 4),
      clr_full => clr_full,
      \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6]\ => rst_d1_inst_n_1,
      \gen_pf_ic_rc.gpf_ic.prog_full_i_reg\ => \^full\,
      prog_full => \^prog_full\,
      rst => rst,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en,
      wrst_busy => wrst_busy
    );
wrp_inst: entity work.\icyradio_axi_quad_spi_0_0_xpm_counter_updn__parameterized2_3\
     port map (
      D(5 downto 0) => \gwdc.diff_wr_rd_pntr1_out\(6 downto 1),
      E(0) => wr_pntr_plus1_pf_carry,
      Q(6 downto 0) => wr_pntr_ext(6 downto 0),
      \count_value_i_reg[2]_0\ => xpm_fifo_rst_inst_n_6,
      \count_value_i_reg[6]_0\ => \^full\,
      \gwdc.wr_data_count_i_reg[6]\(6) => \gen_cdc_pntr.rpw_gray_reg_dc_n_0\,
      \gwdc.wr_data_count_i_reg[6]\(5) => \gen_cdc_pntr.rpw_gray_reg_dc_n_1\,
      \gwdc.wr_data_count_i_reg[6]\(4) => \gen_cdc_pntr.rpw_gray_reg_dc_n_2\,
      \gwdc.wr_data_count_i_reg[6]\(3) => \gen_cdc_pntr.rpw_gray_reg_dc_n_3\,
      \gwdc.wr_data_count_i_reg[6]\(2) => \gen_cdc_pntr.rpw_gray_reg_dc_n_4\,
      \gwdc.wr_data_count_i_reg[6]\(1) => \gen_cdc_pntr.rpw_gray_reg_dc_n_5\,
      \gwdc.wr_data_count_i_reg[6]\(0) => \gen_cdc_pntr.rpw_gray_reg_dc_n_6\,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en,
      wrst_busy => wrst_busy
    );
wrpp1_inst: entity work.\icyradio_axi_quad_spi_0_0_xpm_counter_updn__parameterized3_4\
     port map (
      D(2 downto 0) => diff_pntr_pf_q0(6 downto 4),
      E(0) => wr_pntr_plus1_pf_carry,
      Q(2 downto 0) => wr_pntr_plus1_pf(6 downto 4),
      S(0) => \gen_cdc_pntr.rpw_gray_reg_n_6\,
      \count_value_i_reg[0]_0\ => wrpp1_inst_n_3,
      \count_value_i_reg[2]_0\ => xpm_fifo_rst_inst_n_6,
      \count_value_i_reg[5]_0\ => \^full\,
      \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6]\(4 downto 0) => rd_pntr_wr(4 downto 0),
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en,
      wrst_busy => wrst_busy
    );
wrpp2_inst: entity work.\icyradio_axi_quad_spi_0_0_xpm_counter_updn__parameterized0\
     port map (
      E(0) => wr_pntr_plus1_pf_carry,
      Q(5 downto 0) => rd_pntr_wr(5 downto 0),
      \count_value_i_reg[2]_0\ => xpm_fifo_rst_inst_n_6,
      \count_value_i_reg[3]_0\ => wrpp2_inst_n_0,
      \count_value_i_reg[5]_0\ => \^full\,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en,
      wrst_busy => wrst_busy
    );
xpm_fifo_rst_inst: entity work.icyradio_axi_quad_spi_0_0_xpm_fifo_rst
     port map (
      Q(1 downto 0) => curr_fwft_state(1 downto 0),
      RESET_SYNC_AX2S_2 => xpm_fifo_rst_inst_n_2,
      SR(0) => \grdc.rd_data_count_i0\,
      \gen_rst_ic.fifo_rd_rst_ic_reg_0\ => \^rd_rst_busy\,
      \gen_rst_ic.wr_rst_busy_ic_reg_0\ => xpm_fifo_rst_inst_n_6,
      \gen_rst_ic.wr_rst_busy_ic_reg_1\ => xpm_fifo_rst_inst_n_7,
      \guf.underflow_i_reg\ => \^empty\,
      \gwack.wr_ack_i_reg\ => \^full\,
      rd_clk => rd_clk,
      rd_en => rd_en,
      rst => rst,
      rst_d1 => rst_d1,
      underflow_i0 => underflow_i0,
      wr_clk => wr_clk,
      wr_en => wr_en,
      wr_rst_busy => wr_rst_busy,
      wrst_busy => wrst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_quad_spi_0_0_xpm_fifo_async is
  port (
    sleep : in STD_LOGIC;
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    full : out STD_LOGIC;
    prog_full : out STD_LOGIC;
    wr_data_count : out STD_LOGIC_VECTOR ( 5 downto 0 );
    overflow : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    empty : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    rd_data_count : out STD_LOGIC_VECTOR ( 5 downto 0 );
    underflow : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    data_valid : out STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC
  );
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of icyradio_axi_quad_spi_0_0_xpm_fifo_async : entity is 0;
  attribute CDC_SYNC_STAGES : integer;
  attribute CDC_SYNC_STAGES of icyradio_axi_quad_spi_0_0_xpm_fifo_async : entity is 2;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of icyradio_axi_quad_spi_0_0_xpm_fifo_async : entity is "0";
  attribute ECC_MODE : string;
  attribute ECC_MODE of icyradio_axi_quad_spi_0_0_xpm_fifo_async : entity is "no_ecc";
  attribute EN_ADV_FEATURE_ASYNC : string;
  attribute EN_ADV_FEATURE_ASYNC of icyradio_axi_quad_spi_0_0_xpm_fifo_async : entity is "16'b0001111100011111";
  attribute FIFO_MEMORY_TYPE : string;
  attribute FIFO_MEMORY_TYPE of icyradio_axi_quad_spi_0_0_xpm_fifo_async : entity is "auto";
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of icyradio_axi_quad_spi_0_0_xpm_fifo_async : entity is 0;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of icyradio_axi_quad_spi_0_0_xpm_fifo_async : entity is 64;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of icyradio_axi_quad_spi_0_0_xpm_fifo_async : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_axi_quad_spi_0_0_xpm_fifo_async : entity is "xpm_fifo_async";
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of icyradio_axi_quad_spi_0_0_xpm_fifo_async : entity is 10;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of icyradio_axi_quad_spi_0_0_xpm_fifo_async : entity is 10;
  attribute P_COMMON_CLOCK : integer;
  attribute P_COMMON_CLOCK of icyradio_axi_quad_spi_0_0_xpm_fifo_async : entity is 0;
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of icyradio_axi_quad_spi_0_0_xpm_fifo_async : entity is 0;
  attribute P_FIFO_MEMORY_TYPE : integer;
  attribute P_FIFO_MEMORY_TYPE of icyradio_axi_quad_spi_0_0_xpm_fifo_async : entity is 0;
  attribute P_READ_MODE : integer;
  attribute P_READ_MODE of icyradio_axi_quad_spi_0_0_xpm_fifo_async : entity is 1;
  attribute P_WAKEUP_TIME : integer;
  attribute P_WAKEUP_TIME of icyradio_axi_quad_spi_0_0_xpm_fifo_async : entity is 2;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of icyradio_axi_quad_spi_0_0_xpm_fifo_async : entity is 6;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of icyradio_axi_quad_spi_0_0_xpm_fifo_async : entity is 32;
  attribute READ_MODE : string;
  attribute READ_MODE of icyradio_axi_quad_spi_0_0_xpm_fifo_async : entity is "fwft";
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of icyradio_axi_quad_spi_0_0_xpm_fifo_async : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of icyradio_axi_quad_spi_0_0_xpm_fifo_async : entity is 0;
  attribute USE_ADV_FEATURES : string;
  attribute USE_ADV_FEATURES of icyradio_axi_quad_spi_0_0_xpm_fifo_async : entity is "1F1F";
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of icyradio_axi_quad_spi_0_0_xpm_fifo_async : entity is 0;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of icyradio_axi_quad_spi_0_0_xpm_fifo_async : entity is 32;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of icyradio_axi_quad_spi_0_0_xpm_fifo_async : entity is 6;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of icyradio_axi_quad_spi_0_0_xpm_fifo_async : entity is "TRUE";
  attribute dont_touch : string;
  attribute dont_touch of icyradio_axi_quad_spi_0_0_xpm_fifo_async : entity is "true";
end icyradio_axi_quad_spi_0_0_xpm_fifo_async;

architecture STRUCTURE of icyradio_axi_quad_spi_0_0_xpm_fifo_async is
  signal \<const0>\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_dbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_full_n_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_sbiterr_UNCONNECTED\ : STD_LOGIC;
  attribute CASCADE_HEIGHT of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute CDC_DEST_SYNC_FF : integer;
  attribute CDC_DEST_SYNC_FF of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 2;
  attribute COMMON_CLOCK : integer;
  attribute COMMON_CLOCK of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute DOUT_RESET_VALUE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "0";
  attribute ECC_MODE_integer : integer;
  attribute ECC_MODE_integer of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute ENABLE_ECC : integer;
  attribute ENABLE_ECC of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute EN_ADV_FEATURE : string;
  attribute EN_ADV_FEATURE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "16'b0001111100011111";
  attribute EN_AE : string;
  attribute EN_AE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_AF : string;
  attribute EN_AF of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_DVLD : string;
  attribute EN_DVLD of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_OF : string;
  attribute EN_OF of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_PE : string;
  attribute EN_PE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_PF : string;
  attribute EN_PF of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_RDC : string;
  attribute EN_RDC of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_UF : string;
  attribute EN_UF of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_WACK : string;
  attribute EN_WACK of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_WDC : string;
  attribute EN_WDC of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute FG_EQ_ASYM_DOUT : string;
  attribute FG_EQ_ASYM_DOUT of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b0";
  attribute FIFO_MEMORY_TYPE_integer : integer;
  attribute FIFO_MEMORY_TYPE_integer of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute FIFO_MEM_TYPE : integer;
  attribute FIFO_MEM_TYPE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute FIFO_READ_DEPTH : integer;
  attribute FIFO_READ_DEPTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 64;
  attribute FIFO_READ_LATENCY of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 2048;
  attribute FIFO_WRITE_DEPTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 64;
  attribute FULL_RESET_VALUE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
  attribute FULL_RST_VAL : string;
  attribute FULL_RST_VAL of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "soft";
  attribute PE_THRESH_ADJ : integer;
  attribute PE_THRESH_ADJ of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 8;
  attribute PE_THRESH_MAX : integer;
  attribute PE_THRESH_MAX of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 59;
  attribute PE_THRESH_MIN : integer;
  attribute PE_THRESH_MIN of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 5;
  attribute PF_THRESH_ADJ : integer;
  attribute PF_THRESH_ADJ of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 8;
  attribute PF_THRESH_MAX : integer;
  attribute PF_THRESH_MAX of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 59;
  attribute PF_THRESH_MIN : integer;
  attribute PF_THRESH_MIN of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 7;
  attribute PROG_EMPTY_THRESH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 10;
  attribute PROG_FULL_THRESH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 10;
  attribute RD_DATA_COUNT_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 6;
  attribute RD_DC_WIDTH_EXT : integer;
  attribute RD_DC_WIDTH_EXT of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 7;
  attribute RD_LATENCY : integer;
  attribute RD_LATENCY of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 2;
  attribute RD_MODE : integer;
  attribute RD_MODE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
  attribute RD_PNTR_WIDTH : integer;
  attribute RD_PNTR_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 6;
  attribute READ_DATA_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 32;
  attribute READ_MODE_integer : integer;
  attribute READ_MODE_integer of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
  attribute READ_MODE_LL : integer;
  attribute READ_MODE_LL of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
  attribute RELATED_CLOCKS of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute REMOVE_WR_RD_PROT_LOGIC : integer;
  attribute REMOVE_WR_RD_PROT_LOGIC of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute USE_ADV_FEATURES of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1F1F";
  attribute VERSION : integer;
  attribute VERSION of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute WAKEUP_TIME of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute WIDTH_RATIO : integer;
  attribute WIDTH_RATIO of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
  attribute WRITE_DATA_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 32;
  attribute WR_DATA_COUNT_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 6;
  attribute WR_DC_WIDTH_EXT : integer;
  attribute WR_DC_WIDTH_EXT of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 7;
  attribute WR_DEPTH_LOG : integer;
  attribute WR_DEPTH_LOG of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 6;
  attribute WR_PNTR_WIDTH : integer;
  attribute WR_PNTR_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 6;
  attribute WR_RD_RATIO : integer;
  attribute WR_RD_RATIO of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute WR_WIDTH_LOG : integer;
  attribute WR_WIDTH_LOG of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 5;
  attribute XPM_MODULE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "TRUE";
  attribute both_stages_valid : integer;
  attribute both_stages_valid of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 3;
  attribute invalid : integer;
  attribute invalid of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute stage1_valid : integer;
  attribute stage1_valid of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 2;
  attribute stage2_valid : integer;
  attribute stage2_valid of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
begin
  dbiterr <= \<const0>\;
  sbiterr <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gnuram_async_fifo.xpm_fifo_base_inst\: entity work.icyradio_axi_quad_spi_0_0_xpm_fifo_base
     port map (
      almost_empty => almost_empty,
      almost_full => almost_full,
      data_valid => data_valid,
      dbiterr => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_dbiterr_UNCONNECTED\,
      din(31 downto 0) => din(31 downto 0),
      dout(31 downto 0) => dout(31 downto 0),
      empty => empty,
      full => full,
      full_n => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_full_n_UNCONNECTED\,
      injectdbiterr => '0',
      injectsbiterr => '0',
      overflow => overflow,
      prog_empty => prog_empty,
      prog_full => prog_full,
      rd_clk => rd_clk,
      rd_data_count(5 downto 0) => rd_data_count(5 downto 0),
      rd_en => rd_en,
      rd_rst_busy => rd_rst_busy,
      rst => rst,
      sbiterr => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_sbiterr_UNCONNECTED\,
      sleep => sleep,
      underflow => underflow,
      wr_ack => wr_ack,
      wr_clk => wr_clk,
      wr_data_count(5 downto 0) => wr_data_count(5 downto 0),
      wr_en => wr_en,
      wr_rst_busy => wr_rst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_quad_spi_0_0_async_fifo_fg is
  port (
    full : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    empty : out STD_LOGIC;
    \XIP_MODE_GEN.bus2ip_reset_ipif4_inverted_reg\ : out STD_LOGIC;
    \XIP_NORMAL_MODE.s_axi_rvalid_ii_reg\ : out STD_LOGIC;
    s_axi4_rready_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi4_rvalid : out STD_LOGIC;
    s_axi4_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Rst_to_spi : in STD_LOGIC;
    ext_spi_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi4_aclk : in STD_LOGIC;
    bus2ip_reset_ipif4_inverted : in STD_LOGIC;
    last_data_acked_reg : in STD_LOGIC;
    last_data_acked : in STD_LOGIC;
    s_axi4_rready : in STD_LOGIC;
    s_axi_rvalid_ii : in STD_LOGIC;
    s_axi_rvalid_ii0 : in STD_LOGIC;
    s_axi4_arvalid : in STD_LOGIC;
    \XIP_NORMAL_MODE.s_axi_rvalid_ii_reg_0\ : in STD_LOGIC;
    s_axi4_rlast : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_axi_quad_spi_0_0_async_fifo_fg : entity is "async_fifo_fg";
end icyradio_axi_quad_spi_0_0_async_fifo_fg;

architecture STRUCTURE of icyradio_axi_quad_spi_0_0_async_fifo_fg is
  signal Data_From_Rx_FIFO : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Rx_FIFO_rd_ack : STD_LOGIC;
  signal down_cnt_en_rx : STD_LOGIC;
  signal \^empty\ : STD_LOGIC;
  signal \^s_axi4_rready_0\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_10\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_11\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_2\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_3\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_4\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_46\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_47\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_48\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_49\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_5\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_50\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_51\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_54\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_6\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_7\ : STD_LOGIC;
  signal \NLW_xpm_fifo_instance.xpm_fifo_async_inst_dbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_xpm_fifo_instance.xpm_fifo_async_inst_overflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_xpm_fifo_instance.xpm_fifo_async_inst_prog_empty_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_xpm_fifo_instance.xpm_fifo_async_inst_prog_full_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_xpm_fifo_instance.xpm_fifo_async_inst_rd_rst_busy_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_xpm_fifo_instance.xpm_fifo_async_inst_sbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_xpm_fifo_instance.xpm_fifo_async_inst_underflow_UNCONNECTED\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \XIP_NORMAL_MODE.S_AXI4_RRESP_i_i_2\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \s_axi4_rdata[10]_INST_0\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \s_axi4_rdata[11]_INST_0\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \s_axi4_rdata[12]_INST_0\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \s_axi4_rdata[13]_INST_0\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \s_axi4_rdata[14]_INST_0\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \s_axi4_rdata[15]_INST_0\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \s_axi4_rdata[16]_INST_0\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \s_axi4_rdata[17]_INST_0\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \s_axi4_rdata[18]_INST_0\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \s_axi4_rdata[19]_INST_0\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \s_axi4_rdata[1]_INST_0\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \s_axi4_rdata[20]_INST_0\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \s_axi4_rdata[21]_INST_0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \s_axi4_rdata[22]_INST_0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \s_axi4_rdata[23]_INST_0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \s_axi4_rdata[24]_INST_0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \s_axi4_rdata[25]_INST_0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \s_axi4_rdata[26]_INST_0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \s_axi4_rdata[27]_INST_0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \s_axi4_rdata[28]_INST_0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \s_axi4_rdata[29]_INST_0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \s_axi4_rdata[2]_INST_0\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \s_axi4_rdata[30]_INST_0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \s_axi4_rdata[31]_INST_0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \s_axi4_rdata[3]_INST_0\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \s_axi4_rdata[4]_INST_0\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \s_axi4_rdata[5]_INST_0\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \s_axi4_rdata[6]_INST_0\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \s_axi4_rdata[7]_INST_0\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \s_axi4_rdata[8]_INST_0\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \s_axi4_rdata[9]_INST_0\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of s_axi4_rvalid_INST_0 : label is "soft_lutpair50";
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 0;
  attribute CDC_SYNC_STAGES : integer;
  attribute CDC_SYNC_STAGES of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 2;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is "0";
  attribute ECC_MODE : string;
  attribute ECC_MODE of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is "no_ecc";
  attribute EN_ADV_FEATURE_ASYNC : string;
  attribute EN_ADV_FEATURE_ASYNC of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is "16'b0001111100011111";
  attribute FIFO_MEMORY_TYPE : string;
  attribute FIFO_MEMORY_TYPE of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is "auto";
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 0;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 64;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 1;
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 10;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 10;
  attribute P_COMMON_CLOCK : integer;
  attribute P_COMMON_CLOCK of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 0;
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 0;
  attribute P_FIFO_MEMORY_TYPE : integer;
  attribute P_FIFO_MEMORY_TYPE of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 0;
  attribute P_READ_MODE : integer;
  attribute P_READ_MODE of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 1;
  attribute P_WAKEUP_TIME : integer;
  attribute P_WAKEUP_TIME of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 2;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 6;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 32;
  attribute READ_MODE : string;
  attribute READ_MODE of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is "fwft";
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 0;
  attribute USE_ADV_FEATURES : string;
  attribute USE_ADV_FEATURES of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is "1F1F";
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 0;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 32;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 6;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is "TRUE";
  attribute SOFT_HLUTNM of \xpm_fifo_instance.xpm_fifo_async_inst_i_1\ : label is "soft_lutpair49";
begin
  empty <= \^empty\;
  s_axi4_rready_0 <= \^s_axi4_rready_0\;
\XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => \XIP_NORMAL_MODE.s_axi_rvalid_ii_reg_0\,
      I1 => s_axi4_arvalid,
      I2 => s_axi_rvalid_ii0,
      I3 => \^s_axi4_rready_0\,
      O => E(0)
    );
\XIP_NORMAL_MODE.S_AXI4_RRESP_i_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8808"
    )
        port map (
      I0 => s_axi4_rlast,
      I1 => s_axi4_rready,
      I2 => \^empty\,
      I3 => s_axi_rvalid_ii,
      O => \^s_axi4_rready_0\
    );
\XIP_NORMAL_MODE.s_axi_rvalid_ii_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000CECECE"
    )
        port map (
      I0 => s_axi_rvalid_ii,
      I1 => s_axi_rvalid_ii0,
      I2 => \^s_axi4_rready_0\,
      I3 => s_axi4_arvalid,
      I4 => \XIP_NORMAL_MODE.s_axi_rvalid_ii_reg_0\,
      I5 => bus2ip_reset_ipif4_inverted,
      O => \XIP_NORMAL_MODE.s_axi_rvalid_ii_reg\
    );
last_data_acked_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00105510"
    )
        port map (
      I0 => bus2ip_reset_ipif4_inverted,
      I1 => last_data_acked_reg,
      I2 => Rx_FIFO_rd_ack,
      I3 => last_data_acked,
      I4 => s_axi4_rready,
      O => \XIP_MODE_GEN.bus2ip_reset_ipif4_inverted_reg\
    );
\s_axi4_rdata[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Data_From_Rx_FIFO(0),
      I1 => \^empty\,
      O => s_axi4_rdata(0)
    );
\s_axi4_rdata[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Data_From_Rx_FIFO(10),
      I1 => \^empty\,
      O => s_axi4_rdata(10)
    );
\s_axi4_rdata[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Data_From_Rx_FIFO(11),
      I1 => \^empty\,
      O => s_axi4_rdata(11)
    );
\s_axi4_rdata[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Data_From_Rx_FIFO(12),
      I1 => \^empty\,
      O => s_axi4_rdata(12)
    );
\s_axi4_rdata[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Data_From_Rx_FIFO(13),
      I1 => \^empty\,
      O => s_axi4_rdata(13)
    );
\s_axi4_rdata[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Data_From_Rx_FIFO(14),
      I1 => \^empty\,
      O => s_axi4_rdata(14)
    );
\s_axi4_rdata[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Data_From_Rx_FIFO(15),
      I1 => \^empty\,
      O => s_axi4_rdata(15)
    );
\s_axi4_rdata[16]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Data_From_Rx_FIFO(16),
      I1 => \^empty\,
      O => s_axi4_rdata(16)
    );
\s_axi4_rdata[17]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Data_From_Rx_FIFO(17),
      I1 => \^empty\,
      O => s_axi4_rdata(17)
    );
\s_axi4_rdata[18]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Data_From_Rx_FIFO(18),
      I1 => \^empty\,
      O => s_axi4_rdata(18)
    );
\s_axi4_rdata[19]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Data_From_Rx_FIFO(19),
      I1 => \^empty\,
      O => s_axi4_rdata(19)
    );
\s_axi4_rdata[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Data_From_Rx_FIFO(1),
      I1 => \^empty\,
      O => s_axi4_rdata(1)
    );
\s_axi4_rdata[20]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Data_From_Rx_FIFO(20),
      I1 => \^empty\,
      O => s_axi4_rdata(20)
    );
\s_axi4_rdata[21]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Data_From_Rx_FIFO(21),
      I1 => \^empty\,
      O => s_axi4_rdata(21)
    );
\s_axi4_rdata[22]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Data_From_Rx_FIFO(22),
      I1 => \^empty\,
      O => s_axi4_rdata(22)
    );
\s_axi4_rdata[23]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Data_From_Rx_FIFO(23),
      I1 => \^empty\,
      O => s_axi4_rdata(23)
    );
\s_axi4_rdata[24]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Data_From_Rx_FIFO(24),
      I1 => \^empty\,
      O => s_axi4_rdata(24)
    );
\s_axi4_rdata[25]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Data_From_Rx_FIFO(25),
      I1 => \^empty\,
      O => s_axi4_rdata(25)
    );
\s_axi4_rdata[26]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Data_From_Rx_FIFO(26),
      I1 => \^empty\,
      O => s_axi4_rdata(26)
    );
\s_axi4_rdata[27]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Data_From_Rx_FIFO(27),
      I1 => \^empty\,
      O => s_axi4_rdata(27)
    );
\s_axi4_rdata[28]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Data_From_Rx_FIFO(28),
      I1 => \^empty\,
      O => s_axi4_rdata(28)
    );
\s_axi4_rdata[29]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Data_From_Rx_FIFO(29),
      I1 => \^empty\,
      O => s_axi4_rdata(29)
    );
\s_axi4_rdata[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Data_From_Rx_FIFO(2),
      I1 => \^empty\,
      O => s_axi4_rdata(2)
    );
\s_axi4_rdata[30]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Data_From_Rx_FIFO(30),
      I1 => \^empty\,
      O => s_axi4_rdata(30)
    );
\s_axi4_rdata[31]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Data_From_Rx_FIFO(31),
      I1 => \^empty\,
      O => s_axi4_rdata(31)
    );
\s_axi4_rdata[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Data_From_Rx_FIFO(3),
      I1 => \^empty\,
      O => s_axi4_rdata(3)
    );
\s_axi4_rdata[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Data_From_Rx_FIFO(4),
      I1 => \^empty\,
      O => s_axi4_rdata(4)
    );
\s_axi4_rdata[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Data_From_Rx_FIFO(5),
      I1 => \^empty\,
      O => s_axi4_rdata(5)
    );
\s_axi4_rdata[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Data_From_Rx_FIFO(6),
      I1 => \^empty\,
      O => s_axi4_rdata(6)
    );
\s_axi4_rdata[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Data_From_Rx_FIFO(7),
      I1 => \^empty\,
      O => s_axi4_rdata(7)
    );
\s_axi4_rdata[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Data_From_Rx_FIFO(8),
      I1 => \^empty\,
      O => s_axi4_rdata(8)
    );
\s_axi4_rdata[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Data_From_Rx_FIFO(9),
      I1 => \^empty\,
      O => s_axi4_rdata(9)
    );
s_axi4_rvalid_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => s_axi_rvalid_ii,
      I1 => \^empty\,
      O => s_axi4_rvalid
    );
\xpm_fifo_instance.xpm_fifo_async_inst\: entity work.icyradio_axi_quad_spi_0_0_xpm_fifo_async
     port map (
      almost_empty => \xpm_fifo_instance.xpm_fifo_async_inst_n_54\,
      almost_full => \xpm_fifo_instance.xpm_fifo_async_inst_n_10\,
      data_valid => Rx_FIFO_rd_ack,
      dbiterr => \NLW_xpm_fifo_instance.xpm_fifo_async_inst_dbiterr_UNCONNECTED\,
      din(31 downto 0) => Q(31 downto 0),
      dout(31 downto 0) => Data_From_Rx_FIFO(31 downto 0),
      empty => \^empty\,
      full => full,
      injectdbiterr => '0',
      injectsbiterr => '0',
      overflow => \NLW_xpm_fifo_instance.xpm_fifo_async_inst_overflow_UNCONNECTED\,
      prog_empty => \NLW_xpm_fifo_instance.xpm_fifo_async_inst_prog_empty_UNCONNECTED\,
      prog_full => \NLW_xpm_fifo_instance.xpm_fifo_async_inst_prog_full_UNCONNECTED\,
      rd_clk => s_axi4_aclk,
      rd_data_count(5) => \xpm_fifo_instance.xpm_fifo_async_inst_n_46\,
      rd_data_count(4) => \xpm_fifo_instance.xpm_fifo_async_inst_n_47\,
      rd_data_count(3) => \xpm_fifo_instance.xpm_fifo_async_inst_n_48\,
      rd_data_count(2) => \xpm_fifo_instance.xpm_fifo_async_inst_n_49\,
      rd_data_count(1) => \xpm_fifo_instance.xpm_fifo_async_inst_n_50\,
      rd_data_count(0) => \xpm_fifo_instance.xpm_fifo_async_inst_n_51\,
      rd_en => down_cnt_en_rx,
      rd_rst_busy => \NLW_xpm_fifo_instance.xpm_fifo_async_inst_rd_rst_busy_UNCONNECTED\,
      rst => Rst_to_spi,
      sbiterr => \NLW_xpm_fifo_instance.xpm_fifo_async_inst_sbiterr_UNCONNECTED\,
      sleep => '0',
      underflow => \NLW_xpm_fifo_instance.xpm_fifo_async_inst_underflow_UNCONNECTED\,
      wr_ack => \xpm_fifo_instance.xpm_fifo_async_inst_n_11\,
      wr_clk => ext_spi_clk,
      wr_data_count(5) => \xpm_fifo_instance.xpm_fifo_async_inst_n_2\,
      wr_data_count(4) => \xpm_fifo_instance.xpm_fifo_async_inst_n_3\,
      wr_data_count(3) => \xpm_fifo_instance.xpm_fifo_async_inst_n_4\,
      wr_data_count(2) => \xpm_fifo_instance.xpm_fifo_async_inst_n_5\,
      wr_data_count(1) => \xpm_fifo_instance.xpm_fifo_async_inst_n_6\,
      wr_data_count(0) => \xpm_fifo_instance.xpm_fifo_async_inst_n_7\,
      wr_en => wr_en,
      wr_rst_busy => wr_rst_busy
    );
\xpm_fifo_instance.xpm_fifo_async_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi4_rready,
      I1 => \^empty\,
      O => down_cnt_en_rx
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_quad_spi_0_0_axi_qspi_xip_if is
  port (
    full : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    empty : out STD_LOGIC;
    load_cmd_cdc_from_axi_d2 : out STD_LOGIC;
    load_cmd_cdc_from_axi_d3 : out STD_LOGIC;
    load_axi_data_cdc_to_spi_d2 : out STD_LOGIC;
    load_axi_data_cdc_to_spi_d3 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    XIP_trans_error_d2 : out STD_LOGIC;
    XIP_trans_error_d3 : out STD_LOGIC;
    ss_t : out STD_LOGIC;
    io0_t : out STD_LOGIC;
    io1_t : out STD_LOGIC;
    io2_t : out STD_LOGIC;
    io3_t : out STD_LOGIC;
    S_AXI4_ARREADY_i_reg_0 : out STD_LOGIC;
    wrap_around_d2 : out STD_LOGIC;
    wrap_around_d3 : out STD_LOGIC;
    transfer_start_d1 : out STD_LOGIC;
    transfer_start : out STD_LOGIC;
    SPIXfer_done_int_d1 : out STD_LOGIC;
    SPIXfer_done_int_pulse_d2 : out STD_LOGIC;
    sck_d2 : out STD_LOGIC;
    S_AXI4_RLAST_iii : out STD_LOGIC;
    s_axi4_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    \SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_reg_0\ : out STD_LOGIC;
    cmd_addr_sent : out STD_LOGIC;
    new_tr : out STD_LOGIC;
    io0_o : out STD_LOGIC;
    io1_o : out STD_LOGIC;
    io2_o : out STD_LOGIC;
    io3_o : out STD_LOGIC;
    SCK_O_int : out STD_LOGIC;
    ss_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    scndry_out : out STD_LOGIC;
    \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[30]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi4_rready_0 : out STD_LOGIC;
    s_axi4_rlast : out STD_LOGIC;
    \XIP_MODE_GEN.bus2ip_reset_ipif4_inverted_reg\ : out STD_LOGIC;
    \XIP_NORMAL_MODE.S_AXI4_ARLEN_ii_reg[6]_0\ : out STD_LOGIC;
    s_axi4_rvalid : out STD_LOGIC;
    s_axi4_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \RATIO_OF_2_GENERATE.Count_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_0\ : out STD_LOGIC;
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[2]_0\ : out STD_LOGIC;
    SPIXfer_done_int_d1_reg_0 : out STD_LOGIC;
    Serial_Dout_1 : out STD_LOGIC;
    \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg[0]_0\ : out STD_LOGIC;
    Rst_to_spi : in STD_LOGIC;
    ext_spi_clk : in STD_LOGIC;
    s_axi4_aclk : in STD_LOGIC;
    XIPCR_1_CPOL_int : in STD_LOGIC;
    XIPCR_0_CPHA_int : in STD_LOGIC;
    bus2ip_reset_ipif_inverted : in STD_LOGIC;
    Rx_FIFO_Full : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    bus2ip_reset_ipif4_inverted : in STD_LOGIC;
    \LOGIC_GENERATION_FDR.CPHA_CPOL_ERR_AXI2AXI4_CDC_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi4_arsize : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi4_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \XIP_NORMAL_MODE.S_AXI4_RLAST_iii_reg_0\ : in STD_LOGIC;
    \XIP_NORMAL_MODE.S_AXI4_RRESP_i_reg_0\ : in STD_LOGIC;
    \SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_reg_1\ : in STD_LOGIC;
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_sent_reg_0\ : in STD_LOGIC;
    \STORE_NEW_TR_24_BIT_ADDR_GEN.new_tr_reg_0\ : in STD_LOGIC;
    \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_0_reg_0\ : in STD_LOGIC;
    \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_1_reg_0\ : in STD_LOGIC;
    \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_2_reg_0\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi4_araddr : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi4_rready : in STD_LOGIC;
    s_axi4_arvalid : in STD_LOGIC;
    s_axi4_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    io3_i_sync : in STD_LOGIC;
    io2_i_sync : in STD_LOGIC;
    io1_i_sync : in STD_LOGIC;
    io0_i_sync : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_axi_quad_spi_0_0_axi_qspi_xip_if : entity is "axi_qspi_xip_if";
end icyradio_axi_quad_spi_0_0_axi_qspi_xip_if;

architecture STRUCTURE of icyradio_axi_quad_spi_0_0_axi_qspi_xip_if is
  signal D03_out : STD_LOGIC;
  signal D_0 : STD_LOGIC;
  signal \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[4]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[4]_i_3_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_ratio_of_2_generate.xip_quad_mode_wb_mem_gen.qspi_cntrl_ps_reg[0]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[5]\ : STD_LOGIC;
  signal \LEN_CNTR_24_BIT_GEN.length_cntr[3]_i_2_n_0\ : STD_LOGIC;
  signal \LEN_CNTR_24_BIT_GEN.length_cntr[4]_i_2_n_0\ : STD_LOGIC;
  signal \LEN_CNTR_24_BIT_GEN.length_cntr[5]_i_2_n_0\ : STD_LOGIC;
  signal \LEN_CNTR_24_BIT_GEN.length_cntr[7]_i_3_n_0\ : STD_LOGIC;
  signal \LEN_CNTR_24_BIT_GEN.length_cntr[7]_i_4_n_0\ : STD_LOGIC;
  signal \LEN_CNTR_24_BIT_GEN.length_cntr[7]_i_5_n_0\ : STD_LOGIC;
  signal \^len_cntr_24_bit_gen.length_cntr_reg[7]_0\ : STD_LOGIC;
  signal \LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[0]\ : STD_LOGIC;
  signal \LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[1]\ : STD_LOGIC;
  signal \LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[2]\ : STD_LOGIC;
  signal \LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[3]\ : STD_LOGIC;
  signal \LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[4]\ : STD_LOGIC;
  signal \LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[5]\ : STD_LOGIC;
  signal \LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[6]\ : STD_LOGIC;
  signal \LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[7]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[23]_i_4_n_0\ : STD_LOGIC;
  signal \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[7]_i_3_n_0\ : STD_LOGIC;
  signal \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[0]\ : STD_LOGIC;
  signal \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[10]\ : STD_LOGIC;
  signal \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[11]\ : STD_LOGIC;
  signal \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[12]\ : STD_LOGIC;
  signal \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[13]\ : STD_LOGIC;
  signal \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[14]\ : STD_LOGIC;
  signal \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[15]\ : STD_LOGIC;
  signal \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[1]\ : STD_LOGIC;
  signal \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[2]\ : STD_LOGIC;
  signal \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[3]\ : STD_LOGIC;
  signal \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[4]\ : STD_LOGIC;
  signal \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[5]\ : STD_LOGIC;
  signal \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[6]\ : STD_LOGIC;
  signal \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[7]\ : STD_LOGIC;
  signal \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[8]\ : STD_LOGIC;
  signal \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[9]\ : STD_LOGIC;
  signal \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg_n_0_[0]\ : STD_LOGIC;
  signal \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg_n_0_[1]\ : STD_LOGIC;
  signal \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg_n_0_[2]\ : STD_LOGIC;
  signal \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[0]_i_1_n_0\ : STD_LOGIC;
  signal \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[1]_i_1_n_0\ : STD_LOGIC;
  signal \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[2]_i_1_n_0\ : STD_LOGIC;
  signal \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[3]_i_1_n_0\ : STD_LOGIC;
  signal \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[4]_i_1_n_0\ : STD_LOGIC;
  signal \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[5]_i_1_n_0\ : STD_LOGIC;
  signal \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[6]_i_1_n_0\ : STD_LOGIC;
  signal \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[7]_i_2_n_0\ : STD_LOGIC;
  signal \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[7]_i_3_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.Count[4]_i_1_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.Count_reg\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \^ratio_of_2_generate.count_reg[0]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \RATIO_OF_2_GENERATE.Count_reg__0\ : STD_LOGIC_VECTOR ( 4 to 4 );
  signal \RATIO_OF_2_GENERATE.QSPI_IO0_T_i_1_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.QSPI_IO0_T_i_2_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.QSPI_IO0_T_i_3_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.QSPI_IO1_T_i_1_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.QSPI_SS_T_i_1_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_3_i_1_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_3_i_2_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_3_i_4_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \^ratio_of_2_generate.qspi_winbond_mem_data_cap_gen.shift_reg_reg[1]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.addr_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.addr_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.addr_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.addr_cnt_reg\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[0]_i_2_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[1]_i_1_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[2]_i_1_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[3]_i_1_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[4]_i_1_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[5]_i_1_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[6]_i_1_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[7]_i_1_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[0]\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[1]\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[2]\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[3]\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[4]\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[5]\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[6]\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[7]\ : STD_LOGIC;
  signal \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[30]_i_1_n_0\ : STD_LOGIC;
  signal \^shift_tx_reg_24_bit_gen.tx_data_d1_reg[30]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[0]\ : STD_LOGIC;
  signal \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[10]\ : STD_LOGIC;
  signal \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[11]\ : STD_LOGIC;
  signal \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[12]\ : STD_LOGIC;
  signal \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[13]\ : STD_LOGIC;
  signal \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[14]\ : STD_LOGIC;
  signal \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[15]\ : STD_LOGIC;
  signal \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[16]\ : STD_LOGIC;
  signal \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[17]\ : STD_LOGIC;
  signal \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[18]\ : STD_LOGIC;
  signal \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[19]\ : STD_LOGIC;
  signal \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[1]\ : STD_LOGIC;
  signal \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[20]\ : STD_LOGIC;
  signal \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[21]\ : STD_LOGIC;
  signal \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[22]\ : STD_LOGIC;
  signal \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[23]\ : STD_LOGIC;
  signal \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[24]\ : STD_LOGIC;
  signal \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[25]\ : STD_LOGIC;
  signal \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[26]\ : STD_LOGIC;
  signal \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[27]\ : STD_LOGIC;
  signal \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[2]\ : STD_LOGIC;
  signal \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[3]\ : STD_LOGIC;
  signal \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[4]\ : STD_LOGIC;
  signal \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[5]\ : STD_LOGIC;
  signal \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[6]\ : STD_LOGIC;
  signal \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[7]\ : STD_LOGIC;
  signal \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[8]\ : STD_LOGIC;
  signal \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[9]\ : STD_LOGIC;
  signal SPIXfer_done_int : STD_LOGIC;
  signal SPIXfer_done_int1 : STD_LOGIC;
  signal \^spixfer_done_int_d1\ : STD_LOGIC;
  signal \^spixfer_done_int_d1_reg_0\ : STD_LOGIC;
  signal SPIXfer_done_int_i_1_n_0 : STD_LOGIC;
  signal SPIXfer_done_int_i_2_n_0 : STD_LOGIC;
  signal SPIXfer_done_int_pulse_d1 : STD_LOGIC;
  signal \^spixfer_done_int_pulse_d2\ : STD_LOGIC;
  signal \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[0]_i_3_n_0\ : STD_LOGIC;
  signal \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg_n_0_[0]\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[0]_i_3_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[10]_i_3_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[11]_i_3_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[12]_i_3_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[13]_i_3_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[14]_i_3_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[15]_i_3_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[16]_i_3_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[17]_i_3_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[18]_i_3_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[19]_i_3_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_7_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[20]_i_3_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[21]_i_3_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[22]_i_3_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_3_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_8_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_8_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_9_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_13_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_9_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_12_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_6_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[6]_i_3_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[7]_i_3_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[8]_i_3_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[9]_i_3_n_0\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[0]\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[2]\ : STD_LOGIC;
  signal \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[3]\ : STD_LOGIC;
  signal \^sr_5_tx_empty_24_bit_addr_gen.sr_5_tx_empty_reg_0\ : STD_LOGIC;
  signal SS_frm_axi : STD_LOGIC;
  signal S_AXI4_ARLEN_i : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_AXI4_ARLEN_ii : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^s_axi4_arready_i_reg_0\ : STD_LOGIC;
  signal \^s_axi4_rlast_iii\ : STD_LOGIC;
  signal Serial_Dout_09_out : STD_LOGIC;
  signal Shift_Reg : STD_LOGIC;
  signal Transmit_Data : STD_LOGIC_VECTOR ( 0 to 3 );
  signal Transmit_addr_int : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal Tx_Data_d1 : STD_LOGIC;
  signal XIPSR_CPHA_CPOL_ERR_d1 : STD_LOGIC;
  signal XIPSR_CPHA_CPOL_ERR_d2 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_10 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_100 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_101 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_102 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_103 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_104 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_105 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_106 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_107 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_108 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_109 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_11 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_110 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_111 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_112 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_113 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_114 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_115 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_116 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_117 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_118 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_119 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_12 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_120 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_121 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_122 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_123 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_124 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_125 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_126 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_127 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_128 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_129 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_13 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_130 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_131 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_132 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_133 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_134 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_135 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_136 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_137 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_138 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_139 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_14 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_140 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_141 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_15 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_16 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_17 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_18 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_19 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_20 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_21 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_22 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_23 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_24 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_25 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_26 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_27 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_28 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_29 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_30 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_31 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_32 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_33 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_34 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_35 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_42 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_43 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_44 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_45 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_46 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_47 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_48 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_49 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_50 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_51 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_52 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_53 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_54 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_55 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_56 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_57 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_58 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_6 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_60 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_61 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_63 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_65 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_66 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_67 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_68 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_69 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_7 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_70 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_71 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_72 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_73 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_74 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_75 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_76 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_79 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_8 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_80 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_81 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_82 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_83 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_84 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_85 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_86 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_87 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_88 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_89 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_9 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_90 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_91 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_92 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_93 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_94 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_95 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_96 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_97 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_98 : STD_LOGIC;
  signal XIP_CLK_DOMAIN_SIGNALS_n_99 : STD_LOGIC;
  signal \^xip_mode_gen.bus2ip_reset_ipif4_inverted_reg\ : STD_LOGIC;
  signal \XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[3]_i_2_n_0\ : STD_LOGIC;
  signal \XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[4]_i_2_n_0\ : STD_LOGIC;
  signal \XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[7]_i_1_n_0\ : STD_LOGIC;
  signal \XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[7]_i_5_n_0\ : STD_LOGIC;
  signal \XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[7]_i_6_n_0\ : STD_LOGIC;
  signal XIP_RECEIVE_FIFO_II_n_3 : STD_LOGIC;
  signal XIP_RECEIVE_FIFO_II_n_4 : STD_LOGIC;
  signal XIP_RECEIVE_FIFO_II_n_6 : STD_LOGIC;
  signal XIP_trans_error_d1 : STD_LOGIC;
  signal \^xip_trans_error_d2\ : STD_LOGIC;
  signal axi_length : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal cmd_addr_cntr1 : STD_LOGIC;
  signal \^cmd_addr_sent\ : STD_LOGIC;
  signal data2 : STD_LOGIC_VECTOR ( 23 downto 4 );
  signal data4 : STD_LOGIC_VECTOR ( 23 downto 1 );
  signal dtr_length : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dtr_length[3]_i_2_n_0\ : STD_LOGIC;
  signal \dtr_length[5]_i_2_n_0\ : STD_LOGIC;
  signal \^empty\ : STD_LOGIC;
  signal four_byte_xfer : STD_LOGIC;
  signal hpm_under_process_d1 : STD_LOGIC;
  signal hw_wd_cntr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hw_wd_cntr0 : STD_LOGIC;
  signal \^io3_o\ : STD_LOGIC;
  signal last_data_acked : STD_LOGIC;
  signal last_data_acked_i_2_n_0 : STD_LOGIC;
  signal length_cntr : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal load_axi_data_frm_axi_clk : STD_LOGIC;
  signal load_axi_data_to_spi_clk : STD_LOGIC;
  signal \^new_tr\ : STD_LOGIC;
  signal one_byte_xfer : STD_LOGIC;
  signal one_byte_xfer_i_1_n_0 : STD_LOGIC;
  signal p_2_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_33_in : STD_LOGIC;
  signal p_3_in1_in : STD_LOGIC;
  signal p_5_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal p_72_in : STD_LOGIC;
  signal p_8_in : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal pr_state_addr_ph : STD_LOGIC;
  signal receive_Data_int : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^s_axi4_rlast\ : STD_LOGIC;
  signal s_axi4_rlast_INST_0_i_1_n_0 : STD_LOGIC;
  signal s_axi4_rlast_INST_0_i_3_n_0 : STD_LOGIC;
  signal \^s_axi4_rresp\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_rvalid_ii : STD_LOGIC;
  signal s_axi_rvalid_ii0 : STD_LOGIC;
  signal sck_d1 : STD_LOGIC;
  signal \^sck_o_int\ : STD_LOGIC;
  signal size_length_cntr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \size_length_cntr[1]_i_3_n_0\ : STD_LOGIC;
  signal \size_length_cntr_fixed_reg_n_0_[0]\ : STD_LOGIC;
  signal \size_length_cntr_fixed_reg_n_0_[1]\ : STD_LOGIC;
  signal spi_addr_wrap_1 : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \spi_addr_wrap_1[0]_i_1_n_0\ : STD_LOGIC;
  signal \spi_addr_wrap_1[10]_i_1_n_0\ : STD_LOGIC;
  signal \spi_addr_wrap_1[11]_i_1_n_0\ : STD_LOGIC;
  signal \spi_addr_wrap_1[12]_i_1_n_0\ : STD_LOGIC;
  signal \spi_addr_wrap_1[13]_i_1_n_0\ : STD_LOGIC;
  signal \spi_addr_wrap_1[14]_i_1_n_0\ : STD_LOGIC;
  signal \spi_addr_wrap_1[15]_i_1_n_0\ : STD_LOGIC;
  signal \spi_addr_wrap_1[16]_i_1_n_0\ : STD_LOGIC;
  signal \spi_addr_wrap_1[17]_i_1_n_0\ : STD_LOGIC;
  signal \spi_addr_wrap_1[18]_i_1_n_0\ : STD_LOGIC;
  signal \spi_addr_wrap_1[19]_i_1_n_0\ : STD_LOGIC;
  signal \spi_addr_wrap_1[1]_i_1_n_0\ : STD_LOGIC;
  signal \spi_addr_wrap_1[20]_i_1_n_0\ : STD_LOGIC;
  signal \spi_addr_wrap_1[21]_i_1_n_0\ : STD_LOGIC;
  signal \spi_addr_wrap_1[22]_i_1_n_0\ : STD_LOGIC;
  signal \spi_addr_wrap_1[23]_i_1_n_0\ : STD_LOGIC;
  signal \spi_addr_wrap_1[2]_i_1_n_0\ : STD_LOGIC;
  signal \spi_addr_wrap_1[3]_i_1_n_0\ : STD_LOGIC;
  signal \spi_addr_wrap_1[3]_i_3_n_0\ : STD_LOGIC;
  signal \spi_addr_wrap_1[4]_i_1_n_0\ : STD_LOGIC;
  signal \spi_addr_wrap_1[4]_i_4_n_0\ : STD_LOGIC;
  signal \spi_addr_wrap_1[5]_i_1_n_0\ : STD_LOGIC;
  signal \spi_addr_wrap_1[6]_i_1_n_0\ : STD_LOGIC;
  signal \spi_addr_wrap_1[7]_i_1_n_0\ : STD_LOGIC;
  signal \spi_addr_wrap_1[8]_i_1_n_0\ : STD_LOGIC;
  signal \spi_addr_wrap_1[9]_i_1_n_0\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[11]_i_2_n_0\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[11]_i_2_n_1\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[11]_i_2_n_2\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[11]_i_2_n_3\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[11]_i_2_n_4\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[11]_i_2_n_5\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[11]_i_2_n_6\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[11]_i_2_n_7\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[12]_i_3_n_0\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[12]_i_3_n_1\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[12]_i_3_n_2\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[12]_i_3_n_3\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[12]_i_3_n_4\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[12]_i_3_n_5\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[12]_i_3_n_6\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[12]_i_3_n_7\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[15]_i_2_n_1\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[15]_i_2_n_2\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[15]_i_2_n_3\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[15]_i_2_n_4\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[15]_i_2_n_5\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[15]_i_2_n_6\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[15]_i_2_n_7\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[16]_i_2_n_4\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[16]_i_2_n_5\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[16]_i_2_n_6\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[16]_i_2_n_7\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[16]_i_3_n_0\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[16]_i_3_n_1\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[16]_i_3_n_2\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[16]_i_3_n_3\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[19]_i_2_n_0\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[19]_i_2_n_1\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[19]_i_2_n_2\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[19]_i_2_n_3\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[19]_i_2_n_4\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[19]_i_2_n_5\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[19]_i_2_n_6\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[19]_i_2_n_7\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[20]_i_2_n_1\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[20]_i_2_n_3\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[20]_i_3_n_0\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[20]_i_3_n_1\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[20]_i_3_n_2\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[20]_i_3_n_3\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[20]_i_3_n_4\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[20]_i_3_n_5\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[20]_i_3_n_6\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[20]_i_3_n_7\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[23]_i_2_n_2\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[23]_i_2_n_3\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[23]_i_3_n_2\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[23]_i_3_n_3\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[23]_i_3_n_5\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[23]_i_3_n_6\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[23]_i_3_n_7\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[23]_i_4_n_1\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[23]_i_4_n_2\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[23]_i_4_n_3\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[23]_i_4_n_4\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[23]_i_4_n_5\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[23]_i_4_n_6\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[23]_i_4_n_7\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[3]_i_2_n_1\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[3]_i_2_n_2\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[3]_i_2_n_3\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[3]_i_2_n_4\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[3]_i_2_n_5\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[3]_i_2_n_6\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[3]_i_2_n_7\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[4]_i_2_n_4\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[4]_i_2_n_5\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[4]_i_2_n_6\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[4]_i_2_n_7\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[4]_i_3_n_1\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[4]_i_3_n_2\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[4]_i_3_n_3\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[7]_i_2_n_1\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[7]_i_2_n_2\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[7]_i_2_n_3\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[7]_i_2_n_4\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[7]_i_2_n_5\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[7]_i_2_n_6\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[7]_i_2_n_7\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[8]_i_3_n_0\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[8]_i_3_n_1\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[8]_i_3_n_2\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[8]_i_3_n_3\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[8]_i_3_n_4\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[8]_i_3_n_5\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[8]_i_3_n_6\ : STD_LOGIC;
  signal \spi_addr_wrap_1_reg[8]_i_3_n_7\ : STD_LOGIC;
  signal start_after_wrap : STD_LOGIC;
  signal start_after_wrap_d1 : STD_LOGIC;
  signal store_date_in_drr_fifo_d1 : STD_LOGIC;
  signal store_date_in_drr_fifo_d2 : STD_LOGIC;
  signal store_date_in_drr_fifo_d3 : STD_LOGIC;
  signal \^transfer_start\ : STD_LOGIC;
  signal \^transfer_start_d1\ : STD_LOGIC;
  signal transfer_start_d2 : STD_LOGIC;
  signal two_byte_xfer : STD_LOGIC;
  signal type_of_burst : STD_LOGIC;
  signal wb_cntrl_ns : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal wrap_around_d1 : STD_LOGIC;
  signal \^wrap_around_d2\ : STD_LOGIC;
  signal \^wrap_around_d3\ : STD_LOGIC;
  signal wrap_around_i_11_n_0 : STD_LOGIC;
  signal wrap_around_i_2_n_0 : STD_LOGIC;
  signal wrap_around_i_7_n_0 : STD_LOGIC;
  signal wrap_around_i_9_n_0 : STD_LOGIC;
  signal wrap_around_reg_n_0 : STD_LOGIC;
  signal xip_sm_ns : STD_LOGIC;
  signal xip_sm_ps : STD_LOGIC;
  signal \NLW_spi_addr_wrap_1_reg[23]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_spi_addr_wrap_1_reg[23]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_spi_addr_wrap_1_reg[23]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_spi_addr_wrap_1_reg[23]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_spi_addr_wrap_1_reg[23]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[0]_i_3\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[3]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[4]_i_3\ : label is "soft_lutpair88";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[0]\ : label is "addr_send:001000,temp_addr_send:0100,hpm_dummy:000100,cmd_send:000010,idle:000001,data_receive:010000,temp_data_send:0110,temp_data_receive:100000,data_send:0101";
  attribute FSM_ENCODED_STATES of \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[1]\ : label is "addr_send:001000,temp_addr_send:0100,hpm_dummy:000100,cmd_send:000010,idle:000001,data_receive:010000,temp_data_send:0110,temp_data_receive:100000,data_send:0101";
  attribute FSM_ENCODED_STATES of \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[2]\ : label is "addr_send:001000,temp_addr_send:0100,hpm_dummy:000100,cmd_send:000010,idle:000001,data_receive:010000,temp_data_send:0110,temp_data_receive:100000,data_send:0101";
  attribute FSM_ENCODED_STATES of \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[3]\ : label is "addr_send:001000,temp_addr_send:0100,hpm_dummy:000100,cmd_send:000010,idle:000001,data_receive:010000,temp_data_send:0110,temp_data_receive:100000,data_send:0101";
  attribute FSM_ENCODED_STATES of \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[4]\ : label is "addr_send:001000,temp_addr_send:0100,hpm_dummy:000100,cmd_send:000010,idle:000001,data_receive:010000,temp_data_send:0110,temp_data_receive:100000,data_send:0101";
  attribute FSM_ENCODED_STATES of \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]\ : label is "addr_send:001000,temp_addr_send:0100,hpm_dummy:000100,cmd_send:000010,idle:000001,data_receive:010000,temp_data_send:0110,temp_data_receive:100000,data_send:0101";
  attribute SOFT_HLUTNM of \FSM_sequential_QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.wb_cntrl_ps[0]_i_1\ : label is "soft_lutpair86";
  attribute FSM_ENCODED_STATES of \FSM_sequential_QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.wb_cntrl_ps_reg[0]\ : label is "wb_wr_hpm:01,wb_done:10,wb_idle:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.wb_cntrl_ps_reg[1]\ : label is "wb_wr_hpm:01,wb_done:10,wb_idle:00";
  attribute SOFT_HLUTNM of \LEN_CNTR_24_BIT_GEN.length_cntr[4]_i_2\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \LEN_CNTR_24_BIT_GEN.length_cntr[5]_i_2\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \LEN_CNTR_24_BIT_GEN.length_cntr[7]_i_3\ : label is "soft_lutpair86";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.CPHA_CPOL_ERR_AXI2AXI4_1\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \LOGIC_GENERATION_FDR.CPHA_CPOL_ERR_AXI2AXI4_1\ : label is "PRIMITIVE";
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \LOGIC_GENERATION_FDR.CPHA_CPOL_ERR_AXI2AXI4_CDC\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.CPHA_CPOL_ERR_AXI2AXI4_CDC\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.CPHA_CPOL_ERR_AXI2AXI4_CDC\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.XIP_TRANS_ERROR_AXI2AXI4_1\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.XIP_TRANS_ERROR_AXI2AXI4_1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.XIP_TRANS_ERROR_AXI2AXI4_2\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.XIP_TRANS_ERROR_AXI2AXI4_2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \LOGIC_GENERATION_FDR.XIP_TRANS_ERROR_AXI2AXI4_CDC\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.XIP_TRANS_ERROR_AXI2AXI4_CDC\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.XIP_TRANS_ERROR_AXI2AXI4_CDC\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[23]_i_4\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[7]_i_3\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \RATIO_OF_2_GENERATE.Count[0]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \RATIO_OF_2_GENERATE.Count[1]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \RATIO_OF_2_GENERATE.Count[2]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \RATIO_OF_2_GENERATE.Count[3]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \RATIO_OF_2_GENERATE.Count[4]_i_3\ : label is "soft_lutpair85";
  attribute XILINX_LEGACY_PRIM of \RATIO_OF_2_GENERATE.QSPI_IO0_T\ : label is "FD";
  attribute box_type of \RATIO_OF_2_GENERATE.QSPI_IO0_T\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RATIO_OF_2_GENERATE.QSPI_IO0_T_i_2\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \RATIO_OF_2_GENERATE.QSPI_IO0_T_i_3\ : label is "soft_lutpair83";
  attribute XILINX_LEGACY_PRIM of \RATIO_OF_2_GENERATE.QSPI_IO1_T\ : label is "FD";
  attribute box_type of \RATIO_OF_2_GENERATE.QSPI_IO1_T\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RATIO_OF_2_GENERATE.QSPI_IO1_T_i_1\ : label is "soft_lutpair84";
  attribute XILINX_LEGACY_PRIM of \RATIO_OF_2_GENERATE.QSPI_MODE_2_T_CONTROL.QSPI_IO2_T\ : label is "FD";
  attribute box_type of \RATIO_OF_2_GENERATE.QSPI_MODE_2_T_CONTROL.QSPI_IO2_T\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \RATIO_OF_2_GENERATE.QSPI_MODE_2_T_CONTROL.QSPI_IO3_T\ : label is "FD";
  attribute box_type of \RATIO_OF_2_GENERATE.QSPI_MODE_2_T_CONTROL.QSPI_IO3_T\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \RATIO_OF_2_GENERATE.QSPI_SS_T\ : label is "FD";
  attribute box_type of \RATIO_OF_2_GENERATE.QSPI_SS_T\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_1_i_2\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_1_i_3\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_3_i_2\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_3_i_3\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_3_i_4\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.addr_cnt[0]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.addr_cnt[1]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[7]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of SPIXfer_done_int_i_2 : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of SPIXfer_done_int_pulse_d1_i_1 : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[0]_i_3\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[0]_i_3\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_7\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[21]_i_3\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[22]_i_3\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_3\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_8\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_9\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_13\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_9\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_12\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[0]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[4]_i_2\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[7]_i_6\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \axi_length[0]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \axi_length[1]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \axi_length[2]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \axi_length[3]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \dtr_length[3]_i_2\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of s_axi4_rlast_INST_0_i_1 : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of s_axi4_rlast_INST_0_i_3 : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \size_length_cntr[1]_i_3\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \spi_addr_wrap_1[0]_i_1\ : label is "soft_lutpair80";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \spi_addr_wrap_1_reg[11]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \spi_addr_wrap_1_reg[12]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \spi_addr_wrap_1_reg[12]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \spi_addr_wrap_1_reg[15]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \spi_addr_wrap_1_reg[16]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \spi_addr_wrap_1_reg[16]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \spi_addr_wrap_1_reg[19]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \spi_addr_wrap_1_reg[20]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \spi_addr_wrap_1_reg[20]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \spi_addr_wrap_1_reg[23]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \spi_addr_wrap_1_reg[23]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \spi_addr_wrap_1_reg[23]_i_4\ : label is 35;
  attribute ADDER_THRESHOLD of \spi_addr_wrap_1_reg[3]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \spi_addr_wrap_1_reg[4]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \spi_addr_wrap_1_reg[4]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \spi_addr_wrap_1_reg[7]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \spi_addr_wrap_1_reg[8]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \spi_addr_wrap_1_reg[8]_i_3\ : label is 35;
  attribute SOFT_HLUTNM of store_date_in_drr_fifo_d1_i_1 : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of wrap_around_i_11 : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of wrap_around_i_2 : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of wrap_around_i_9 : label is "soft_lutpair81";
begin
  \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[0]_0\(0) <= \^fsm_onehot_ratio_of_2_generate.xip_quad_mode_wb_mem_gen.qspi_cntrl_ps_reg[0]_0\(0);
  \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_0\ <= \^len_cntr_24_bit_gen.length_cntr_reg[7]_0\;
  Q(1 downto 0) <= \^q\(1 downto 0);
  \RATIO_OF_2_GENERATE.Count_reg[0]_0\(0) <= \^ratio_of_2_generate.count_reg[0]_0\(0);
  \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg[1]_0\(1 downto 0) <= \^ratio_of_2_generate.qspi_winbond_mem_data_cap_gen.shift_reg_reg[1]_0\(1 downto 0);
  \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[30]_0\(1 downto 0) <= \^shift_tx_reg_24_bit_gen.tx_data_d1_reg[30]_0\(1 downto 0);
  SPIXfer_done_int_d1 <= \^spixfer_done_int_d1\;
  SPIXfer_done_int_d1_reg_0 <= \^spixfer_done_int_d1_reg_0\;
  SPIXfer_done_int_pulse_d2 <= \^spixfer_done_int_pulse_d2\;
  \SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_reg_0\ <= \^sr_5_tx_empty_24_bit_addr_gen.sr_5_tx_empty_reg_0\;
  S_AXI4_ARREADY_i_reg_0 <= \^s_axi4_arready_i_reg_0\;
  S_AXI4_RLAST_iii <= \^s_axi4_rlast_iii\;
  \XIP_MODE_GEN.bus2ip_reset_ipif4_inverted_reg\ <= \^xip_mode_gen.bus2ip_reset_ipif4_inverted_reg\;
  XIP_trans_error_d2 <= \^xip_trans_error_d2\;
  cmd_addr_sent <= \^cmd_addr_sent\;
  empty <= \^empty\;
  io3_o <= \^io3_o\;
  new_tr <= \^new_tr\;
  s_axi4_rlast <= \^s_axi4_rlast\;
  s_axi4_rresp(0) <= \^s_axi4_rresp\(0);
  transfer_start <= \^transfer_start\;
  transfer_start_d1 <= \^transfer_start_d1\;
  wrap_around_d2 <= \^wrap_around_d2\;
  wrap_around_d3 <= \^wrap_around_d3\;
\AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => load_axi_data_frm_axi_clk,
      D => s_axi4_araddr(0),
      Q => Transmit_addr_int(0),
      R => bus2ip_reset_ipif4_inverted
    );
\AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => load_axi_data_frm_axi_clk,
      D => s_axi4_araddr(10),
      Q => Transmit_addr_int(10),
      R => bus2ip_reset_ipif4_inverted
    );
\AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => load_axi_data_frm_axi_clk,
      D => s_axi4_araddr(11),
      Q => Transmit_addr_int(11),
      R => bus2ip_reset_ipif4_inverted
    );
\AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => load_axi_data_frm_axi_clk,
      D => s_axi4_araddr(12),
      Q => Transmit_addr_int(12),
      R => bus2ip_reset_ipif4_inverted
    );
\AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => load_axi_data_frm_axi_clk,
      D => s_axi4_araddr(13),
      Q => Transmit_addr_int(13),
      R => bus2ip_reset_ipif4_inverted
    );
\AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => load_axi_data_frm_axi_clk,
      D => s_axi4_araddr(14),
      Q => Transmit_addr_int(14),
      R => bus2ip_reset_ipif4_inverted
    );
\AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => load_axi_data_frm_axi_clk,
      D => s_axi4_araddr(15),
      Q => Transmit_addr_int(15),
      R => bus2ip_reset_ipif4_inverted
    );
\AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => load_axi_data_frm_axi_clk,
      D => s_axi4_araddr(16),
      Q => Transmit_addr_int(16),
      R => bus2ip_reset_ipif4_inverted
    );
\AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => load_axi_data_frm_axi_clk,
      D => s_axi4_araddr(17),
      Q => Transmit_addr_int(17),
      R => bus2ip_reset_ipif4_inverted
    );
\AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => load_axi_data_frm_axi_clk,
      D => s_axi4_araddr(18),
      Q => Transmit_addr_int(18),
      R => bus2ip_reset_ipif4_inverted
    );
\AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => load_axi_data_frm_axi_clk,
      D => s_axi4_araddr(19),
      Q => Transmit_addr_int(19),
      R => bus2ip_reset_ipif4_inverted
    );
\AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => load_axi_data_frm_axi_clk,
      D => s_axi4_araddr(1),
      Q => Transmit_addr_int(1),
      R => bus2ip_reset_ipif4_inverted
    );
\AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => load_axi_data_frm_axi_clk,
      D => s_axi4_araddr(20),
      Q => Transmit_addr_int(20),
      R => bus2ip_reset_ipif4_inverted
    );
\AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => load_axi_data_frm_axi_clk,
      D => s_axi4_araddr(21),
      Q => Transmit_addr_int(21),
      R => bus2ip_reset_ipif4_inverted
    );
\AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => load_axi_data_frm_axi_clk,
      D => s_axi4_araddr(22),
      Q => Transmit_addr_int(22),
      R => bus2ip_reset_ipif4_inverted
    );
\AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => load_axi_data_frm_axi_clk,
      D => s_axi4_araddr(23),
      Q => Transmit_addr_int(23),
      R => bus2ip_reset_ipif4_inverted
    );
\AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => load_axi_data_frm_axi_clk,
      D => s_axi4_araddr(2),
      Q => Transmit_addr_int(2),
      R => bus2ip_reset_ipif4_inverted
    );
\AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => load_axi_data_frm_axi_clk,
      D => s_axi4_araddr(3),
      Q => Transmit_addr_int(3),
      R => bus2ip_reset_ipif4_inverted
    );
\AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => load_axi_data_frm_axi_clk,
      D => s_axi4_araddr(4),
      Q => Transmit_addr_int(4),
      R => bus2ip_reset_ipif4_inverted
    );
\AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => load_axi_data_frm_axi_clk,
      D => s_axi4_araddr(5),
      Q => Transmit_addr_int(5),
      R => bus2ip_reset_ipif4_inverted
    );
\AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => load_axi_data_frm_axi_clk,
      D => s_axi4_araddr(6),
      Q => Transmit_addr_int(6),
      R => bus2ip_reset_ipif4_inverted
    );
\AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => load_axi_data_frm_axi_clk,
      D => s_axi4_araddr(7),
      Q => Transmit_addr_int(7),
      R => bus2ip_reset_ipif4_inverted
    );
\AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => load_axi_data_frm_axi_clk,
      D => s_axi4_araddr(8),
      Q => Transmit_addr_int(8),
      R => bus2ip_reset_ipif4_inverted
    );
\AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => load_axi_data_frm_axi_clk,
      D => s_axi4_araddr(9),
      Q => Transmit_addr_int(9),
      R => bus2ip_reset_ipif4_inverted
    );
\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^sr_5_tx_empty_24_bit_addr_gen.sr_5_tx_empty_reg_0\,
      I1 => \^new_tr\,
      I2 => \^transfer_start\,
      O => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[0]_i_3_n_0\
    );
\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000FFFF40004000"
    )
        port map (
      I0 => \^sr_5_tx_empty_24_bit_addr_gen.sr_5_tx_empty_reg_0\,
      I1 => \^new_tr\,
      I2 => \^transfer_start\,
      I3 => \^fsm_onehot_ratio_of_2_generate.xip_quad_mode_wb_mem_gen.qspi_cntrl_ps_reg[0]_0\(0),
      I4 => p_33_in,
      I5 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[1]\,
      O => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[1]_i_1_n_0\
    );
\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F4444444444444"
    )
        port map (
      I0 => \^sr_5_tx_empty_24_bit_addr_gen.sr_5_tx_empty_reg_0\,
      I1 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[2]\,
      I2 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[1]\,
      I3 => \^spixfer_done_int_d1\,
      I4 => SPIXfer_done_int,
      I5 => hpm_under_process_d1,
      O => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[2]_i_1_n_0\
    );
\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAEAA"
    )
        port map (
      I0 => \RATIO_OF_2_GENERATE.QSPI_IO0_T_i_2_n_0\,
      I1 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[1]\,
      I2 => \^spixfer_done_int_d1\,
      I3 => SPIXfer_done_int,
      I4 => hpm_under_process_d1,
      O => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[3]_i_1_n_0\
    );
\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F888F888FF88F8"
    )
        port map (
      I0 => pr_state_addr_ph,
      I1 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[4]_i_2_n_0\,
      I2 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[5]\,
      I3 => \^sr_5_tx_empty_24_bit_addr_gen.sr_5_tx_empty_reg_0\,
      I4 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[4]\,
      I5 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[4]_i_3_n_0\,
      O => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[4]_i_1_n_0\
    );
\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.addr_cnt_reg\(1),
      I1 => \RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.addr_cnt_reg\(0),
      I2 => \RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.addr_cnt_reg\(2),
      O => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[4]_i_2_n_0\
    );
\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^wrap_around_d2\,
      I1 => \^wrap_around_d3\,
      O => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[4]_i_3_n_0\
    );
\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => XIP_CLK_DOMAIN_SIGNALS_n_109,
      Q => \^fsm_onehot_ratio_of_2_generate.xip_quad_mode_wb_mem_gen.qspi_cntrl_ps_reg[0]_0\(0),
      S => Rst_to_spi
    );
\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[1]_i_1_n_0\,
      Q => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[1]\,
      R => Rst_to_spi
    );
\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[2]_i_1_n_0\,
      Q => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[2]\,
      R => Rst_to_spi
    );
\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[3]_i_1_n_0\,
      Q => pr_state_addr_ph,
      R => Rst_to_spi
    );
\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[4]_i_1_n_0\,
      Q => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[4]\,
      R => Rst_to_spi
    );
\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => XIP_CLK_DOMAIN_SIGNALS_n_108,
      Q => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[5]\,
      R => Rst_to_spi
    );
\FSM_sequential_QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.wb_cntrl_ps[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^sr_5_tx_empty_24_bit_addr_gen.sr_5_tx_empty_reg_0\,
      I2 => \^q\(0),
      O => wb_cntrl_ns(0)
    );
\FSM_sequential_QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.wb_cntrl_ps_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => wb_cntrl_ns(0),
      Q => \^q\(0),
      R => Rst_to_spi
    );
\FSM_sequential_QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.wb_cntrl_ps_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => wb_cntrl_ns(1),
      Q => \^q\(1),
      R => Rst_to_spi
    );
I_DECODER: entity work.icyradio_axi_quad_spi_0_0_qspi_address_decoder
     port map (
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\ => XIP_CLK_DOMAIN_SIGNALS_n_73,
      SS_frm_axi => SS_frm_axi,
      s_axi4_aclk => s_axi4_aclk
    );
\LEN_CNTR_24_BIT_GEN.length_cntr[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[2]\,
      I1 => \LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[0]\,
      I2 => \LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[1]\,
      O => \LEN_CNTR_24_BIT_GEN.length_cntr[3]_i_2_n_0\
    );
\LEN_CNTR_24_BIT_GEN.length_cntr[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[3]\,
      I1 => \LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[1]\,
      I2 => \LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[0]\,
      I3 => \LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[2]\,
      O => \LEN_CNTR_24_BIT_GEN.length_cntr[4]_i_2_n_0\
    );
\LEN_CNTR_24_BIT_GEN.length_cntr[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[4]\,
      I1 => \LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[2]\,
      I2 => \LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[0]\,
      I3 => \LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[1]\,
      I4 => \LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[3]\,
      O => \LEN_CNTR_24_BIT_GEN.length_cntr[5]_i_2_n_0\
    );
\LEN_CNTR_24_BIT_GEN.length_cntr[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => \LEN_CNTR_24_BIT_GEN.length_cntr[7]_i_3_n_0\
    );
\LEN_CNTR_24_BIT_GEN.length_cntr[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[5]\,
      I1 => \LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[3]\,
      I2 => \LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[1]\,
      I3 => \LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[0]\,
      I4 => \LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[2]\,
      I5 => \LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[4]\,
      O => \LEN_CNTR_24_BIT_GEN.length_cntr[7]_i_4_n_0\
    );
\LEN_CNTR_24_BIT_GEN.length_cntr[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => Rst_to_spi,
      I1 => \^q\(0),
      I2 => \^q\(1),
      O => \LEN_CNTR_24_BIT_GEN.length_cntr[7]_i_5_n_0\
    );
\LEN_CNTR_24_BIT_GEN.length_cntr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => XIP_CLK_DOMAIN_SIGNALS_n_35,
      D => XIP_CLK_DOMAIN_SIGNALS_n_43,
      Q => \LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[0]\,
      R => '0'
    );
\LEN_CNTR_24_BIT_GEN.length_cntr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => XIP_CLK_DOMAIN_SIGNALS_n_35,
      D => XIP_CLK_DOMAIN_SIGNALS_n_42,
      Q => \LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[1]\,
      R => '0'
    );
\LEN_CNTR_24_BIT_GEN.length_cntr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => XIP_CLK_DOMAIN_SIGNALS_n_35,
      D => length_cntr(2),
      Q => \LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[2]\,
      R => '0'
    );
\LEN_CNTR_24_BIT_GEN.length_cntr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => XIP_CLK_DOMAIN_SIGNALS_n_35,
      D => length_cntr(3),
      Q => \LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[3]\,
      R => '0'
    );
\LEN_CNTR_24_BIT_GEN.length_cntr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => XIP_CLK_DOMAIN_SIGNALS_n_35,
      D => length_cntr(4),
      Q => \LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[4]\,
      R => '0'
    );
\LEN_CNTR_24_BIT_GEN.length_cntr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => XIP_CLK_DOMAIN_SIGNALS_n_35,
      D => length_cntr(5),
      Q => \LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[5]\,
      R => '0'
    );
\LEN_CNTR_24_BIT_GEN.length_cntr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => XIP_CLK_DOMAIN_SIGNALS_n_35,
      D => length_cntr(6),
      Q => \LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[6]\,
      R => '0'
    );
\LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => XIP_CLK_DOMAIN_SIGNALS_n_35,
      D => length_cntr(7),
      Q => \LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[7]\,
      R => '0'
    );
\LOGIC_GENERATION_FDR.CPHA_CPOL_ERR_AXI2AXI4_1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => XIPSR_CPHA_CPOL_ERR_d1,
      Q => XIPSR_CPHA_CPOL_ERR_d2,
      R => bus2ip_reset_ipif4_inverted
    );
\LOGIC_GENERATION_FDR.CPHA_CPOL_ERR_AXI2AXI4_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \LOGIC_GENERATION_FDR.CPHA_CPOL_ERR_AXI2AXI4_CDC_0\(0),
      Q => XIPSR_CPHA_CPOL_ERR_d1,
      R => bus2ip_reset_ipif4_inverted
    );
\LOGIC_GENERATION_FDR.XIP_TRANS_ERROR_AXI2AXI4_1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => XIP_trans_error_d1,
      Q => \^xip_trans_error_d2\,
      R => bus2ip_reset_ipif_inverted
    );
\LOGIC_GENERATION_FDR.XIP_TRANS_ERROR_AXI2AXI4_2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^xip_trans_error_d2\,
      Q => XIP_trans_error_d3,
      R => bus2ip_reset_ipif_inverted
    );
\LOGIC_GENERATION_FDR.XIP_TRANS_ERROR_AXI2AXI4_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D_0,
      Q => XIP_trans_error_d1,
      R => bus2ip_reset_ipif_inverted
    );
\LOGIC_GENERATION_FDR.XIP_trans_error_int_2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA9A"
    )
        port map (
      I0 => D_0,
      I1 => s_axi4_arburst(0),
      I2 => s_axi4_arvalid,
      I3 => s_axi4_arburst(1),
      O => D03_out
    );
\LOGIC_GENERATION_FDR.XIP_trans_error_int_2_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => D03_out,
      Q => D_0,
      R => bus2ip_reset_ipif4_inverted
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[23]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hw_wd_cntr(1),
      I1 => hw_wd_cntr(0),
      O => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[23]_i_4_n_0\
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => hw_wd_cntr(0),
      I1 => hw_wd_cntr(1),
      O => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[7]_i_3_n_0\
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => XIP_CLK_DOMAIN_SIGNALS_n_107,
      D => XIP_CLK_DOMAIN_SIGNALS_n_141,
      Q => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[0]\,
      R => load_axi_data_to_spi_clk
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => XIP_CLK_DOMAIN_SIGNALS_n_106,
      D => XIP_CLK_DOMAIN_SIGNALS_n_131,
      Q => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[10]\,
      R => load_axi_data_to_spi_clk
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => XIP_CLK_DOMAIN_SIGNALS_n_106,
      D => XIP_CLK_DOMAIN_SIGNALS_n_130,
      Q => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[11]\,
      R => load_axi_data_to_spi_clk
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => XIP_CLK_DOMAIN_SIGNALS_n_106,
      D => XIP_CLK_DOMAIN_SIGNALS_n_129,
      Q => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[12]\,
      R => load_axi_data_to_spi_clk
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => XIP_CLK_DOMAIN_SIGNALS_n_106,
      D => XIP_CLK_DOMAIN_SIGNALS_n_128,
      Q => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[13]\,
      R => load_axi_data_to_spi_clk
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => XIP_CLK_DOMAIN_SIGNALS_n_106,
      D => XIP_CLK_DOMAIN_SIGNALS_n_127,
      Q => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[14]\,
      R => load_axi_data_to_spi_clk
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => XIP_CLK_DOMAIN_SIGNALS_n_106,
      D => XIP_CLK_DOMAIN_SIGNALS_n_126,
      Q => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[15]\,
      R => load_axi_data_to_spi_clk
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => XIP_CLK_DOMAIN_SIGNALS_n_105,
      D => XIP_CLK_DOMAIN_SIGNALS_n_125,
      Q => p_5_in(0),
      R => load_axi_data_to_spi_clk
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => XIP_CLK_DOMAIN_SIGNALS_n_105,
      D => XIP_CLK_DOMAIN_SIGNALS_n_124,
      Q => p_5_in(1),
      R => load_axi_data_to_spi_clk
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => XIP_CLK_DOMAIN_SIGNALS_n_105,
      D => XIP_CLK_DOMAIN_SIGNALS_n_123,
      Q => p_5_in(2),
      R => load_axi_data_to_spi_clk
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => XIP_CLK_DOMAIN_SIGNALS_n_105,
      D => XIP_CLK_DOMAIN_SIGNALS_n_122,
      Q => p_5_in(3),
      R => load_axi_data_to_spi_clk
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => XIP_CLK_DOMAIN_SIGNALS_n_107,
      D => XIP_CLK_DOMAIN_SIGNALS_n_140,
      Q => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[1]\,
      R => load_axi_data_to_spi_clk
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => XIP_CLK_DOMAIN_SIGNALS_n_105,
      D => XIP_CLK_DOMAIN_SIGNALS_n_121,
      Q => p_5_in(4),
      R => load_axi_data_to_spi_clk
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => XIP_CLK_DOMAIN_SIGNALS_n_105,
      D => XIP_CLK_DOMAIN_SIGNALS_n_120,
      Q => p_5_in(5),
      R => load_axi_data_to_spi_clk
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => XIP_CLK_DOMAIN_SIGNALS_n_105,
      D => XIP_CLK_DOMAIN_SIGNALS_n_119,
      Q => p_5_in(6),
      R => load_axi_data_to_spi_clk
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => XIP_CLK_DOMAIN_SIGNALS_n_105,
      D => XIP_CLK_DOMAIN_SIGNALS_n_118,
      Q => p_5_in(7),
      R => load_axi_data_to_spi_clk
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => XIP_CLK_DOMAIN_SIGNALS_n_104,
      D => XIP_CLK_DOMAIN_SIGNALS_n_117,
      Q => p_5_in(8),
      R => load_axi_data_to_spi_clk
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => XIP_CLK_DOMAIN_SIGNALS_n_104,
      D => XIP_CLK_DOMAIN_SIGNALS_n_116,
      Q => p_5_in(9),
      R => load_axi_data_to_spi_clk
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => XIP_CLK_DOMAIN_SIGNALS_n_104,
      D => XIP_CLK_DOMAIN_SIGNALS_n_115,
      Q => p_5_in(10),
      R => load_axi_data_to_spi_clk
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => XIP_CLK_DOMAIN_SIGNALS_n_104,
      D => XIP_CLK_DOMAIN_SIGNALS_n_114,
      Q => p_5_in(11),
      R => load_axi_data_to_spi_clk
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => XIP_CLK_DOMAIN_SIGNALS_n_104,
      D => XIP_CLK_DOMAIN_SIGNALS_n_113,
      Q => p_5_in(12),
      R => load_axi_data_to_spi_clk
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => XIP_CLK_DOMAIN_SIGNALS_n_104,
      D => XIP_CLK_DOMAIN_SIGNALS_n_112,
      Q => p_5_in(13),
      R => load_axi_data_to_spi_clk
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => XIP_CLK_DOMAIN_SIGNALS_n_107,
      D => XIP_CLK_DOMAIN_SIGNALS_n_139,
      Q => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[2]\,
      R => load_axi_data_to_spi_clk
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => XIP_CLK_DOMAIN_SIGNALS_n_104,
      D => XIP_CLK_DOMAIN_SIGNALS_n_111,
      Q => p_5_in(14),
      R => load_axi_data_to_spi_clk
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => XIP_CLK_DOMAIN_SIGNALS_n_104,
      D => XIP_CLK_DOMAIN_SIGNALS_n_110,
      Q => p_5_in(15),
      R => load_axi_data_to_spi_clk
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => XIP_CLK_DOMAIN_SIGNALS_n_107,
      D => XIP_CLK_DOMAIN_SIGNALS_n_138,
      Q => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[3]\,
      R => load_axi_data_to_spi_clk
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => XIP_CLK_DOMAIN_SIGNALS_n_107,
      D => XIP_CLK_DOMAIN_SIGNALS_n_137,
      Q => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[4]\,
      R => load_axi_data_to_spi_clk
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => XIP_CLK_DOMAIN_SIGNALS_n_107,
      D => XIP_CLK_DOMAIN_SIGNALS_n_136,
      Q => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[5]\,
      R => load_axi_data_to_spi_clk
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => XIP_CLK_DOMAIN_SIGNALS_n_107,
      D => XIP_CLK_DOMAIN_SIGNALS_n_135,
      Q => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[6]\,
      R => load_axi_data_to_spi_clk
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => XIP_CLK_DOMAIN_SIGNALS_n_107,
      D => XIP_CLK_DOMAIN_SIGNALS_n_134,
      Q => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[7]\,
      R => load_axi_data_to_spi_clk
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => XIP_CLK_DOMAIN_SIGNALS_n_106,
      D => XIP_CLK_DOMAIN_SIGNALS_n_133,
      Q => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[8]\,
      R => load_axi_data_to_spi_clk
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => XIP_CLK_DOMAIN_SIGNALS_n_106,
      D => XIP_CLK_DOMAIN_SIGNALS_n_132,
      Q => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[9]\,
      R => load_axi_data_to_spi_clk
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => XIP_CLK_DOMAIN_SIGNALS_n_55,
      Q => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg_n_0_[0]\,
      R => '0'
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => XIP_CLK_DOMAIN_SIGNALS_n_56,
      Q => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg_n_0_[1]\,
      R => '0'
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => XIP_CLK_DOMAIN_SIGNALS_n_54,
      Q => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg_n_0_[2]\,
      R => '0'
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_sent_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg_n_0_[2]\,
      I1 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg_n_0_[1]\,
      I2 => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg_n_0_[0]\,
      O => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[2]_0\
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_sent_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_sent_reg_0\,
      Q => \^cmd_addr_sent\,
      R => cmd_addr_cntr1
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.hpm_under_process_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => wb_cntrl_ns(0),
      Q => hpm_under_process_d1,
      R => Rst_to_spi
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.hw_wd_cntr[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^cmd_addr_sent\,
      I1 => \^spixfer_done_int_pulse_d2\,
      O => hw_wd_cntr0
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.hw_wd_cntr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => XIP_CLK_DOMAIN_SIGNALS_n_58,
      Q => hw_wd_cntr(0),
      R => '0'
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.hw_wd_cntr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => XIP_CLK_DOMAIN_SIGNALS_n_57,
      Q => hw_wd_cntr(1),
      R => '0'
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[7]\,
      I1 => SPIXfer_done_int,
      I2 => \^spixfer_done_int_d1\,
      I3 => io0_i_sync,
      O => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[0]_i_1_n_0\
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[6]\,
      I1 => SPIXfer_done_int,
      I2 => \^spixfer_done_int_d1\,
      I3 => io1_i_sync,
      O => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[1]_i_1_n_0\
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[5]\,
      I1 => SPIXfer_done_int,
      I2 => \^spixfer_done_int_d1\,
      I3 => io2_i_sync,
      O => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[2]_i_1_n_0\
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[4]\,
      I1 => SPIXfer_done_int,
      I2 => \^spixfer_done_int_d1\,
      I3 => io3_i_sync,
      O => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[3]_i_1_n_0\
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[3]\,
      I1 => SPIXfer_done_int,
      I2 => \^spixfer_done_int_d1\,
      I3 => receive_Data_int(0),
      O => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[4]_i_1_n_0\
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[2]\,
      I1 => SPIXfer_done_int,
      I2 => \^spixfer_done_int_d1\,
      I3 => receive_Data_int(1),
      O => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[5]_i_1_n_0\
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[1]\,
      I1 => SPIXfer_done_int,
      I2 => \^spixfer_done_int_d1\,
      I3 => receive_Data_int(2),
      O => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[6]_i_1_n_0\
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \^spixfer_done_int_d1\,
      I1 => SPIXfer_done_int,
      I2 => SPIXfer_done_int_pulse_d1,
      I3 => \^cmd_addr_sent\,
      O => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[7]_i_2_n_0\
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[0]\,
      I1 => SPIXfer_done_int,
      I2 => \^spixfer_done_int_d1\,
      I3 => receive_Data_int(3),
      O => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[7]_i_3_n_0\
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[7]_i_2_n_0\,
      D => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[0]_i_1_n_0\,
      Q => receive_Data_int(0),
      R => load_axi_data_to_spi_clk
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[7]_i_2_n_0\,
      D => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[1]_i_1_n_0\,
      Q => receive_Data_int(1),
      R => load_axi_data_to_spi_clk
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[7]_i_2_n_0\,
      D => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[2]_i_1_n_0\,
      Q => receive_Data_int(2),
      R => load_axi_data_to_spi_clk
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[7]_i_2_n_0\,
      D => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[3]_i_1_n_0\,
      Q => receive_Data_int(3),
      R => load_axi_data_to_spi_clk
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[7]_i_2_n_0\,
      D => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[4]_i_1_n_0\,
      Q => receive_Data_int(4),
      R => load_axi_data_to_spi_clk
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[7]_i_2_n_0\,
      D => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[5]_i_1_n_0\,
      Q => receive_Data_int(5),
      R => load_axi_data_to_spi_clk
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[7]_i_2_n_0\,
      D => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[6]_i_1_n_0\,
      Q => receive_Data_int(6),
      R => load_axi_data_to_spi_clk
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[7]_i_2_n_0\,
      D => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[7]_i_3_n_0\,
      Q => receive_Data_int(7),
      R => load_axi_data_to_spi_clk
    );
\RATIO_OF_2_GENERATE.Count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^ratio_of_2_generate.count_reg[0]_0\(0),
      O => SPIXfer_done_int1
    );
\RATIO_OF_2_GENERATE.Count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \RATIO_OF_2_GENERATE.Count_reg\(1),
      I1 => \^ratio_of_2_generate.count_reg[0]_0\(0),
      O => plusOp(1)
    );
\RATIO_OF_2_GENERATE.Count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \RATIO_OF_2_GENERATE.Count_reg\(2),
      I1 => \^ratio_of_2_generate.count_reg[0]_0\(0),
      I2 => \RATIO_OF_2_GENERATE.Count_reg\(1),
      O => plusOp(2)
    );
\RATIO_OF_2_GENERATE.Count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \RATIO_OF_2_GENERATE.Count_reg\(3),
      I1 => \RATIO_OF_2_GENERATE.Count_reg\(1),
      I2 => \^ratio_of_2_generate.count_reg[0]_0\(0),
      I3 => \RATIO_OF_2_GENERATE.Count_reg\(2),
      O => plusOp(3)
    );
\RATIO_OF_2_GENERATE.Count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF2FF"
    )
        port map (
      I0 => \^wrap_around_d3\,
      I1 => \^wrap_around_d2\,
      I2 => Rst_to_spi,
      I3 => \^transfer_start\,
      I4 => SPIXfer_done_int,
      O => \RATIO_OF_2_GENERATE.Count[4]_i_1_n_0\
    );
\RATIO_OF_2_GENERATE.Count[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \RATIO_OF_2_GENERATE.Count_reg\(2),
      I1 => \RATIO_OF_2_GENERATE.Count_reg\(3),
      I2 => \RATIO_OF_2_GENERATE.Count_reg\(1),
      I3 => \^ratio_of_2_generate.count_reg[0]_0\(0),
      O => plusOp(4)
    );
\RATIO_OF_2_GENERATE.Count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => XIP_CLK_DOMAIN_SIGNALS_n_83,
      D => SPIXfer_done_int1,
      Q => \^ratio_of_2_generate.count_reg[0]_0\(0),
      R => \RATIO_OF_2_GENERATE.Count[4]_i_1_n_0\
    );
\RATIO_OF_2_GENERATE.Count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => XIP_CLK_DOMAIN_SIGNALS_n_83,
      D => plusOp(1),
      Q => \RATIO_OF_2_GENERATE.Count_reg\(1),
      R => \RATIO_OF_2_GENERATE.Count[4]_i_1_n_0\
    );
\RATIO_OF_2_GENERATE.Count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => XIP_CLK_DOMAIN_SIGNALS_n_83,
      D => plusOp(2),
      Q => \RATIO_OF_2_GENERATE.Count_reg\(2),
      R => \RATIO_OF_2_GENERATE.Count[4]_i_1_n_0\
    );
\RATIO_OF_2_GENERATE.Count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => XIP_CLK_DOMAIN_SIGNALS_n_83,
      D => plusOp(3),
      Q => \RATIO_OF_2_GENERATE.Count_reg\(3),
      R => \RATIO_OF_2_GENERATE.Count[4]_i_1_n_0\
    );
\RATIO_OF_2_GENERATE.Count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => XIP_CLK_DOMAIN_SIGNALS_n_83,
      D => plusOp(4),
      Q => \RATIO_OF_2_GENERATE.Count_reg__0\(4),
      R => \RATIO_OF_2_GENERATE.Count[4]_i_1_n_0\
    );
\RATIO_OF_2_GENERATE.QSPI_IO0_T\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => \RATIO_OF_2_GENERATE.QSPI_IO0_T_i_1_n_0\,
      Q => io0_t,
      R => '0'
    );
\RATIO_OF_2_GENERATE.QSPI_IO0_T_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \RATIO_OF_2_GENERATE.QSPI_IO0_T_i_2_n_0\,
      I1 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[1]\,
      I2 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[2]\,
      I3 => \RATIO_OF_2_GENERATE.QSPI_IO0_T_i_3_n_0\,
      O => \RATIO_OF_2_GENERATE.QSPI_IO0_T_i_1_n_0\
    );
\RATIO_OF_2_GENERATE.QSPI_IO0_T_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8AAA"
    )
        port map (
      I0 => pr_state_addr_ph,
      I1 => \RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.addr_cnt_reg\(2),
      I2 => \RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.addr_cnt_reg\(0),
      I3 => \RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.addr_cnt_reg\(1),
      O => \RATIO_OF_2_GENERATE.QSPI_IO0_T_i_2_n_0\
    );
\RATIO_OF_2_GENERATE.QSPI_IO0_T_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \^fsm_onehot_ratio_of_2_generate.xip_quad_mode_wb_mem_gen.qspi_cntrl_ps_reg[0]_0\(0),
      I1 => \^transfer_start\,
      I2 => \^new_tr\,
      I3 => \^sr_5_tx_empty_24_bit_addr_gen.sr_5_tx_empty_reg_0\,
      O => \RATIO_OF_2_GENERATE.QSPI_IO0_T_i_3_n_0\
    );
\RATIO_OF_2_GENERATE.QSPI_IO1_T\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => \RATIO_OF_2_GENERATE.QSPI_IO1_T_i_1_n_0\,
      Q => io1_t,
      R => '0'
    );
\RATIO_OF_2_GENERATE.QSPI_IO1_T_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08FF"
    )
        port map (
      I0 => \RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.addr_cnt_reg\(1),
      I1 => \RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.addr_cnt_reg\(0),
      I2 => \RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.addr_cnt_reg\(2),
      I3 => pr_state_addr_ph,
      O => \RATIO_OF_2_GENERATE.QSPI_IO1_T_i_1_n_0\
    );
\RATIO_OF_2_GENERATE.QSPI_MODE_2_T_CONTROL.QSPI_IO2_T\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => \RATIO_OF_2_GENERATE.QSPI_IO1_T_i_1_n_0\,
      Q => io2_t,
      R => '0'
    );
\RATIO_OF_2_GENERATE.QSPI_MODE_2_T_CONTROL.QSPI_IO3_T\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => \RATIO_OF_2_GENERATE.QSPI_IO1_T_i_1_n_0\,
      Q => io3_t,
      R => '0'
    );
\RATIO_OF_2_GENERATE.QSPI_SS_T\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => \RATIO_OF_2_GENERATE.QSPI_SS_T_i_1_n_0\,
      Q => ss_t,
      R => '0'
    );
\RATIO_OF_2_GENERATE.QSPI_SS_T_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"5D"
    )
        port map (
      I0 => \^transfer_start\,
      I1 => wrap_around_d1,
      I2 => \^wrap_around_d2\,
      O => \RATIO_OF_2_GENERATE.QSPI_SS_T_i_1_n_0\
    );
\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg_n_0_[0]\,
      I1 => \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg_n_0_[3]\,
      I2 => \^spixfer_done_int_d1_reg_0\,
      I3 => Transmit_Data(0),
      I4 => \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_3_i_4_n_0\,
      I5 => Transmit_Data(3),
      O => \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg[0]_0\
    );
\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_0_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_0_reg_0\,
      Q => io0_o,
      R => Rst_to_spi
    );
\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => \^spixfer_done_int_d1\,
      I1 => \^transfer_start_d1\,
      I2 => \^transfer_start\,
      O => \^spixfer_done_int_d1_reg_0\
    );
\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_1_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A2AA"
    )
        port map (
      I0 => \^transfer_start\,
      I1 => \^transfer_start_d1\,
      I2 => \^spixfer_done_int_d1\,
      I3 => \^ratio_of_2_generate.count_reg[0]_0\(0),
      I4 => \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_3_i_4_n_0\,
      O => Serial_Dout_1
    );
\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_1_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_1_reg_0\,
      Q => io1_o,
      R => Rst_to_spi
    );
\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_2_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_2_reg_0\,
      Q => io2_o,
      R => Rst_to_spi
    );
\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_3_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00003B08"
    )
        port map (
      I0 => \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_3_i_2_n_0\,
      I1 => Serial_Dout_09_out,
      I2 => \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_3_i_4_n_0\,
      I3 => \^io3_o\,
      I4 => Rst_to_spi,
      O => \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_3_i_1_n_0\
    );
\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_3_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEE2022"
    )
        port map (
      I0 => \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg_n_0_[0]\,
      I1 => \^spixfer_done_int_d1\,
      I2 => \^transfer_start_d1\,
      I3 => \^transfer_start\,
      I4 => Transmit_Data(0),
      O => \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_3_i_2_n_0\
    );
\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_3_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF00"
    )
        port map (
      I0 => \^ratio_of_2_generate.count_reg[0]_0\(0),
      I1 => \^spixfer_done_int_d1\,
      I2 => \^transfer_start_d1\,
      I3 => \^transfer_start\,
      O => Serial_Dout_09_out
    );
\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_3_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[5]\,
      I1 => pr_state_addr_ph,
      I2 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[4]\,
      O => \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_3_i_4_n_0\
    );
\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_3_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_3_i_1_n_0\,
      Q => \^io3_o\,
      R => '0'
    );
\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => \^ratio_of_2_generate.count_reg[0]_0\(0),
      I1 => \^spixfer_done_int_d1\,
      I2 => \^transfer_start_d1\,
      I3 => \^transfer_start\,
      O => Shift_Reg
    );
\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^ratio_of_2_generate.qspi_winbond_mem_data_cap_gen.shift_reg_reg[1]_0\(1),
      I1 => \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_3_i_4_n_0\,
      I2 => \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg_n_0_[4]\,
      I3 => \^spixfer_done_int_d1_reg_0\,
      I4 => Transmit_Data(0),
      O => \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg[0]_i_2_n_0\
    );
\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^ratio_of_2_generate.qspi_winbond_mem_data_cap_gen.shift_reg_reg[1]_0\(0),
      I1 => \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_3_i_4_n_0\,
      I2 => \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg_n_0_[5]\,
      I3 => \^spixfer_done_int_d1_reg_0\,
      I4 => \^shift_tx_reg_24_bit_gen.tx_data_d1_reg[30]_0\(1),
      O => \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg[1]_i_1_n_0\
    );
\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg_n_0_[3]\,
      I1 => \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_3_i_4_n_0\,
      I2 => \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg_n_0_[6]\,
      I3 => \^spixfer_done_int_d1_reg_0\,
      I4 => \^shift_tx_reg_24_bit_gen.tx_data_d1_reg[30]_0\(0),
      O => \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg[2]_i_1_n_0\
    );
\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg_n_0_[4]\,
      I1 => \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_3_i_4_n_0\,
      I2 => \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg_n_0_[7]\,
      I3 => \^spixfer_done_int_d1_reg_0\,
      I4 => Transmit_Data(3),
      O => \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg[3]_i_1_n_0\
    );
\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg_n_0_[5]\,
      I1 => \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_3_i_4_n_0\,
      I2 => io3_i_sync,
      I3 => \^spixfer_done_int_d1_reg_0\,
      I4 => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[27]\,
      O => \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg[4]_i_1_n_0\
    );
\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg_n_0_[6]\,
      I1 => \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_3_i_4_n_0\,
      I2 => io2_i_sync,
      I3 => \^spixfer_done_int_d1_reg_0\,
      I4 => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[26]\,
      O => \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg[5]_i_1_n_0\
    );
\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg_n_0_[7]\,
      I1 => \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_3_i_4_n_0\,
      I2 => io1_i_sync,
      I3 => \^spixfer_done_int_d1_reg_0\,
      I4 => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[25]\,
      O => \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg[6]_i_1_n_0\
    );
\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => io1_i_sync,
      I1 => \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_3_i_4_n_0\,
      I2 => io0_i_sync,
      I3 => \^spixfer_done_int_d1_reg_0\,
      I4 => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[24]\,
      O => \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg[7]_i_1_n_0\
    );
\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => Shift_Reg,
      D => \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg[0]_i_2_n_0\,
      Q => \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg_n_0_[0]\,
      R => Rst_to_spi
    );
\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => Shift_Reg,
      D => \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg[1]_i_1_n_0\,
      Q => \^ratio_of_2_generate.qspi_winbond_mem_data_cap_gen.shift_reg_reg[1]_0\(1),
      R => Rst_to_spi
    );
\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => Shift_Reg,
      D => \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg[2]_i_1_n_0\,
      Q => \^ratio_of_2_generate.qspi_winbond_mem_data_cap_gen.shift_reg_reg[1]_0\(0),
      R => Rst_to_spi
    );
\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => Shift_Reg,
      D => \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg[3]_i_1_n_0\,
      Q => \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg_n_0_[3]\,
      R => Rst_to_spi
    );
\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => Shift_Reg,
      D => \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg[4]_i_1_n_0\,
      Q => \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg_n_0_[4]\,
      R => Rst_to_spi
    );
\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => Shift_Reg,
      D => \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg[5]_i_1_n_0\,
      Q => \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg_n_0_[5]\,
      R => Rst_to_spi
    );
\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => Shift_Reg,
      D => \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg[6]_i_1_n_0\,
      Q => \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg_n_0_[6]\,
      R => Rst_to_spi
    );
\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => Shift_Reg,
      D => \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg[7]_i_1_n_0\,
      Q => \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg_n_0_[7]\,
      R => Rst_to_spi
    );
\RATIO_OF_2_GENERATE.SCK_O_NQ_4_STARTUP_USED.SCK_O_reg_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => XIP_CLK_DOMAIN_SIGNALS_n_85,
      Q => SCK_O_int,
      R => '0'
    );
\RATIO_OF_2_GENERATE.SS_O_24_BIT_ADDR_GEN.SS_O_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => XIP_CLK_DOMAIN_SIGNALS_n_84,
      Q => ss_o(0),
      R => '0'
    );
\RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.addr_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D200"
    )
        port map (
      I0 => SPIXfer_done_int,
      I1 => \^spixfer_done_int_d1\,
      I2 => \RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.addr_cnt_reg\(0),
      I3 => pr_state_addr_ph,
      O => \RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.addr_cnt[0]_i_1_n_0\
    );
\RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.addr_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DF200000"
    )
        port map (
      I0 => \RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.addr_cnt_reg\(0),
      I1 => \^spixfer_done_int_d1\,
      I2 => SPIXfer_done_int,
      I3 => \RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.addr_cnt_reg\(1),
      I4 => pr_state_addr_ph,
      O => \RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.addr_cnt[1]_i_1_n_0\
    );
\RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.addr_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FF080000000000"
    )
        port map (
      I0 => \RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.addr_cnt_reg\(1),
      I1 => SPIXfer_done_int,
      I2 => \^spixfer_done_int_d1\,
      I3 => \RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.addr_cnt_reg\(0),
      I4 => \RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.addr_cnt_reg\(2),
      I5 => pr_state_addr_ph,
      O => \RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.addr_cnt[2]_i_1_n_0\
    );
\RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.addr_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.addr_cnt[0]_i_1_n_0\,
      Q => \RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.addr_cnt_reg\(0),
      R => '0'
    );
\RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.addr_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.addr_cnt[1]_i_1_n_0\,
      Q => \RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.addr_cnt_reg\(1),
      R => '0'
    );
\RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.addr_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.addr_cnt[2]_i_1_n_0\,
      Q => \RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.addr_cnt_reg\(2),
      R => '0'
    );
\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[1]\,
      I1 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[5]\,
      I2 => pr_state_addr_ph,
      I3 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[4]\,
      I4 => \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[4]\,
      O => \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[0]_i_2_n_0\
    );
\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[2]\,
      I1 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[5]\,
      I2 => pr_state_addr_ph,
      I3 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[4]\,
      I4 => \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[5]\,
      O => \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[1]_i_1_n_0\
    );
\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[3]\,
      I1 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[5]\,
      I2 => pr_state_addr_ph,
      I3 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[4]\,
      I4 => \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[6]\,
      O => \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[2]_i_1_n_0\
    );
\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[4]\,
      I1 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[5]\,
      I2 => pr_state_addr_ph,
      I3 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[4]\,
      I4 => \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[7]\,
      O => \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[3]_i_1_n_0\
    );
\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[5]\,
      I1 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[5]\,
      I2 => pr_state_addr_ph,
      I3 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[4]\,
      I4 => io3_i_sync,
      O => \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[4]_i_1_n_0\
    );
\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[6]\,
      I1 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[5]\,
      I2 => pr_state_addr_ph,
      I3 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[4]\,
      I4 => io2_i_sync,
      O => \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[5]_i_1_n_0\
    );
\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[7]\,
      I1 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[5]\,
      I2 => pr_state_addr_ph,
      I3 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[4]\,
      I4 => io1_i_sync,
      O => \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[6]_i_1_n_0\
    );
\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => io1_i_sync,
      I1 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[5]\,
      I2 => pr_state_addr_ph,
      I3 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[4]\,
      I4 => io0_i_sync,
      O => \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[7]_i_1_n_0\
    );
\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => E(0),
      D => \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[0]_i_2_n_0\,
      Q => \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[0]\,
      R => Rst_to_spi
    );
\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => E(0),
      D => \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[1]_i_1_n_0\,
      Q => \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[1]\,
      R => Rst_to_spi
    );
\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => E(0),
      D => \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[2]_i_1_n_0\,
      Q => \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[2]\,
      R => Rst_to_spi
    );
\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => E(0),
      D => \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[3]_i_1_n_0\,
      Q => \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[3]\,
      R => Rst_to_spi
    );
\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => E(0),
      D => \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[4]_i_1_n_0\,
      Q => \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[4]\,
      R => Rst_to_spi
    );
\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => E(0),
      D => \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[5]_i_1_n_0\,
      Q => \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[5]\,
      R => Rst_to_spi
    );
\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => E(0),
      D => \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[6]_i_1_n_0\,
      Q => \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[6]\,
      R => Rst_to_spi
    );
\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => E(0),
      D => \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[7]_i_1_n_0\,
      Q => \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[7]\,
      R => Rst_to_spi
    );
\RATIO_OF_2_GENERATE.sck_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \^sck_o_int\,
      Q => sck_d1,
      R => Rst_to_spi
    );
\RATIO_OF_2_GENERATE.sck_d2_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => sck_d1,
      Q => sck_d2,
      R => Rst_to_spi
    );
\RATIO_OF_2_GENERATE.sck_o_int_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => XIP_CLK_DOMAIN_SIGNALS_n_74,
      Q => \^sck_o_int\,
      R => '0'
    );
RX_FIFO_EMPTY_SYNC_AXI4_2_AXI_CDC: entity work.icyradio_axi_quad_spi_0_0_cdc_sync
     port map (
      D(0) => D(0),
      prmry_in => \^empty\,
      s_axi_aclk => s_axi_aclk
    );
RX_FIFO_EMPTY_SYNC_AXI_2_SPI_CDC: entity work.icyradio_axi_quad_spi_0_0_cdc_sync_0
     port map (
      ext_spi_clk => ext_spi_clk,
      prmry_in => \^empty\,
      scndry_out => scndry_out
    );
\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F1"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => Rst_to_spi,
      O => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[30]_i_1_n_0\
    );
\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => Tx_Data_d1,
      D => XIP_CLK_DOMAIN_SIGNALS_n_34,
      Q => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[0]\,
      R => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[30]_i_1_n_0\
    );
\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => Tx_Data_d1,
      D => XIP_CLK_DOMAIN_SIGNALS_n_12,
      Q => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[10]\,
      R => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[30]_i_1_n_0\
    );
\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => Tx_Data_d1,
      D => XIP_CLK_DOMAIN_SIGNALS_n_13,
      Q => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[11]\,
      R => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[30]_i_1_n_0\
    );
\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => Tx_Data_d1,
      D => XIP_CLK_DOMAIN_SIGNALS_n_14,
      Q => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[12]\,
      R => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[30]_i_1_n_0\
    );
\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => Tx_Data_d1,
      D => XIP_CLK_DOMAIN_SIGNALS_n_15,
      Q => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[13]\,
      R => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[30]_i_1_n_0\
    );
\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => Tx_Data_d1,
      D => XIP_CLK_DOMAIN_SIGNALS_n_16,
      Q => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[14]\,
      R => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[30]_i_1_n_0\
    );
\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => Tx_Data_d1,
      D => XIP_CLK_DOMAIN_SIGNALS_n_17,
      Q => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[15]\,
      R => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[30]_i_1_n_0\
    );
\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => Tx_Data_d1,
      D => XIP_CLK_DOMAIN_SIGNALS_n_18,
      Q => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[16]\,
      R => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[30]_i_1_n_0\
    );
\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => Tx_Data_d1,
      D => XIP_CLK_DOMAIN_SIGNALS_n_19,
      Q => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[17]\,
      R => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[30]_i_1_n_0\
    );
\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => Tx_Data_d1,
      D => XIP_CLK_DOMAIN_SIGNALS_n_20,
      Q => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[18]\,
      R => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[30]_i_1_n_0\
    );
\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => Tx_Data_d1,
      D => XIP_CLK_DOMAIN_SIGNALS_n_21,
      Q => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[19]\,
      R => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[30]_i_1_n_0\
    );
\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => Tx_Data_d1,
      D => XIP_CLK_DOMAIN_SIGNALS_n_33,
      Q => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[1]\,
      R => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[30]_i_1_n_0\
    );
\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => Tx_Data_d1,
      D => XIP_CLK_DOMAIN_SIGNALS_n_22,
      Q => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[20]\,
      R => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[30]_i_1_n_0\
    );
\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => Tx_Data_d1,
      D => XIP_CLK_DOMAIN_SIGNALS_n_23,
      Q => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[21]\,
      R => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[30]_i_1_n_0\
    );
\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => Tx_Data_d1,
      D => XIP_CLK_DOMAIN_SIGNALS_n_24,
      Q => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[22]\,
      R => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[30]_i_1_n_0\
    );
\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => Tx_Data_d1,
      D => XIP_CLK_DOMAIN_SIGNALS_n_25,
      Q => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[23]\,
      R => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[30]_i_1_n_0\
    );
\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => Tx_Data_d1,
      D => XIP_CLK_DOMAIN_SIGNALS_n_26,
      Q => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[24]\,
      R => Rst_to_spi
    );
\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => Tx_Data_d1,
      D => XIP_CLK_DOMAIN_SIGNALS_n_27,
      Q => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[25]\,
      R => Rst_to_spi
    );
\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => Tx_Data_d1,
      D => XIP_CLK_DOMAIN_SIGNALS_n_6,
      Q => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[26]\,
      R => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[30]_i_1_n_0\
    );
\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => Tx_Data_d1,
      D => XIP_CLK_DOMAIN_SIGNALS_n_7,
      Q => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[27]\,
      R => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[30]_i_1_n_0\
    );
\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => Tx_Data_d1,
      D => XIP_CLK_DOMAIN_SIGNALS_n_8,
      Q => Transmit_Data(3),
      R => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[30]_i_1_n_0\
    );
\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => Tx_Data_d1,
      D => XIP_CLK_DOMAIN_SIGNALS_n_28,
      Q => \^shift_tx_reg_24_bit_gen.tx_data_d1_reg[30]_0\(0),
      R => Rst_to_spi
    );
\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => Tx_Data_d1,
      D => XIP_CLK_DOMAIN_SIGNALS_n_32,
      Q => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[2]\,
      R => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[30]_i_1_n_0\
    );
\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => Tx_Data_d1,
      D => XIP_CLK_DOMAIN_SIGNALS_n_9,
      Q => \^shift_tx_reg_24_bit_gen.tx_data_d1_reg[30]_0\(1),
      R => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[30]_i_1_n_0\
    );
\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => Tx_Data_d1,
      D => XIP_CLK_DOMAIN_SIGNALS_n_29,
      Q => Transmit_Data(0),
      R => Rst_to_spi
    );
\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => Tx_Data_d1,
      D => XIP_CLK_DOMAIN_SIGNALS_n_81,
      Q => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[3]\,
      R => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[30]_i_1_n_0\
    );
\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => Tx_Data_d1,
      D => XIP_CLK_DOMAIN_SIGNALS_n_80,
      Q => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[4]\,
      R => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[30]_i_1_n_0\
    );
\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => Tx_Data_d1,
      D => XIP_CLK_DOMAIN_SIGNALS_n_79,
      Q => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[5]\,
      R => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[30]_i_1_n_0\
    );
\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => Tx_Data_d1,
      D => XIP_CLK_DOMAIN_SIGNALS_n_31,
      Q => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[6]\,
      R => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[30]_i_1_n_0\
    );
\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => Tx_Data_d1,
      D => XIP_CLK_DOMAIN_SIGNALS_n_30,
      Q => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[7]\,
      R => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[30]_i_1_n_0\
    );
\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => Tx_Data_d1,
      D => XIP_CLK_DOMAIN_SIGNALS_n_10,
      Q => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[8]\,
      R => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[30]_i_1_n_0\
    );
\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => Tx_Data_d1,
      D => XIP_CLK_DOMAIN_SIGNALS_n_11,
      Q => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[9]\,
      R => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[30]_i_1_n_0\
    );
SPIXfer_done_int_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => SPIXfer_done_int,
      Q => \^spixfer_done_int_d1\,
      R => cmd_addr_cntr1
    );
SPIXfer_done_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFEFEFE"
    )
        port map (
      I0 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[5]\,
      I1 => pr_state_addr_ph,
      I2 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[4]\,
      I3 => \RATIO_OF_2_GENERATE.Count_reg\(2),
      I4 => \RATIO_OF_2_GENERATE.Count_reg\(3),
      I5 => SPIXfer_done_int_i_2_n_0,
      O => SPIXfer_done_int_i_1_n_0
    );
SPIXfer_done_int_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFDDFD"
    )
        port map (
      I0 => \RATIO_OF_2_GENERATE.Count_reg\(1),
      I1 => \^ratio_of_2_generate.count_reg[0]_0\(0),
      I2 => \^transfer_start\,
      I3 => \^transfer_start_d1\,
      I4 => Rst_to_spi,
      O => SPIXfer_done_int_i_2_n_0
    );
SPIXfer_done_int_pulse_d1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => SPIXfer_done_int,
      I1 => \^spixfer_done_int_d1\,
      O => p_33_in
    );
SPIXfer_done_int_pulse_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => p_33_in,
      Q => SPIXfer_done_int_pulse_d1,
      R => cmd_addr_cntr1
    );
SPIXfer_done_int_pulse_d2_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => SPIXfer_done_int_pulse_d1,
      Q => \^spixfer_done_int_pulse_d2\,
      R => cmd_addr_cntr1
    );
SPIXfer_done_int_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => SPIXfer_done_int_i_1_n_0,
      Q => SPIXfer_done_int,
      R => '0'
    );
\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => size_length_cntr(1),
      I1 => size_length_cntr(0),
      O => \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[0]_i_3_n_0\
    );
\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => XIP_CLK_DOMAIN_SIGNALS_n_61,
      Q => \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg_n_0_[0]\,
      R => Rst_to_spi
    );
\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => XIP_CLK_DOMAIN_SIGNALS_n_60,
      Q => p_3_in1_in,
      R => Rst_to_spi
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \size_length_cntr_fixed_reg_n_0_[1]\,
      I1 => \size_length_cntr_fixed_reg_n_0_[0]\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[0]_i_3_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[10]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E02"
    )
        port map (
      I0 => data4(10),
      I1 => \size_length_cntr_fixed_reg_n_0_[0]\,
      I2 => \size_length_cntr_fixed_reg_n_0_[1]\,
      I3 => \spi_addr_wrap_1_reg[11]_i_2_n_5\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[10]_i_3_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[11]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E02"
    )
        port map (
      I0 => data4(11),
      I1 => \size_length_cntr_fixed_reg_n_0_[0]\,
      I2 => \size_length_cntr_fixed_reg_n_0_[1]\,
      I3 => \spi_addr_wrap_1_reg[11]_i_2_n_4\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[11]_i_3_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[12]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E02"
    )
        port map (
      I0 => data4(12),
      I1 => \size_length_cntr_fixed_reg_n_0_[0]\,
      I2 => \size_length_cntr_fixed_reg_n_0_[1]\,
      I3 => \spi_addr_wrap_1_reg[15]_i_2_n_7\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[12]_i_3_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[13]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1D1D0C3F"
    )
        port map (
      I0 => \spi_addr_wrap_1_reg[15]_i_2_n_6\,
      I1 => \size_length_cntr_fixed_reg_n_0_[1]\,
      I2 => \spi_addr_wrap_1_reg[16]_i_2_n_7\,
      I3 => data4(13),
      I4 => \size_length_cntr_fixed_reg_n_0_[0]\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[13]_i_3_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[14]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1D1D0C3F"
    )
        port map (
      I0 => \spi_addr_wrap_1_reg[15]_i_2_n_5\,
      I1 => \size_length_cntr_fixed_reg_n_0_[1]\,
      I2 => \spi_addr_wrap_1_reg[16]_i_2_n_6\,
      I3 => data4(14),
      I4 => \size_length_cntr_fixed_reg_n_0_[0]\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[14]_i_3_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1D1D0C3F"
    )
        port map (
      I0 => \spi_addr_wrap_1_reg[15]_i_2_n_4\,
      I1 => \size_length_cntr_fixed_reg_n_0_[1]\,
      I2 => \spi_addr_wrap_1_reg[16]_i_2_n_5\,
      I3 => data4(15),
      I4 => \size_length_cntr_fixed_reg_n_0_[0]\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[15]_i_3_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[16]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1D1D0C3F"
    )
        port map (
      I0 => \spi_addr_wrap_1_reg[19]_i_2_n_7\,
      I1 => \size_length_cntr_fixed_reg_n_0_[1]\,
      I2 => \spi_addr_wrap_1_reg[16]_i_2_n_4\,
      I3 => data4(16),
      I4 => \size_length_cntr_fixed_reg_n_0_[0]\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[16]_i_3_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[17]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1D1D0C3F"
    )
        port map (
      I0 => \spi_addr_wrap_1_reg[19]_i_2_n_6\,
      I1 => \size_length_cntr_fixed_reg_n_0_[1]\,
      I2 => \spi_addr_wrap_1_reg[20]_i_3_n_7\,
      I3 => data4(17),
      I4 => \size_length_cntr_fixed_reg_n_0_[0]\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[17]_i_3_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[18]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1D1D0C3F"
    )
        port map (
      I0 => \spi_addr_wrap_1_reg[19]_i_2_n_5\,
      I1 => \size_length_cntr_fixed_reg_n_0_[1]\,
      I2 => \spi_addr_wrap_1_reg[20]_i_3_n_6\,
      I3 => data4(18),
      I4 => \size_length_cntr_fixed_reg_n_0_[0]\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[18]_i_3_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[19]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C1D3F1D"
    )
        port map (
      I0 => data4(19),
      I1 => \size_length_cntr_fixed_reg_n_0_[1]\,
      I2 => \spi_addr_wrap_1_reg[20]_i_3_n_5\,
      I3 => \size_length_cntr_fixed_reg_n_0_[0]\,
      I4 => \spi_addr_wrap_1_reg[19]_i_2_n_4\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[19]_i_3_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \size_length_cntr_fixed_reg_n_0_[1]\,
      I1 => \size_length_cntr_fixed_reg_n_0_[0]\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_7_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[20]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C1D3F1D"
    )
        port map (
      I0 => data4(20),
      I1 => \size_length_cntr_fixed_reg_n_0_[1]\,
      I2 => \spi_addr_wrap_1_reg[20]_i_3_n_4\,
      I3 => \size_length_cntr_fixed_reg_n_0_[0]\,
      I4 => \spi_addr_wrap_1_reg[23]_i_4_n_7\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[20]_i_3_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[21]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1D1D0C3F"
    )
        port map (
      I0 => \spi_addr_wrap_1_reg[23]_i_4_n_6\,
      I1 => \size_length_cntr_fixed_reg_n_0_[1]\,
      I2 => \spi_addr_wrap_1_reg[23]_i_3_n_7\,
      I3 => data4(21),
      I4 => \size_length_cntr_fixed_reg_n_0_[0]\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[21]_i_3_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[22]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2E2F3C0"
    )
        port map (
      I0 => \spi_addr_wrap_1_reg[23]_i_4_n_5\,
      I1 => \size_length_cntr_fixed_reg_n_0_[1]\,
      I2 => \spi_addr_wrap_1_reg[23]_i_3_n_6\,
      I3 => data4(22),
      I4 => \size_length_cntr_fixed_reg_n_0_[0]\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[22]_i_3_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => size_length_cntr(0),
      I1 => size_length_cntr(1),
      I2 => \^cmd_addr_sent\,
      I3 => SPIXfer_done_int,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_3_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F3E2C0E2"
    )
        port map (
      I0 => data4(23),
      I1 => \size_length_cntr_fixed_reg_n_0_[1]\,
      I2 => \spi_addr_wrap_1_reg[23]_i_3_n_5\,
      I3 => \size_length_cntr_fixed_reg_n_0_[0]\,
      I4 => \spi_addr_wrap_1_reg[23]_i_4_n_4\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_8_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => p_8_in,
      I1 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[0]\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_8_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[0]\,
      I1 => p_8_in,
      I2 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[2]\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_9_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[2]\,
      I1 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[3]\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_13_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \size_length_cntr_fixed_reg_n_0_[0]\,
      I1 => \size_length_cntr_fixed_reg_n_0_[1]\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_9_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => data2(4),
      I1 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[3]\,
      I2 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[2]\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_12_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABFB"
    )
        port map (
      I0 => \size_length_cntr_fixed_reg_n_0_[1]\,
      I1 => data4(5),
      I2 => \size_length_cntr_fixed_reg_n_0_[0]\,
      I3 => \spi_addr_wrap_1_reg[7]_i_2_n_6\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_6_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E02"
    )
        port map (
      I0 => data4(6),
      I1 => \size_length_cntr_fixed_reg_n_0_[0]\,
      I2 => \size_length_cntr_fixed_reg_n_0_[1]\,
      I3 => \spi_addr_wrap_1_reg[7]_i_2_n_5\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[6]_i_3_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E02"
    )
        port map (
      I0 => data4(7),
      I1 => \size_length_cntr_fixed_reg_n_0_[0]\,
      I2 => \size_length_cntr_fixed_reg_n_0_[1]\,
      I3 => \spi_addr_wrap_1_reg[7]_i_2_n_4\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[7]_i_3_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E02"
    )
        port map (
      I0 => data4(8),
      I1 => \size_length_cntr_fixed_reg_n_0_[0]\,
      I2 => \size_length_cntr_fixed_reg_n_0_[1]\,
      I3 => \spi_addr_wrap_1_reg[11]_i_2_n_7\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[8]_i_3_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[9]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E02"
    )
        port map (
      I0 => data4(9),
      I1 => \size_length_cntr_fixed_reg_n_0_[0]\,
      I2 => \size_length_cntr_fixed_reg_n_0_[1]\,
      I3 => \spi_addr_wrap_1_reg[11]_i_2_n_6\,
      O => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[9]_i_3_n_0\
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => XIP_CLK_DOMAIN_SIGNALS_n_53,
      Q => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[0]\,
      R => Rst_to_spi
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => XIP_CLK_DOMAIN_SIGNALS_n_82,
      D => XIP_CLK_DOMAIN_SIGNALS_n_90,
      Q => data2(10),
      R => Rst_to_spi
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => XIP_CLK_DOMAIN_SIGNALS_n_82,
      D => XIP_CLK_DOMAIN_SIGNALS_n_91,
      Q => data2(11),
      R => Rst_to_spi
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => XIP_CLK_DOMAIN_SIGNALS_n_82,
      D => XIP_CLK_DOMAIN_SIGNALS_n_92,
      Q => data2(12),
      R => Rst_to_spi
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => XIP_CLK_DOMAIN_SIGNALS_n_82,
      D => XIP_CLK_DOMAIN_SIGNALS_n_93,
      Q => data2(13),
      R => Rst_to_spi
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => XIP_CLK_DOMAIN_SIGNALS_n_82,
      D => XIP_CLK_DOMAIN_SIGNALS_n_94,
      Q => data2(14),
      R => Rst_to_spi
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => XIP_CLK_DOMAIN_SIGNALS_n_82,
      D => XIP_CLK_DOMAIN_SIGNALS_n_95,
      Q => data2(15),
      R => Rst_to_spi
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => XIP_CLK_DOMAIN_SIGNALS_n_82,
      D => XIP_CLK_DOMAIN_SIGNALS_n_96,
      Q => data2(16),
      R => Rst_to_spi
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => XIP_CLK_DOMAIN_SIGNALS_n_82,
      D => XIP_CLK_DOMAIN_SIGNALS_n_97,
      Q => data2(17),
      R => Rst_to_spi
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => XIP_CLK_DOMAIN_SIGNALS_n_82,
      D => XIP_CLK_DOMAIN_SIGNALS_n_98,
      Q => data2(18),
      R => Rst_to_spi
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => XIP_CLK_DOMAIN_SIGNALS_n_82,
      D => XIP_CLK_DOMAIN_SIGNALS_n_99,
      Q => data2(19),
      R => Rst_to_spi
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => XIP_CLK_DOMAIN_SIGNALS_n_52,
      Q => p_8_in,
      R => Rst_to_spi
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => XIP_CLK_DOMAIN_SIGNALS_n_82,
      D => XIP_CLK_DOMAIN_SIGNALS_n_100,
      Q => data2(20),
      R => Rst_to_spi
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => XIP_CLK_DOMAIN_SIGNALS_n_82,
      D => XIP_CLK_DOMAIN_SIGNALS_n_101,
      Q => data2(21),
      R => Rst_to_spi
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => XIP_CLK_DOMAIN_SIGNALS_n_82,
      D => XIP_CLK_DOMAIN_SIGNALS_n_102,
      Q => data2(22),
      R => Rst_to_spi
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => XIP_CLK_DOMAIN_SIGNALS_n_82,
      D => XIP_CLK_DOMAIN_SIGNALS_n_103,
      Q => data2(23),
      R => Rst_to_spi
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => XIP_CLK_DOMAIN_SIGNALS_n_51,
      Q => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[2]\,
      R => Rst_to_spi
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => XIP_CLK_DOMAIN_SIGNALS_n_50,
      Q => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[3]\,
      R => Rst_to_spi
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => XIP_CLK_DOMAIN_SIGNALS_n_49,
      Q => data2(4),
      R => Rst_to_spi
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => XIP_CLK_DOMAIN_SIGNALS_n_48,
      Q => data2(5),
      R => Rst_to_spi
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => XIP_CLK_DOMAIN_SIGNALS_n_82,
      D => XIP_CLK_DOMAIN_SIGNALS_n_86,
      Q => data2(6),
      R => Rst_to_spi
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => XIP_CLK_DOMAIN_SIGNALS_n_82,
      D => XIP_CLK_DOMAIN_SIGNALS_n_87,
      Q => data2(7),
      R => Rst_to_spi
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => XIP_CLK_DOMAIN_SIGNALS_n_82,
      D => XIP_CLK_DOMAIN_SIGNALS_n_88,
      Q => data2(8),
      R => Rst_to_spi
    );
\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => XIP_CLK_DOMAIN_SIGNALS_n_82,
      D => XIP_CLK_DOMAIN_SIGNALS_n_89,
      Q => data2(9),
      R => Rst_to_spi
    );
\SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000004040404"
    )
        port map (
      I0 => \LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[7]\,
      I1 => \LEN_CNTR_24_BIT_GEN.length_cntr[7]_i_4_n_0\,
      I2 => \LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[6]\,
      I3 => wb_cntrl_ns(0),
      I4 => p_33_in,
      I5 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_3_n_0\,
      O => \^len_cntr_24_bit_gen.length_cntr_reg[7]_0\
    );
\SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_reg\: unisim.vcomponents.FDSE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_reg_1\,
      Q => \^sr_5_tx_empty_24_bit_addr_gen.sr_5_tx_empty_reg_0\,
      S => Rst_to_spi
    );
\STORE_NEW_TR_24_BIT_ADDR_GEN.new_tr_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \STORE_NEW_TR_24_BIT_ADDR_GEN.new_tr_reg_0\,
      Q => \^new_tr\,
      R => Rst_to_spi
    );
S_AXI4_ARREADY_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => load_axi_data_frm_axi_clk,
      Q => \^s_axi4_arready_i_reg_0\,
      R => bus2ip_reset_ipif4_inverted
    );
\TRANSFER_START_24_BIT_ADDR_GEN.transfer_start_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => XIP_CLK_DOMAIN_SIGNALS_n_76,
      Q => \^transfer_start\,
      R => '0'
    );
XIP_CLK_DOMAIN_SIGNALS: entity work.icyradio_axi_quad_spi_0_0_xip_cross_clk_sync
     port map (
      D(0) => D(1),
      E(0) => XIP_CLK_DOMAIN_SIGNALS_n_35,
      \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[0]\ => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[0]_i_3_n_0\,
      \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]\(3) => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[5]\,
      \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]\(2) => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[4]\,
      \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]\(1) => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[2]\,
      \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]\(0) => \^fsm_onehot_ratio_of_2_generate.xip_quad_mode_wb_mem_gen.qspi_cntrl_ps_reg[0]_0\(0),
      \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_0\ => \^sr_5_tx_empty_24_bit_addr_gen.sr_5_tx_empty_reg_0\,
      \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1\ => \^wrap_around_d2\,
      \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2\ => \^wrap_around_d3\,
      \LEN_CNTR_24_BIT_GEN.length_cntr_reg[0]\(1 downto 0) => \^q\(1 downto 0),
      \LEN_CNTR_24_BIT_GEN.length_cntr_reg[3]\ => \LEN_CNTR_24_BIT_GEN.length_cntr[3]_i_2_n_0\,
      \LEN_CNTR_24_BIT_GEN.length_cntr_reg[4]\ => \LEN_CNTR_24_BIT_GEN.length_cntr[4]_i_2_n_0\,
      \LEN_CNTR_24_BIT_GEN.length_cntr_reg[5]\ => \LEN_CNTR_24_BIT_GEN.length_cntr[5]_i_2_n_0\,
      \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]\(7 downto 2) => length_cntr(7 downto 2),
      \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]\(1) => XIP_CLK_DOMAIN_SIGNALS_n_42,
      \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]\(0) => XIP_CLK_DOMAIN_SIGNALS_n_43,
      \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_0\(7) => \LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[7]\,
      \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_0\(6) => \LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[6]\,
      \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_0\(5) => \LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[5]\,
      \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_0\(4) => \LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[4]\,
      \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_0\(3) => \LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[3]\,
      \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_0\(2) => \LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[2]\,
      \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_0\(1) => \LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[1]\,
      \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_0\(0) => \LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[0]\,
      \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_1\ => \LEN_CNTR_24_BIT_GEN.length_cntr[7]_i_4_n_0\,
      \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_2\ => \LEN_CNTR_24_BIT_GEN.length_cntr[7]_i_5_n_0\,
      \LOGIC_GENERATION_FDR.AXI_LEN_SYNC_AXI_SPI_GEN[3].AXI_LEN_SYNC_AXI2SPI_0\(3 downto 0) => axi_length(3 downto 0),
      \LOGIC_GENERATION_FDR.CPOL_SYNC_AXI2SPI_1_0\ => XIP_CLK_DOMAIN_SIGNALS_n_74,
      \LOGIC_GENERATION_FDR.CPOL_SYNC_AXI2SPI_1_1\(0) => XIP_CLK_DOMAIN_SIGNALS_n_83,
      \LOGIC_GENERATION_FDR.CPOL_SYNC_AXI2SPI_1_2\ => XIP_CLK_DOMAIN_SIGNALS_n_85,
      \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[7].DTR_LEN_SYNC_AXI2SPI_0\(7 downto 0) => dtr_length(7 downto 0),
      \LOGIC_GENERATION_FDR.HW_XFER_SYNC_AXI2SPI_1_0\ => XIP_CLK_DOMAIN_SIGNALS_n_47,
      \LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_1_0\ => load_axi_data_cdc_to_spi_d2,
      \LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_2_0\ => load_axi_data_cdc_to_spi_d3,
      \LOGIC_GENERATION_FDR.LD_CMD_SYNC_AXI2SPI_1_0\ => load_cmd_cdc_from_axi_d2,
      \LOGIC_GENERATION_FDR.LD_CMD_SYNC_AXI2SPI_2_0\ => load_cmd_cdc_from_axi_d3,
      \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[0].TRANS_ADDR_SYNC_AXI2SPI_CDC_0\ => XIP_CLK_DOMAIN_SIGNALS_n_61,
      \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[1].TRANS_ADDR_SYNC_AXI2SPI_CDC_0\ => XIP_CLK_DOMAIN_SIGNALS_n_52,
      \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[1].TRANS_ADDR_SYNC_AXI2SPI_CDC_1\ => XIP_CLK_DOMAIN_SIGNALS_n_60,
      \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[2].TRANS_ADDR_SYNC_AXI2SPI_CDC_0\ => XIP_CLK_DOMAIN_SIGNALS_n_51,
      \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[3].TRANS_ADDR_SYNC_AXI2SPI_CDC_0\ => XIP_CLK_DOMAIN_SIGNALS_n_50,
      \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[4].TRANS_ADDR_SYNC_AXI2SPI_CDC_0\ => XIP_CLK_DOMAIN_SIGNALS_n_49,
      \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[5].TRANS_ADDR_SYNC_AXI2SPI_CDC_0\ => XIP_CLK_DOMAIN_SIGNALS_n_48,
      \LOGIC_GENERATION_FDR.TYP_OF_XFER_SYNC_AXI2SPI_1_0\ => XIP_CLK_DOMAIN_SIGNALS_n_53,
      \LOGIC_GENERATION_FDR.WORD_XFER_SYNC_AXI2SPI_1_0\ => XIP_CLK_DOMAIN_SIGNALS_n_44,
      O(3) => \spi_addr_wrap_1_reg[3]_i_2_n_4\,
      O(2) => \spi_addr_wrap_1_reg[3]_i_2_n_5\,
      O(1) => \spi_addr_wrap_1_reg[3]_i_2_n_6\,
      O(0) => \spi_addr_wrap_1_reg[3]_i_2_n_7\,
      Q(23 downto 0) => Transmit_addr_int(23 downto 0),
      \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15]\(7 downto 0) => receive_Data_int(7 downto 0),
      \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]\ => \^cmd_addr_sent\,
      \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]_0\ => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[23]_i_4_n_0\,
      \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(31 downto 16) => p_5_in(15 downto 0),
      \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(15) => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[15]\,
      \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(14) => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[14]\,
      \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(13) => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[13]\,
      \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(12) => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[12]\,
      \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(11) => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[11]\,
      \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(10) => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[10]\,
      \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(9) => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[9]\,
      \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(8) => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[8]\,
      \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(7) => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[7]\,
      \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(6) => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[6]\,
      \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(5) => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[5]\,
      \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(4) => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[4]\,
      \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(3) => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[3]\,
      \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(2) => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[2]\,
      \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(1) => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[1]\,
      \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31]\(0) => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[0]\,
      \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[7]\ => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[7]_i_3_n_0\,
      \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[0]\ => XIP_CLK_DOMAIN_SIGNALS_n_55,
      \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[1]\ => XIP_CLK_DOMAIN_SIGNALS_n_56,
      \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[1]_0\ => \^spixfer_done_int_pulse_d2\,
      \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[2]\ => XIP_CLK_DOMAIN_SIGNALS_n_54,
      \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[2]_0\ => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg_n_0_[2]\,
      \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[2]_1\ => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg_n_0_[1]\,
      \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[2]_2\ => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg_n_0_[0]\,
      \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.hw_wd_cntr_reg[0]\ => XIP_CLK_DOMAIN_SIGNALS_n_58,
      \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.hw_wd_cntr_reg[1]\ => XIP_CLK_DOMAIN_SIGNALS_n_57,
      \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7]\(31) => XIP_CLK_DOMAIN_SIGNALS_n_110,
      \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7]\(30) => XIP_CLK_DOMAIN_SIGNALS_n_111,
      \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7]\(29) => XIP_CLK_DOMAIN_SIGNALS_n_112,
      \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7]\(28) => XIP_CLK_DOMAIN_SIGNALS_n_113,
      \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7]\(27) => XIP_CLK_DOMAIN_SIGNALS_n_114,
      \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7]\(26) => XIP_CLK_DOMAIN_SIGNALS_n_115,
      \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7]\(25) => XIP_CLK_DOMAIN_SIGNALS_n_116,
      \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7]\(24) => XIP_CLK_DOMAIN_SIGNALS_n_117,
      \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7]\(23) => XIP_CLK_DOMAIN_SIGNALS_n_118,
      \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7]\(22) => XIP_CLK_DOMAIN_SIGNALS_n_119,
      \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7]\(21) => XIP_CLK_DOMAIN_SIGNALS_n_120,
      \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7]\(20) => XIP_CLK_DOMAIN_SIGNALS_n_121,
      \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7]\(19) => XIP_CLK_DOMAIN_SIGNALS_n_122,
      \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7]\(18) => XIP_CLK_DOMAIN_SIGNALS_n_123,
      \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7]\(17) => XIP_CLK_DOMAIN_SIGNALS_n_124,
      \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7]\(16) => XIP_CLK_DOMAIN_SIGNALS_n_125,
      \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7]\(15) => XIP_CLK_DOMAIN_SIGNALS_n_126,
      \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7]\(14) => XIP_CLK_DOMAIN_SIGNALS_n_127,
      \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7]\(13) => XIP_CLK_DOMAIN_SIGNALS_n_128,
      \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7]\(12) => XIP_CLK_DOMAIN_SIGNALS_n_129,
      \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7]\(11) => XIP_CLK_DOMAIN_SIGNALS_n_130,
      \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7]\(10) => XIP_CLK_DOMAIN_SIGNALS_n_131,
      \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7]\(9) => XIP_CLK_DOMAIN_SIGNALS_n_132,
      \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7]\(8) => XIP_CLK_DOMAIN_SIGNALS_n_133,
      \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7]\(7) => XIP_CLK_DOMAIN_SIGNALS_n_134,
      \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7]\(6) => XIP_CLK_DOMAIN_SIGNALS_n_135,
      \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7]\(5) => XIP_CLK_DOMAIN_SIGNALS_n_136,
      \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7]\(4) => XIP_CLK_DOMAIN_SIGNALS_n_137,
      \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7]\(3) => XIP_CLK_DOMAIN_SIGNALS_n_138,
      \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7]\(2) => XIP_CLK_DOMAIN_SIGNALS_n_139,
      \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7]\(1) => XIP_CLK_DOMAIN_SIGNALS_n_140,
      \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7]\(0) => XIP_CLK_DOMAIN_SIGNALS_n_141,
      \RATIO_OF_2_GENERATE.Count_reg[0]\(0) => \RATIO_OF_2_GENERATE.Count_reg__0\(4),
      \RATIO_OF_2_GENERATE.SCK_O_NQ_4_STARTUP_USED.SCK_O_reg_reg\ => \^transfer_start\,
      \RATIO_OF_2_GENERATE.sck_o_int_reg\ => \LEN_CNTR_24_BIT_GEN.length_cntr[7]_i_3_n_0\,
      \RATIO_OF_2_GENERATE.sck_o_int_reg_0\ => \^new_tr\,
      RESET_SYNC_AX2S_2(0) => wb_cntrl_ns(1),
      RESET_SYNC_AX2S_2_0 => XIP_CLK_DOMAIN_SIGNALS_n_76,
      Rst_to_spi => Rst_to_spi,
      Rx_FIFO_Full => Rx_FIFO_Full,
      \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[10]\ => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[2]\,
      \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[11]\ => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[3]\,
      \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[12]\ => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[4]\,
      \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[13]\ => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[5]\,
      \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[14]\ => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[6]\,
      \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[15]\ => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[7]\,
      \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[16]\ => XIP_CLK_DOMAIN_SIGNALS_n_26,
      \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[16]_0\ => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[8]\,
      \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[17]\ => XIP_CLK_DOMAIN_SIGNALS_n_27,
      \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[17]_0\ => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[9]\,
      \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[18]\ => XIP_CLK_DOMAIN_SIGNALS_n_6,
      \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[18]_0\ => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[10]\,
      \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[19]\ => XIP_CLK_DOMAIN_SIGNALS_n_7,
      \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[19]_0\ => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[11]\,
      \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[20]\ => XIP_CLK_DOMAIN_SIGNALS_n_8,
      \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[20]_0\ => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[12]\,
      \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[21]\ => XIP_CLK_DOMAIN_SIGNALS_n_28,
      \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[21]_0\ => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[13]\,
      \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[22]\ => XIP_CLK_DOMAIN_SIGNALS_n_9,
      \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[22]_0\ => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[14]\,
      \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[23]\ => XIP_CLK_DOMAIN_SIGNALS_n_29,
      \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[23]_0\ => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[15]\,
      \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[24]\ => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[16]\,
      \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[25]\ => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[17]\,
      \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[26]\ => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[18]\,
      \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[27]\ => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[19]\,
      \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[28]\ => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[20]\,
      \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[29]\ => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[21]\,
      \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[30]\ => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[22]\,
      \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[31]\ => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[23]\,
      \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[8]\ => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[0]\,
      \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[9]\ => \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[1]\,
      SPIXfer_done_int => SPIXfer_done_int,
      SPIXfer_done_int_pulse_d2_reg(3) => XIP_CLK_DOMAIN_SIGNALS_n_104,
      SPIXfer_done_int_pulse_d2_reg(2) => XIP_CLK_DOMAIN_SIGNALS_n_105,
      SPIXfer_done_int_pulse_d2_reg(1) => XIP_CLK_DOMAIN_SIGNALS_n_106,
      SPIXfer_done_int_pulse_d2_reg(0) => XIP_CLK_DOMAIN_SIGNALS_n_107,
      \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[0]\ => \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[0]_i_3_n_0\,
      \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[0]_0\ => \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg_n_0_[0]\,
      \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_2_0\ => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_9_n_0\,
      \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_2_1\ => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_8_n_0\,
      \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_3_0\ => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_9_n_0\,
      \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_0\(3) => \spi_addr_wrap_1_reg[4]_i_2_n_4\,
      \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_0\(2) => \spi_addr_wrap_1_reg[4]_i_2_n_5\,
      \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_0\(1) => \spi_addr_wrap_1_reg[4]_i_2_n_6\,
      \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_0\(0) => \spi_addr_wrap_1_reg[4]_i_2_n_7\,
      \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_1\(3 downto 0) => data4(4 downto 1),
      \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_2\(0) => \spi_addr_wrap_1_reg[7]_i_2_n_7\,
      \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_3\ => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_13_n_0\,
      \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_3_0\ => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_12_n_0\,
      \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0]\ => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[0]\,
      \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0]_0\ => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_3_n_0\,
      \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0]_1\ => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[0]_i_3_n_0\,
      \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[10]\ => XIP_CLK_DOMAIN_SIGNALS_n_12,
      \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[10]_0\ => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[10]_i_3_n_0\,
      \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[11]\ => XIP_CLK_DOMAIN_SIGNALS_n_13,
      \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[11]_0\ => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[11]_i_3_n_0\,
      \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[12]\ => XIP_CLK_DOMAIN_SIGNALS_n_14,
      \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[12]_0\(3) => \spi_addr_wrap_1_reg[12]_i_3_n_4\,
      \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[12]_0\(2) => \spi_addr_wrap_1_reg[12]_i_3_n_5\,
      \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[12]_0\(1) => \spi_addr_wrap_1_reg[12]_i_3_n_6\,
      \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[12]_0\(0) => \spi_addr_wrap_1_reg[12]_i_3_n_7\,
      \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[12]_1\ => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[12]_i_3_n_0\,
      \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[13]\ => XIP_CLK_DOMAIN_SIGNALS_n_15,
      \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[13]_0\ => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[13]_i_3_n_0\,
      \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[14]\ => XIP_CLK_DOMAIN_SIGNALS_n_16,
      \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[14]_0\ => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[14]_i_3_n_0\,
      \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[15]\ => XIP_CLK_DOMAIN_SIGNALS_n_17,
      \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[15]_0\ => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[15]_i_3_n_0\,
      \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[16]\ => XIP_CLK_DOMAIN_SIGNALS_n_18,
      \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[16]_0\ => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[16]_i_3_n_0\,
      \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[17]\ => XIP_CLK_DOMAIN_SIGNALS_n_19,
      \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[17]_0\ => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[17]_i_3_n_0\,
      \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[18]\ => XIP_CLK_DOMAIN_SIGNALS_n_20,
      \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[18]_0\ => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[18]_i_3_n_0\,
      \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[19]\ => XIP_CLK_DOMAIN_SIGNALS_n_21,
      \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[19]_0\ => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[19]_i_3_n_0\,
      \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20]\ => XIP_CLK_DOMAIN_SIGNALS_n_22,
      \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20]_0\ => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[20]_i_3_n_0\,
      \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[21]\ => XIP_CLK_DOMAIN_SIGNALS_n_23,
      \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[21]_0\ => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[21]_i_3_n_0\,
      \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[22]\ => XIP_CLK_DOMAIN_SIGNALS_n_24,
      \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[22]_0\ => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[22]_i_3_n_0\,
      \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]\ => XIP_CLK_DOMAIN_SIGNALS_n_25,
      \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0\(23 downto 0) => spi_addr_wrap_1(23 downto 0),
      \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_1\ => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_8_n_0\,
      \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2]\ => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[2]\,
      \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3]\ => XIP_CLK_DOMAIN_SIGNALS_n_81,
      \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3]_0\ => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[3]\,
      \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[4]\ => XIP_CLK_DOMAIN_SIGNALS_n_80,
      \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[4]_0\ => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[4]_i_3_n_0\,
      \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5]\ => XIP_CLK_DOMAIN_SIGNALS_n_79,
      \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5]_0\ => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_6_n_0\,
      \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[6]\ => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[6]_i_3_n_0\,
      \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[7]\ => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[7]_i_3_n_0\,
      \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8]\ => XIP_CLK_DOMAIN_SIGNALS_n_10,
      \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8]_0\(3) => \spi_addr_wrap_1_reg[8]_i_3_n_4\,
      \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8]_0\(2) => \spi_addr_wrap_1_reg[8]_i_3_n_5\,
      \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8]_0\(1) => \spi_addr_wrap_1_reg[8]_i_3_n_6\,
      \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8]_0\(0) => \spi_addr_wrap_1_reg[8]_i_3_n_7\,
      \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8]_1\ => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[8]_i_3_n_0\,
      \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9]\ => XIP_CLK_DOMAIN_SIGNALS_n_11,
      \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9]_0\ => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[9]_i_3_n_0\,
      \SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_reg\ => XIP_CLK_DOMAIN_SIGNALS_n_84,
      \SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_reg_0\(1) => XIP_CLK_DOMAIN_SIGNALS_n_108,
      \SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_reg_0\(0) => XIP_CLK_DOMAIN_SIGNALS_n_109,
      SS_frm_axi => SS_frm_axi,
      \TRANSFER_START_24_BIT_ADDR_GEN.transfer_start_reg\ => \^len_cntr_24_bit_gen.length_cntr_reg[7]_0\,
      Tx_Data_d1 => Tx_Data_d1,
      XIPCR_0_CPHA_int => XIPCR_0_CPHA_int,
      XIPCR_1_CPOL_int => XIPCR_1_CPOL_int,
      XIPSR_CPHA_CPOL_ERR_d2 => XIPSR_CPHA_CPOL_ERR_d2,
      bus2ip_reset_ipif4_inverted => bus2ip_reset_ipif4_inverted,
      bus2ip_reset_ipif_inverted => bus2ip_reset_ipif_inverted,
      cmd_addr_cntr1 => cmd_addr_cntr1,
      data2(19 downto 0) => data2(23 downto 4),
      \dtr_length_reg[3]\ => \dtr_length[3]_i_2_n_0\,
      \dtr_length_reg[5]\(7) => XIP_CLK_DOMAIN_SIGNALS_n_65,
      \dtr_length_reg[5]\(6) => XIP_CLK_DOMAIN_SIGNALS_n_66,
      \dtr_length_reg[5]\(5) => XIP_CLK_DOMAIN_SIGNALS_n_67,
      \dtr_length_reg[5]\(4) => XIP_CLK_DOMAIN_SIGNALS_n_68,
      \dtr_length_reg[5]\(3) => XIP_CLK_DOMAIN_SIGNALS_n_69,
      \dtr_length_reg[5]\(2) => XIP_CLK_DOMAIN_SIGNALS_n_70,
      \dtr_length_reg[5]\(1) => XIP_CLK_DOMAIN_SIGNALS_n_71,
      \dtr_length_reg[5]\(0) => XIP_CLK_DOMAIN_SIGNALS_n_72,
      \dtr_length_reg[5]_0\ => \dtr_length[5]_i_2_n_0\,
      \dtr_length_reg[7]\ => s_axi4_rlast_INST_0_i_3_n_0,
      empty => \^empty\,
      ext_spi_clk => ext_spi_clk,
      four_byte_xfer => four_byte_xfer,
      \gen_fwft.empty_fwft_i_reg\(0) => XIP_CLK_DOMAIN_SIGNALS_n_63,
      hpm_under_process_d1 => hpm_under_process_d1,
      hw_wd_cntr(1 downto 0) => hw_wd_cntr(1 downto 0),
      hw_wd_cntr0 => hw_wd_cntr0,
      last_data_acked => last_data_acked,
      load_axi_data_frm_axi_clk => load_axi_data_frm_axi_clk,
      load_axi_data_to_spi_clk => load_axi_data_to_spi_clk,
      one_byte_xfer => one_byte_xfer,
      p_3_in1_in => p_3_in1_in,
      p_8_in => p_8_in,
      s_axi4_aclk => s_axi4_aclk,
      s_axi4_arburst(1 downto 0) => s_axi4_arburst(1 downto 0),
      s_axi4_arlen(7 downto 0) => s_axi4_arlen(7 downto 0),
      s_axi4_arvalid => s_axi4_arvalid,
      s_axi4_rready => s_axi4_rready,
      s_axi4_rready_0 => XIP_CLK_DOMAIN_SIGNALS_n_73,
      s_axi_aclk => s_axi_aclk,
      sck_o_int => \^sck_o_int\,
      size_length_cntr(1 downto 0) => size_length_cntr(1 downto 0),
      \size_length_cntr_fixed_reg[0]\ => \size_length_cntr_fixed_reg_n_0_[0]\,
      \size_length_cntr_fixed_reg[1]\ => XIP_CLK_DOMAIN_SIGNALS_n_46,
      \size_length_cntr_fixed_reg[1]_0\ => XIP_CLK_DOMAIN_SIGNALS_n_82,
      \size_length_cntr_fixed_reg[1]_1\ => \size_length_cntr_fixed_reg_n_0_[1]\,
      \size_length_cntr_reg[0]\ => \size_length_cntr[1]_i_3_n_0\,
      \size_length_cntr_reg[1]\ => XIP_CLK_DOMAIN_SIGNALS_n_45,
      \spi_addr_wrap_1_reg[13]\ => XIP_CLK_DOMAIN_SIGNALS_n_93,
      \spi_addr_wrap_1_reg[14]\ => XIP_CLK_DOMAIN_SIGNALS_n_94,
      \spi_addr_wrap_1_reg[15]\ => XIP_CLK_DOMAIN_SIGNALS_n_95,
      \spi_addr_wrap_1_reg[16]\ => XIP_CLK_DOMAIN_SIGNALS_n_96,
      \spi_addr_wrap_1_reg[17]\ => XIP_CLK_DOMAIN_SIGNALS_n_97,
      \spi_addr_wrap_1_reg[18]\ => XIP_CLK_DOMAIN_SIGNALS_n_98,
      \spi_addr_wrap_1_reg[19]\ => XIP_CLK_DOMAIN_SIGNALS_n_99,
      \spi_addr_wrap_1_reg[20]\ => XIP_CLK_DOMAIN_SIGNALS_n_100,
      \spi_addr_wrap_1_reg[21]\ => XIP_CLK_DOMAIN_SIGNALS_n_101,
      \spi_addr_wrap_1_reg[22]\ => XIP_CLK_DOMAIN_SIGNALS_n_102,
      \spi_addr_wrap_1_reg[23]\ => XIP_CLK_DOMAIN_SIGNALS_n_103,
      start_after_wrap_d1 => start_after_wrap_d1,
      transfer_start_d2 => transfer_start_d2,
      two_byte_xfer => two_byte_xfer,
      type_of_burst => type_of_burst,
      wrap_around_d1 => wrap_around_d1,
      wrap_around_d2_reg => XIP_CLK_DOMAIN_SIGNALS_n_86,
      wrap_around_d2_reg_0 => XIP_CLK_DOMAIN_SIGNALS_n_87,
      wrap_around_d2_reg_1 => XIP_CLK_DOMAIN_SIGNALS_n_88,
      wrap_around_d2_reg_2 => XIP_CLK_DOMAIN_SIGNALS_n_89,
      wrap_around_d2_reg_3 => XIP_CLK_DOMAIN_SIGNALS_n_90,
      wrap_around_d2_reg_4 => XIP_CLK_DOMAIN_SIGNALS_n_91,
      wrap_around_d2_reg_5 => XIP_CLK_DOMAIN_SIGNALS_n_92,
      wrap_around_reg => XIP_CLK_DOMAIN_SIGNALS_n_30,
      wrap_around_reg_0 => XIP_CLK_DOMAIN_SIGNALS_n_31,
      wrap_around_reg_1 => XIP_CLK_DOMAIN_SIGNALS_n_32,
      wrap_around_reg_10 => wrap_around_i_11_n_0,
      wrap_around_reg_2 => XIP_CLK_DOMAIN_SIGNALS_n_33,
      wrap_around_reg_3 => XIP_CLK_DOMAIN_SIGNALS_n_34,
      wrap_around_reg_4 => XIP_CLK_DOMAIN_SIGNALS_n_75,
      wrap_around_reg_5 => wrap_around_reg_n_0,
      wrap_around_reg_6 => wrap_around_i_2_n_0,
      wrap_around_reg_7 => wrap_around_i_7_n_0,
      wrap_around_reg_8 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_7_n_0\,
      wrap_around_reg_9 => wrap_around_i_9_n_0,
      xip_sm_ns => xip_sm_ns,
      xip_sm_ps => xip_sm_ps
    );
\XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8080BF80"
    )
        port map (
      I0 => s_axi4_arlen(0),
      I1 => s_axi4_arvalid,
      I2 => \^s_axi4_arready_i_reg_0\,
      I3 => s_axi_rvalid_ii0,
      I4 => S_AXI4_ARLEN_ii(0),
      O => p_2_in(0)
    );
\XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8080808080BF80"
    )
        port map (
      I0 => s_axi4_arlen(1),
      I1 => s_axi4_arvalid,
      I2 => \^s_axi4_arready_i_reg_0\,
      I3 => s_axi_rvalid_ii0,
      I4 => S_AXI4_ARLEN_ii(0),
      I5 => S_AXI4_ARLEN_ii(1),
      O => p_2_in(1)
    );
\XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B888888888B8"
    )
        port map (
      I0 => s_axi4_arlen(2),
      I1 => \XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[7]_i_6_n_0\,
      I2 => s_axi_rvalid_ii0,
      I3 => S_AXI4_ARLEN_ii(1),
      I4 => S_AXI4_ARLEN_ii(0),
      I5 => S_AXI4_ARLEN_ii(2),
      O => p_2_in(2)
    );
\XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B8B888B88888"
    )
        port map (
      I0 => s_axi4_arlen(3),
      I1 => \XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[7]_i_6_n_0\,
      I2 => s_axi_rvalid_ii0,
      I3 => S_AXI4_ARLEN_ii(2),
      I4 => \XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[3]_i_2_n_0\,
      I5 => S_AXI4_ARLEN_ii(3),
      O => p_2_in(3)
    );
\XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_AXI4_ARLEN_ii(1),
      I1 => S_AXI4_ARLEN_ii(0),
      O => \XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[3]_i_2_n_0\
    );
\XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080BF80BF808080"
    )
        port map (
      I0 => s_axi4_arlen(4),
      I1 => s_axi4_arvalid,
      I2 => \^s_axi4_arready_i_reg_0\,
      I3 => s_axi_rvalid_ii0,
      I4 => \XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[4]_i_2_n_0\,
      I5 => S_AXI4_ARLEN_ii(4),
      O => p_2_in(4)
    );
\XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => S_AXI4_ARLEN_ii(0),
      I1 => S_AXI4_ARLEN_ii(1),
      I2 => S_AXI4_ARLEN_ii(3),
      I3 => S_AXI4_ARLEN_ii(2),
      O => \XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[4]_i_2_n_0\
    );
\XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080BF80BF808080"
    )
        port map (
      I0 => s_axi4_arlen(5),
      I1 => s_axi4_arvalid,
      I2 => \^s_axi4_arready_i_reg_0\,
      I3 => s_axi_rvalid_ii0,
      I4 => s_axi4_rlast_INST_0_i_1_n_0,
      I5 => S_AXI4_ARLEN_ii(5),
      O => p_2_in(5)
    );
\XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B888B88888B888"
    )
        port map (
      I0 => s_axi4_arlen(6),
      I1 => \XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[7]_i_6_n_0\,
      I2 => s_axi_rvalid_ii0,
      I3 => s_axi4_rlast_INST_0_i_1_n_0,
      I4 => S_AXI4_ARLEN_ii(5),
      I5 => S_AXI4_ARLEN_ii(6),
      O => p_2_in(6)
    );
\XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAEA"
    )
        port map (
      I0 => bus2ip_reset_ipif4_inverted,
      I1 => s_axi4_arvalid,
      I2 => \^s_axi4_arready_i_reg_0\,
      I3 => s_axi4_arlen(7),
      I4 => s_axi4_arlen(6),
      O => \XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[7]_i_1_n_0\
    );
\XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAACF000000"
    )
        port map (
      I0 => s_axi4_arlen(7),
      I1 => S_AXI4_ARLEN_ii(6),
      I2 => \XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[7]_i_5_n_0\,
      I3 => S_AXI4_ARLEN_ii(7),
      I4 => s_axi_rvalid_ii0,
      I5 => \XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[7]_i_6_n_0\,
      O => p_2_in(7)
    );
\XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFF000000000000"
    )
        port map (
      I0 => S_AXI4_ARLEN_ii(5),
      I1 => S_AXI4_ARLEN_ii(7),
      I2 => S_AXI4_ARLEN_ii(6),
      I3 => s_axi4_rlast_INST_0_i_1_n_0,
      I4 => \^s_axi4_rlast_iii\,
      I5 => s_axi4_rready,
      O => s_axi_rvalid_ii0
    );
\XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => S_AXI4_ARLEN_ii(4),
      I1 => S_AXI4_ARLEN_ii(0),
      I2 => S_AXI4_ARLEN_ii(1),
      I3 => S_AXI4_ARLEN_ii(3),
      I4 => S_AXI4_ARLEN_ii(2),
      I5 => S_AXI4_ARLEN_ii(5),
      O => \XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[7]_i_5_n_0\
    );
\XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi4_arvalid,
      I1 => \^s_axi4_arready_i_reg_0\,
      O => \XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[7]_i_6_n_0\
    );
\XIP_NORMAL_MODE.S_AXI4_ARLEN_ii_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => XIP_RECEIVE_FIFO_II_n_6,
      D => p_2_in(0),
      Q => S_AXI4_ARLEN_ii(0),
      R => \XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[7]_i_1_n_0\
    );
\XIP_NORMAL_MODE.S_AXI4_ARLEN_ii_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => XIP_RECEIVE_FIFO_II_n_6,
      D => p_2_in(1),
      Q => S_AXI4_ARLEN_ii(1),
      R => \XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[7]_i_1_n_0\
    );
\XIP_NORMAL_MODE.S_AXI4_ARLEN_ii_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => XIP_RECEIVE_FIFO_II_n_6,
      D => p_2_in(2),
      Q => S_AXI4_ARLEN_ii(2),
      R => \XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[7]_i_1_n_0\
    );
\XIP_NORMAL_MODE.S_AXI4_ARLEN_ii_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => XIP_RECEIVE_FIFO_II_n_6,
      D => p_2_in(3),
      Q => S_AXI4_ARLEN_ii(3),
      R => \XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[7]_i_1_n_0\
    );
\XIP_NORMAL_MODE.S_AXI4_ARLEN_ii_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => XIP_RECEIVE_FIFO_II_n_6,
      D => p_2_in(4),
      Q => S_AXI4_ARLEN_ii(4),
      R => \XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[7]_i_1_n_0\
    );
\XIP_NORMAL_MODE.S_AXI4_ARLEN_ii_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => XIP_RECEIVE_FIFO_II_n_6,
      D => p_2_in(5),
      Q => S_AXI4_ARLEN_ii(5),
      R => \XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[7]_i_1_n_0\
    );
\XIP_NORMAL_MODE.S_AXI4_ARLEN_ii_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => XIP_RECEIVE_FIFO_II_n_6,
      D => p_2_in(6),
      Q => S_AXI4_ARLEN_ii(6),
      R => \XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[7]_i_1_n_0\
    );
\XIP_NORMAL_MODE.S_AXI4_ARLEN_ii_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => XIP_RECEIVE_FIFO_II_n_6,
      D => p_2_in(7),
      Q => S_AXI4_ARLEN_ii(7),
      R => \XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[7]_i_1_n_0\
    );
\XIP_NORMAL_MODE.S_AXI4_RLAST_iii_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => s_axi4_rlast_INST_0_i_1_n_0,
      I1 => S_AXI4_ARLEN_ii(6),
      I2 => S_AXI4_ARLEN_ii(7),
      I3 => S_AXI4_ARLEN_ii(5),
      O => \XIP_NORMAL_MODE.S_AXI4_ARLEN_ii_reg[6]_0\
    );
\XIP_NORMAL_MODE.S_AXI4_RLAST_iii_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \XIP_NORMAL_MODE.S_AXI4_RLAST_iii_reg_0\,
      Q => \^s_axi4_rlast_iii\,
      R => bus2ip_reset_ipif4_inverted
    );
\XIP_NORMAL_MODE.S_AXI4_RRESP_i_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \XIP_NORMAL_MODE.S_AXI4_RRESP_i_reg_0\,
      Q => \^s_axi4_rresp\(0),
      R => bus2ip_reset_ipif4_inverted
    );
\XIP_NORMAL_MODE.s_axi_rvalid_ii_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => XIP_RECEIVE_FIFO_II_n_4,
      Q => s_axi_rvalid_ii,
      R => '0'
    );
XIP_RECEIVE_FIFO_II: entity work.icyradio_axi_quad_spi_0_0_async_fifo_fg
     port map (
      E(0) => XIP_RECEIVE_FIFO_II_n_6,
      Q(31 downto 16) => p_5_in(15 downto 0),
      Q(15) => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[15]\,
      Q(14) => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[14]\,
      Q(13) => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[13]\,
      Q(12) => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[12]\,
      Q(11) => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[11]\,
      Q(10) => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[10]\,
      Q(9) => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[9]\,
      Q(8) => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[8]\,
      Q(7) => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[7]\,
      Q(6) => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[6]\,
      Q(5) => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[5]\,
      Q(4) => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[4]\,
      Q(3) => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[3]\,
      Q(2) => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[2]\,
      Q(1) => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[1]\,
      Q(0) => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[0]\,
      Rst_to_spi => Rst_to_spi,
      \XIP_MODE_GEN.bus2ip_reset_ipif4_inverted_reg\ => XIP_RECEIVE_FIFO_II_n_3,
      \XIP_NORMAL_MODE.s_axi_rvalid_ii_reg\ => XIP_RECEIVE_FIFO_II_n_4,
      \XIP_NORMAL_MODE.s_axi_rvalid_ii_reg_0\ => \^s_axi4_arready_i_reg_0\,
      bus2ip_reset_ipif4_inverted => bus2ip_reset_ipif4_inverted,
      empty => \^empty\,
      ext_spi_clk => ext_spi_clk,
      full => full,
      last_data_acked => last_data_acked,
      last_data_acked_reg => last_data_acked_i_2_n_0,
      s_axi4_aclk => s_axi4_aclk,
      s_axi4_arvalid => s_axi4_arvalid,
      s_axi4_rdata(31 downto 0) => s_axi4_rdata(31 downto 0),
      s_axi4_rlast => \^s_axi4_rlast\,
      s_axi4_rready => s_axi4_rready,
      s_axi4_rready_0 => s_axi4_rready_0,
      s_axi4_rvalid => s_axi4_rvalid,
      s_axi_rvalid_ii => s_axi_rvalid_ii,
      s_axi_rvalid_ii0 => s_axi_rvalid_ii0,
      wr_en => store_date_in_drr_fifo_d3,
      wr_rst_busy => wr_rst_busy
    );
\axi_length[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_axi4_arlen(0),
      I1 => s_axi4_arlen(6),
      I2 => s_axi4_arlen(7),
      O => S_AXI4_ARLEN_i(0)
    );
\axi_length[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_axi4_arlen(1),
      I1 => s_axi4_arlen(6),
      I2 => s_axi4_arlen(7),
      O => S_AXI4_ARLEN_i(1)
    );
\axi_length[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_axi4_arlen(2),
      I1 => s_axi4_arlen(6),
      I2 => s_axi4_arlen(7),
      O => S_AXI4_ARLEN_i(2)
    );
\axi_length[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_axi4_arlen(3),
      I1 => s_axi4_arlen(6),
      I2 => s_axi4_arlen(7),
      O => S_AXI4_ARLEN_i(3)
    );
\axi_length_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => load_axi_data_frm_axi_clk,
      D => S_AXI4_ARLEN_i(0),
      Q => axi_length(0),
      R => bus2ip_reset_ipif4_inverted
    );
\axi_length_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => load_axi_data_frm_axi_clk,
      D => S_AXI4_ARLEN_i(1),
      Q => axi_length(1),
      R => bus2ip_reset_ipif4_inverted
    );
\axi_length_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => load_axi_data_frm_axi_clk,
      D => S_AXI4_ARLEN_i(2),
      Q => axi_length(2),
      R => bus2ip_reset_ipif4_inverted
    );
\axi_length_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => load_axi_data_frm_axi_clk,
      D => S_AXI4_ARLEN_i(3),
      Q => axi_length(3),
      R => bus2ip_reset_ipif4_inverted
    );
\dtr_length[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => dtr_length(1),
      I1 => dtr_length(0),
      O => \dtr_length[3]_i_2_n_0\
    );
\dtr_length[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi4_arlen(7),
      I1 => s_axi4_arlen(6),
      O => \dtr_length[5]_i_2_n_0\
    );
\dtr_length_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => XIP_CLK_DOMAIN_SIGNALS_n_63,
      D => XIP_CLK_DOMAIN_SIGNALS_n_72,
      Q => dtr_length(0),
      R => bus2ip_reset_ipif4_inverted
    );
\dtr_length_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => XIP_CLK_DOMAIN_SIGNALS_n_63,
      D => XIP_CLK_DOMAIN_SIGNALS_n_71,
      Q => dtr_length(1),
      R => bus2ip_reset_ipif4_inverted
    );
\dtr_length_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => XIP_CLK_DOMAIN_SIGNALS_n_63,
      D => XIP_CLK_DOMAIN_SIGNALS_n_70,
      Q => dtr_length(2),
      R => bus2ip_reset_ipif4_inverted
    );
\dtr_length_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => XIP_CLK_DOMAIN_SIGNALS_n_63,
      D => XIP_CLK_DOMAIN_SIGNALS_n_69,
      Q => dtr_length(3),
      R => bus2ip_reset_ipif4_inverted
    );
\dtr_length_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => XIP_CLK_DOMAIN_SIGNALS_n_63,
      D => XIP_CLK_DOMAIN_SIGNALS_n_68,
      Q => dtr_length(4),
      R => bus2ip_reset_ipif4_inverted
    );
\dtr_length_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => XIP_CLK_DOMAIN_SIGNALS_n_63,
      D => XIP_CLK_DOMAIN_SIGNALS_n_67,
      Q => dtr_length(5),
      R => bus2ip_reset_ipif4_inverted
    );
\dtr_length_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => XIP_CLK_DOMAIN_SIGNALS_n_63,
      D => XIP_CLK_DOMAIN_SIGNALS_n_66,
      Q => dtr_length(6),
      R => bus2ip_reset_ipif4_inverted
    );
\dtr_length_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => XIP_CLK_DOMAIN_SIGNALS_n_63,
      D => XIP_CLK_DOMAIN_SIGNALS_n_65,
      Q => dtr_length(7),
      R => bus2ip_reset_ipif4_inverted
    );
four_byte_xfer_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => load_axi_data_frm_axi_clk,
      D => s_axi4_arsize(1),
      Q => four_byte_xfer,
      R => bus2ip_reset_ipif4_inverted
    );
last_data_acked_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFD"
    )
        port map (
      I0 => s_axi4_rlast_INST_0_i_3_n_0,
      I1 => dtr_length(4),
      I2 => dtr_length(5),
      I3 => dtr_length(6),
      I4 => dtr_length(7),
      O => last_data_acked_i_2_n_0
    );
last_data_acked_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => XIP_RECEIVE_FIFO_II_n_3,
      Q => last_data_acked,
      R => '0'
    );
one_byte_xfer_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi4_arsize(0),
      I1 => s_axi4_arsize(1),
      O => one_byte_xfer_i_1_n_0
    );
one_byte_xfer_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => load_axi_data_frm_axi_clk,
      D => one_byte_xfer_i_1_n_0,
      Q => one_byte_xfer,
      R => bus2ip_reset_ipif4_inverted
    );
s_axi4_rlast_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002FFFF00020000"
    )
        port map (
      I0 => s_axi4_rlast_INST_0_i_1_n_0,
      I1 => S_AXI4_ARLEN_ii(6),
      I2 => S_AXI4_ARLEN_ii(7),
      I3 => S_AXI4_ARLEN_ii(5),
      I4 => \^s_axi4_rresp\(0),
      I5 => \^xip_mode_gen.bus2ip_reset_ipif4_inverted_reg\,
      O => \^s_axi4_rlast\
    );
s_axi4_rlast_INST_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => S_AXI4_ARLEN_ii(2),
      I1 => S_AXI4_ARLEN_ii(3),
      I2 => S_AXI4_ARLEN_ii(1),
      I3 => S_AXI4_ARLEN_ii(0),
      I4 => S_AXI4_ARLEN_ii(4),
      O => s_axi4_rlast_INST_0_i_1_n_0
    );
s_axi4_rlast_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => bus2ip_reset_ipif4_inverted,
      I1 => dtr_length(7),
      I2 => dtr_length(6),
      I3 => dtr_length(5),
      I4 => dtr_length(4),
      I5 => s_axi4_rlast_INST_0_i_3_n_0,
      O => \^xip_mode_gen.bus2ip_reset_ipif4_inverted_reg\
    );
s_axi4_rlast_INST_0_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => dtr_length(0),
      I1 => dtr_length(1),
      I2 => dtr_length(3),
      I3 => dtr_length(2),
      O => s_axi4_rlast_INST_0_i_3_n_0
    );
\size_length_cntr[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5455"
    )
        port map (
      I0 => \^fsm_onehot_ratio_of_2_generate.xip_quad_mode_wb_mem_gen.qspi_cntrl_ps_reg[0]_0\(0),
      I1 => size_length_cntr(1),
      I2 => size_length_cntr(0),
      I3 => SPIXfer_done_int,
      O => \size_length_cntr[1]_i_3_n_0\
    );
\size_length_cntr_fixed_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => XIP_CLK_DOMAIN_SIGNALS_n_47,
      Q => \size_length_cntr_fixed_reg_n_0_[0]\,
      R => Rst_to_spi
    );
\size_length_cntr_fixed_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => XIP_CLK_DOMAIN_SIGNALS_n_46,
      Q => \size_length_cntr_fixed_reg_n_0_[1]\,
      R => '0'
    );
\size_length_cntr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => XIP_CLK_DOMAIN_SIGNALS_n_44,
      Q => size_length_cntr(0),
      R => Rst_to_spi
    );
\size_length_cntr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => XIP_CLK_DOMAIN_SIGNALS_n_45,
      Q => size_length_cntr(1),
      R => '0'
    );
\spi_addr_wrap_1[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EC23"
    )
        port map (
      I0 => \spi_addr_wrap_1_reg[3]_i_2_n_7\,
      I1 => \size_length_cntr_fixed_reg_n_0_[1]\,
      I2 => \size_length_cntr_fixed_reg_n_0_[0]\,
      I3 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[0]\,
      O => \spi_addr_wrap_1[0]_i_1_n_0\
    );
\spi_addr_wrap_1[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAC0FACF0AC00AC"
    )
        port map (
      I0 => \spi_addr_wrap_1_reg[11]_i_2_n_5\,
      I1 => data4(10),
      I2 => \size_length_cntr_fixed_reg_n_0_[0]\,
      I3 => \size_length_cntr_fixed_reg_n_0_[1]\,
      I4 => data2(10),
      I5 => \spi_addr_wrap_1_reg[12]_i_3_n_6\,
      O => \spi_addr_wrap_1[10]_i_1_n_0\
    );
\spi_addr_wrap_1[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAC0FACF0AC00AC"
    )
        port map (
      I0 => \spi_addr_wrap_1_reg[11]_i_2_n_4\,
      I1 => data4(11),
      I2 => \size_length_cntr_fixed_reg_n_0_[0]\,
      I3 => \size_length_cntr_fixed_reg_n_0_[1]\,
      I4 => data2(11),
      I5 => \spi_addr_wrap_1_reg[12]_i_3_n_5\,
      O => \spi_addr_wrap_1[11]_i_1_n_0\
    );
\spi_addr_wrap_1[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => \spi_addr_wrap_1_reg[15]_i_2_n_7\,
      I1 => data4(12),
      I2 => data2(12),
      I3 => \size_length_cntr_fixed_reg_n_0_[0]\,
      I4 => \size_length_cntr_fixed_reg_n_0_[1]\,
      I5 => \spi_addr_wrap_1_reg[12]_i_3_n_4\,
      O => \spi_addr_wrap_1[12]_i_1_n_0\
    );
\spi_addr_wrap_1[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00AAAACCCCF0F0"
    )
        port map (
      I0 => \spi_addr_wrap_1_reg[15]_i_2_n_6\,
      I1 => \spi_addr_wrap_1_reg[16]_i_2_n_7\,
      I2 => data4(13),
      I3 => data2(13),
      I4 => \size_length_cntr_fixed_reg_n_0_[1]\,
      I5 => \size_length_cntr_fixed_reg_n_0_[0]\,
      O => \spi_addr_wrap_1[13]_i_1_n_0\
    );
\spi_addr_wrap_1[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00AAAACCCCF0F0"
    )
        port map (
      I0 => \spi_addr_wrap_1_reg[15]_i_2_n_5\,
      I1 => \spi_addr_wrap_1_reg[16]_i_2_n_6\,
      I2 => data4(14),
      I3 => data2(14),
      I4 => \size_length_cntr_fixed_reg_n_0_[1]\,
      I5 => \size_length_cntr_fixed_reg_n_0_[0]\,
      O => \spi_addr_wrap_1[14]_i_1_n_0\
    );
\spi_addr_wrap_1[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00AAAACCCCF0F0"
    )
        port map (
      I0 => \spi_addr_wrap_1_reg[15]_i_2_n_4\,
      I1 => \spi_addr_wrap_1_reg[16]_i_2_n_5\,
      I2 => data4(15),
      I3 => data2(15),
      I4 => \size_length_cntr_fixed_reg_n_0_[1]\,
      I5 => \size_length_cntr_fixed_reg_n_0_[0]\,
      O => \spi_addr_wrap_1[15]_i_1_n_0\
    );
\spi_addr_wrap_1[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00AAAACCCCF0F0"
    )
        port map (
      I0 => \spi_addr_wrap_1_reg[19]_i_2_n_7\,
      I1 => \spi_addr_wrap_1_reg[16]_i_2_n_4\,
      I2 => data4(16),
      I3 => data2(16),
      I4 => \size_length_cntr_fixed_reg_n_0_[1]\,
      I5 => \size_length_cntr_fixed_reg_n_0_[0]\,
      O => \spi_addr_wrap_1[16]_i_1_n_0\
    );
\spi_addr_wrap_1[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00AAAACCCCF0F0"
    )
        port map (
      I0 => \spi_addr_wrap_1_reg[19]_i_2_n_6\,
      I1 => \spi_addr_wrap_1_reg[20]_i_3_n_7\,
      I2 => data4(17),
      I3 => data2(17),
      I4 => \size_length_cntr_fixed_reg_n_0_[1]\,
      I5 => \size_length_cntr_fixed_reg_n_0_[0]\,
      O => \spi_addr_wrap_1[17]_i_1_n_0\
    );
\spi_addr_wrap_1[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00AAAACCCCF0F0"
    )
        port map (
      I0 => \spi_addr_wrap_1_reg[19]_i_2_n_5\,
      I1 => \spi_addr_wrap_1_reg[20]_i_3_n_6\,
      I2 => data4(18),
      I3 => data2(18),
      I4 => \size_length_cntr_fixed_reg_n_0_[1]\,
      I5 => \size_length_cntr_fixed_reg_n_0_[0]\,
      O => \spi_addr_wrap_1[18]_i_1_n_0\
    );
\spi_addr_wrap_1[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => data4(19),
      I1 => \spi_addr_wrap_1_reg[20]_i_3_n_5\,
      I2 => \spi_addr_wrap_1_reg[19]_i_2_n_4\,
      I3 => data2(19),
      I4 => \size_length_cntr_fixed_reg_n_0_[1]\,
      I5 => \size_length_cntr_fixed_reg_n_0_[0]\,
      O => \spi_addr_wrap_1[19]_i_1_n_0\
    );
\spi_addr_wrap_1[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \spi_addr_wrap_1_reg[3]_i_2_n_6\,
      I1 => p_8_in,
      I2 => data4(1),
      I3 => \size_length_cntr_fixed_reg_n_0_[0]\,
      I4 => \size_length_cntr_fixed_reg_n_0_[1]\,
      I5 => \spi_addr_wrap_1_reg[4]_i_2_n_7\,
      O => \spi_addr_wrap_1[1]_i_1_n_0\
    );
\spi_addr_wrap_1[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => data4(20),
      I1 => \spi_addr_wrap_1_reg[20]_i_3_n_4\,
      I2 => \spi_addr_wrap_1_reg[23]_i_4_n_7\,
      I3 => data2(20),
      I4 => \size_length_cntr_fixed_reg_n_0_[1]\,
      I5 => \size_length_cntr_fixed_reg_n_0_[0]\,
      O => \spi_addr_wrap_1[20]_i_1_n_0\
    );
\spi_addr_wrap_1[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00AAAACCCCF0F0"
    )
        port map (
      I0 => \spi_addr_wrap_1_reg[23]_i_4_n_6\,
      I1 => \spi_addr_wrap_1_reg[23]_i_3_n_7\,
      I2 => data4(21),
      I3 => data2(21),
      I4 => \size_length_cntr_fixed_reg_n_0_[1]\,
      I5 => \size_length_cntr_fixed_reg_n_0_[0]\,
      O => \spi_addr_wrap_1[21]_i_1_n_0\
    );
\spi_addr_wrap_1[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => data2(22),
      I1 => \size_length_cntr_fixed_reg_n_0_[1]\,
      I2 => \size_length_cntr_fixed_reg_n_0_[0]\,
      I3 => \spi_addr_wrap_1_reg[23]_i_4_n_5\,
      I4 => \spi_addr_wrap_1_reg[23]_i_3_n_6\,
      I5 => data4(22),
      O => \spi_addr_wrap_1[22]_i_1_n_0\
    );
\spi_addr_wrap_1[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBCB3B08F8C8380"
    )
        port map (
      I0 => data2(23),
      I1 => \size_length_cntr_fixed_reg_n_0_[1]\,
      I2 => \size_length_cntr_fixed_reg_n_0_[0]\,
      I3 => data4(23),
      I4 => \spi_addr_wrap_1_reg[23]_i_3_n_5\,
      I5 => \spi_addr_wrap_1_reg[23]_i_4_n_4\,
      O => \spi_addr_wrap_1[23]_i_1_n_0\
    );
\spi_addr_wrap_1[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \spi_addr_wrap_1_reg[3]_i_2_n_5\,
      I1 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[2]\,
      I2 => data4(2),
      I3 => \size_length_cntr_fixed_reg_n_0_[0]\,
      I4 => \size_length_cntr_fixed_reg_n_0_[1]\,
      I5 => \spi_addr_wrap_1_reg[4]_i_2_n_6\,
      O => \spi_addr_wrap_1[2]_i_1_n_0\
    );
\spi_addr_wrap_1[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \spi_addr_wrap_1_reg[3]_i_2_n_4\,
      I1 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[3]\,
      I2 => data4(3),
      I3 => \size_length_cntr_fixed_reg_n_0_[0]\,
      I4 => \size_length_cntr_fixed_reg_n_0_[1]\,
      I5 => \spi_addr_wrap_1_reg[4]_i_2_n_5\,
      O => \spi_addr_wrap_1[3]_i_1_n_0\
    );
\spi_addr_wrap_1[3]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_8_in,
      O => \spi_addr_wrap_1[3]_i_3_n_0\
    );
\spi_addr_wrap_1[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0CCFFAAF0CC00"
    )
        port map (
      I0 => data2(4),
      I1 => \spi_addr_wrap_1_reg[4]_i_2_n_4\,
      I2 => \spi_addr_wrap_1_reg[7]_i_2_n_7\,
      I3 => \size_length_cntr_fixed_reg_n_0_[1]\,
      I4 => \size_length_cntr_fixed_reg_n_0_[0]\,
      I5 => data4(4),
      O => \spi_addr_wrap_1[4]_i_1_n_0\
    );
\spi_addr_wrap_1[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[2]\,
      O => \spi_addr_wrap_1[4]_i_4_n_0\
    );
\spi_addr_wrap_1[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => \spi_addr_wrap_1_reg[7]_i_2_n_6\,
      I1 => data4(5),
      I2 => data2(5),
      I3 => \size_length_cntr_fixed_reg_n_0_[0]\,
      I4 => \size_length_cntr_fixed_reg_n_0_[1]\,
      I5 => \spi_addr_wrap_1_reg[8]_i_3_n_7\,
      O => \spi_addr_wrap_1[5]_i_1_n_0\
    );
\spi_addr_wrap_1[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAC0FACF0AC00AC"
    )
        port map (
      I0 => \spi_addr_wrap_1_reg[7]_i_2_n_5\,
      I1 => data4(6),
      I2 => \size_length_cntr_fixed_reg_n_0_[0]\,
      I3 => \size_length_cntr_fixed_reg_n_0_[1]\,
      I4 => data2(6),
      I5 => \spi_addr_wrap_1_reg[8]_i_3_n_6\,
      O => \spi_addr_wrap_1[6]_i_1_n_0\
    );
\spi_addr_wrap_1[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAC0FACF0AC00AC"
    )
        port map (
      I0 => \spi_addr_wrap_1_reg[7]_i_2_n_4\,
      I1 => data4(7),
      I2 => \size_length_cntr_fixed_reg_n_0_[0]\,
      I3 => \size_length_cntr_fixed_reg_n_0_[1]\,
      I4 => data2(7),
      I5 => \spi_addr_wrap_1_reg[8]_i_3_n_5\,
      O => \spi_addr_wrap_1[7]_i_1_n_0\
    );
\spi_addr_wrap_1[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAC0FACF0AC00AC"
    )
        port map (
      I0 => \spi_addr_wrap_1_reg[11]_i_2_n_7\,
      I1 => data4(8),
      I2 => \size_length_cntr_fixed_reg_n_0_[0]\,
      I3 => \size_length_cntr_fixed_reg_n_0_[1]\,
      I4 => data2(8),
      I5 => \spi_addr_wrap_1_reg[8]_i_3_n_4\,
      O => \spi_addr_wrap_1[8]_i_1_n_0\
    );
\spi_addr_wrap_1[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAC0FACF0AC00AC"
    )
        port map (
      I0 => \spi_addr_wrap_1_reg[11]_i_2_n_6\,
      I1 => data4(9),
      I2 => \size_length_cntr_fixed_reg_n_0_[0]\,
      I3 => \size_length_cntr_fixed_reg_n_0_[1]\,
      I4 => data2(9),
      I5 => \spi_addr_wrap_1_reg[12]_i_3_n_7\,
      O => \spi_addr_wrap_1[9]_i_1_n_0\
    );
\spi_addr_wrap_1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => wrap_around_reg_n_0,
      D => \spi_addr_wrap_1[0]_i_1_n_0\,
      Q => spi_addr_wrap_1(0),
      R => Rst_to_spi
    );
\spi_addr_wrap_1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => wrap_around_reg_n_0,
      D => \spi_addr_wrap_1[10]_i_1_n_0\,
      Q => spi_addr_wrap_1(10),
      R => Rst_to_spi
    );
\spi_addr_wrap_1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => wrap_around_reg_n_0,
      D => \spi_addr_wrap_1[11]_i_1_n_0\,
      Q => spi_addr_wrap_1(11),
      R => Rst_to_spi
    );
\spi_addr_wrap_1_reg[11]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \spi_addr_wrap_1_reg[7]_i_2_n_0\,
      CO(3) => \spi_addr_wrap_1_reg[11]_i_2_n_0\,
      CO(2) => \spi_addr_wrap_1_reg[11]_i_2_n_1\,
      CO(1) => \spi_addr_wrap_1_reg[11]_i_2_n_2\,
      CO(0) => \spi_addr_wrap_1_reg[11]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \spi_addr_wrap_1_reg[11]_i_2_n_4\,
      O(2) => \spi_addr_wrap_1_reg[11]_i_2_n_5\,
      O(1) => \spi_addr_wrap_1_reg[11]_i_2_n_6\,
      O(0) => \spi_addr_wrap_1_reg[11]_i_2_n_7\,
      S(3 downto 0) => data2(11 downto 8)
    );
\spi_addr_wrap_1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => wrap_around_reg_n_0,
      D => \spi_addr_wrap_1[12]_i_1_n_0\,
      Q => spi_addr_wrap_1(12),
      R => Rst_to_spi
    );
\spi_addr_wrap_1_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \spi_addr_wrap_1_reg[8]_i_2_n_0\,
      CO(3) => \spi_addr_wrap_1_reg[12]_i_2_n_0\,
      CO(2) => \spi_addr_wrap_1_reg[12]_i_2_n_1\,
      CO(1) => \spi_addr_wrap_1_reg[12]_i_2_n_2\,
      CO(0) => \spi_addr_wrap_1_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data4(12 downto 9),
      S(3 downto 0) => data2(12 downto 9)
    );
\spi_addr_wrap_1_reg[12]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \spi_addr_wrap_1_reg[8]_i_3_n_0\,
      CO(3) => \spi_addr_wrap_1_reg[12]_i_3_n_0\,
      CO(2) => \spi_addr_wrap_1_reg[12]_i_3_n_1\,
      CO(1) => \spi_addr_wrap_1_reg[12]_i_3_n_2\,
      CO(0) => \spi_addr_wrap_1_reg[12]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \spi_addr_wrap_1_reg[12]_i_3_n_4\,
      O(2) => \spi_addr_wrap_1_reg[12]_i_3_n_5\,
      O(1) => \spi_addr_wrap_1_reg[12]_i_3_n_6\,
      O(0) => \spi_addr_wrap_1_reg[12]_i_3_n_7\,
      S(3 downto 0) => data2(12 downto 9)
    );
\spi_addr_wrap_1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => wrap_around_reg_n_0,
      D => \spi_addr_wrap_1[13]_i_1_n_0\,
      Q => spi_addr_wrap_1(13),
      R => Rst_to_spi
    );
\spi_addr_wrap_1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => wrap_around_reg_n_0,
      D => \spi_addr_wrap_1[14]_i_1_n_0\,
      Q => spi_addr_wrap_1(14),
      R => Rst_to_spi
    );
\spi_addr_wrap_1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => wrap_around_reg_n_0,
      D => \spi_addr_wrap_1[15]_i_1_n_0\,
      Q => spi_addr_wrap_1(15),
      R => Rst_to_spi
    );
\spi_addr_wrap_1_reg[15]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \spi_addr_wrap_1_reg[11]_i_2_n_0\,
      CO(3) => \spi_addr_wrap_1_reg[15]_i_2_n_0\,
      CO(2) => \spi_addr_wrap_1_reg[15]_i_2_n_1\,
      CO(1) => \spi_addr_wrap_1_reg[15]_i_2_n_2\,
      CO(0) => \spi_addr_wrap_1_reg[15]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \spi_addr_wrap_1_reg[15]_i_2_n_4\,
      O(2) => \spi_addr_wrap_1_reg[15]_i_2_n_5\,
      O(1) => \spi_addr_wrap_1_reg[15]_i_2_n_6\,
      O(0) => \spi_addr_wrap_1_reg[15]_i_2_n_7\,
      S(3 downto 0) => data2(15 downto 12)
    );
\spi_addr_wrap_1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => wrap_around_reg_n_0,
      D => \spi_addr_wrap_1[16]_i_1_n_0\,
      Q => spi_addr_wrap_1(16),
      R => Rst_to_spi
    );
\spi_addr_wrap_1_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \spi_addr_wrap_1_reg[12]_i_3_n_0\,
      CO(3) => \spi_addr_wrap_1_reg[16]_i_2_n_0\,
      CO(2) => \spi_addr_wrap_1_reg[16]_i_2_n_1\,
      CO(1) => \spi_addr_wrap_1_reg[16]_i_2_n_2\,
      CO(0) => \spi_addr_wrap_1_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \spi_addr_wrap_1_reg[16]_i_2_n_4\,
      O(2) => \spi_addr_wrap_1_reg[16]_i_2_n_5\,
      O(1) => \spi_addr_wrap_1_reg[16]_i_2_n_6\,
      O(0) => \spi_addr_wrap_1_reg[16]_i_2_n_7\,
      S(3 downto 0) => data2(16 downto 13)
    );
\spi_addr_wrap_1_reg[16]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \spi_addr_wrap_1_reg[12]_i_2_n_0\,
      CO(3) => \spi_addr_wrap_1_reg[16]_i_3_n_0\,
      CO(2) => \spi_addr_wrap_1_reg[16]_i_3_n_1\,
      CO(1) => \spi_addr_wrap_1_reg[16]_i_3_n_2\,
      CO(0) => \spi_addr_wrap_1_reg[16]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data4(16 downto 13),
      S(3 downto 0) => data2(16 downto 13)
    );
\spi_addr_wrap_1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => wrap_around_reg_n_0,
      D => \spi_addr_wrap_1[17]_i_1_n_0\,
      Q => spi_addr_wrap_1(17),
      R => Rst_to_spi
    );
\spi_addr_wrap_1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => wrap_around_reg_n_0,
      D => \spi_addr_wrap_1[18]_i_1_n_0\,
      Q => spi_addr_wrap_1(18),
      R => Rst_to_spi
    );
\spi_addr_wrap_1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => wrap_around_reg_n_0,
      D => \spi_addr_wrap_1[19]_i_1_n_0\,
      Q => spi_addr_wrap_1(19),
      R => Rst_to_spi
    );
\spi_addr_wrap_1_reg[19]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \spi_addr_wrap_1_reg[15]_i_2_n_0\,
      CO(3) => \spi_addr_wrap_1_reg[19]_i_2_n_0\,
      CO(2) => \spi_addr_wrap_1_reg[19]_i_2_n_1\,
      CO(1) => \spi_addr_wrap_1_reg[19]_i_2_n_2\,
      CO(0) => \spi_addr_wrap_1_reg[19]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \spi_addr_wrap_1_reg[19]_i_2_n_4\,
      O(2) => \spi_addr_wrap_1_reg[19]_i_2_n_5\,
      O(1) => \spi_addr_wrap_1_reg[19]_i_2_n_6\,
      O(0) => \spi_addr_wrap_1_reg[19]_i_2_n_7\,
      S(3 downto 0) => data2(19 downto 16)
    );
\spi_addr_wrap_1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => wrap_around_reg_n_0,
      D => \spi_addr_wrap_1[1]_i_1_n_0\,
      Q => spi_addr_wrap_1(1),
      R => Rst_to_spi
    );
\spi_addr_wrap_1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => wrap_around_reg_n_0,
      D => \spi_addr_wrap_1[20]_i_1_n_0\,
      Q => spi_addr_wrap_1(20),
      R => Rst_to_spi
    );
\spi_addr_wrap_1_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \spi_addr_wrap_1_reg[16]_i_3_n_0\,
      CO(3) => \spi_addr_wrap_1_reg[20]_i_2_n_0\,
      CO(2) => \spi_addr_wrap_1_reg[20]_i_2_n_1\,
      CO(1) => \spi_addr_wrap_1_reg[20]_i_2_n_2\,
      CO(0) => \spi_addr_wrap_1_reg[20]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data4(20 downto 17),
      S(3 downto 0) => data2(20 downto 17)
    );
\spi_addr_wrap_1_reg[20]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \spi_addr_wrap_1_reg[16]_i_2_n_0\,
      CO(3) => \spi_addr_wrap_1_reg[20]_i_3_n_0\,
      CO(2) => \spi_addr_wrap_1_reg[20]_i_3_n_1\,
      CO(1) => \spi_addr_wrap_1_reg[20]_i_3_n_2\,
      CO(0) => \spi_addr_wrap_1_reg[20]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \spi_addr_wrap_1_reg[20]_i_3_n_4\,
      O(2) => \spi_addr_wrap_1_reg[20]_i_3_n_5\,
      O(1) => \spi_addr_wrap_1_reg[20]_i_3_n_6\,
      O(0) => \spi_addr_wrap_1_reg[20]_i_3_n_7\,
      S(3 downto 0) => data2(20 downto 17)
    );
\spi_addr_wrap_1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => wrap_around_reg_n_0,
      D => \spi_addr_wrap_1[21]_i_1_n_0\,
      Q => spi_addr_wrap_1(21),
      R => Rst_to_spi
    );
\spi_addr_wrap_1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => wrap_around_reg_n_0,
      D => \spi_addr_wrap_1[22]_i_1_n_0\,
      Q => spi_addr_wrap_1(22),
      R => Rst_to_spi
    );
\spi_addr_wrap_1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => wrap_around_reg_n_0,
      D => \spi_addr_wrap_1[23]_i_1_n_0\,
      Q => spi_addr_wrap_1(23),
      R => Rst_to_spi
    );
\spi_addr_wrap_1_reg[23]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \spi_addr_wrap_1_reg[20]_i_2_n_0\,
      CO(3 downto 2) => \NLW_spi_addr_wrap_1_reg[23]_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \spi_addr_wrap_1_reg[23]_i_2_n_2\,
      CO(0) => \spi_addr_wrap_1_reg[23]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_spi_addr_wrap_1_reg[23]_i_2_O_UNCONNECTED\(3),
      O(2 downto 0) => data4(23 downto 21),
      S(3) => '0',
      S(2 downto 0) => data2(23 downto 21)
    );
\spi_addr_wrap_1_reg[23]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \spi_addr_wrap_1_reg[20]_i_3_n_0\,
      CO(3 downto 2) => \NLW_spi_addr_wrap_1_reg[23]_i_3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \spi_addr_wrap_1_reg[23]_i_3_n_2\,
      CO(0) => \spi_addr_wrap_1_reg[23]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_spi_addr_wrap_1_reg[23]_i_3_O_UNCONNECTED\(3),
      O(2) => \spi_addr_wrap_1_reg[23]_i_3_n_5\,
      O(1) => \spi_addr_wrap_1_reg[23]_i_3_n_6\,
      O(0) => \spi_addr_wrap_1_reg[23]_i_3_n_7\,
      S(3) => '0',
      S(2 downto 0) => data2(23 downto 21)
    );
\spi_addr_wrap_1_reg[23]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \spi_addr_wrap_1_reg[19]_i_2_n_0\,
      CO(3) => \NLW_spi_addr_wrap_1_reg[23]_i_4_CO_UNCONNECTED\(3),
      CO(2) => \spi_addr_wrap_1_reg[23]_i_4_n_1\,
      CO(1) => \spi_addr_wrap_1_reg[23]_i_4_n_2\,
      CO(0) => \spi_addr_wrap_1_reg[23]_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \spi_addr_wrap_1_reg[23]_i_4_n_4\,
      O(2) => \spi_addr_wrap_1_reg[23]_i_4_n_5\,
      O(1) => \spi_addr_wrap_1_reg[23]_i_4_n_6\,
      O(0) => \spi_addr_wrap_1_reg[23]_i_4_n_7\,
      S(3 downto 0) => data2(23 downto 20)
    );
\spi_addr_wrap_1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => wrap_around_reg_n_0,
      D => \spi_addr_wrap_1[2]_i_1_n_0\,
      Q => spi_addr_wrap_1(2),
      R => Rst_to_spi
    );
\spi_addr_wrap_1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => wrap_around_reg_n_0,
      D => \spi_addr_wrap_1[3]_i_1_n_0\,
      Q => spi_addr_wrap_1(3),
      R => Rst_to_spi
    );
\spi_addr_wrap_1_reg[3]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \spi_addr_wrap_1_reg[3]_i_2_n_0\,
      CO(2) => \spi_addr_wrap_1_reg[3]_i_2_n_1\,
      CO(1) => \spi_addr_wrap_1_reg[3]_i_2_n_2\,
      CO(0) => \spi_addr_wrap_1_reg[3]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => p_8_in,
      DI(0) => '0',
      O(3) => \spi_addr_wrap_1_reg[3]_i_2_n_4\,
      O(2) => \spi_addr_wrap_1_reg[3]_i_2_n_5\,
      O(1) => \spi_addr_wrap_1_reg[3]_i_2_n_6\,
      O(0) => \spi_addr_wrap_1_reg[3]_i_2_n_7\,
      S(3) => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[3]\,
      S(2) => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[2]\,
      S(1) => \spi_addr_wrap_1[3]_i_3_n_0\,
      S(0) => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[0]\
    );
\spi_addr_wrap_1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => wrap_around_reg_n_0,
      D => \spi_addr_wrap_1[4]_i_1_n_0\,
      Q => spi_addr_wrap_1(4),
      R => Rst_to_spi
    );
\spi_addr_wrap_1_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \spi_addr_wrap_1_reg[4]_i_2_n_0\,
      CO(2) => \spi_addr_wrap_1_reg[4]_i_2_n_1\,
      CO(1) => \spi_addr_wrap_1_reg[4]_i_2_n_2\,
      CO(0) => \spi_addr_wrap_1_reg[4]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[2]\,
      DI(0) => '0',
      O(3) => \spi_addr_wrap_1_reg[4]_i_2_n_4\,
      O(2) => \spi_addr_wrap_1_reg[4]_i_2_n_5\,
      O(1) => \spi_addr_wrap_1_reg[4]_i_2_n_6\,
      O(0) => \spi_addr_wrap_1_reg[4]_i_2_n_7\,
      S(3) => data2(4),
      S(2) => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[3]\,
      S(1) => \spi_addr_wrap_1[4]_i_4_n_0\,
      S(0) => p_8_in
    );
\spi_addr_wrap_1_reg[4]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \spi_addr_wrap_1_reg[4]_i_3_n_0\,
      CO(2) => \spi_addr_wrap_1_reg[4]_i_3_n_1\,
      CO(1) => \spi_addr_wrap_1_reg[4]_i_3_n_2\,
      CO(0) => \spi_addr_wrap_1_reg[4]_i_3_n_3\,
      CYINIT => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data4(4 downto 1),
      S(3) => data2(4),
      S(2) => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[3]\,
      S(1) => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[2]\,
      S(0) => p_8_in
    );
\spi_addr_wrap_1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => wrap_around_reg_n_0,
      D => \spi_addr_wrap_1[5]_i_1_n_0\,
      Q => spi_addr_wrap_1(5),
      R => Rst_to_spi
    );
\spi_addr_wrap_1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => wrap_around_reg_n_0,
      D => \spi_addr_wrap_1[6]_i_1_n_0\,
      Q => spi_addr_wrap_1(6),
      R => Rst_to_spi
    );
\spi_addr_wrap_1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => wrap_around_reg_n_0,
      D => \spi_addr_wrap_1[7]_i_1_n_0\,
      Q => spi_addr_wrap_1(7),
      R => Rst_to_spi
    );
\spi_addr_wrap_1_reg[7]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \spi_addr_wrap_1_reg[3]_i_2_n_0\,
      CO(3) => \spi_addr_wrap_1_reg[7]_i_2_n_0\,
      CO(2) => \spi_addr_wrap_1_reg[7]_i_2_n_1\,
      CO(1) => \spi_addr_wrap_1_reg[7]_i_2_n_2\,
      CO(0) => \spi_addr_wrap_1_reg[7]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \spi_addr_wrap_1_reg[7]_i_2_n_4\,
      O(2) => \spi_addr_wrap_1_reg[7]_i_2_n_5\,
      O(1) => \spi_addr_wrap_1_reg[7]_i_2_n_6\,
      O(0) => \spi_addr_wrap_1_reg[7]_i_2_n_7\,
      S(3 downto 0) => data2(7 downto 4)
    );
\spi_addr_wrap_1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => wrap_around_reg_n_0,
      D => \spi_addr_wrap_1[8]_i_1_n_0\,
      Q => spi_addr_wrap_1(8),
      R => Rst_to_spi
    );
\spi_addr_wrap_1_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \spi_addr_wrap_1_reg[4]_i_3_n_0\,
      CO(3) => \spi_addr_wrap_1_reg[8]_i_2_n_0\,
      CO(2) => \spi_addr_wrap_1_reg[8]_i_2_n_1\,
      CO(1) => \spi_addr_wrap_1_reg[8]_i_2_n_2\,
      CO(0) => \spi_addr_wrap_1_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data4(8 downto 5),
      S(3 downto 0) => data2(8 downto 5)
    );
\spi_addr_wrap_1_reg[8]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \spi_addr_wrap_1_reg[4]_i_2_n_0\,
      CO(3) => \spi_addr_wrap_1_reg[8]_i_3_n_0\,
      CO(2) => \spi_addr_wrap_1_reg[8]_i_3_n_1\,
      CO(1) => \spi_addr_wrap_1_reg[8]_i_3_n_2\,
      CO(0) => \spi_addr_wrap_1_reg[8]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \spi_addr_wrap_1_reg[8]_i_3_n_4\,
      O(2) => \spi_addr_wrap_1_reg[8]_i_3_n_5\,
      O(1) => \spi_addr_wrap_1_reg[8]_i_3_n_6\,
      O(0) => \spi_addr_wrap_1_reg[8]_i_3_n_7\,
      S(3 downto 0) => data2(8 downto 5)
    );
\spi_addr_wrap_1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => wrap_around_reg_n_0,
      D => \spi_addr_wrap_1[9]_i_1_n_0\,
      Q => spi_addr_wrap_1(9),
      R => Rst_to_spi
    );
start_after_wrap_d1_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^sr_5_tx_empty_24_bit_addr_gen.sr_5_tx_empty_reg_0\,
      I1 => \^wrap_around_d2\,
      I2 => wrap_around_d1,
      O => start_after_wrap
    );
start_after_wrap_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => start_after_wrap,
      Q => start_after_wrap_d1,
      R => Rst_to_spi
    );
store_date_in_drr_fifo_d1_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => SPIXfer_done_int,
      I1 => \^cmd_addr_sent\,
      I2 => size_length_cntr(1),
      I3 => size_length_cntr(0),
      O => p_72_in
    );
store_date_in_drr_fifo_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => p_72_in,
      Q => store_date_in_drr_fifo_d1,
      R => Rst_to_spi
    );
store_date_in_drr_fifo_d2_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => store_date_in_drr_fifo_d1,
      Q => store_date_in_drr_fifo_d2,
      R => Rst_to_spi
    );
store_date_in_drr_fifo_d3_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => store_date_in_drr_fifo_d2,
      Q => store_date_in_drr_fifo_d3,
      R => Rst_to_spi
    );
transfer_start_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \^transfer_start\,
      Q => \^transfer_start_d1\,
      R => cmd_addr_cntr1
    );
transfer_start_d2_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \^transfer_start_d1\,
      Q => transfer_start_d2,
      R => cmd_addr_cntr1
    );
two_byte_xfer_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => load_axi_data_frm_axi_clk,
      D => s_axi4_arsize(0),
      Q => two_byte_xfer,
      R => bus2ip_reset_ipif4_inverted
    );
type_of_burst_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => load_axi_data_frm_axi_clk,
      D => s_axi4_arburst(1),
      Q => type_of_burst,
      R => bus2ip_reset_ipif4_inverted
    );
wrap_around_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => wrap_around_reg_n_0,
      Q => wrap_around_d1,
      R => cmd_addr_cntr1
    );
wrap_around_d2_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => wrap_around_d1,
      Q => \^wrap_around_d2\,
      R => cmd_addr_cntr1
    );
wrap_around_d3_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \^wrap_around_d2\,
      Q => \^wrap_around_d3\,
      R => cmd_addr_cntr1
    );
wrap_around_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBFF"
    )
        port map (
      I0 => \size_length_cntr_fixed_reg_n_0_[1]\,
      I1 => \size_length_cntr_fixed_reg_n_0_[0]\,
      I2 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[0]\,
      I3 => p_8_in,
      O => wrap_around_i_11_n_0
    );
wrap_around_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[4]\,
      I1 => \^wrap_around_d3\,
      I2 => \^wrap_around_d2\,
      O => wrap_around_i_2_n_0
    );
wrap_around_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_3_n_0\,
      I1 => \^sr_5_tx_empty_24_bit_addr_gen.sr_5_tx_empty_reg_0\,
      I2 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[2]\,
      I3 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[3]\,
      I4 => p_8_in,
      I5 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[0]\,
      O => wrap_around_i_7_n_0
    );
wrap_around_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[2]\,
      I1 => p_8_in,
      I2 => \size_length_cntr_fixed_reg_n_0_[1]\,
      I3 => \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[0]\,
      O => wrap_around_i_9_n_0
    );
wrap_around_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => XIP_CLK_DOMAIN_SIGNALS_n_75,
      Q => wrap_around_reg_n_0,
      R => '0'
    );
xip_sm_ps_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => xip_sm_ns,
      Q => xip_sm_ps,
      R => bus2ip_reset_ipif4_inverted
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_quad_spi_0_0_axi_quad_spi_top is
  port (
    ss_t : out STD_LOGIC;
    io0_t : out STD_LOGIC;
    io1_t : out STD_LOGIC;
    io2_t : out STD_LOGIC;
    io3_t : out STD_LOGIC;
    S_AXI4_ARREADY : out STD_LOGIC;
    s_axi4_rlast : out STD_LOGIC;
    s_axi4_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi4_rvalid : out STD_LOGIC;
    s_axi4_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    io3_o : out STD_LOGIC;
    io0_o : out STD_LOGIC;
    io2_o : out STD_LOGIC;
    io1_o : out STD_LOGIC;
    ss_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    cfgclk : out STD_LOGIC;
    cfgmclk : out STD_LOGIC;
    eos : out STD_LOGIC;
    preq : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \XIP_MODE_GEN.ip2Bus_RdAck_core_reg_d3_reg_0\ : out STD_LOGIC;
    \XIP_MODE_GEN.ip2bus_wrack_core_reg_reg_0\ : out STD_LOGIC;
    s_axi_bvalid_i_reg : out STD_LOGIC;
    s_axi_rvalid_i_reg : out STD_LOGIC;
    s_axi4_arsize : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    ext_spi_clk : in STD_LOGIC;
    s_axi4_aclk : in STD_LOGIC;
    s_axi4_araddr : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi4_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi4_rready : in STD_LOGIC;
    s_axi4_arvalid : in STD_LOGIC;
    s_axi4_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    gsr : in STD_LOGIC;
    gts : in STD_LOGIC;
    keyclearb : in STD_LOGIC;
    usrcclkts : in STD_LOGIC;
    usrdoneo : in STD_LOGIC;
    usrdonets : in STD_LOGIC;
    io0_i : in STD_LOGIC;
    io1_i : in STD_LOGIC;
    io2_i : in STD_LOGIC;
    io3_i : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi4_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_axi_quad_spi_0_0_axi_quad_spi_top : entity is "axi_quad_spi_top";
end icyradio_axi_quad_spi_0_0_axi_quad_spi_top;

architecture STRUCTURE of icyradio_axi_quad_spi_0_0_axi_quad_spi_top is
  signal IP2Bus_XIPSR_Data_int : STD_LOGIC_VECTOR ( 4 downto 3 );
  signal \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\ : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ : STD_LOGIC;
  signal \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_sent_i_1_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.Count_reg\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_0_i_1_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_1_i_1_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_2_i_1_n_0\ : STD_LOGIC;
  signal Rst_to_spi_int : STD_LOGIC;
  signal Rx_FIFO_Empty : STD_LOGIC;
  signal Rx_FIFO_Empty_Synced_in_SPI_domain : STD_LOGIC;
  signal Rx_FIFO_Full : STD_LOGIC;
  signal SCK_O_int : STD_LOGIC;
  signal SPIXfer_done_int_d1 : STD_LOGIC;
  signal SPIXfer_done_int_pulse_d2 : STD_LOGIC;
  signal \SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_i_1_n_0\ : STD_LOGIC;
  signal \STORE_NEW_TR_24_BIT_ADDR_GEN.new_tr_i_1_n_0\ : STD_LOGIC;
  signal S_AXI4_RLAST_iii : STD_LOGIC;
  signal Serial_Dout_1 : STD_LOGIC;
  signal TO_XIPSR_AXI_TR_ERR_int : STD_LOGIC;
  signal TO_XIPSR_CPHA_CPOL_ERR_int : STD_LOGIC;
  signal TO_XIPSR_axi_rx_empty_int : STD_LOGIC;
  signal TO_XIPSR_axi_rx_full_int : STD_LOGIC;
  signal Transmit_Data : STD_LOGIC_VECTOR ( 1 to 2 );
  signal XIPCR_0_CPHA_int : STD_LOGIC;
  signal XIPCR_1_CPOL_int : STD_LOGIC;
  signal \XIP_CLK_DOMAIN_SIGNALS/load_axi_data_cdc_to_spi_d2\ : STD_LOGIC;
  signal \XIP_CLK_DOMAIN_SIGNALS/load_axi_data_cdc_to_spi_d3\ : STD_LOGIC;
  signal \XIP_CLK_DOMAIN_SIGNALS/load_cmd_cdc_from_axi_d2\ : STD_LOGIC;
  signal \XIP_CLK_DOMAIN_SIGNALS/load_cmd_cdc_from_axi_d3\ : STD_LOGIC;
  signal \XIP_MODE_GEN.AXI_LITE_IPIF_I_n_14\ : STD_LOGIC;
  signal \XIP_MODE_GEN.AXI_LITE_IPIF_I_n_15\ : STD_LOGIC;
  signal \XIP_MODE_GEN.AXI_LITE_IPIF_I_n_7\ : STD_LOGIC;
  signal \XIP_MODE_GEN.AXI_QSPI_XIP_I_n_26\ : STD_LOGIC;
  signal \XIP_MODE_GEN.AXI_QSPI_XIP_I_n_41\ : STD_LOGIC;
  signal \XIP_MODE_GEN.AXI_QSPI_XIP_I_n_42\ : STD_LOGIC;
  signal \XIP_MODE_GEN.AXI_QSPI_XIP_I_n_43\ : STD_LOGIC;
  signal \XIP_MODE_GEN.AXI_QSPI_XIP_I_n_45\ : STD_LOGIC;
  signal \XIP_MODE_GEN.AXI_QSPI_XIP_I_n_46\ : STD_LOGIC;
  signal \XIP_MODE_GEN.AXI_QSPI_XIP_I_n_81\ : STD_LOGIC;
  signal \XIP_MODE_GEN.AXI_QSPI_XIP_I_n_82\ : STD_LOGIC;
  signal \XIP_MODE_GEN.AXI_QSPI_XIP_I_n_83\ : STD_LOGIC;
  signal \XIP_MODE_GEN.AXI_QSPI_XIP_I_n_85\ : STD_LOGIC;
  signal \XIP_MODE_GEN.XIP_SR_I_n_0\ : STD_LOGIC;
  signal \XIP_MODE_GEN.XIP_SR_I_n_3\ : STD_LOGIC;
  signal \XIP_MODE_GEN.bus2ip_reset_ipif4_inverted_i_1_n_0\ : STD_LOGIC;
  signal \XIP_NORMAL_MODE.S_AXI4_RLAST_iii_i_1_n_0\ : STD_LOGIC;
  signal \XIP_NORMAL_MODE.S_AXI4_RRESP_i_i_1_n_0\ : STD_LOGIC;
  signal \XIP_RECEIVE_FIFO_II/full\ : STD_LOGIC;
  signal \XIP_RECEIVE_FIFO_II/wr_rst_busy\ : STD_LOGIC;
  signal XIP_trans_error_d2 : STD_LOGIC;
  signal XIP_trans_error_d3 : STD_LOGIC;
  signal bus2ip_reset_ipif4_inverted : STD_LOGIC;
  signal bus2ip_reset_ipif_inverted : STD_LOGIC;
  signal cmd_addr_sent : STD_LOGIC;
  signal io0_i_sync : STD_LOGIC;
  signal \^io0_o\ : STD_LOGIC;
  signal io1_i_sync : STD_LOGIC;
  signal \^io1_o\ : STD_LOGIC;
  signal io2_i_sync : STD_LOGIC;
  signal \^io2_o\ : STD_LOGIC;
  signal io3_i_sync : STD_LOGIC;
  signal ip2Bus_RdAck_core_reg_d3 : STD_LOGIC;
  signal ip2bus_data_int : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal ip2bus_rdack_core_reg_d1 : STD_LOGIC;
  signal ip2bus_rdack_core_reg_d10 : STD_LOGIC;
  signal ip2bus_rdack_core_reg_d2 : STD_LOGIC;
  signal ip2bus_rdack_core_reg_d20 : STD_LOGIC;
  signal ip2bus_wrack_core_reg : STD_LOGIC;
  signal ip2bus_wrack_core_reg0 : STD_LOGIC;
  signal ip2bus_wrack_core_reg_d1 : STD_LOGIC;
  signal ip2bus_wrack_core_reg_d10 : STD_LOGIC;
  signal new_tr : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_3_in : STD_LOGIC;
  signal pr_state_idle : STD_LOGIC;
  signal rx_shft_reg_mode_0011 : STD_LOGIC;
  signal \^s_axi4_rresp\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal sck_d2 : STD_LOGIC;
  signal transfer_start : STD_LOGIC;
  signal transfer_start_d1 : STD_LOGIC;
  signal wb_cntrl_ps : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal wrap_around_d2 : STD_LOGIC;
  signal wrap_around_d3 : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of IO0_I_REG : label is "FD";
  attribute box_type : string;
  attribute box_type of IO0_I_REG : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of IO1_I_REG : label is "FD";
  attribute box_type of IO1_I_REG : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of IO2_I_REG : label is "FD";
  attribute box_type of IO2_I_REG : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of IO3_I_REG : label is "FD";
  attribute box_type of IO3_I_REG : label is "PRIMITIVE";
begin
  io0_o <= \^io0_o\;
  io1_o <= \^io1_o\;
  io2_o <= \^io2_o\;
  s_axi4_rresp(0) <= \^s_axi4_rresp\(0);
IO0_I_REG: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => io0_i,
      Q => io0_i_sync,
      R => '0'
    );
IO1_I_REG: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => io1_i,
      Q => io1_i_sync,
      R => '0'
    );
IO2_I_REG: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => io2_i,
      Q => io2_i_sync,
      R => '0'
    );
IO3_I_REG: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => io3_i,
      Q => io3_i_sync,
      R => '0'
    );
\LOGIC_GENERATION_FDR.Rx_FIFO_Full_SYNC_SPI2AXI_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \XIP_RECEIVE_FIFO_II/wr_rst_busy\,
      I1 => \XIP_RECEIVE_FIFO_II/full\,
      I2 => Rx_FIFO_Empty_Synced_in_SPI_domain,
      O => Rx_FIFO_Full
    );
\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_sent_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2222F0FF2222F000"
    )
        port map (
      I0 => wrap_around_d3,
      I1 => wrap_around_d2,
      I2 => \XIP_MODE_GEN.AXI_QSPI_XIP_I_n_82\,
      I3 => SPIXfer_done_int_pulse_d2,
      I4 => pr_state_idle,
      I5 => cmd_addr_sent,
      O => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_sent_i_1_n_0\
    );
\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAAFFFFA2AA0000"
    )
        port map (
      I0 => \XIP_MODE_GEN.AXI_QSPI_XIP_I_n_85\,
      I1 => \RATIO_OF_2_GENERATE.Count_reg\(0),
      I2 => SPIXfer_done_int_d1,
      I3 => transfer_start_d1,
      I4 => transfer_start,
      I5 => \^io0_o\,
      O => \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_0_i_1_n_0\
    );
\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_1_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \XIP_MODE_GEN.AXI_QSPI_XIP_I_n_42\,
      I1 => \XIP_MODE_GEN.AXI_QSPI_XIP_I_n_83\,
      I2 => Transmit_Data(2),
      I3 => Serial_Dout_1,
      I4 => \^io1_o\,
      O => \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_1_i_1_n_0\
    );
\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_2_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \XIP_MODE_GEN.AXI_QSPI_XIP_I_n_41\,
      I1 => \XIP_MODE_GEN.AXI_QSPI_XIP_I_n_83\,
      I2 => Transmit_Data(1),
      I3 => Serial_Dout_1,
      I4 => \^io2_o\,
      O => \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_2_i_1_n_0\
    );
\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sck_d2,
      O => rx_shft_reg_mode_0011
    );
\SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C3C3C30082828200"
    )
        port map (
      I0 => \XIP_MODE_GEN.AXI_QSPI_XIP_I_n_81\,
      I1 => \XIP_CLK_DOMAIN_SIGNALS/load_cmd_cdc_from_axi_d3\,
      I2 => \XIP_CLK_DOMAIN_SIGNALS/load_cmd_cdc_from_axi_d2\,
      I3 => wb_cntrl_ps(1),
      I4 => wb_cntrl_ps(0),
      I5 => \XIP_MODE_GEN.AXI_QSPI_XIP_I_n_26\,
      O => \SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_i_1_n_0\
    );
\STORE_NEW_TR_24_BIT_ADDR_GEN.new_tr_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1FF1FFFF1FF11FF1"
    )
        port map (
      I0 => wb_cntrl_ps(1),
      I1 => wb_cntrl_ps(0),
      I2 => \XIP_CLK_DOMAIN_SIGNALS/load_axi_data_cdc_to_spi_d3\,
      I3 => \XIP_CLK_DOMAIN_SIGNALS/load_axi_data_cdc_to_spi_d2\,
      I4 => \XIP_MODE_GEN.AXI_QSPI_XIP_I_n_81\,
      I5 => new_tr,
      O => \STORE_NEW_TR_24_BIT_ADDR_GEN.new_tr_i_1_n_0\
    );
\XIPSR_data_int[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => XIP_trans_error_d3,
      I1 => XIP_trans_error_d2,
      O => TO_XIPSR_AXI_TR_ERR_int
    );
\XIP_MODE_GEN.AXI_LITE_IPIF_I\: entity work.icyradio_axi_quad_spi_0_0_axi_lite_ipif
     port map (
      Bus_RNW_reg => \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\,
      D(3 downto 2) => IP2Bus_XIPSR_Data_int(4 downto 3),
      D(1) => \XIP_MODE_GEN.AXI_LITE_IPIF_I_n_14\,
      D(0) => \XIP_MODE_GEN.AXI_LITE_IPIF_I_n_15\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ => \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      Q(3) => \XIP_MODE_GEN.XIP_SR_I_n_0\,
      Q(2) => p_3_in,
      Q(1) => p_1_in,
      Q(0) => \XIP_MODE_GEN.XIP_SR_I_n_3\,
      SR(0) => \XIP_MODE_GEN.AXI_LITE_IPIF_I_n_7\,
      XIPCR_0_CPHA_int => XIPCR_0_CPHA_int,
      XIPCR_1_CPOL_int => XIPCR_1_CPOL_int,
      \XIP_MODE_GEN.ip2Bus_RdAck_core_reg_d3_reg\ => \XIP_MODE_GEN.ip2Bus_RdAck_core_reg_d3_reg_0\,
      \XIP_MODE_GEN.ip2bus_wrack_core_reg_reg\ => \XIP_MODE_GEN.ip2bus_wrack_core_reg_reg_0\,
      bus2ip_reset_ipif_inverted => bus2ip_reset_ipif_inverted,
      ip2Bus_RdAck_core_reg_d3 => ip2Bus_RdAck_core_reg_d3,
      ip2bus_rdack_core_reg_d1 => ip2bus_rdack_core_reg_d1,
      ip2bus_rdack_core_reg_d10 => ip2bus_rdack_core_reg_d10,
      ip2bus_rdack_core_reg_d20 => ip2bus_rdack_core_reg_d20,
      ip2bus_wrack_core_reg => ip2bus_wrack_core_reg,
      ip2bus_wrack_core_reg0 => ip2bus_wrack_core_reg0,
      ip2bus_wrack_core_reg_d1 => ip2bus_wrack_core_reg_d1,
      ip2bus_wrack_core_reg_d10 => ip2bus_wrack_core_reg_d10,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(0) => s_axi_araddr(0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(0) => s_axi_awaddr(0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid_i_reg => s_axi_bvalid_i_reg,
      s_axi_rdata(3 downto 0) => s_axi_rdata(3 downto 0),
      \s_axi_rdata_i_reg[4]\(3 downto 2) => ip2bus_data_int(4 downto 3),
      \s_axi_rdata_i_reg[4]\(1 downto 0) => ip2bus_data_int(1 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid_i_reg => s_axi_rvalid_i_reg,
      s_axi_wvalid => s_axi_wvalid
    );
\XIP_MODE_GEN.AXI_QSPI_XIP_I\: entity work.icyradio_axi_quad_spi_0_0_axi_qspi_xip_if
     port map (
      D(1) => TO_XIPSR_axi_rx_full_int,
      D(0) => TO_XIPSR_axi_rx_empty_int,
      E(0) => rx_shft_reg_mode_0011,
      \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[0]_0\(0) => pr_state_idle,
      \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_0\ => \XIP_MODE_GEN.AXI_QSPI_XIP_I_n_81\,
      \LOGIC_GENERATION_FDR.CPHA_CPOL_ERR_AXI2AXI4_CDC_0\(0) => TO_XIPSR_CPHA_CPOL_ERR_int,
      Q(1 downto 0) => wb_cntrl_ps(1 downto 0),
      \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[2]_0\ => \XIP_MODE_GEN.AXI_QSPI_XIP_I_n_82\,
      \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_sent_reg_0\ => \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_sent_i_1_n_0\,
      \RATIO_OF_2_GENERATE.Count_reg[0]_0\(0) => \RATIO_OF_2_GENERATE.Count_reg\(0),
      \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_0_reg_0\ => \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_0_i_1_n_0\,
      \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_1_reg_0\ => \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_1_i_1_n_0\,
      \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_2_reg_0\ => \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_2_i_1_n_0\,
      \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg[0]_0\ => \XIP_MODE_GEN.AXI_QSPI_XIP_I_n_85\,
      \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg[1]_0\(1) => \XIP_MODE_GEN.AXI_QSPI_XIP_I_n_41\,
      \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg[1]_0\(0) => \XIP_MODE_GEN.AXI_QSPI_XIP_I_n_42\,
      Rst_to_spi => Rst_to_spi_int,
      Rx_FIFO_Full => Rx_FIFO_Full,
      SCK_O_int => SCK_O_int,
      \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[30]_0\(1) => Transmit_Data(1),
      \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[30]_0\(0) => Transmit_Data(2),
      SPIXfer_done_int_d1 => SPIXfer_done_int_d1,
      SPIXfer_done_int_d1_reg_0 => \XIP_MODE_GEN.AXI_QSPI_XIP_I_n_83\,
      SPIXfer_done_int_pulse_d2 => SPIXfer_done_int_pulse_d2,
      \SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_reg_0\ => \XIP_MODE_GEN.AXI_QSPI_XIP_I_n_26\,
      \SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_reg_1\ => \SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_i_1_n_0\,
      \STORE_NEW_TR_24_BIT_ADDR_GEN.new_tr_reg_0\ => \STORE_NEW_TR_24_BIT_ADDR_GEN.new_tr_i_1_n_0\,
      S_AXI4_ARREADY_i_reg_0 => S_AXI4_ARREADY,
      S_AXI4_RLAST_iii => S_AXI4_RLAST_iii,
      Serial_Dout_1 => Serial_Dout_1,
      XIPCR_0_CPHA_int => XIPCR_0_CPHA_int,
      XIPCR_1_CPOL_int => XIPCR_1_CPOL_int,
      \XIP_MODE_GEN.bus2ip_reset_ipif4_inverted_reg\ => \XIP_MODE_GEN.AXI_QSPI_XIP_I_n_45\,
      \XIP_NORMAL_MODE.S_AXI4_ARLEN_ii_reg[6]_0\ => \XIP_MODE_GEN.AXI_QSPI_XIP_I_n_46\,
      \XIP_NORMAL_MODE.S_AXI4_RLAST_iii_reg_0\ => \XIP_NORMAL_MODE.S_AXI4_RLAST_iii_i_1_n_0\,
      \XIP_NORMAL_MODE.S_AXI4_RRESP_i_reg_0\ => \XIP_NORMAL_MODE.S_AXI4_RRESP_i_i_1_n_0\,
      XIP_trans_error_d2 => XIP_trans_error_d2,
      XIP_trans_error_d3 => XIP_trans_error_d3,
      bus2ip_reset_ipif4_inverted => bus2ip_reset_ipif4_inverted,
      bus2ip_reset_ipif_inverted => bus2ip_reset_ipif_inverted,
      cmd_addr_sent => cmd_addr_sent,
      empty => Rx_FIFO_Empty,
      ext_spi_clk => ext_spi_clk,
      full => \XIP_RECEIVE_FIFO_II/full\,
      io0_i_sync => io0_i_sync,
      io0_o => \^io0_o\,
      io0_t => io0_t,
      io1_i_sync => io1_i_sync,
      io1_o => \^io1_o\,
      io1_t => io1_t,
      io2_i_sync => io2_i_sync,
      io2_o => \^io2_o\,
      io2_t => io2_t,
      io3_i_sync => io3_i_sync,
      io3_o => io3_o,
      io3_t => io3_t,
      load_axi_data_cdc_to_spi_d2 => \XIP_CLK_DOMAIN_SIGNALS/load_axi_data_cdc_to_spi_d2\,
      load_axi_data_cdc_to_spi_d3 => \XIP_CLK_DOMAIN_SIGNALS/load_axi_data_cdc_to_spi_d3\,
      load_cmd_cdc_from_axi_d2 => \XIP_CLK_DOMAIN_SIGNALS/load_cmd_cdc_from_axi_d2\,
      load_cmd_cdc_from_axi_d3 => \XIP_CLK_DOMAIN_SIGNALS/load_cmd_cdc_from_axi_d3\,
      new_tr => new_tr,
      s_axi4_aclk => s_axi4_aclk,
      s_axi4_araddr(23 downto 0) => s_axi4_araddr(23 downto 0),
      s_axi4_arburst(1 downto 0) => s_axi4_arburst(1 downto 0),
      s_axi4_arlen(7 downto 0) => s_axi4_arlen(7 downto 0),
      s_axi4_arsize(1 downto 0) => s_axi4_arsize(1 downto 0),
      s_axi4_arvalid => s_axi4_arvalid,
      s_axi4_rdata(31 downto 0) => s_axi4_rdata(31 downto 0),
      s_axi4_rlast => s_axi4_rlast,
      s_axi4_rready => s_axi4_rready,
      s_axi4_rready_0 => \XIP_MODE_GEN.AXI_QSPI_XIP_I_n_43\,
      s_axi4_rresp(0) => \^s_axi4_rresp\(0),
      s_axi4_rvalid => s_axi4_rvalid,
      s_axi_aclk => s_axi_aclk,
      sck_d2 => sck_d2,
      scndry_out => Rx_FIFO_Empty_Synced_in_SPI_domain,
      ss_o(0) => ss_o(0),
      ss_t => ss_t,
      transfer_start => transfer_start,
      transfer_start_d1 => transfer_start_d1,
      wr_rst_busy => \XIP_RECEIVE_FIFO_II/wr_rst_busy\,
      wrap_around_d2 => wrap_around_d2,
      wrap_around_d3 => wrap_around_d3
    );
\XIP_MODE_GEN.RESET_SYNC_AXI_SPI_CLK_INST\: entity work.icyradio_axi_quad_spi_0_0_reset_sync_module
     port map (
      Rst_to_spi => Rst_to_spi_int,
      Soft_Reset_frm_axi => bus2ip_reset_ipif4_inverted,
      ext_spi_clk => ext_spi_clk
    );
\XIP_MODE_GEN.SCK_MISO_STARTUP_USED.QSPI_STARTUP_BLOCK_I\: entity work.icyradio_axi_quad_spi_0_0_qspi_startup_block
     port map (
      SCK_O_int => SCK_O_int,
      cfgclk => cfgclk,
      cfgmclk => cfgmclk,
      clk => clk,
      eos => eos,
      gsr => gsr,
      gts => gts,
      keyclearb => keyclearb,
      preq => preq,
      usrcclkts => usrcclkts,
      usrdoneo => usrdoneo,
      usrdonets => usrdonets
    );
\XIP_MODE_GEN.XIP_CR_I\: entity work.icyradio_axi_quad_spi_0_0_xip_cntrl_reg
     port map (
      Bus_RNW_reg => \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\,
      D(0) => TO_XIPSR_CPHA_CPOL_ERR_int,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ => \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      XIPCR_0_CPHA_int => XIPCR_0_CPHA_int,
      XIPCR_1_CPOL_int => XIPCR_1_CPOL_int,
      bus2ip_reset_ipif_inverted => bus2ip_reset_ipif_inverted,
      ip2bus_wrack_core_reg => ip2bus_wrack_core_reg,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(1 downto 0) => s_axi_wdata(1 downto 0)
    );
\XIP_MODE_GEN.XIP_SR_I\: entity work.icyradio_axi_quad_spi_0_0_xip_status_reg
     port map (
      D(3) => TO_XIPSR_AXI_TR_ERR_int,
      D(2) => TO_XIPSR_CPHA_CPOL_ERR_int,
      D(1) => TO_XIPSR_axi_rx_full_int,
      D(0) => TO_XIPSR_axi_rx_empty_int,
      Q(3) => \XIP_MODE_GEN.XIP_SR_I_n_0\,
      Q(2) => p_3_in,
      Q(1) => p_1_in,
      Q(0) => \XIP_MODE_GEN.XIP_SR_I_n_3\,
      SR(0) => \XIP_MODE_GEN.AXI_LITE_IPIF_I_n_7\,
      s_axi_aclk => s_axi_aclk
    );
\XIP_MODE_GEN.bus2ip_reset_ipif4_inverted_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi4_aresetn,
      O => \XIP_MODE_GEN.bus2ip_reset_ipif4_inverted_i_1_n_0\
    );
\XIP_MODE_GEN.bus2ip_reset_ipif4_inverted_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \XIP_MODE_GEN.bus2ip_reset_ipif4_inverted_i_1_n_0\,
      Q => bus2ip_reset_ipif4_inverted,
      R => '0'
    );
\XIP_MODE_GEN.ip2Bus_RdAck_core_reg_d3_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_rdack_core_reg_d2,
      Q => ip2Bus_RdAck_core_reg_d3,
      R => bus2ip_reset_ipif_inverted
    );
\XIP_MODE_GEN.ip2bus_data_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => ip2bus_rdack_core_reg_d2,
      D => \XIP_MODE_GEN.AXI_LITE_IPIF_I_n_15\,
      Q => ip2bus_data_int(0),
      R => bus2ip_reset_ipif_inverted
    );
\XIP_MODE_GEN.ip2bus_data_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => ip2bus_rdack_core_reg_d2,
      D => \XIP_MODE_GEN.AXI_LITE_IPIF_I_n_14\,
      Q => ip2bus_data_int(1),
      R => bus2ip_reset_ipif_inverted
    );
\XIP_MODE_GEN.ip2bus_data_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => ip2bus_rdack_core_reg_d2,
      D => IP2Bus_XIPSR_Data_int(3),
      Q => ip2bus_data_int(3),
      R => bus2ip_reset_ipif_inverted
    );
\XIP_MODE_GEN.ip2bus_data_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => ip2bus_rdack_core_reg_d2,
      D => IP2Bus_XIPSR_Data_int(4),
      Q => ip2bus_data_int(4),
      R => bus2ip_reset_ipif_inverted
    );
\XIP_MODE_GEN.ip2bus_rdack_core_reg_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_rdack_core_reg_d10,
      Q => ip2bus_rdack_core_reg_d1,
      R => bus2ip_reset_ipif_inverted
    );
\XIP_MODE_GEN.ip2bus_rdack_core_reg_d2_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_rdack_core_reg_d20,
      Q => ip2bus_rdack_core_reg_d2,
      R => bus2ip_reset_ipif_inverted
    );
\XIP_MODE_GEN.ip2bus_wrack_core_reg_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_wrack_core_reg_d10,
      Q => ip2bus_wrack_core_reg_d1,
      R => bus2ip_reset_ipif_inverted
    );
\XIP_MODE_GEN.ip2bus_wrack_core_reg_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_wrack_core_reg0,
      Q => ip2bus_wrack_core_reg,
      R => bus2ip_reset_ipif_inverted
    );
\XIP_NORMAL_MODE.S_AXI4_RLAST_iii_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11F100F0"
    )
        port map (
      I0 => \XIP_MODE_GEN.AXI_QSPI_XIP_I_n_43\,
      I1 => \XIP_MODE_GEN.AXI_QSPI_XIP_I_n_46\,
      I2 => \XIP_MODE_GEN.AXI_QSPI_XIP_I_n_45\,
      I3 => Rx_FIFO_Empty,
      I4 => S_AXI4_RLAST_iii,
      O => \XIP_NORMAL_MODE.S_AXI4_RLAST_iii_i_1_n_0\
    );
\XIP_NORMAL_MODE.S_AXI4_RRESP_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0FFE0E0"
    )
        port map (
      I0 => s_axi4_arlen(7),
      I1 => s_axi4_arlen(6),
      I2 => s_axi4_arvalid,
      I3 => \XIP_MODE_GEN.AXI_QSPI_XIP_I_n_43\,
      I4 => \^s_axi4_rresp\(0),
      O => \XIP_NORMAL_MODE.S_AXI4_RRESP_i_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_quad_spi_0_0_axi_quad_spi is
  port (
    ext_spi_clk : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi4_aclk : in STD_LOGIC;
    s_axi4_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi4_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi4_awaddr : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi4_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi4_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi4_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi4_awlock : in STD_LOGIC;
    s_axi4_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi4_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi4_awvalid : in STD_LOGIC;
    s_axi4_awready : out STD_LOGIC;
    s_axi4_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi4_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi4_wlast : in STD_LOGIC;
    s_axi4_wvalid : in STD_LOGIC;
    s_axi4_wready : out STD_LOGIC;
    s_axi4_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi4_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi4_bvalid : out STD_LOGIC;
    s_axi4_bready : in STD_LOGIC;
    s_axi4_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi4_araddr : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi4_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi4_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi4_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi4_arlock : in STD_LOGIC;
    s_axi4_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi4_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi4_arvalid : in STD_LOGIC;
    s_axi4_arready : out STD_LOGIC;
    s_axi4_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi4_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi4_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi4_rlast : out STD_LOGIC;
    s_axi4_rvalid : out STD_LOGIC;
    s_axi4_rready : in STD_LOGIC;
    io0_i : in STD_LOGIC;
    io0_o : out STD_LOGIC;
    io0_t : out STD_LOGIC;
    io1_i : in STD_LOGIC;
    io1_o : out STD_LOGIC;
    io1_t : out STD_LOGIC;
    io2_i : in STD_LOGIC;
    io2_o : out STD_LOGIC;
    io2_t : out STD_LOGIC;
    io3_i : in STD_LOGIC;
    io3_o : out STD_LOGIC;
    io3_t : out STD_LOGIC;
    io0_1_i : in STD_LOGIC;
    io0_1_o : out STD_LOGIC;
    io0_1_t : out STD_LOGIC;
    io1_1_i : in STD_LOGIC;
    io1_1_o : out STD_LOGIC;
    io1_1_t : out STD_LOGIC;
    io2_1_i : in STD_LOGIC;
    io2_1_o : out STD_LOGIC;
    io2_1_t : out STD_LOGIC;
    io3_1_i : in STD_LOGIC;
    io3_1_o : out STD_LOGIC;
    io3_1_t : out STD_LOGIC;
    spisel : in STD_LOGIC;
    sck_i : in STD_LOGIC;
    sck_o : out STD_LOGIC;
    sck_t : out STD_LOGIC;
    ss_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    ss_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    ss_t : out STD_LOGIC;
    ss_1_i : in STD_LOGIC;
    ss_1_o : out STD_LOGIC;
    ss_1_t : out STD_LOGIC;
    cfgclk : out STD_LOGIC;
    cfgmclk : out STD_LOGIC;
    eos : out STD_LOGIC;
    preq : out STD_LOGIC;
    clk : in STD_LOGIC;
    gsr : in STD_LOGIC;
    gts : in STD_LOGIC;
    keyclearb : in STD_LOGIC;
    usrcclkts : in STD_LOGIC;
    usrdoneo : in STD_LOGIC;
    usrdonets : in STD_LOGIC;
    pack : in STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC
  );
  attribute Async_Clk : integer;
  attribute Async_Clk of icyradio_axi_quad_spi_0_0_axi_quad_spi : entity is 0;
  attribute C_BYTE_LEVEL_INTERRUPT_EN : integer;
  attribute C_BYTE_LEVEL_INTERRUPT_EN of icyradio_axi_quad_spi_0_0_axi_quad_spi : entity is 0;
  attribute C_DUAL_QUAD_MODE : integer;
  attribute C_DUAL_QUAD_MODE of icyradio_axi_quad_spi_0_0_axi_quad_spi : entity is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of icyradio_axi_quad_spi_0_0_axi_quad_spi : entity is "artix7";
  attribute C_FIFO_DEPTH : integer;
  attribute C_FIFO_DEPTH of icyradio_axi_quad_spi_0_0_axi_quad_spi : entity is 16;
  attribute C_INSTANCE : string;
  attribute C_INSTANCE of icyradio_axi_quad_spi_0_0_axi_quad_spi : entity is "axi_quad_spi_inst";
  attribute C_LSB_STUP : integer;
  attribute C_LSB_STUP of icyradio_axi_quad_spi_0_0_axi_quad_spi : entity is 0;
  attribute C_NEW_SEQ_EN : integer;
  attribute C_NEW_SEQ_EN of icyradio_axi_quad_spi_0_0_axi_quad_spi : entity is 1;
  attribute C_NUM_SS_BITS : integer;
  attribute C_NUM_SS_BITS of icyradio_axi_quad_spi_0_0_axi_quad_spi : entity is 1;
  attribute C_NUM_TRANSFER_BITS : integer;
  attribute C_NUM_TRANSFER_BITS of icyradio_axi_quad_spi_0_0_axi_quad_spi : entity is 8;
  attribute C_SCK_RATIO : integer;
  attribute C_SCK_RATIO of icyradio_axi_quad_spi_0_0_axi_quad_spi : entity is 2;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of icyradio_axi_quad_spi_0_0_axi_quad_spi : entity is 1;
  attribute C_SHARED_STARTUP : integer;
  attribute C_SHARED_STARTUP of icyradio_axi_quad_spi_0_0_axi_quad_spi : entity is 1;
  attribute C_SPI_MEMORY : integer;
  attribute C_SPI_MEMORY of icyradio_axi_quad_spi_0_0_axi_quad_spi : entity is 1;
  attribute C_SPI_MEM_ADDR_BITS : integer;
  attribute C_SPI_MEM_ADDR_BITS of icyradio_axi_quad_spi_0_0_axi_quad_spi : entity is 24;
  attribute C_SPI_MODE : integer;
  attribute C_SPI_MODE of icyradio_axi_quad_spi_0_0_axi_quad_spi : entity is 2;
  attribute C_SUB_FAMILY : string;
  attribute C_SUB_FAMILY of icyradio_axi_quad_spi_0_0_axi_quad_spi : entity is "artix7";
  attribute C_S_AXI4_ADDR_WIDTH : integer;
  attribute C_S_AXI4_ADDR_WIDTH of icyradio_axi_quad_spi_0_0_axi_quad_spi : entity is 24;
  attribute C_S_AXI4_BASEADDR : integer;
  attribute C_S_AXI4_BASEADDR of icyradio_axi_quad_spi_0_0_axi_quad_spi : entity is 0;
  attribute C_S_AXI4_DATA_WIDTH : integer;
  attribute C_S_AXI4_DATA_WIDTH of icyradio_axi_quad_spi_0_0_axi_quad_spi : entity is 32;
  attribute C_S_AXI4_HIGHADDR : integer;
  attribute C_S_AXI4_HIGHADDR of icyradio_axi_quad_spi_0_0_axi_quad_spi : entity is 1048575;
  attribute C_S_AXI4_ID_WIDTH : integer;
  attribute C_S_AXI4_ID_WIDTH of icyradio_axi_quad_spi_0_0_axi_quad_spi : entity is 1;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of icyradio_axi_quad_spi_0_0_axi_quad_spi : entity is 7;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of icyradio_axi_quad_spi_0_0_axi_quad_spi : entity is 32;
  attribute C_TYPE_OF_AXI4_INTERFACE : integer;
  attribute C_TYPE_OF_AXI4_INTERFACE of icyradio_axi_quad_spi_0_0_axi_quad_spi : entity is 1;
  attribute C_UC_FAMILY : integer;
  attribute C_UC_FAMILY of icyradio_axi_quad_spi_0_0_axi_quad_spi : entity is 0;
  attribute C_USE_STARTUP : integer;
  attribute C_USE_STARTUP of icyradio_axi_quad_spi_0_0_axi_quad_spi : entity is 1;
  attribute C_USE_STARTUP_EXT : integer;
  attribute C_USE_STARTUP_EXT of icyradio_axi_quad_spi_0_0_axi_quad_spi : entity is 0;
  attribute C_XIP_MODE : integer;
  attribute C_XIP_MODE of icyradio_axi_quad_spi_0_0_axi_quad_spi : entity is 1;
  attribute C_XIP_PERF_MODE : integer;
  attribute C_XIP_PERF_MODE of icyradio_axi_quad_spi_0_0_axi_quad_spi : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_axi_quad_spi_0_0_axi_quad_spi : entity is "axi_quad_spi";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of icyradio_axi_quad_spi_0_0_axi_quad_spi : entity is "yes";
end icyradio_axi_quad_spi_0_0_axi_quad_spi;

architecture STRUCTURE of icyradio_axi_quad_spi_0_0_axi_quad_spi is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axi4_rresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^s_axi_wready\ : STD_LOGIC;
  attribute initialval : string;
  attribute initialval of spisel : signal is "VCC";
begin
  io0_1_o <= \<const0>\;
  io0_1_t <= \<const0>\;
  io1_1_o <= \<const0>\;
  io1_1_t <= \<const0>\;
  io2_1_o <= \<const0>\;
  io2_1_t <= \<const0>\;
  io3_1_o <= \<const0>\;
  io3_1_t <= \<const0>\;
  ip2intc_irpt <= \<const0>\;
  s_axi4_awready <= \<const0>\;
  s_axi4_bid(0) <= \<const0>\;
  s_axi4_bresp(1) <= \<const0>\;
  s_axi4_bresp(0) <= \<const0>\;
  s_axi4_bvalid <= \<const0>\;
  s_axi4_rid(0) <= \<const0>\;
  s_axi4_rresp(1) <= \^s_axi4_rresp\(1);
  s_axi4_rresp(0) <= \<const0>\;
  s_axi4_wready <= \<const0>\;
  s_axi_awready <= \^s_axi_wready\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rdata(31) <= \<const0>\;
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
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4 downto 3) <= \^s_axi_rdata\(4 downto 3);
  s_axi_rdata(2) <= \<const0>\;
  s_axi_rdata(1 downto 0) <= \^s_axi_rdata\(1 downto 0);
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_wready <= \^s_axi_wready\;
  sck_o <= \<const0>\;
  sck_t <= \<const0>\;
  ss_1_o <= \<const0>\;
  ss_1_t <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\NO_DUAL_QUAD_MODE.QSPI_NORMAL\: entity work.icyradio_axi_quad_spi_0_0_axi_quad_spi_top
     port map (
      S_AXI4_ARREADY => s_axi4_arready,
      \XIP_MODE_GEN.ip2Bus_RdAck_core_reg_d3_reg_0\ => s_axi_arready,
      \XIP_MODE_GEN.ip2bus_wrack_core_reg_reg_0\ => \^s_axi_wready\,
      cfgclk => cfgclk,
      cfgmclk => cfgmclk,
      clk => clk,
      eos => eos,
      ext_spi_clk => ext_spi_clk,
      gsr => gsr,
      gts => gts,
      io0_i => io0_i,
      io0_o => io0_o,
      io0_t => io0_t,
      io1_i => io1_i,
      io1_o => io1_o,
      io1_t => io1_t,
      io2_i => io2_i,
      io2_o => io2_o,
      io2_t => io2_t,
      io3_i => io3_i,
      io3_o => io3_o,
      io3_t => io3_t,
      keyclearb => keyclearb,
      preq => preq,
      s_axi4_aclk => s_axi4_aclk,
      s_axi4_araddr(23 downto 0) => s_axi4_araddr(23 downto 0),
      s_axi4_arburst(1 downto 0) => s_axi4_arburst(1 downto 0),
      s_axi4_aresetn => s_axi4_aresetn,
      s_axi4_arlen(7 downto 0) => s_axi4_arlen(7 downto 0),
      s_axi4_arsize(1 downto 0) => s_axi4_arsize(1 downto 0),
      s_axi4_arvalid => s_axi4_arvalid,
      s_axi4_rdata(31 downto 0) => s_axi4_rdata(31 downto 0),
      s_axi4_rlast => s_axi4_rlast,
      s_axi4_rready => s_axi4_rready,
      s_axi4_rresp(0) => \^s_axi4_rresp\(1),
      s_axi4_rvalid => s_axi4_rvalid,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(0) => s_axi_araddr(2),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(0) => s_axi_awaddr(2),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid_i_reg => s_axi_bvalid,
      s_axi_rdata(3 downto 2) => \^s_axi_rdata\(4 downto 3),
      s_axi_rdata(1 downto 0) => \^s_axi_rdata\(1 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid_i_reg => s_axi_rvalid,
      s_axi_wdata(1 downto 0) => s_axi_wdata(1 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      ss_o(0) => ss_o(0),
      ss_t => ss_t,
      usrcclkts => usrcclkts,
      usrdoneo => usrdoneo,
      usrdonets => usrdonets
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_quad_spi_0_0 is
  port (
    ext_spi_clk : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi4_aclk : in STD_LOGIC;
    s_axi4_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi4_awaddr : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi4_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi4_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi4_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi4_awlock : in STD_LOGIC;
    s_axi4_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi4_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi4_awvalid : in STD_LOGIC;
    s_axi4_awready : out STD_LOGIC;
    s_axi4_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi4_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi4_wlast : in STD_LOGIC;
    s_axi4_wvalid : in STD_LOGIC;
    s_axi4_wready : out STD_LOGIC;
    s_axi4_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi4_bvalid : out STD_LOGIC;
    s_axi4_bready : in STD_LOGIC;
    s_axi4_araddr : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi4_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi4_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi4_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi4_arlock : in STD_LOGIC;
    s_axi4_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi4_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi4_arvalid : in STD_LOGIC;
    s_axi4_arready : out STD_LOGIC;
    s_axi4_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi4_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi4_rlast : out STD_LOGIC;
    s_axi4_rvalid : out STD_LOGIC;
    s_axi4_rready : in STD_LOGIC;
    io0_i : in STD_LOGIC;
    io0_o : out STD_LOGIC;
    io0_t : out STD_LOGIC;
    io1_i : in STD_LOGIC;
    io1_o : out STD_LOGIC;
    io1_t : out STD_LOGIC;
    io2_i : in STD_LOGIC;
    io2_o : out STD_LOGIC;
    io2_t : out STD_LOGIC;
    io3_i : in STD_LOGIC;
    io3_o : out STD_LOGIC;
    io3_t : out STD_LOGIC;
    ss_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    ss_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    ss_t : out STD_LOGIC;
    cfgclk : out STD_LOGIC;
    cfgmclk : out STD_LOGIC;
    eos : out STD_LOGIC;
    preq : out STD_LOGIC;
    clk : in STD_LOGIC;
    gsr : in STD_LOGIC;
    gts : in STD_LOGIC;
    keyclearb : in STD_LOGIC;
    usrcclkts : in STD_LOGIC;
    usrdoneo : in STD_LOGIC;
    usrdonets : in STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of icyradio_axi_quad_spi_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of icyradio_axi_quad_spi_0_0 : entity is "icyradio_axi_quad_spi_0_0,axi_quad_spi,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of icyradio_axi_quad_spi_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of icyradio_axi_quad_spi_0_0 : entity is "axi_quad_spi,Vivado 2021.1";
end icyradio_axi_quad_spi_0_0;

architecture STRUCTURE of icyradio_axi_quad_spi_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axi4_rresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_io0_1_o_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_io0_1_t_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_io1_1_o_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_io1_1_t_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_io2_1_o_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_io2_1_t_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_io3_1_o_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_io3_1_t_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_ip2intc_irpt_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi4_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi4_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi4_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sck_o_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sck_t_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_ss_1_o_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_ss_1_t_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi4_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi4_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi4_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi4_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute Async_Clk : integer;
  attribute Async_Clk of U0 : label is 0;
  attribute C_BYTE_LEVEL_INTERRUPT_EN : integer;
  attribute C_BYTE_LEVEL_INTERRUPT_EN of U0 : label is 0;
  attribute C_DUAL_QUAD_MODE : integer;
  attribute C_DUAL_QUAD_MODE of U0 : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "artix7";
  attribute C_FIFO_DEPTH : integer;
  attribute C_FIFO_DEPTH of U0 : label is 16;
  attribute C_INSTANCE : string;
  attribute C_INSTANCE of U0 : label is "axi_quad_spi_inst";
  attribute C_LSB_STUP : integer;
  attribute C_LSB_STUP of U0 : label is 0;
  attribute C_NEW_SEQ_EN : integer;
  attribute C_NEW_SEQ_EN of U0 : label is 1;
  attribute C_NUM_SS_BITS : integer;
  attribute C_NUM_SS_BITS of U0 : label is 1;
  attribute C_NUM_TRANSFER_BITS : integer;
  attribute C_NUM_TRANSFER_BITS of U0 : label is 8;
  attribute C_SCK_RATIO : integer;
  attribute C_SCK_RATIO of U0 : label is 2;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of U0 : label is 1;
  attribute C_SHARED_STARTUP : integer;
  attribute C_SHARED_STARTUP of U0 : label is 1;
  attribute C_SPI_MEMORY : integer;
  attribute C_SPI_MEMORY of U0 : label is 1;
  attribute C_SPI_MEM_ADDR_BITS : integer;
  attribute C_SPI_MEM_ADDR_BITS of U0 : label is 24;
  attribute C_SPI_MODE : integer;
  attribute C_SPI_MODE of U0 : label is 2;
  attribute C_SUB_FAMILY : string;
  attribute C_SUB_FAMILY of U0 : label is "artix7";
  attribute C_S_AXI4_ADDR_WIDTH : integer;
  attribute C_S_AXI4_ADDR_WIDTH of U0 : label is 24;
  attribute C_S_AXI4_BASEADDR : integer;
  attribute C_S_AXI4_BASEADDR of U0 : label is 0;
  attribute C_S_AXI4_DATA_WIDTH : integer;
  attribute C_S_AXI4_DATA_WIDTH of U0 : label is 32;
  attribute C_S_AXI4_HIGHADDR : integer;
  attribute C_S_AXI4_HIGHADDR of U0 : label is 1048575;
  attribute C_S_AXI4_ID_WIDTH : integer;
  attribute C_S_AXI4_ID_WIDTH of U0 : label is 1;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of U0 : label is 7;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of U0 : label is 32;
  attribute C_TYPE_OF_AXI4_INTERFACE : integer;
  attribute C_TYPE_OF_AXI4_INTERFACE of U0 : label is 1;
  attribute C_UC_FAMILY : integer;
  attribute C_UC_FAMILY of U0 : label is 0;
  attribute C_USE_STARTUP : integer;
  attribute C_USE_STARTUP of U0 : label is 1;
  attribute C_USE_STARTUP_EXT : integer;
  attribute C_USE_STARTUP_EXT of U0 : label is 0;
  attribute C_XIP_MODE : integer;
  attribute C_XIP_MODE of U0 : label is 1;
  attribute C_XIP_PERF_MODE : integer;
  attribute C_XIP_PERF_MODE of U0 : label is 0;
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of cfgclk : signal is "xilinx.com:interface:startup:1.0 STARTUP_IO_S cfgclk";
  attribute x_interface_info of cfgmclk : signal is "xilinx.com:interface:startup:1.0 STARTUP_IO_S cfgmclk";
  attribute x_interface_info of clk : signal is "xilinx.com:interface:startup:1.0 STARTUP_IO_S clk";
  attribute x_interface_info of eos : signal is "xilinx.com:interface:startup:1.0 STARTUP_IO_S eos";
  attribute x_interface_info of ext_spi_clk : signal is "xilinx.com:signal:clock:1.0 spi_clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of ext_spi_clk : signal is "XIL_INTERFACENAME spi_clk, ASSOCIATED_BUSIF SPI_0, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN icyradio_axi_pcie_0_0_axi_aclk_out, INSERT_VIP 0";
  attribute x_interface_info of gsr : signal is "xilinx.com:interface:startup:1.0 STARTUP_IO_S gsr";
  attribute x_interface_info of gts : signal is "xilinx.com:interface:startup:1.0 STARTUP_IO_S gts";
  attribute x_interface_info of io0_i : signal is "xilinx.com:interface:spi:1.0 SPI_0 IO0_I";
  attribute x_interface_parameter of io0_i : signal is "XIL_INTERFACENAME SPI_0, BOARD.ASSOCIATED_PARAM QSPI_BOARD_INTERFACE";
  attribute x_interface_info of io0_o : signal is "xilinx.com:interface:spi:1.0 SPI_0 IO0_O";
  attribute x_interface_info of io0_t : signal is "xilinx.com:interface:spi:1.0 SPI_0 IO0_T";
  attribute x_interface_info of io1_i : signal is "xilinx.com:interface:spi:1.0 SPI_0 IO1_I";
  attribute x_interface_info of io1_o : signal is "xilinx.com:interface:spi:1.0 SPI_0 IO1_O";
  attribute x_interface_info of io1_t : signal is "xilinx.com:interface:spi:1.0 SPI_0 IO1_T";
  attribute x_interface_info of io2_i : signal is "xilinx.com:interface:spi:1.0 SPI_0 IO2_I";
  attribute x_interface_info of io2_o : signal is "xilinx.com:interface:spi:1.0 SPI_0 IO2_O";
  attribute x_interface_info of io2_t : signal is "xilinx.com:interface:spi:1.0 SPI_0 IO2_T";
  attribute x_interface_info of io3_i : signal is "xilinx.com:interface:spi:1.0 SPI_0 IO3_I";
  attribute x_interface_info of io3_o : signal is "xilinx.com:interface:spi:1.0 SPI_0 IO3_O";
  attribute x_interface_info of io3_t : signal is "xilinx.com:interface:spi:1.0 SPI_0 IO3_T";
  attribute x_interface_info of ip2intc_irpt : signal is "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT";
  attribute x_interface_parameter of ip2intc_irpt : signal is "XIL_INTERFACENAME interrupt, SENSITIVITY EDGE_RISING, PortWidth 1";
  attribute x_interface_info of keyclearb : signal is "xilinx.com:interface:startup:1.0 STARTUP_IO_S keyclearb";
  attribute x_interface_info of preq : signal is "xilinx.com:interface:startup:1.0 STARTUP_IO_S preq";
  attribute x_interface_info of s_axi4_aclk : signal is "xilinx.com:signal:clock:1.0 full_clk CLK";
  attribute x_interface_parameter of s_axi4_aclk : signal is "XIL_INTERFACENAME full_clk, ASSOCIATED_BUSIF AXI_FULL, ASSOCIATED_RESET s_axi4_aresetn, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN icyradio_axi_pcie_0_0_axi_aclk_out, INSERT_VIP 0";
  attribute x_interface_info of s_axi4_aresetn : signal is "xilinx.com:signal:reset:1.0 full_reset RST";
  attribute x_interface_parameter of s_axi4_aresetn : signal is "XIL_INTERFACENAME full_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s_axi4_arlock : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL ARLOCK";
  attribute x_interface_info of s_axi4_arready : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL ARREADY";
  attribute x_interface_info of s_axi4_arvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL ARVALID";
  attribute x_interface_info of s_axi4_awlock : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL AWLOCK";
  attribute x_interface_info of s_axi4_awready : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL AWREADY";
  attribute x_interface_info of s_axi4_awvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL AWVALID";
  attribute x_interface_info of s_axi4_bready : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL BREADY";
  attribute x_interface_info of s_axi4_bvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL BVALID";
  attribute x_interface_info of s_axi4_rlast : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL RLAST";
  attribute x_interface_info of s_axi4_rready : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL RREADY";
  attribute x_interface_info of s_axi4_rvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL RVALID";
  attribute x_interface_info of s_axi4_wlast : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL WLAST";
  attribute x_interface_info of s_axi4_wready : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL WREADY";
  attribute x_interface_info of s_axi4_wvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL WVALID";
  attribute x_interface_info of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 lite_clk CLK";
  attribute x_interface_parameter of s_axi_aclk : signal is "XIL_INTERFACENAME lite_clk, ASSOCIATED_BUSIF AXI_LITE, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN icyradio_axi_pcie_0_0_axi_aclk_out, INSERT_VIP 0";
  attribute x_interface_info of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 lite_reset RST";
  attribute x_interface_parameter of s_axi_aresetn : signal is "XIL_INTERFACENAME lite_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE ARREADY";
  attribute x_interface_info of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE ARVALID";
  attribute x_interface_info of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE AWREADY";
  attribute x_interface_info of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE AWVALID";
  attribute x_interface_info of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE BREADY";
  attribute x_interface_info of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE BVALID";
  attribute x_interface_info of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE RREADY";
  attribute x_interface_info of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE RVALID";
  attribute x_interface_info of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE WREADY";
  attribute x_interface_info of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE WVALID";
  attribute x_interface_info of ss_t : signal is "xilinx.com:interface:spi:1.0 SPI_0 SS_T";
  attribute x_interface_info of usrcclkts : signal is "xilinx.com:interface:startup:1.0 STARTUP_IO_S usrclkts";
  attribute x_interface_info of usrdoneo : signal is "xilinx.com:interface:startup:1.0 STARTUP_IO_S userdoneo";
  attribute x_interface_info of usrdonets : signal is "xilinx.com:interface:startup:1.0 STARTUP_IO_S usrdonets";
  attribute x_interface_info of s_axi4_araddr : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL ARADDR";
  attribute x_interface_info of s_axi4_arburst : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL ARBURST";
  attribute x_interface_info of s_axi4_arcache : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL ARCACHE";
  attribute x_interface_info of s_axi4_arlen : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL ARLEN";
  attribute x_interface_info of s_axi4_arprot : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL ARPROT";
  attribute x_interface_info of s_axi4_arsize : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL ARSIZE";
  attribute x_interface_info of s_axi4_awaddr : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL AWADDR";
  attribute x_interface_parameter of s_axi4_awaddr : signal is "XIL_INTERFACENAME AXI_FULL, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 125000000, ID_WIDTH 0, ADDR_WIDTH 24, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN icyradio_axi_pcie_0_0_axi_aclk_out, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s_axi4_awburst : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL AWBURST";
  attribute x_interface_info of s_axi4_awcache : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL AWCACHE";
  attribute x_interface_info of s_axi4_awlen : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL AWLEN";
  attribute x_interface_info of s_axi4_awprot : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL AWPROT";
  attribute x_interface_info of s_axi4_awsize : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL AWSIZE";
  attribute x_interface_info of s_axi4_bresp : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL BRESP";
  attribute x_interface_info of s_axi4_rdata : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL RDATA";
  attribute x_interface_info of s_axi4_rresp : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL RRESP";
  attribute x_interface_info of s_axi4_wdata : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL WDATA";
  attribute x_interface_info of s_axi4_wstrb : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL WSTRB";
  attribute x_interface_info of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE ARADDR";
  attribute x_interface_info of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE AWADDR";
  attribute x_interface_parameter of s_axi_awaddr : signal is "XIL_INTERFACENAME AXI_LITE, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 125000000, ID_WIDTH 0, ADDR_WIDTH 7, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN icyradio_axi_pcie_0_0_axi_aclk_out, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE BRESP";
  attribute x_interface_info of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE RDATA";
  attribute x_interface_info of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE RRESP";
  attribute x_interface_info of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE WDATA";
  attribute x_interface_info of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE WSTRB";
  attribute x_interface_info of ss_i : signal is "xilinx.com:interface:spi:1.0 SPI_0 SS_I";
  attribute x_interface_info of ss_o : signal is "xilinx.com:interface:spi:1.0 SPI_0 SS_O";
begin
  ip2intc_irpt <= \<const0>\;
  s_axi4_awready <= \<const0>\;
  s_axi4_bresp(1) <= \<const0>\;
  s_axi4_bresp(0) <= \<const0>\;
  s_axi4_bvalid <= \<const0>\;
  s_axi4_rresp(1) <= \^s_axi4_rresp\(1);
  s_axi4_rresp(0) <= \<const0>\;
  s_axi4_wready <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rdata(31) <= \<const0>\;
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
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4 downto 3) <= \^s_axi_rdata\(4 downto 3);
  s_axi_rdata(2) <= \<const0>\;
  s_axi_rdata(1 downto 0) <= \^s_axi_rdata\(1 downto 0);
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.icyradio_axi_quad_spi_0_0_axi_quad_spi
     port map (
      cfgclk => cfgclk,
      cfgmclk => cfgmclk,
      clk => clk,
      eos => eos,
      ext_spi_clk => ext_spi_clk,
      gsr => gsr,
      gts => gts,
      io0_1_i => '0',
      io0_1_o => NLW_U0_io0_1_o_UNCONNECTED,
      io0_1_t => NLW_U0_io0_1_t_UNCONNECTED,
      io0_i => io0_i,
      io0_o => io0_o,
      io0_t => io0_t,
      io1_1_i => '0',
      io1_1_o => NLW_U0_io1_1_o_UNCONNECTED,
      io1_1_t => NLW_U0_io1_1_t_UNCONNECTED,
      io1_i => io1_i,
      io1_o => io1_o,
      io1_t => io1_t,
      io2_1_i => '0',
      io2_1_o => NLW_U0_io2_1_o_UNCONNECTED,
      io2_1_t => NLW_U0_io2_1_t_UNCONNECTED,
      io2_i => io2_i,
      io2_o => io2_o,
      io2_t => io2_t,
      io3_1_i => '0',
      io3_1_o => NLW_U0_io3_1_o_UNCONNECTED,
      io3_1_t => NLW_U0_io3_1_t_UNCONNECTED,
      io3_i => io3_i,
      io3_o => io3_o,
      io3_t => io3_t,
      ip2intc_irpt => NLW_U0_ip2intc_irpt_UNCONNECTED,
      keyclearb => keyclearb,
      pack => '0',
      preq => preq,
      s_axi4_aclk => s_axi4_aclk,
      s_axi4_araddr(23 downto 0) => s_axi4_araddr(23 downto 0),
      s_axi4_arburst(1 downto 0) => s_axi4_arburst(1 downto 0),
      s_axi4_arcache(3 downto 0) => B"0000",
      s_axi4_aresetn => s_axi4_aresetn,
      s_axi4_arid(0) => '0',
      s_axi4_arlen(7 downto 0) => s_axi4_arlen(7 downto 0),
      s_axi4_arlock => '0',
      s_axi4_arprot(2 downto 0) => B"000",
      s_axi4_arready => s_axi4_arready,
      s_axi4_arsize(2) => '0',
      s_axi4_arsize(1 downto 0) => s_axi4_arsize(1 downto 0),
      s_axi4_arvalid => s_axi4_arvalid,
      s_axi4_awaddr(23 downto 0) => B"000000000000000000000000",
      s_axi4_awburst(1 downto 0) => B"00",
      s_axi4_awcache(3 downto 0) => B"0000",
      s_axi4_awid(0) => '0',
      s_axi4_awlen(7 downto 0) => B"00000000",
      s_axi4_awlock => '0',
      s_axi4_awprot(2 downto 0) => B"000",
      s_axi4_awready => NLW_U0_s_axi4_awready_UNCONNECTED,
      s_axi4_awsize(2 downto 0) => B"000",
      s_axi4_awvalid => '0',
      s_axi4_bid(0) => NLW_U0_s_axi4_bid_UNCONNECTED(0),
      s_axi4_bready => '0',
      s_axi4_bresp(1 downto 0) => NLW_U0_s_axi4_bresp_UNCONNECTED(1 downto 0),
      s_axi4_bvalid => NLW_U0_s_axi4_bvalid_UNCONNECTED,
      s_axi4_rdata(31 downto 0) => s_axi4_rdata(31 downto 0),
      s_axi4_rid(0) => NLW_U0_s_axi4_rid_UNCONNECTED(0),
      s_axi4_rlast => s_axi4_rlast,
      s_axi4_rready => s_axi4_rready,
      s_axi4_rresp(1) => \^s_axi4_rresp\(1),
      s_axi4_rresp(0) => NLW_U0_s_axi4_rresp_UNCONNECTED(0),
      s_axi4_rvalid => s_axi4_rvalid,
      s_axi4_wdata(31 downto 0) => B"00000000000000000000000000000000",
      s_axi4_wlast => '0',
      s_axi4_wready => NLW_U0_s_axi4_wready_UNCONNECTED,
      s_axi4_wstrb(3 downto 0) => B"0000",
      s_axi4_wvalid => '0',
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(6 downto 3) => B"0000",
      s_axi_araddr(2) => s_axi_araddr(2),
      s_axi_araddr(1 downto 0) => B"00",
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(6 downto 3) => B"0000",
      s_axi_awaddr(2) => s_axi_awaddr(2),
      s_axi_awaddr(1 downto 0) => B"00",
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 5) => NLW_U0_s_axi_rdata_UNCONNECTED(31 downto 5),
      s_axi_rdata(4 downto 3) => \^s_axi_rdata\(4 downto 3),
      s_axi_rdata(2) => NLW_U0_s_axi_rdata_UNCONNECTED(2),
      s_axi_rdata(1 downto 0) => \^s_axi_rdata\(1 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 2) => B"000000000000000000000000000000",
      s_axi_wdata(1 downto 0) => s_axi_wdata(1 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => B"0000",
      s_axi_wvalid => s_axi_wvalid,
      sck_i => '0',
      sck_o => NLW_U0_sck_o_UNCONNECTED,
      sck_t => NLW_U0_sck_t_UNCONNECTED,
      spisel => '1',
      ss_1_i => '0',
      ss_1_o => NLW_U0_ss_1_o_UNCONNECTED,
      ss_1_t => NLW_U0_ss_1_t_UNCONNECTED,
      ss_i(0) => '0',
      ss_o(0) => ss_o(0),
      ss_t => ss_t,
      usrcclkts => usrcclkts,
      usrdoneo => usrdoneo,
      usrdonets => usrdonets
    );
end STRUCTURE;
