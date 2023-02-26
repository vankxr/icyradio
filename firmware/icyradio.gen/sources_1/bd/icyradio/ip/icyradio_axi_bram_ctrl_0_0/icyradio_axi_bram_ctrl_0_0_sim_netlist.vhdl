-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Wed Jan 11 17:27:13 2023
-- Host        : xubuntu-dev running 64-bit Ubuntu 20.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/joao/icyradio/firmware/icyradio.gen/sources_1/bd/icyradio/ip/icyradio_axi_bram_ctrl_0_0/icyradio_axi_bram_ctrl_0_0_sim_netlist.vhdl
-- Design      : icyradio_axi_bram_ctrl_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_bram_ctrl_0_0_SRL_FIFO is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    bid_gets_fifo_load : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]\ : out STD_LOGIC;
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0]\ : out STD_LOGIC;
    \Addr_Counters[3].FDRE_I_0\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AW2Arb_BVALID_Cnt : in STD_LOGIC_VECTOR ( 2 downto 0 );
    bid_gets_fifo_load_d1_reg : in STD_LOGIC;
    Data_Exists_DFF_0 : in STD_LOGIC;
    Arb2AW_Active : in STD_LOGIC;
    aw_active_re : in STD_LOGIC;
    bid_gets_fifo_load_d1 : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    Data_Exists_DFF_1 : in STD_LOGIC;
    bid_gets_fifo_load_d1_reg_0 : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    axi_wdata_full_reg : in STD_LOGIC;
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]\ : in STD_LOGIC;
    axi_wr_burst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_axi_bram_ctrl_0_0_SRL_FIFO : entity is "SRL_FIFO";
end icyradio_axi_bram_ctrl_0_0_SRL_FIFO;

architecture STRUCTURE of icyradio_axi_bram_ctrl_0_0_SRL_FIFO is
  signal \Addr_Counters[0].FDRE_I_n_0\ : STD_LOGIC;
  signal \Addr_Counters[1].FDRE_I_n_0\ : STD_LOGIC;
  signal \Addr_Counters[2].FDRE_I_n_0\ : STD_LOGIC;
  signal \Addr_Counters[3].FDRE_I_n_0\ : STD_LOGIC;
  signal \Addr_Counters[3].XORCY_I_i_1_n_0\ : STD_LOGIC;
  signal CI : STD_LOGIC;
  signal D_0 : STD_LOGIC;
  signal Data_Exists_DFF_i_2_n_0 : STD_LOGIC;
  signal Data_Exists_DFF_i_3_n_0 : STD_LOGIC;
  signal \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[0]\ : STD_LOGIC;
  signal \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[1]\ : STD_LOGIC;
  signal S : STD_LOGIC;
  signal S0_out : STD_LOGIC;
  signal S1_out : STD_LOGIC;
  signal addr_cy_1 : STD_LOGIC;
  signal addr_cy_2 : STD_LOGIC;
  signal addr_cy_3 : STD_LOGIC;
  signal \axi_bid_int[3]_i_3_n_0\ : STD_LOGIC;
  signal bid_fifo_not_empty : STD_LOGIC;
  signal bid_fifo_rd : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^bid_gets_fifo_load\ : STD_LOGIC;
  signal bid_gets_fifo_load_d1_i_2_n_0 : STD_LOGIC;
  signal sum_A_0 : STD_LOGIC;
  signal sum_A_1 : STD_LOGIC;
  signal sum_A_2 : STD_LOGIC;
  signal sum_A_3 : STD_LOGIC;
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \Addr_Counters[0].FDRE_I\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "LO:O";
  attribute BOX_TYPE of \Addr_Counters[1].FDRE_I\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \Addr_Counters[2].FDRE_I\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \Addr_Counters[3].FDRE_I\ : label is "PRIMITIVE";
  attribute BOX_TYPE of Data_Exists_DFF : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of Data_Exists_DFF : label is "FDR";
  attribute BOX_TYPE of \FIFO_RAM[0].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \FIFO_RAM[0].SRL16E_I\ : label is "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM ";
  attribute srl_name : string;
  attribute srl_name of \FIFO_RAM[0].SRL16E_I\ : label is "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[0].SRL16E_I ";
  attribute BOX_TYPE of \FIFO_RAM[1].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[1].SRL16E_I\ : label is "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[1].SRL16E_I\ : label is "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[1].SRL16E_I ";
  attribute BOX_TYPE of \FIFO_RAM[2].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[2].SRL16E_I\ : label is "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[2].SRL16E_I\ : label is "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[2].SRL16E_I ";
  attribute BOX_TYPE of \FIFO_RAM[3].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[3].SRL16E_I\ : label is "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[3].SRL16E_I\ : label is "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[3].SRL16E_I ";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_bid_int[1]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \axi_bid_int[2]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \axi_bid_int[3]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \axi_bid_int[3]_i_2\ : label is "soft_lutpair58";
begin
  \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0]\ <= \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[0]\;
  \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]\ <= \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[1]\;
  bid_gets_fifo_load <= \^bid_gets_fifo_load\;
\Addr_Counters[0].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => bid_fifo_not_empty,
      D => sum_A_3,
      Q => \Addr_Counters[0].FDRE_I_n_0\,
      R => \Addr_Counters[3].FDRE_I_0\
    );
\Addr_Counters[0].MUXCY_L_I_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED\(3),
      CO(2) => addr_cy_1,
      CO(1) => addr_cy_2,
      CO(0) => addr_cy_3,
      CYINIT => CI,
      DI(3) => \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED\(3),
      DI(2) => \Addr_Counters[2].FDRE_I_n_0\,
      DI(1) => \Addr_Counters[1].FDRE_I_n_0\,
      DI(0) => \Addr_Counters[0].FDRE_I_n_0\,
      O(3) => sum_A_0,
      O(2) => sum_A_1,
      O(1) => sum_A_2,
      O(0) => sum_A_3,
      S(3) => \Addr_Counters[3].XORCY_I_i_1_n_0\,
      S(2) => S0_out,
      S(1) => S1_out,
      S(0) => S
    );
\Addr_Counters[0].MUXCY_L_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFFFFE0000"
    )
        port map (
      I0 => \Addr_Counters[1].FDRE_I_n_0\,
      I1 => \Addr_Counters[3].FDRE_I_n_0\,
      I2 => \Addr_Counters[2].FDRE_I_n_0\,
      I3 => aw_active_re,
      I4 => \axi_bid_int[3]_i_3_n_0\,
      I5 => \Addr_Counters[0].FDRE_I_n_0\,
      O => S
    );
\Addr_Counters[0].MUXCY_L_I_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => aw_active_re,
      I1 => \axi_bid_int[3]_i_3_n_0\,
      I2 => \Addr_Counters[0].FDRE_I_n_0\,
      I3 => \Addr_Counters[1].FDRE_I_n_0\,
      I4 => \Addr_Counters[3].FDRE_I_n_0\,
      I5 => \Addr_Counters[2].FDRE_I_n_0\,
      O => CI
    );
\Addr_Counters[1].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => bid_fifo_not_empty,
      D => sum_A_2,
      Q => \Addr_Counters[1].FDRE_I_n_0\,
      R => \Addr_Counters[3].FDRE_I_0\
    );
\Addr_Counters[1].MUXCY_L_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFFFFE0000"
    )
        port map (
      I0 => \Addr_Counters[0].FDRE_I_n_0\,
      I1 => \Addr_Counters[3].FDRE_I_n_0\,
      I2 => \Addr_Counters[2].FDRE_I_n_0\,
      I3 => aw_active_re,
      I4 => \axi_bid_int[3]_i_3_n_0\,
      I5 => \Addr_Counters[1].FDRE_I_n_0\,
      O => S1_out
    );
\Addr_Counters[2].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => bid_fifo_not_empty,
      D => sum_A_1,
      Q => \Addr_Counters[2].FDRE_I_n_0\,
      R => \Addr_Counters[3].FDRE_I_0\
    );
\Addr_Counters[2].MUXCY_L_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFFFFE0000"
    )
        port map (
      I0 => \Addr_Counters[0].FDRE_I_n_0\,
      I1 => \Addr_Counters[1].FDRE_I_n_0\,
      I2 => \Addr_Counters[3].FDRE_I_n_0\,
      I3 => aw_active_re,
      I4 => \axi_bid_int[3]_i_3_n_0\,
      I5 => \Addr_Counters[2].FDRE_I_n_0\,
      O => S0_out
    );
\Addr_Counters[3].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => bid_fifo_not_empty,
      D => sum_A_0,
      Q => \Addr_Counters[3].FDRE_I_n_0\,
      R => \Addr_Counters[3].FDRE_I_0\
    );
\Addr_Counters[3].XORCY_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFFFFE0000"
    )
        port map (
      I0 => \Addr_Counters[0].FDRE_I_n_0\,
      I1 => \Addr_Counters[1].FDRE_I_n_0\,
      I2 => \Addr_Counters[2].FDRE_I_n_0\,
      I3 => aw_active_re,
      I4 => \axi_bid_int[3]_i_3_n_0\,
      I5 => \Addr_Counters[3].FDRE_I_n_0\,
      O => \Addr_Counters[3].XORCY_I_i_1_n_0\
    );
Data_Exists_DFF: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D_0,
      Q => bid_fifo_not_empty,
      R => \Addr_Counters[3].FDRE_I_0\
    );
Data_Exists_DFF_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF20022"
    )
        port map (
      I0 => Arb2AW_Active,
      I1 => Data_Exists_DFF_0,
      I2 => Data_Exists_DFF_i_2_n_0,
      I3 => Data_Exists_DFF_i_3_n_0,
      I4 => bid_fifo_not_empty,
      O => D_0
    );
Data_Exists_DFF_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AA3F"
    )
        port map (
      I0 => \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[1]\,
      I1 => Data_Exists_DFF_1,
      I2 => s_axi_bready,
      I3 => bid_gets_fifo_load_d1_i_2_n_0,
      I4 => bid_gets_fifo_load_d1,
      O => Data_Exists_DFF_i_2_n_0
    );
Data_Exists_DFF_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \Addr_Counters[0].FDRE_I_n_0\,
      I1 => \Addr_Counters[1].FDRE_I_n_0\,
      I2 => \Addr_Counters[3].FDRE_I_n_0\,
      I3 => \Addr_Counters[2].FDRE_I_n_0\,
      O => Data_Exists_DFF_i_3_n_0
    );
\FIFO_RAM[0].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \Addr_Counters[0].FDRE_I_n_0\,
      A1 => \Addr_Counters[1].FDRE_I_n_0\,
      A2 => \Addr_Counters[2].FDRE_I_n_0\,
      A3 => \Addr_Counters[3].FDRE_I_n_0\,
      CE => CI,
      CLK => s_axi_aclk,
      D => s_axi_awid(3),
      Q => bid_fifo_rd(3)
    );
\FIFO_RAM[1].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \Addr_Counters[0].FDRE_I_n_0\,
      A1 => \Addr_Counters[1].FDRE_I_n_0\,
      A2 => \Addr_Counters[2].FDRE_I_n_0\,
      A3 => \Addr_Counters[3].FDRE_I_n_0\,
      CE => CI,
      CLK => s_axi_aclk,
      D => s_axi_awid(2),
      Q => bid_fifo_rd(2)
    );
\FIFO_RAM[2].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \Addr_Counters[0].FDRE_I_n_0\,
      A1 => \Addr_Counters[1].FDRE_I_n_0\,
      A2 => \Addr_Counters[2].FDRE_I_n_0\,
      A3 => \Addr_Counters[3].FDRE_I_n_0\,
      CE => CI,
      CLK => s_axi_aclk,
      D => s_axi_awid(1),
      Q => bid_fifo_rd(1)
    );
\FIFO_RAM[3].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \Addr_Counters[0].FDRE_I_n_0\,
      A1 => \Addr_Counters[1].FDRE_I_n_0\,
      A2 => \Addr_Counters[2].FDRE_I_n_0\,
      A3 => \Addr_Counters[3].FDRE_I_n_0\,
      CE => CI,
      CLK => s_axi_aclk,
      D => s_axi_awid(0),
      Q => bid_fifo_rd(0)
    );
\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08A8"
    )
        port map (
      I0 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]\,
      I1 => s_axi_wlast,
      I2 => axi_wdata_full_reg,
      I3 => axi_wr_burst,
      O => \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[0]\
    );
\axi_bid_int[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awid(0),
      I1 => \^bid_gets_fifo_load\,
      I2 => bid_fifo_rd(0),
      O => D(0)
    );
\axi_bid_int[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awid(1),
      I1 => \^bid_gets_fifo_load\,
      I2 => bid_fifo_rd(1),
      O => D(1)
    );
\axi_bid_int[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awid(2),
      I1 => \^bid_gets_fifo_load\,
      I2 => bid_fifo_rd(2),
      O => D(2)
    );
\axi_bid_int[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^bid_gets_fifo_load\,
      I1 => \axi_bid_int[3]_i_3_n_0\,
      O => E(0)
    );
\axi_bid_int[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awid(3),
      I1 => \^bid_gets_fifo_load\,
      I2 => bid_fifo_rd(3),
      O => D(3)
    );
\axi_bid_int[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A888888AAA8A8A8"
    )
        port map (
      I0 => bid_fifo_not_empty,
      I1 => bid_gets_fifo_load_d1,
      I2 => bid_gets_fifo_load_d1_i_2_n_0,
      I3 => s_axi_bready,
      I4 => Data_Exists_DFF_1,
      I5 => \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[1]\,
      O => \axi_bid_int[3]_i_3_n_0\
    );
axi_bvalid_int_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000F7F7F7F7F7F7F"
    )
        port map (
      I0 => bid_gets_fifo_load_d1_reg_0,
      I1 => s_axi_wlast,
      I2 => s_axi_wvalid,
      I3 => axi_wdata_full_reg,
      I4 => Arb2AW_Active,
      I5 => \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[0]\,
      O => \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[1]\
    );
bid_gets_fifo_load_d1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100010000000100"
    )
        port map (
      I0 => \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[1]\,
      I1 => bid_gets_fifo_load_d1_reg,
      I2 => Data_Exists_DFF_0,
      I3 => Arb2AW_Active,
      I4 => bid_fifo_not_empty,
      I5 => bid_gets_fifo_load_d1_i_2_n_0,
      O => \^bid_gets_fifo_load\
    );
bid_gets_fifo_load_d1_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => AW2Arb_BVALID_Cnt(2),
      I1 => AW2Arb_BVALID_Cnt(1),
      I2 => AW2Arb_BVALID_Cnt(0),
      O => bid_gets_fifo_load_d1_i_2_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_bram_ctrl_0_0_sng_port_arb is
  port (
    s_axi_awready : out STD_LOGIC;
    axi_awready_cmb : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    axi_arready_cmb : out STD_LOGIC;
    last_arb_won : out STD_LOGIC;
    Arb2AW_Active : out STD_LOGIC;
    Arb2AR_Active : out STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[12]\ : out STD_LOGIC;
    s_axi_wvalid_0 : out STD_LOGIC;
    p_1_in : out STD_LOGIC_VECTOR ( 8 downto 0 );
    curr_narrow_burst_en : out STD_LOGIC;
    aw_active_re : out STD_LOGIC;
    ar_active_re : out STD_LOGIC;
    s_axi_arlen_2_sp_1 : out STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg\ : out STD_LOGIC;
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]\ : out STD_LOGIC;
    arb_sm_cs : out STD_LOGIC_VECTOR ( 1 downto 0 );
    last_arb_won_reg_0 : out STD_LOGIC;
    arb_sm_ns : out STD_LOGIC_VECTOR ( 0 to 0 );
    bram_we_a : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ar_active_reg_0 : out STD_LOGIC;
    ar_active_reg_1 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    last_arb_won_reg_1 : in STD_LOGIC;
    aw_active_reg_0 : in STD_LOGIC;
    ar_active_reg_2 : in STD_LOGIC;
    bram_addr_a : in STD_LOGIC_VECTOR ( 8 downto 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ADDR_SNG_PORT.bram_addr_int_reg[12]_0\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \ADDR_SNG_PORT.bram_addr_int_reg[12]_1\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[11]\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[11]_0\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[10]\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[10]_0\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[9]\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[9]_0\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[8]\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[8]_0\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[7]\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[7]_0\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[6]\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[6]_0\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[5]\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[5]_0\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[4]\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[3]\ : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ADDR_SNG_PORT.bram_addr_int_reg[3]_0\ : in STD_LOGIC;
    \GEN_NARROW_EN.curr_narrow_burst_reg\ : in STD_LOGIC;
    \GEN_NARROW_EN.curr_narrow_burst_reg_0\ : in STD_LOGIC;
    aw_active_d1 : in STD_LOGIC;
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \ADDR_SNG_PORT.bram_addr_int_reg[12]_2\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[12]_3\ : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[12]_4\ : in STD_LOGIC;
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \GEN_NO_RD_CMD_OPT.brst_zero_reg\ : in STD_LOGIC;
    ar_active_d1 : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    \FSM_sequential_arb_sm_cs_reg[0]_0\ : in STD_LOGIC;
    \FSM_sequential_arb_sm_cs_reg[0]_1\ : in STD_LOGIC;
    AW2Arb_Active_Clr : in STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg\ : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_axi_bram_ctrl_0_0_sng_port_arb : entity is "sng_port_arb";
end icyradio_axi_bram_ctrl_0_0_sng_port_arb;

architecture STRUCTURE of icyradio_axi_bram_ctrl_0_0_sng_port_arb is
  signal \^arb2ar_active\ : STD_LOGIC;
  signal \^arb2aw_active\ : STD_LOGIC;
  signal \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[2]\ : STD_LOGIC;
  signal \FSM_sequential_arb_sm_cs[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_arb_sm_cs[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_arb_sm_cs[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_arb_sm_cs[1]_i_2_n_0\ : STD_LOGIC;
  signal \^gen_no_rd_cmd_opt.axi_rlast_int_reg\ : STD_LOGIC;
  signal \^ar_active_re\ : STD_LOGIC;
  signal \^arb_sm_cs\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^aw_active_re\ : STD_LOGIC;
  signal \^axi_arready_cmb\ : STD_LOGIC;
  signal axi_arready_int_i_4_n_0 : STD_LOGIC;
  signal \^axi_awready_cmb\ : STD_LOGIC;
  signal \^last_arb_won\ : STD_LOGIC;
  signal s_axi_arlen_2_sn_1 : STD_LOGIC;
  signal \^s_axi_wvalid_0\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_arb_sm_cs_reg[0]\ : label is "wr_data:01,idle:00,rd_data:10";
  attribute FSM_ENCODED_STATES of \FSM_sequential_arb_sm_cs_reg[1]\ : label is "wr_data:01,idle:00,rd_data:10";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of axi_arready_int_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of axi_arready_int_i_3 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of axi_arready_int_i_4 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \bram_we_a[1]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \bram_we_a[2]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \bram_we_a[3]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \bram_we_a[4]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \bram_we_a[5]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \bram_we_a[6]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \bram_we_a[7]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of last_arb_won_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[12]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[12]_i_1__0\ : label is "soft_lutpair2";
begin
  Arb2AR_Active <= \^arb2ar_active\;
  Arb2AW_Active <= \^arb2aw_active\;
  \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]\ <= \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[2]\;
  \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg\ <= \^gen_no_rd_cmd_opt.axi_rlast_int_reg\;
  ar_active_re <= \^ar_active_re\;
  arb_sm_cs(1 downto 0) <= \^arb_sm_cs\(1 downto 0);
  aw_active_re <= \^aw_active_re\;
  axi_arready_cmb <= \^axi_arready_cmb\;
  axi_awready_cmb <= \^axi_awready_cmb\;
  last_arb_won <= \^last_arb_won\;
  s_axi_arlen_2_sp_1 <= s_axi_arlen_2_sn_1;
  s_axi_wvalid_0 <= \^s_axi_wvalid_0\;
\ADDR_SNG_PORT.bram_addr_int[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFFF00D1D1D1D1"
    )
        port map (
      I0 => \ADDR_SNG_PORT.bram_addr_int_reg[10]\,
      I1 => \^arb2ar_active\,
      I2 => \ADDR_SNG_PORT.bram_addr_int_reg[12]_0\(6),
      I3 => bram_addr_a(7),
      I4 => \ADDR_SNG_PORT.bram_addr_int_reg[10]_0\,
      I5 => \^s_axi_wvalid_0\,
      O => p_1_in(7)
    );
\ADDR_SNG_PORT.bram_addr_int[11]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00D1D1"
    )
        port map (
      I0 => \ADDR_SNG_PORT.bram_addr_int_reg[11]\,
      I1 => \^arb2ar_active\,
      I2 => \ADDR_SNG_PORT.bram_addr_int_reg[12]_0\(7),
      I3 => \ADDR_SNG_PORT.bram_addr_int_reg[11]_0\,
      I4 => \^s_axi_wvalid_0\,
      O => p_1_in(8)
    );
\ADDR_SNG_PORT.bram_addr_int[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BBB888B8"
    )
        port map (
      I0 => bram_addr_a(8),
      I1 => \^s_axi_wvalid_0\,
      I2 => D(0),
      I3 => \^arb2ar_active\,
      I4 => \ADDR_SNG_PORT.bram_addr_int_reg[12]_0\(8),
      I5 => \ADDR_SNG_PORT.bram_addr_int_reg[12]_1\,
      O => \ADDR_SNG_PORT.bram_addr_int_reg[12]\
    );
\ADDR_SNG_PORT.bram_addr_int[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010111111"
    )
        port map (
      I0 => \ADDR_SNG_PORT.bram_addr_int_reg[12]_2\,
      I1 => \^aw_active_re\,
      I2 => \ADDR_SNG_PORT.bram_addr_int_reg[12]_3\,
      I3 => s_axi_wvalid,
      I4 => \ADDR_SNG_PORT.bram_addr_int_reg[12]_4\,
      I5 => \^ar_active_re\,
      O => \^s_axi_wvalid_0\
    );
\ADDR_SNG_PORT.bram_addr_int[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555555FFFF0030"
    )
        port map (
      I0 => bram_addr_a(0),
      I1 => \ADDR_SNG_PORT.bram_addr_int_reg[3]\,
      I2 => s_axi_awaddr(0),
      I3 => \^arb2ar_active\,
      I4 => \ADDR_SNG_PORT.bram_addr_int_reg[3]_0\,
      I5 => \^s_axi_wvalid_0\,
      O => p_1_in(0)
    );
\ADDR_SNG_PORT.bram_addr_int[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F6F606F6060606F"
    )
        port map (
      I0 => bram_addr_a(1),
      I1 => bram_addr_a(0),
      I2 => \^s_axi_wvalid_0\,
      I3 => \ADDR_SNG_PORT.bram_addr_int_reg[4]\,
      I4 => \^arb2ar_active\,
      I5 => \ADDR_SNG_PORT.bram_addr_int_reg[12]_0\(0),
      O => p_1_in(1)
    );
\ADDR_SNG_PORT.bram_addr_int[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F6F606F6060606F"
    )
        port map (
      I0 => bram_addr_a(2),
      I1 => \ADDR_SNG_PORT.bram_addr_int_reg[5]\,
      I2 => \^s_axi_wvalid_0\,
      I3 => \ADDR_SNG_PORT.bram_addr_int_reg[5]_0\,
      I4 => \^arb2ar_active\,
      I5 => \ADDR_SNG_PORT.bram_addr_int_reg[12]_0\(1),
      O => p_1_in(2)
    );
\ADDR_SNG_PORT.bram_addr_int[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9F9F909F9090909F"
    )
        port map (
      I0 => bram_addr_a(3),
      I1 => \ADDR_SNG_PORT.bram_addr_int_reg[6]\,
      I2 => \^s_axi_wvalid_0\,
      I3 => \ADDR_SNG_PORT.bram_addr_int_reg[6]_0\,
      I4 => \^arb2ar_active\,
      I5 => \ADDR_SNG_PORT.bram_addr_int_reg[12]_0\(2),
      O => p_1_in(3)
    );
\ADDR_SNG_PORT.bram_addr_int[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9F9F909F9090909F"
    )
        port map (
      I0 => bram_addr_a(4),
      I1 => \ADDR_SNG_PORT.bram_addr_int_reg[7]\,
      I2 => \^s_axi_wvalid_0\,
      I3 => \ADDR_SNG_PORT.bram_addr_int_reg[7]_0\,
      I4 => \^arb2ar_active\,
      I5 => \ADDR_SNG_PORT.bram_addr_int_reg[12]_0\(3),
      O => p_1_in(4)
    );
\ADDR_SNG_PORT.bram_addr_int[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFFF00D1D1D1D1"
    )
        port map (
      I0 => \ADDR_SNG_PORT.bram_addr_int_reg[8]\,
      I1 => \^arb2ar_active\,
      I2 => \ADDR_SNG_PORT.bram_addr_int_reg[12]_0\(4),
      I3 => bram_addr_a(5),
      I4 => \ADDR_SNG_PORT.bram_addr_int_reg[8]_0\,
      I5 => \^s_axi_wvalid_0\,
      O => p_1_in(5)
    );
\ADDR_SNG_PORT.bram_addr_int[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFFF00D1D1D1D1"
    )
        port map (
      I0 => \ADDR_SNG_PORT.bram_addr_int_reg[9]\,
      I1 => \^arb2ar_active\,
      I2 => \ADDR_SNG_PORT.bram_addr_int_reg[12]_0\(5),
      I3 => bram_addr_a(6),
      I4 => \ADDR_SNG_PORT.bram_addr_int_reg[9]_0\,
      I5 => \^s_axi_wvalid_0\,
      O => p_1_in(6)
    );
\FSM_sequential_arb_sm_cs[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA08F008FAF8F0F8"
    )
        port map (
      I0 => \FSM_sequential_arb_sm_cs_reg[0]_1\,
      I1 => \FSM_sequential_arb_sm_cs[0]_i_2_n_0\,
      I2 => \^arb_sm_cs\(0),
      I3 => \^arb_sm_cs\(1),
      I4 => \FSM_sequential_arb_sm_cs_reg[0]_0\,
      I5 => AW2Arb_Active_Clr,
      O => \FSM_sequential_arb_sm_cs[0]_i_1_n_0\
    );
\FSM_sequential_arb_sm_cs[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \^last_arb_won\,
      I1 => s_axi_awvalid,
      I2 => s_axi_arvalid,
      O => \FSM_sequential_arb_sm_cs[0]_i_2_n_0\
    );
\FSM_sequential_arb_sm_cs[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0030FFFFF0700000"
    )
        port map (
      I0 => \^last_arb_won\,
      I1 => s_axi_awvalid,
      I2 => s_axi_arvalid,
      I3 => \^arb_sm_cs\(0),
      I4 => \FSM_sequential_arb_sm_cs[1]_i_2_n_0\,
      I5 => \^arb_sm_cs\(1),
      O => \FSM_sequential_arb_sm_cs[1]_i_1_n_0\
    );
\FSM_sequential_arb_sm_cs[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFFECCFECFCECCCE"
    )
        port map (
      I0 => \FSM_sequential_arb_sm_cs_reg[0]_1\,
      I1 => axi_arready_int_i_4_n_0,
      I2 => \^arb_sm_cs\(0),
      I3 => \^arb_sm_cs\(1),
      I4 => \FSM_sequential_arb_sm_cs_reg[0]_0\,
      I5 => AW2Arb_Active_Clr,
      O => \FSM_sequential_arb_sm_cs[1]_i_2_n_0\
    );
\FSM_sequential_arb_sm_cs_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_sequential_arb_sm_cs[0]_i_1_n_0\,
      Q => \^arb_sm_cs\(0),
      R => ar_active_reg_1
    );
\FSM_sequential_arb_sm_cs_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_sequential_arb_sm_cs[1]_i_1_n_0\,
      Q => \^arb_sm_cs\(1),
      R => ar_active_reg_1
    );
\GEN_NARROW_EN.curr_narrow_burst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E000E000E00000"
    )
        port map (
      I0 => \GEN_NARROW_EN.curr_narrow_burst_reg\,
      I1 => \GEN_NARROW_EN.curr_narrow_burst_reg_0\,
      I2 => \^arb2aw_active\,
      I3 => aw_active_d1,
      I4 => s_axi_awburst(0),
      I5 => s_axi_awburst(1),
      O => curr_narrow_burst_en
    );
\GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0888"
    )
        port map (
      I0 => \^arb2ar_active\,
      I1 => s_axi_aresetn,
      I2 => s_axi_rready,
      I3 => \GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg\,
      O => ar_active_reg_0
    );
\GEN_NO_RD_CMD_OPT.brst_zero_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA8AAAAAAAA"
    )
        port map (
      I0 => \^ar_active_re\,
      I1 => s_axi_arlen(2),
      I2 => s_axi_arlen(3),
      I3 => s_axi_arlen(0),
      I4 => s_axi_arlen(1),
      I5 => \GEN_NO_RD_CMD_OPT.brst_zero_reg\,
      O => s_axi_arlen_2_sn_1
    );
ar_active_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF007000000070"
    )
        port map (
      I0 => \^last_arb_won\,
      I1 => s_axi_awvalid,
      I2 => s_axi_arvalid,
      I3 => \^arb_sm_cs\(0),
      I4 => \^arb_sm_cs\(1),
      I5 => \FSM_sequential_arb_sm_cs_reg[0]_0\,
      O => last_arb_won_reg_0
    );
ar_active_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => ar_active_reg_2,
      Q => \^arb2ar_active\,
      R => ar_active_reg_1
    );
aw_active_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => aw_active_reg_0,
      Q => \^arb2aw_active\,
      R => ar_active_reg_1
    );
axi_arready_int_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF020"
    )
        port map (
      I0 => \^gen_no_rd_cmd_opt.axi_rlast_int_reg\,
      I1 => s_axi_awvalid,
      I2 => s_axi_arvalid,
      I3 => \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[2]\,
      I4 => axi_arready_int_i_4_n_0,
      O => \^axi_arready_cmb\
    );
axi_arready_int_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg\,
      I1 => s_axi_rready,
      I2 => \^arb_sm_cs\(1),
      I3 => \^arb_sm_cs\(0),
      O => \^gen_no_rd_cmd_opt.axi_rlast_int_reg\
    );
axi_arready_int_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => AW2Arb_Active_Clr,
      I1 => \^arb_sm_cs\(0),
      I2 => \^arb_sm_cs\(1),
      O => \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[2]\
    );
axi_arready_int_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00101010"
    )
        port map (
      I0 => \^arb_sm_cs\(0),
      I1 => \^arb_sm_cs\(1),
      I2 => s_axi_arvalid,
      I3 => s_axi_awvalid,
      I4 => \^last_arb_won\,
      O => axi_arready_int_i_4_n_0
    );
axi_arready_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^axi_arready_cmb\,
      Q => s_axi_arready,
      R => ar_active_reg_1
    );
axi_awready_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA000000F300"
    )
        port map (
      I0 => \FSM_sequential_arb_sm_cs_reg[0]_0\,
      I1 => s_axi_arvalid,
      I2 => \^last_arb_won\,
      I3 => \FSM_sequential_arb_sm_cs_reg[0]_1\,
      I4 => \^arb_sm_cs\(0),
      I5 => \^arb_sm_cs\(1),
      O => \^axi_awready_cmb\
    );
axi_awready_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^axi_awready_cmb\,
      Q => s_axi_awready,
      R => ar_active_reg_1
    );
\bram_we_a[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^arb2aw_active\,
      I1 => Q(0),
      O => bram_we_a(0)
    );
\bram_we_a[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^arb2aw_active\,
      I1 => Q(1),
      O => bram_we_a(1)
    );
\bram_we_a[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^arb2aw_active\,
      I1 => Q(2),
      O => bram_we_a(2)
    );
\bram_we_a[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^arb2aw_active\,
      I1 => Q(3),
      O => bram_we_a(3)
    );
\bram_we_a[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^arb2aw_active\,
      I1 => Q(4),
      O => bram_we_a(4)
    );
\bram_we_a[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^arb2aw_active\,
      I1 => Q(5),
      O => bram_we_a(5)
    );
\bram_we_a[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^arb2aw_active\,
      I1 => Q(6),
      O => bram_we_a(6)
    );
\bram_we_a[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^arb2aw_active\,
      I1 => Q(7),
      O => bram_we_a(7)
    );
last_arb_won_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00F03070"
    )
        port map (
      I0 => \^last_arb_won\,
      I1 => s_axi_awvalid,
      I2 => s_axi_arvalid,
      I3 => \^arb_sm_cs\(1),
      I4 => \^arb_sm_cs\(0),
      O => arb_sm_ns(0)
    );
last_arb_won_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => last_arb_won_reg_1,
      Q => \^last_arb_won\,
      R => ar_active_reg_1
    );
\save_init_bram_addr_ld[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^arb2aw_active\,
      I1 => aw_active_d1,
      O => \^aw_active_re\
    );
\save_init_bram_addr_ld[12]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^arb2ar_active\,
      I1 => ar_active_d1,
      O => \^ar_active_re\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_bram_ctrl_0_0_ua_narrow is
  port (
    \GEN_NARROW_CNT.narrow_addr_int_reg[1]\ : out STD_LOGIC;
    \GEN_NARROW_CNT.narrow_addr_int_reg[0]\ : out STD_LOGIC;
    \GEN_NARROW_CNT.narrow_addr_int_reg[0]_0\ : out STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    D : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \GEN_NARROW_CNT.narrow_addr_int_reg[1]_0\ : in STD_LOGIC;
    s_axi_awburst : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_NARROW_CNT.narrow_addr_int_reg[1]_1\ : in STD_LOGIC;
    \GEN_NARROW_CNT.narrow_addr_int_reg[1]_2\ : in STD_LOGIC;
    \GEN_NARROW_CNT.narrow_addr_int_reg[2]\ : in STD_LOGIC;
    \GEN_NARROW_CNT.narrow_addr_int_reg[0]_1\ : in STD_LOGIC;
    narrow_addr_int : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \GEN_NARROW_CNT.narrow_addr_int_reg[2]_0\ : in STD_LOGIC;
    \GEN_NARROW_CNT.narrow_addr_int_reg[2]_1\ : in STD_LOGIC;
    curr_narrow_burst : in STD_LOGIC;
    \GEN_NARROW_CNT.narrow_addr_int_reg[1]_3\ : in STD_LOGIC;
    \GEN_NARROW_CNT.narrow_addr_int_reg[0]_2\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_axi_bram_ctrl_0_0_ua_narrow : entity is "ua_narrow";
end icyradio_axi_bram_ctrl_0_0_ua_narrow;

architecture STRUCTURE of icyradio_axi_bram_ctrl_0_0_ua_narrow is
  signal \GEN_NARROW_CNT.narrow_addr_int[0]_i_3_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[1]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[2]_i_3_n_0\ : STD_LOGIC;
  signal \ua_narrow_load1_carry_i_1__0_n_0\ : STD_LOGIC;
  signal ua_narrow_load1_carry_i_2_n_0 : STD_LOGIC;
  signal ua_narrow_load1_carry_i_3_n_0 : STD_LOGIC;
  signal \ua_narrow_load1_carry_i_4__0_n_0\ : STD_LOGIC;
  signal ua_narrow_load1_carry_n_2 : STD_LOGIC;
  signal ua_narrow_load1_carry_n_3 : STD_LOGIC;
  signal NLW_ua_narrow_load1_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_ua_narrow_load1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
\GEN_NARROW_CNT.narrow_addr_int[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4540FFFFEFEA0000"
    )
        port map (
      I0 => \GEN_NARROW_CNT.narrow_addr_int_reg[2]_0\,
      I1 => D(0),
      I2 => \GEN_NARROW_CNT.narrow_addr_int_reg[0]_2\,
      I3 => \GEN_NARROW_CNT.narrow_addr_int[0]_i_3_n_0\,
      I4 => \GEN_NARROW_CNT.narrow_addr_int_reg[2]_1\,
      I5 => narrow_addr_int(0),
      O => \GEN_NARROW_CNT.narrow_addr_int_reg[0]_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ua_narrow_load1_carry_n_2,
      I1 => \GEN_NARROW_CNT.narrow_addr_int_reg[0]_1\,
      O => \GEN_NARROW_CNT.narrow_addr_int[0]_i_3_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAFCCCC0050CCCC"
    )
        port map (
      I0 => narrow_addr_int(0),
      I1 => \GEN_NARROW_CNT.narrow_addr_int[1]_i_2_n_0\,
      I2 => curr_narrow_burst,
      I3 => \GEN_NARROW_CNT.narrow_addr_int_reg[1]_3\,
      I4 => \GEN_NARROW_CNT.narrow_addr_int_reg[2]_0\,
      I5 => narrow_addr_int(1),
      O => \GEN_NARROW_CNT.narrow_addr_int_reg[0]\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA20AA20AAEFAA20"
    )
        port map (
      I0 => D(1),
      I1 => \GEN_NARROW_CNT.narrow_addr_int_reg[1]_0\,
      I2 => s_axi_awburst(0),
      I3 => \GEN_NARROW_CNT.narrow_addr_int_reg[1]_1\,
      I4 => ua_narrow_load1_carry_n_2,
      I5 => \GEN_NARROW_CNT.narrow_addr_int_reg[1]_2\,
      O => \GEN_NARROW_CNT.narrow_addr_int[1]_i_2_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0FFFF1F100000"
    )
        port map (
      I0 => narrow_addr_int(1),
      I1 => narrow_addr_int(0),
      I2 => \GEN_NARROW_CNT.narrow_addr_int_reg[2]_0\,
      I3 => \GEN_NARROW_CNT.narrow_addr_int[2]_i_3_n_0\,
      I4 => \GEN_NARROW_CNT.narrow_addr_int_reg[2]_1\,
      I5 => narrow_addr_int(2),
      O => \GEN_NARROW_CNT.narrow_addr_int_reg[1]\
    );
\GEN_NARROW_CNT.narrow_addr_int[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEFAA20AA20AA20"
    )
        port map (
      I0 => D(2),
      I1 => \GEN_NARROW_CNT.narrow_addr_int_reg[1]_0\,
      I2 => s_axi_awburst(0),
      I3 => \GEN_NARROW_CNT.narrow_addr_int_reg[1]_1\,
      I4 => ua_narrow_load1_carry_n_2,
      I5 => \GEN_NARROW_CNT.narrow_addr_int_reg[2]\,
      O => \GEN_NARROW_CNT.narrow_addr_int[2]_i_3_n_0\
    );
ua_narrow_load1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => NLW_ua_narrow_load1_carry_CO_UNCONNECTED(3 downto 2),
      CO(1) => ua_narrow_load1_carry_n_2,
      CO(0) => ua_narrow_load1_carry_n_3,
      CYINIT => '1',
      DI(3 downto 2) => B"00",
      DI(1) => \ua_narrow_load1_carry_i_1__0_n_0\,
      DI(0) => ua_narrow_load1_carry_i_2_n_0,
      O(3 downto 0) => NLW_ua_narrow_load1_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => ua_narrow_load1_carry_i_3_n_0,
      S(0) => \ua_narrow_load1_carry_i_4__0_n_0\
    );
\ua_narrow_load1_carry_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000777F"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => s_axi_awaddr(1),
      I2 => s_axi_awsize(0),
      I3 => s_axi_awaddr(0),
      I4 => s_axi_awsize(1),
      I5 => s_axi_awsize(2),
      O => \ua_narrow_load1_carry_i_1__0_n_0\
    );
ua_narrow_load1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awsize(1),
      I3 => s_axi_awsize(2),
      O => ua_narrow_load1_carry_i_2_n_0
    );
ua_narrow_load1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEEEEEEEEEEEEE"
    )
        port map (
      I0 => s_axi_awsize(2),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awaddr(0),
      I3 => s_axi_awsize(0),
      I4 => s_axi_awaddr(1),
      I5 => s_axi_awaddr(2),
      O => ua_narrow_load1_carry_i_3_n_0
    );
\ua_narrow_load1_carry_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0C0F080F000008"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => s_axi_awaddr(1),
      I2 => s_axi_awsize(2),
      I3 => s_axi_awsize(1),
      I4 => s_axi_awsize(0),
      I5 => s_axi_awaddr(2),
      O => \ua_narrow_load1_carry_i_4__0_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_bram_ctrl_0_0_ua_narrow_0 is
  port (
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]\ : out STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_0\ : out STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_1\ : out STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_2\ : in STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_3\ : in STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_4\ : in STD_LOGIC;
    ar_active_re : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1]\ : in STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1]_0\ : in STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2]\ : in STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2]_0\ : in STD_LOGIC;
    narrow_addr_int : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2]_1\ : in STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2]_2\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_axi_bram_ctrl_0_0_ua_narrow_0 : entity is "ua_narrow";
end icyradio_axi_bram_ctrl_0_0_ua_narrow_0;

architecture STRUCTURE of icyradio_axi_bram_ctrl_0_0_ua_narrow_0 is
  signal \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_3_n_0\ : STD_LOGIC;
  signal ua_narrow_load1_carry_i_1_n_0 : STD_LOGIC;
  signal \ua_narrow_load1_carry_i_2__0_n_0\ : STD_LOGIC;
  signal \ua_narrow_load1_carry_i_3__0_n_0\ : STD_LOGIC;
  signal ua_narrow_load1_carry_i_4_n_0 : STD_LOGIC;
  signal ua_narrow_load1_carry_n_2 : STD_LOGIC;
  signal ua_narrow_load1_carry_n_3 : STD_LOGIC;
  signal NLW_ua_narrow_load1_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_ua_narrow_load1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4FE0"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2]_1\,
      I1 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_2_n_0\,
      I2 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2]_2\,
      I3 => narrow_addr_int(0),
      O => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_1\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"202F2F2F202F2020"
    )
        port map (
      I0 => ua_narrow_load1_carry_n_2,
      I1 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_2\,
      I2 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_3\,
      I3 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_4\,
      I4 => ar_active_re,
      I5 => Q(0),
      O => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_2_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FF7400"
    )
        port map (
      I0 => narrow_addr_int(0),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2]_1\,
      I2 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_2_n_0\,
      I3 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2]_2\,
      I4 => narrow_addr_int(1),
      O => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"202F2F2F202F2020"
    )
        port map (
      I0 => ua_narrow_load1_carry_n_2,
      I1 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1]\,
      I2 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_3\,
      I3 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1]_0\,
      I4 => ar_active_re,
      I5 => Q(1),
      O => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_2_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0FFFF1F100000"
    )
        port map (
      I0 => narrow_addr_int(0),
      I1 => narrow_addr_int(1),
      I2 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2]_1\,
      I3 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_3_n_0\,
      I4 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2]_2\,
      I5 => narrow_addr_int(2),
      O => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"808F8F8F808F8080"
    )
        port map (
      I0 => ua_narrow_load1_carry_n_2,
      I1 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2]\,
      I2 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_3\,
      I3 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2]_0\,
      I4 => ar_active_re,
      I5 => Q(2),
      O => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_3_n_0\
    );
ua_narrow_load1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => NLW_ua_narrow_load1_carry_CO_UNCONNECTED(3 downto 2),
      CO(1) => ua_narrow_load1_carry_n_2,
      CO(0) => ua_narrow_load1_carry_n_3,
      CYINIT => '1',
      DI(3 downto 2) => B"00",
      DI(1) => ua_narrow_load1_carry_i_1_n_0,
      DI(0) => \ua_narrow_load1_carry_i_2__0_n_0\,
      O(3 downto 0) => NLW_ua_narrow_load1_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \ua_narrow_load1_carry_i_3__0_n_0\,
      S(0) => ua_narrow_load1_carry_i_4_n_0
    );
ua_narrow_load1_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000005F0000007F"
    )
        port map (
      I0 => s_axi_araddr(2),
      I1 => s_axi_araddr(0),
      I2 => s_axi_araddr(1),
      I3 => s_axi_arsize(1),
      I4 => s_axi_arsize(2),
      I5 => s_axi_arsize(0),
      O => ua_narrow_load1_carry_i_1_n_0
    );
\ua_narrow_load1_carry_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => s_axi_araddr(2),
      I1 => s_axi_arsize(1),
      I2 => s_axi_arsize(0),
      I3 => s_axi_arsize(2),
      O => \ua_narrow_load1_carry_i_2__0_n_0\
    );
\ua_narrow_load1_carry_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCFEFCFCFCFCFC"
    )
        port map (
      I0 => s_axi_arsize(0),
      I1 => s_axi_arsize(2),
      I2 => s_axi_arsize(1),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(0),
      I5 => s_axi_araddr(2),
      O => \ua_narrow_load1_carry_i_3__0_n_0\
    );
ua_narrow_load1_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5554505041404040"
    )
        port map (
      I0 => s_axi_arsize(2),
      I1 => s_axi_arsize(0),
      I2 => s_axi_arsize(1),
      I3 => s_axi_araddr(0),
      I4 => s_axi_araddr(1),
      I5 => s_axi_araddr(2),
      O => ua_narrow_load1_carry_i_4_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_bram_ctrl_0_0_wrap_brst is
  port (
    aw_active_d1_reg : out STD_LOGIC;
    curr_wrap_burst_reg_reg : out STD_LOGIC;
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]\ : out STD_LOGIC;
    s_axi_wvalid_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \save_init_bram_addr_ld_reg[11]_0\ : out STD_LOGIC;
    \save_init_bram_addr_ld_reg[10]_0\ : out STD_LOGIC;
    \save_init_bram_addr_ld_reg[9]_0\ : out STD_LOGIC;
    \save_init_bram_addr_ld_reg[8]_0\ : out STD_LOGIC;
    \save_init_bram_addr_ld_reg[7]_0\ : out STD_LOGIC;
    \save_init_bram_addr_ld_reg[6]_0\ : out STD_LOGIC;
    aw_active_d1_reg_0 : out STD_LOGIC;
    s_axi_awaddr_4_sp_1 : out STD_LOGIC;
    s_axi_awsize_0_sp_1 : out STD_LOGIC;
    s_axi_awvalid_0 : out STD_LOGIC;
    curr_wrap_burst_reg_reg_0 : out STD_LOGIC;
    curr_fixed_burst_reg_reg : out STD_LOGIC;
    \save_init_bram_addr_ld_reg[12]_0\ : in STD_LOGIC;
    Arb2AW_Active : in STD_LOGIC;
    aw_active_re : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[11]\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[11]_0\ : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \ADDR_SNG_PORT.bram_addr_int_reg[11]_1\ : in STD_LOGIC;
    curr_wrap_burst_reg : in STD_LOGIC;
    curr_narrow_burst : in STD_LOGIC;
    narrow_addr_int : in STD_LOGIC_VECTOR ( 2 downto 0 );
    narrow_bram_addr_inc_d1 : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[11]_2\ : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    bram_addr_a : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    curr_fixed_burst_reg : in STD_LOGIC;
    \wrap_burst_total_reg[0]_0\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_axi_bram_ctrl_0_0_wrap_brst : entity is "wrap_brst";
end icyradio_axi_bram_ctrl_0_0_wrap_brst;

architecture STRUCTURE of icyradio_axi_bram_ctrl_0_0_wrap_brst is
  signal \ADDR_SNG_PORT.bram_addr_int[11]_i_10_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int[11]_i_11_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int[11]_i_12_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int[4]_i_3_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int[5]_i_4_n_0\ : STD_LOGIC;
  signal \^d\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[2]\ : STD_LOGIC;
  signal WrChnl_BRAM_Addr_Ld : STD_LOGIC_VECTOR ( 11 downto 4 );
  signal \^aw_active_d1_reg\ : STD_LOGIC;
  signal \^curr_wrap_burst_reg_reg\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal s_axi_awaddr_4_sn_1 : STD_LOGIC;
  signal s_axi_awsize_0_sn_1 : STD_LOGIC;
  signal \^s_axi_awvalid_0\ : STD_LOGIC;
  signal \^s_axi_wvalid_0\ : STD_LOGIC;
  signal wrap_burst_total : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \wrap_burst_total[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \wrap_burst_total[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \wrap_burst_total[1]_i_2_n_0\ : STD_LOGIC;
  signal \wrap_burst_total[1]_i_3_n_0\ : STD_LOGIC;
  signal wrap_burst_total_cmb : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[11]_i_11\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[3]_i_2\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[5]_i_4\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[10]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[11]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[12]_i_2\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[8]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[9]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \wrap_burst_total[0]_i_3\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \wrap_burst_total[1]_i_3\ : label is "soft_lutpair62";
begin
  D(0) <= \^d\(0);
  \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]\ <= \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[2]\;
  aw_active_d1_reg <= \^aw_active_d1_reg\;
  curr_wrap_burst_reg_reg <= \^curr_wrap_burst_reg_reg\;
  s_axi_awaddr_4_sp_1 <= s_axi_awaddr_4_sn_1;
  s_axi_awsize_0_sp_1 <= s_axi_awsize_0_sn_1;
  s_axi_awvalid_0 <= \^s_axi_awvalid_0\;
  s_axi_wvalid_0 <= \^s_axi_wvalid_0\;
\ADDR_SNG_PORT.bram_addr_int[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0045FF75"
    )
        port map (
      I0 => data0(7),
      I1 => \save_init_bram_addr_ld_reg[12]_0\,
      I2 => Arb2AW_Active,
      I3 => \^curr_wrap_burst_reg_reg\,
      I4 => s_axi_awaddr(6),
      O => \save_init_bram_addr_ld_reg[10]_0\
    );
\ADDR_SNG_PORT.bram_addr_int[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00005400FFFFFFFF"
    )
        port map (
      I0 => aw_active_re,
      I1 => \^curr_wrap_burst_reg_reg\,
      I2 => \^s_axi_wvalid_0\,
      I3 => \ADDR_SNG_PORT.bram_addr_int_reg[11]\,
      I4 => \ADDR_SNG_PORT.bram_addr_int_reg[11]_0\,
      I5 => s_axi_aresetn,
      O => \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[2]\
    );
\ADDR_SNG_PORT.bram_addr_int[11]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008F00A000"
    )
        port map (
      I0 => bram_addr_a(1),
      I1 => bram_addr_a(2),
      I2 => wrap_burst_total(1),
      I3 => bram_addr_a(0),
      I4 => wrap_burst_total(0),
      I5 => wrap_burst_total(2),
      O => \ADDR_SNG_PORT.bram_addr_int[11]_i_10_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[11]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => wrap_burst_total(1),
      I1 => wrap_burst_total(2),
      I2 => wrap_burst_total(0),
      O => \ADDR_SNG_PORT.bram_addr_int[11]_i_11_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[11]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
        port map (
      I0 => curr_narrow_burst,
      I1 => \^s_axi_wvalid_0\,
      I2 => narrow_addr_int(1),
      I3 => narrow_addr_int(0),
      I4 => narrow_addr_int(2),
      I5 => narrow_bram_addr_inc_d1,
      O => \ADDR_SNG_PORT.bram_addr_int[11]_i_12_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[11]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF54FF"
    )
        port map (
      I0 => \ADDR_SNG_PORT.bram_addr_int[11]_i_10_n_0\,
      I1 => \ADDR_SNG_PORT.bram_addr_int_reg[11]_1\,
      I2 => \ADDR_SNG_PORT.bram_addr_int[11]_i_11_n_0\,
      I3 => curr_wrap_burst_reg,
      I4 => \ADDR_SNG_PORT.bram_addr_int[11]_i_12_n_0\,
      O => \^curr_wrap_burst_reg_reg\
    );
\ADDR_SNG_PORT.bram_addr_int[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => \ADDR_SNG_PORT.bram_addr_int_reg[11]_2\,
      O => \^s_axi_wvalid_0\
    );
\ADDR_SNG_PORT.bram_addr_int[11]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0045FF75"
    )
        port map (
      I0 => data0(8),
      I1 => \save_init_bram_addr_ld_reg[12]_0\,
      I2 => Arb2AW_Active,
      I3 => \^curr_wrap_burst_reg_reg\,
      I4 => s_axi_awaddr(7),
      O => \save_init_bram_addr_ld_reg[11]_0\
    );
\ADDR_SNG_PORT.bram_addr_int[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0B"
    )
        port map (
      I0 => \save_init_bram_addr_ld_reg[12]_0\,
      I1 => Arb2AW_Active,
      I2 => \^curr_wrap_burst_reg_reg\,
      O => \^aw_active_d1_reg\
    );
\ADDR_SNG_PORT.bram_addr_int[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5757575754575757"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => aw_active_re,
      I2 => \^curr_wrap_burst_reg_reg\,
      I3 => \ADDR_SNG_PORT.bram_addr_int[11]_i_11_n_0\,
      I4 => data0(1),
      I5 => \ADDR_SNG_PORT.bram_addr_int[4]_i_3_n_0\,
      O => s_axi_awaddr_4_sn_1
    );
\ADDR_SNG_PORT.bram_addr_int[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wrap_burst_total(1),
      I1 => wrap_burst_total(2),
      O => \ADDR_SNG_PORT.bram_addr_int[4]_i_3_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0045FF75"
    )
        port map (
      I0 => \ADDR_SNG_PORT.bram_addr_int[5]_i_4_n_0\,
      I1 => \save_init_bram_addr_ld_reg[12]_0\,
      I2 => Arb2AW_Active,
      I3 => \^curr_wrap_burst_reg_reg\,
      I4 => s_axi_awaddr(1),
      O => aw_active_d1_reg_0
    );
\ADDR_SNG_PORT.bram_addr_int[5]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A28A"
    )
        port map (
      I0 => data0(2),
      I1 => wrap_burst_total(0),
      I2 => wrap_burst_total(2),
      I3 => wrap_burst_total(1),
      O => \ADDR_SNG_PORT.bram_addr_int[5]_i_4_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007077FFFF7F77"
    )
        port map (
      I0 => data0(3),
      I1 => \ADDR_SNG_PORT.bram_addr_int[11]_i_11_n_0\,
      I2 => \save_init_bram_addr_ld_reg[12]_0\,
      I3 => Arb2AW_Active,
      I4 => \^curr_wrap_burst_reg_reg\,
      I5 => s_axi_awaddr(2),
      O => \save_init_bram_addr_ld_reg[6]_0\
    );
\ADDR_SNG_PORT.bram_addr_int[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0045FF75"
    )
        port map (
      I0 => data0(4),
      I1 => \save_init_bram_addr_ld_reg[12]_0\,
      I2 => Arb2AW_Active,
      I3 => \^curr_wrap_burst_reg_reg\,
      I4 => s_axi_awaddr(3),
      O => \save_init_bram_addr_ld_reg[7]_0\
    );
\ADDR_SNG_PORT.bram_addr_int[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0045FF75"
    )
        port map (
      I0 => data0(5),
      I1 => \save_init_bram_addr_ld_reg[12]_0\,
      I2 => Arb2AW_Active,
      I3 => \^curr_wrap_burst_reg_reg\,
      I4 => s_axi_awaddr(4),
      O => \save_init_bram_addr_ld_reg[8]_0\
    );
\ADDR_SNG_PORT.bram_addr_int[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0045FF75"
    )
        port map (
      I0 => data0(6),
      I1 => \save_init_bram_addr_ld_reg[12]_0\,
      I2 => Arb2AW_Active,
      I3 => \^curr_wrap_burst_reg_reg\,
      I4 => s_axi_awaddr(5),
      O => \save_init_bram_addr_ld_reg[9]_0\
    );
curr_fixed_burst_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008A8A8ABA"
    )
        port map (
      I0 => curr_fixed_burst_reg,
      I1 => \save_init_bram_addr_ld_reg[12]_0\,
      I2 => Arb2AW_Active,
      I3 => s_axi_awburst(1),
      I4 => s_axi_awburst(0),
      I5 => \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[2]\,
      O => curr_fixed_burst_reg_reg
    );
curr_wrap_burst_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008ABA8A8A"
    )
        port map (
      I0 => curr_wrap_burst_reg,
      I1 => \save_init_bram_addr_ld_reg[12]_0\,
      I2 => Arb2AW_Active,
      I3 => s_axi_awburst(0),
      I4 => s_axi_awburst(1),
      I5 => \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[2]\,
      O => curr_wrap_burst_reg_reg_0
    );
\save_init_bram_addr_ld[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => s_axi_awaddr(6),
      I1 => \^aw_active_d1_reg\,
      I2 => data0(7),
      O => WrChnl_BRAM_Addr_Ld(10)
    );
\save_init_bram_addr_ld[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => s_axi_awaddr(7),
      I1 => \^aw_active_d1_reg\,
      I2 => data0(8),
      O => WrChnl_BRAM_Addr_Ld(11)
    );
\save_init_bram_addr_ld[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBA008A"
    )
        port map (
      I0 => data0(9),
      I1 => \save_init_bram_addr_ld_reg[12]_0\,
      I2 => Arb2AW_Active,
      I3 => \^curr_wrap_burst_reg_reg\,
      I4 => s_axi_awaddr(8),
      O => \^d\(0)
    );
\save_init_bram_addr_ld[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B090FFFFB0900000"
    )
        port map (
      I0 => wrap_burst_total(2),
      I1 => wrap_burst_total(1),
      I2 => data0(1),
      I3 => wrap_burst_total(0),
      I4 => \^aw_active_d1_reg\,
      I5 => s_axi_awaddr(0),
      O => WrChnl_BRAM_Addr_Ld(4)
    );
\save_init_bram_addr_ld[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EE2EE2EE22222222"
    )
        port map (
      I0 => s_axi_awaddr(1),
      I1 => \^aw_active_d1_reg\,
      I2 => wrap_burst_total(1),
      I3 => wrap_burst_total(2),
      I4 => wrap_burst_total(0),
      I5 => data0(2),
      O => WrChnl_BRAM_Addr_Ld(5)
    );
\save_init_bram_addr_ld[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEE2EE22222222"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => \^aw_active_d1_reg\,
      I2 => wrap_burst_total(1),
      I3 => wrap_burst_total(2),
      I4 => wrap_burst_total(0),
      I5 => data0(3),
      O => WrChnl_BRAM_Addr_Ld(6)
    );
\save_init_bram_addr_ld[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => s_axi_awaddr(3),
      I1 => \^aw_active_d1_reg\,
      I2 => data0(4),
      O => WrChnl_BRAM_Addr_Ld(7)
    );
\save_init_bram_addr_ld[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => s_axi_awaddr(4),
      I1 => \^aw_active_d1_reg\,
      I2 => data0(5),
      O => WrChnl_BRAM_Addr_Ld(8)
    );
\save_init_bram_addr_ld[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => s_axi_awaddr(5),
      I1 => \^aw_active_d1_reg\,
      I2 => data0(6),
      O => WrChnl_BRAM_Addr_Ld(9)
    );
\save_init_bram_addr_ld_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => WrChnl_BRAM_Addr_Ld(10),
      Q => data0(7),
      R => \wrap_burst_total_reg[0]_0\
    );
\save_init_bram_addr_ld_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => WrChnl_BRAM_Addr_Ld(11),
      Q => data0(8),
      R => \wrap_burst_total_reg[0]_0\
    );
\save_init_bram_addr_ld_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \^d\(0),
      Q => data0(9),
      R => \wrap_burst_total_reg[0]_0\
    );
\save_init_bram_addr_ld_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => WrChnl_BRAM_Addr_Ld(4),
      Q => data0(1),
      R => \wrap_burst_total_reg[0]_0\
    );
\save_init_bram_addr_ld_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => WrChnl_BRAM_Addr_Ld(5),
      Q => data0(2),
      R => \wrap_burst_total_reg[0]_0\
    );
\save_init_bram_addr_ld_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => WrChnl_BRAM_Addr_Ld(6),
      Q => data0(3),
      R => \wrap_burst_total_reg[0]_0\
    );
\save_init_bram_addr_ld_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => WrChnl_BRAM_Addr_Ld(7),
      Q => data0(4),
      R => \wrap_burst_total_reg[0]_0\
    );
\save_init_bram_addr_ld_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => WrChnl_BRAM_Addr_Ld(8),
      Q => data0(5),
      R => \wrap_burst_total_reg[0]_0\
    );
\save_init_bram_addr_ld_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => WrChnl_BRAM_Addr_Ld(9),
      Q => data0(6),
      R => \wrap_burst_total_reg[0]_0\
    );
\wrap_burst_total[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AA708870"
    )
        port map (
      I0 => s_axi_awlen(1),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awsize(1),
      I3 => s_axi_awlen(2),
      I4 => s_axi_awlen(3),
      I5 => \wrap_burst_total[0]_i_2__0_n_0\,
      O => wrap_burst_total_cmb(0)
    );
\wrap_burst_total[0]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFAFAFFFFF2FF"
    )
        port map (
      I0 => s_axi_awlen(3),
      I1 => s_axi_awlen(2),
      I2 => s_axi_awsize(2),
      I3 => s_axi_awlen(1),
      I4 => \^s_axi_awvalid_0\,
      I5 => s_axi_awsize(0),
      O => \wrap_burst_total[0]_i_2__0_n_0\
    );
\wrap_burst_total[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_awlen(0),
      O => \^s_axi_awvalid_0\
    );
\wrap_burst_total[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4445454444454444"
    )
        port map (
      I0 => s_axi_awsize(2),
      I1 => \wrap_burst_total[1]_i_2_n_0\,
      I2 => \wrap_burst_total[1]_i_3_n_0\,
      I3 => s_axi_awsize(0),
      I4 => s_axi_awsize(1),
      I5 => s_axi_awlen(3),
      O => \wrap_burst_total[1]_i_1__0_n_0\
    );
\wrap_burst_total[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => s_axi_awlen(0),
      I1 => s_axi_awlen(1),
      I2 => s_axi_awvalid,
      I3 => s_axi_awlen(3),
      I4 => s_axi_awsize(1),
      I5 => s_axi_awsize(0),
      O => \wrap_burst_total[1]_i_2_n_0\
    );
\wrap_burst_total[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => s_axi_awlen(0),
      I1 => s_axi_awvalid,
      I2 => s_axi_awlen(2),
      I3 => s_axi_awlen(1),
      O => \wrap_burst_total[1]_i_3_n_0\
    );
\wrap_burst_total[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => s_axi_awsize_0_sn_1,
      I1 => s_axi_awlen(3),
      I2 => s_axi_awlen(0),
      I3 => s_axi_awvalid,
      I4 => s_axi_awlen(2),
      I5 => s_axi_awlen(1),
      O => wrap_burst_total_cmb(2)
    );
\wrap_burst_total[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axi_awsize(0),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awsize(2),
      O => s_axi_awsize_0_sn_1
    );
\wrap_burst_total_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => wrap_burst_total_cmb(0),
      Q => wrap_burst_total(0),
      R => \wrap_burst_total_reg[0]_0\
    );
\wrap_burst_total_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \wrap_burst_total[1]_i_1__0_n_0\,
      Q => wrap_burst_total(1),
      R => \wrap_burst_total_reg[0]_0\
    );
\wrap_burst_total_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => wrap_burst_total_cmb(2),
      Q => wrap_burst_total(2),
      R => \wrap_burst_total_reg[0]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_bram_ctrl_0_0_wrap_brst_1 is
  port (
    s_axi_araddr_3_sp_1 : out STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_reg\ : out STD_LOGIC;
    s_axi_arsize_0_sp_1 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1]\ : out STD_LOGIC;
    s_axi_rready_0 : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ADDR_SNG_PORT.bram_addr_int_reg[4]\ : out STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    Arb2AR_Active : in STD_LOGIC;
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    axi_rd_burst : in STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_3_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    curr_narrow_burst : in STD_LOGIC;
    narrow_bram_addr_inc_d1 : in STD_LOGIC;
    narrow_addr_int : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rready : in STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.bram_en_int_i_3\ : in STD_LOGIC;
    end_brst_rd : in STD_LOGIC;
    brst_zero : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    curr_wrap_burst_reg : in STD_LOGIC;
    bram_addr_a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ar_active_re : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_axi_bram_ctrl_0_0_wrap_brst_1 : entity is "wrap_brst";
end icyradio_axi_bram_ctrl_0_0_wrap_brst_1;

architecture STRUCTURE of icyradio_axi_bram_ctrl_0_0_wrap_brst_1 is
  signal \^addr_sng_port.bram_addr_int_reg[4]\ : STD_LOGIC;
  signal \^d\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[1]\ : STD_LOGIC;
  signal \^gen_no_rd_cmd_opt.gen_narrow_en.curr_narrow_burst_reg\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_6_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_7_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_9_n_0\ : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal data0 : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal s_axi_araddr_3_sn_1 : STD_LOGIC;
  signal s_axi_arsize_0_sn_1 : STD_LOGIC;
  signal \^s_axi_rready_0\ : STD_LOGIC;
  signal \save_init_bram_addr_ld[12]_i_4_n_0\ : STD_LOGIC;
  signal \save_init_bram_addr_ld[12]_i_5_n_0\ : STD_LOGIC;
  signal \save_init_bram_addr_ld[12]_i_6_n_0\ : STD_LOGIC;
  signal wrap_burst_total : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \wrap_burst_total[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \wrap_burst_total[0]_i_2_n_0\ : STD_LOGIC;
  signal \wrap_burst_total[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \wrap_burst_total[2]_i_1__0_n_0\ : STD_LOGIC;
  signal wrap_burst_total_cmb : STD_LOGIC_VECTOR ( 1 to 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[3]_i_3\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_6\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_9\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[10]_i_1__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[11]_i_1__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[7]_i_1__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[8]_i_1__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[9]_i_1__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \wrap_burst_total[0]_i_1__0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \wrap_burst_total[1]_i_2__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \wrap_burst_total[2]_i_1__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \wrap_burst_total[2]_i_2__0\ : label is "soft_lutpair12";
begin
  \ADDR_SNG_PORT.bram_addr_int_reg[4]\ <= \^addr_sng_port.bram_addr_int_reg[4]\;
  D(8 downto 0) <= \^d\(8 downto 0);
  \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1]\ <= \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[1]\;
  \GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_reg\ <= \^gen_no_rd_cmd_opt.gen_narrow_en.curr_narrow_burst_reg\;
  SR(0) <= \^sr\(0);
  s_axi_araddr_3_sp_1 <= s_axi_araddr_3_sn_1;
  s_axi_arsize_0_sp_1 <= s_axi_arsize_0_sn_1;
  s_axi_rready_0 <= \^s_axi_rready_0\;
\ADDR_SNG_PORT.bram_addr_int[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^gen_no_rd_cmd_opt.gen_narrow_en.curr_narrow_burst_reg\,
      I1 => s_axi_araddr(0),
      I2 => Arb2AR_Active,
      O => s_axi_araddr_3_sn_1
    );
\ADDR_SNG_PORT.bram_addr_int[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => bram_addr_a(1),
      I1 => bram_addr_a(0),
      I2 => bram_addr_a(2),
      I3 => bram_addr_a(3),
      O => \^addr_sng_port.bram_addr_int_reg[4]\
    );
\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDCDCDFFFFFDFF"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_6_n_0\,
      I1 => \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_7_n_0\,
      I2 => Q(1),
      I3 => Q(2),
      I4 => \^s_axi_rready_0\,
      I5 => \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_9_n_0\,
      O => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[1]\
    );
\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0EFF"
    )
        port map (
      I0 => axi_rd_burst,
      I1 => \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_3_0\,
      I2 => Q(1),
      I3 => Q(0),
      O => \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_6_n_0\
    );
\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(2),
      O => \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_7_n_0\
    );
\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \GEN_NO_RD_CMD_OPT.bram_en_int_i_3\,
      I2 => end_brst_rd,
      I3 => brst_zero,
      O => \^s_axi_rready_0\
    );
\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AABA"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => Q(1),
      I3 => \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_3_0\,
      O => \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_9_n_0\
    );
bram_rst_a_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => \^sr\(0)
    );
\save_init_bram_addr_ld[10]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data0(7),
      I1 => \^gen_no_rd_cmd_opt.gen_narrow_en.curr_narrow_burst_reg\,
      I2 => s_axi_araddr(7),
      O => \^d\(6)
    );
\save_init_bram_addr_ld[11]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data0(8),
      I1 => \^gen_no_rd_cmd_opt.gen_narrow_en.curr_narrow_burst_reg\,
      I2 => s_axi_araddr(8),
      O => \^d\(7)
    );
\save_init_bram_addr_ld[12]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data0(9),
      I1 => \^gen_no_rd_cmd_opt.gen_narrow_en.curr_narrow_burst_reg\,
      I2 => s_axi_araddr(9),
      O => \^d\(8)
    );
\save_init_bram_addr_ld[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011111311"
    )
        port map (
      I0 => curr_narrow_burst,
      I1 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[1]\,
      I2 => narrow_bram_addr_inc_d1,
      I3 => \save_init_bram_addr_ld[12]_i_4_n_0\,
      I4 => narrow_addr_int(2),
      I5 => \save_init_bram_addr_ld[12]_i_5_n_0\,
      O => \^gen_no_rd_cmd_opt.gen_narrow_en.curr_narrow_burst_reg\
    );
\save_init_bram_addr_ld[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => narrow_addr_int(1),
      I1 => narrow_addr_int(0),
      O => \save_init_bram_addr_ld[12]_i_4_n_0\
    );
\save_init_bram_addr_ld[12]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555555FFFFFDFF"
    )
        port map (
      I0 => curr_wrap_burst_reg,
      I1 => \^addr_sng_port.bram_addr_int_reg[4]\,
      I2 => wrap_burst_total(0),
      I3 => wrap_burst_total(2),
      I4 => wrap_burst_total(1),
      I5 => \save_init_bram_addr_ld[12]_i_6_n_0\,
      O => \save_init_bram_addr_ld[12]_i_5_n_0\
    );
\save_init_bram_addr_ld[12]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008FA00000"
    )
        port map (
      I0 => bram_addr_a(1),
      I1 => bram_addr_a(2),
      I2 => wrap_burst_total(1),
      I3 => wrap_burst_total(0),
      I4 => bram_addr_a(0),
      I5 => wrap_burst_total(2),
      O => \save_init_bram_addr_ld[12]_i_6_n_0\
    );
\save_init_bram_addr_ld[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C80CFFFFC80C0000"
    )
        port map (
      I0 => wrap_burst_total(0),
      I1 => data0(1),
      I2 => wrap_burst_total(1),
      I3 => wrap_burst_total(2),
      I4 => \^gen_no_rd_cmd_opt.gen_narrow_en.curr_narrow_burst_reg\,
      I5 => s_axi_araddr(1),
      O => \^d\(0)
    );
\save_init_bram_addr_ld[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A28AFFFFA28A0000"
    )
        port map (
      I0 => data0(2),
      I1 => wrap_burst_total(0),
      I2 => wrap_burst_total(2),
      I3 => wrap_burst_total(1),
      I4 => \^gen_no_rd_cmd_opt.gen_narrow_en.curr_narrow_burst_reg\,
      I5 => s_axi_araddr(2),
      O => \^d\(1)
    );
\save_init_bram_addr_ld[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA8AFFFFAA8A0000"
    )
        port map (
      I0 => data0(3),
      I1 => wrap_burst_total(0),
      I2 => wrap_burst_total(2),
      I3 => wrap_burst_total(1),
      I4 => \^gen_no_rd_cmd_opt.gen_narrow_en.curr_narrow_burst_reg\,
      I5 => s_axi_araddr(3),
      O => \^d\(2)
    );
\save_init_bram_addr_ld[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data0(4),
      I1 => \^gen_no_rd_cmd_opt.gen_narrow_en.curr_narrow_burst_reg\,
      I2 => s_axi_araddr(4),
      O => \^d\(3)
    );
\save_init_bram_addr_ld[8]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data0(5),
      I1 => \^gen_no_rd_cmd_opt.gen_narrow_en.curr_narrow_burst_reg\,
      I2 => s_axi_araddr(5),
      O => \^d\(4)
    );
\save_init_bram_addr_ld[9]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data0(6),
      I1 => \^gen_no_rd_cmd_opt.gen_narrow_en.curr_narrow_burst_reg\,
      I2 => s_axi_araddr(6),
      O => \^d\(5)
    );
\save_init_bram_addr_ld_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => \^d\(6),
      Q => data0(7),
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => \^d\(7),
      Q => data0(8),
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => \^d\(8),
      Q => data0(9),
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => \^d\(0),
      Q => data0(1),
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => \^d\(1),
      Q => data0(2),
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => \^d\(2),
      Q => data0(3),
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => \^d\(3),
      Q => data0(4),
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => \^d\(4),
      Q => data0(5),
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => \^d\(5),
      Q => data0(6),
      R => \^sr\(0)
    );
\wrap_burst_total[0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_arsize(2),
      I1 => \wrap_burst_total[0]_i_2_n_0\,
      O => \wrap_burst_total[0]_i_1__0_n_0\
    );
\wrap_burst_total[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFF5FFFFFFFBF7F"
    )
        port map (
      I0 => s_axi_arsize(0),
      I1 => s_axi_arsize(1),
      I2 => s_axi_arlen(0),
      I3 => s_axi_arlen(1),
      I4 => s_axi_arlen(3),
      I5 => s_axi_arlen(2),
      O => \wrap_burst_total[0]_i_2_n_0\
    );
\wrap_burst_total[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000015400400"
    )
        port map (
      I0 => s_axi_arsize(2),
      I1 => s_axi_arsize(0),
      I2 => s_axi_arlen(3),
      I3 => s_axi_arsize(1),
      I4 => s_axi_arlen(2),
      I5 => \wrap_burst_total[1]_i_2__0_n_0\,
      O => wrap_burst_total_cmb(1)
    );
\wrap_burst_total[1]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => s_axi_arlen(1),
      I1 => s_axi_arlen(0),
      O => \wrap_burst_total[1]_i_2__0_n_0\
    );
\wrap_burst_total[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => s_axi_arlen(0),
      I1 => s_axi_arlen(1),
      I2 => s_axi_arlen(2),
      I3 => s_axi_arlen(3),
      I4 => s_axi_arsize_0_sn_1,
      O => \wrap_burst_total[2]_i_1__0_n_0\
    );
\wrap_burst_total[2]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axi_arsize(0),
      I1 => s_axi_arsize(1),
      I2 => s_axi_arsize(2),
      O => s_axi_arsize_0_sn_1
    );
\wrap_burst_total_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => \wrap_burst_total[0]_i_1__0_n_0\,
      Q => wrap_burst_total(0),
      R => \^sr\(0)
    );
\wrap_burst_total_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => wrap_burst_total_cmb(1),
      Q => wrap_burst_total(1),
      R => \^sr\(0)
    );
\wrap_burst_total_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => \wrap_burst_total[2]_i_1__0_n_0\,
      Q => wrap_burst_total(2),
      R => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_bram_ctrl_0_0_rd_chnl is
  port (
    s_axi_aresetn_0 : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    ar_active_d1 : out STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0\ : out STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0\ : out STD_LOGIC;
    BRAM_En_B_i : out STD_LOGIC;
    s_axi_araddr_3_sp_1 : out STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_reg_0\ : out STD_LOGIC;
    p_0_in_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arlen_4_sp_1 : out STD_LOGIC;
    s_axi_rready_0 : out STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[4]\ : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    ar_active_re : in STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg_0\ : in STD_LOGIC;
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Arb2AR_Active : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \GEN_NO_RD_CMD_OPT.brst_zero_reg_0\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[3]\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[3]_0\ : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_addr_a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_axi_bram_ctrl_0_0_rd_chnl : entity is "rd_chnl";
end icyradio_axi_bram_ctrl_0_0_rd_chnl;

architecture STRUCTURE of icyradio_axi_bram_ctrl_0_0_rd_chnl is
  signal \ADDR_SNG_PORT.bram_addr_int[11]_i_7_n_0\ : STD_LOGIC;
  signal \^bram_en_b_i\ : STD_LOGIC;
  signal \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[2]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_2_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_4_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_3_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_4_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_10_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_11_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_12_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_13_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_14_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_15_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_16_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_17_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_18_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_19_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_4_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_5_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_6_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_7_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_8_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_9_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_2_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_i_2_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[0].axi_rdata_int[0]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[10].axi_rdata_int[10]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[11].axi_rdata_int[11]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[12].axi_rdata_int[12]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[13].axi_rdata_int[13]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[14].axi_rdata_int[14]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[15].axi_rdata_int[15]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[16].axi_rdata_int[16]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[17].axi_rdata_int[17]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[18].axi_rdata_int[18]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[19].axi_rdata_int[19]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[20].axi_rdata_int[20]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[21].axi_rdata_int[21]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[22].axi_rdata_int[22]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[23].axi_rdata_int[23]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[24].axi_rdata_int[24]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[25].axi_rdata_int[25]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[26].axi_rdata_int[26]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[27].axi_rdata_int[27]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[28].axi_rdata_int[28]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[29].axi_rdata_int[29]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[2].axi_rdata_int[2]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[30].axi_rdata_int[30]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[32].axi_rdata_int[32]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[33].axi_rdata_int[33]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[34].axi_rdata_int[34]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[35].axi_rdata_int[35]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[36].axi_rdata_int[36]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[37].axi_rdata_int[37]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[38].axi_rdata_int[38]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[39].axi_rdata_int[39]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[3].axi_rdata_int[3]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[40].axi_rdata_int[40]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[41].axi_rdata_int[41]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[42].axi_rdata_int[42]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[43].axi_rdata_int[43]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[44].axi_rdata_int[44]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[45].axi_rdata_int[45]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[46].axi_rdata_int[46]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[47].axi_rdata_int[47]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[48].axi_rdata_int[48]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[49].axi_rdata_int[49]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[4].axi_rdata_int[4]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[50].axi_rdata_int[50]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[51].axi_rdata_int[51]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[52].axi_rdata_int[52]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[53].axi_rdata_int[53]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[54].axi_rdata_int[54]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[55].axi_rdata_int[55]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[56].axi_rdata_int[56]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[57].axi_rdata_int[57]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[58].axi_rdata_int[58]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[59].axi_rdata_int[59]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[5].axi_rdata_int[5]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[60].axi_rdata_int[60]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[61].axi_rdata_int[61]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[62].axi_rdata_int[62]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_3_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_4_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[6].axi_rdata_int[6]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[7].axi_rdata_int[7]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[8].axi_rdata_int[8]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[9].axi_rdata_int[9]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_2_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[0]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[1]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[2]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_3_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_1\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_2\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_12\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_13\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_2\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.act_rd_burst_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.act_rd_burst_i_3_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.act_rd_burst_i_4_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.axi_rlast_int_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.axi_rlast_int_i_2_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.axi_rlast_int_i_3_n_0\ : STD_LOGIC;
  signal \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_2_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.axi_rvalid_int_i_1_n_0\ : STD_LOGIC;
  signal \^gen_no_rd_cmd_opt.axi_rvalid_int_reg_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.bram_en_int_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.bram_en_int_i_2_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.bram_en_int_i_3_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.bram_en_int_i_4_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.bram_en_int_i_5_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.bram_en_int_i_6_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.bram_en_int_i_7_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.brst_cnt[6]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_4_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_5_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.brst_cnt_reg\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \GEN_NO_RD_CMD_OPT.brst_one_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.brst_one_i_2_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.brst_zero_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_2_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_3_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.end_brst_rd_clr_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.end_brst_rd_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.last_bram_addr_i_2_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.last_bram_addr_i_3_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.last_bram_addr_i_4_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.pend_rd_op_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.pend_rd_op_i_2_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.pend_rd_op_i_4_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.pend_rd_op_i_5_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.pend_rd_op_i_6_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.pend_rd_op_reg_i_3_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_2_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_3_n_0\ : STD_LOGIC;
  signal act_rd_burst : STD_LOGIC;
  signal act_rd_burst_set : STD_LOGIC;
  signal act_rd_burst_two : STD_LOGIC;
  signal \^ar_active_d1\ : STD_LOGIC;
  signal axi_rd_burst : STD_LOGIC;
  signal axi_rd_burst_two : STD_LOGIC;
  signal axi_rdata_en : STD_LOGIC;
  signal axi_rid_temp : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_rvalid_clr_ok : STD_LOGIC;
  signal axi_rvalid_set : STD_LOGIC;
  signal axi_rvalid_set_cmb : STD_LOGIC;
  signal brst_cnt_max_d1 : STD_LOGIC;
  signal brst_one : STD_LOGIC;
  signal brst_zero : STD_LOGIC;
  signal curr_fixed_burst : STD_LOGIC;
  signal curr_fixed_burst_reg : STD_LOGIC;
  signal curr_narrow_burst : STD_LOGIC;
  signal curr_wrap_burst : STD_LOGIC;
  signal curr_wrap_burst_reg : STD_LOGIC;
  signal disable_b2b_brst : STD_LOGIC;
  signal disable_b2b_brst_cmb : STD_LOGIC;
  signal end_brst_rd : STD_LOGIC;
  signal end_brst_rd_clr : STD_LOGIC;
  signal last_bram_addr : STD_LOGIC;
  signal last_bram_addr0 : STD_LOGIC;
  signal narrow_addr_int : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal narrow_bram_addr_inc : STD_LOGIC;
  signal narrow_bram_addr_inc_d1 : STD_LOGIC;
  signal narrow_burst_cnt_ld_reg : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC;
  signal pend_rd_op : STD_LOGIC;
  signal rd_data_sm_cs : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rd_data_sm_ns : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rd_skid_buf : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal rd_skid_buf_ld : STD_LOGIC;
  signal rd_skid_buf_ld_cmb : STD_LOGIC;
  signal rd_skid_buf_ld_reg : STD_LOGIC;
  signal rddata_mux_sel : STD_LOGIC;
  signal rlast_sm_cs : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s_axi_araddr_3_sn_1 : STD_LOGIC;
  signal \^s_axi_aresetn_0\ : STD_LOGIC;
  signal s_axi_arlen_4_sn_1 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_5\ : label is "soft_lutpair21";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[0]\ : label is "sec_addr:0010,sng_addr:0001,last_data_ar_pend:1000,idle:0000,last_addr:0101,last_data:0111,full_throttle:0100,last_throttle:0110,full_pipe:0011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1]\ : label is "sec_addr:0010,sng_addr:0001,last_data_ar_pend:1000,idle:0000,last_addr:0101,last_data:0111,full_throttle:0100,last_throttle:0110,full_pipe:0011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[2]\ : label is "sec_addr:0010,sng_addr:0001,last_data_ar_pend:1000,idle:0000,last_addr:0101,last_data:0111,full_throttle:0100,last_throttle:0110,full_pipe:0011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]\ : label is "sec_addr:0010,sng_addr:0001,last_data_ar_pend:1000,idle:0000,last_addr:0101,last_data:0111,full_throttle:0100,last_throttle:0110,full_pipe:0011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs_reg[0]\ : label is "idle:000,w8_last_data:100,w8_2nd_last_data:011,w8_throttle:010,w8_throttle_b2:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs_reg[1]\ : label is "idle:000,w8_last_data:100,w8_2nd_last_data:011,w8_throttle:010,w8_throttle_b2:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs_reg[2]\ : label is "idle:000,w8_last_data:100,w8_2nd_last_data:011,w8_throttle:010,w8_throttle_b2:001";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_4\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_3\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_4\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_13\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_14\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_15\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_19\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_5\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_7\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_8\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[0].axi_rdata_int[0]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[10].axi_rdata_int[10]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[11].axi_rdata_int[11]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[12].axi_rdata_int[12]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[13].axi_rdata_int[13]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[14].axi_rdata_int[14]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[15].axi_rdata_int[15]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[16].axi_rdata_int[16]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[17].axi_rdata_int[17]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[18].axi_rdata_int[18]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[19].axi_rdata_int[19]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[1].axi_rdata_int[1]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[20].axi_rdata_int[20]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[21].axi_rdata_int[21]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[22].axi_rdata_int[22]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[23].axi_rdata_int[23]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[24].axi_rdata_int[24]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[25].axi_rdata_int[25]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[26].axi_rdata_int[26]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[27].axi_rdata_int[27]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[28].axi_rdata_int[28]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[29].axi_rdata_int[29]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[2].axi_rdata_int[2]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[30].axi_rdata_int[30]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[32].axi_rdata_int[32]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[33].axi_rdata_int[33]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[34].axi_rdata_int[34]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[35].axi_rdata_int[35]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[36].axi_rdata_int[36]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[37].axi_rdata_int[37]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[38].axi_rdata_int[38]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[39].axi_rdata_int[39]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[3].axi_rdata_int[3]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[40].axi_rdata_int[40]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[41].axi_rdata_int[41]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[42].axi_rdata_int[42]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[43].axi_rdata_int[43]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[44].axi_rdata_int[44]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[45].axi_rdata_int[45]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[46].axi_rdata_int[46]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[47].axi_rdata_int[47]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[48].axi_rdata_int[48]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[49].axi_rdata_int[49]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[4].axi_rdata_int[4]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[50].axi_rdata_int[50]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[51].axi_rdata_int[51]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[52].axi_rdata_int[52]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[53].axi_rdata_int[53]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[54].axi_rdata_int[54]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[55].axi_rdata_int[55]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[56].axi_rdata_int[56]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[57].axi_rdata_int[57]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[58].axi_rdata_int[58]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[59].axi_rdata_int[59]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[5].axi_rdata_int[5]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[60].axi_rdata_int[60]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[61].axi_rdata_int[61]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[62].axi_rdata_int[62]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_2\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_4\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[6].axi_rdata_int[6]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[7].axi_rdata_int[7]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[8].axi_rdata_int[8]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[9].axi_rdata_int[9]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_3\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.act_rd_burst_i_4\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.axi_rlast_int_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.brst_cnt[6]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_5\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.brst_zero_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.brst_zero_i_3\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.curr_fixed_burst_reg_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.curr_wrap_burst_reg_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.pend_rd_op_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of axi_awready_int_i_2 : label is "soft_lutpair14";
begin
  BRAM_En_B_i <= \^bram_en_b_i\;
  \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0\ <= \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\;
  \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0\ <= \^gen_no_rd_cmd_opt.axi_rvalid_int_reg_0\;
  ar_active_d1 <= \^ar_active_d1\;
  s_axi_araddr_3_sp_1 <= s_axi_araddr_3_sn_1;
  s_axi_aresetn_0 <= \^s_axi_aresetn_0\;
  s_axi_arlen_4_sp_1 <= s_axi_arlen_4_sn_1;
\ADDR_SNG_PORT.bram_addr_int[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3B08FFFF"
    )
        port map (
      I0 => \ADDR_SNG_PORT.bram_addr_int[11]_i_7_n_0\,
      I1 => Arb2AR_Active,
      I2 => curr_fixed_burst_reg,
      I3 => \ADDR_SNG_PORT.bram_addr_int_reg[3]\,
      I4 => \ADDR_SNG_PORT.bram_addr_int_reg[3]_0\,
      O => p_0_in_0(0)
    );
\ADDR_SNG_PORT.bram_addr_int[11]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000010000FFFF"
    )
        port map (
      I0 => narrow_addr_int(2),
      I1 => narrow_addr_int(1),
      I2 => narrow_addr_int(0),
      I3 => narrow_bram_addr_inc_d1,
      I4 => \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_12\,
      I5 => curr_narrow_burst,
      O => \ADDR_SNG_PORT.bram_addr_int[11]_i_7_n_0\
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000E0F5F0F5F"
    )
        port map (
      I0 => rd_data_sm_cs(2),
      I1 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_2_n_0\,
      I2 => rd_data_sm_cs(3),
      I3 => rd_data_sm_cs(1),
      I4 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_3_n_0\,
      I5 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_4_n_0\,
      O => rd_data_sm_ns(0)
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axi_rd_burst,
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0\,
      O => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_2_n_0\
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F700F700F7000000"
    )
        port map (
      I0 => \^gen_no_rd_cmd_opt.axi_rvalid_int_reg_0\,
      I1 => s_axi_rready,
      I2 => ar_active_re,
      I3 => rd_data_sm_cs(2),
      I4 => act_rd_burst_two,
      I5 => act_rd_burst,
      O => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_3_n_0\
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB00BB00BB00FB00"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_4_n_0\,
      I1 => rd_data_sm_cs(1),
      I2 => rd_data_sm_cs(2),
      I3 => rd_data_sm_cs(0),
      I4 => pend_rd_op,
      I5 => ar_active_re,
      O => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_4_n_0\
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4445444444444444"
    )
        port map (
      I0 => rd_data_sm_cs(3),
      I1 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_2_n_0\,
      I2 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_4_n_0\,
      I3 => rd_data_sm_cs(1),
      I4 => rd_data_sm_cs(0),
      I5 => rd_data_sm_cs(2),
      O => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_1_n_0\
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03C002CC03F002FC"
    )
        port map (
      I0 => axi_rd_burst,
      I1 => rd_data_sm_cs(1),
      I2 => rd_data_sm_cs(2),
      I3 => rd_data_sm_cs(0),
      I4 => \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0\,
      I5 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_5_n_0\,
      O => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_2_n_0\
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4445444444444444"
    )
        port map (
      I0 => rd_data_sm_cs(3),
      I1 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_2_n_0\,
      I2 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_4_n_0\,
      I3 => rd_data_sm_cs(1),
      I4 => rd_data_sm_cs(0),
      I5 => rd_data_sm_cs(2),
      O => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_1_n_0\
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FCCCCC00FCDD00"
    )
        port map (
      I0 => axi_rd_burst,
      I1 => rd_data_sm_cs(1),
      I2 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_5_n_0\,
      I3 => rd_data_sm_cs(0),
      I4 => rd_data_sm_cs(2),
      I5 => \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0\,
      O => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_2_n_0\
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001FFFF00010000"
    )
        port map (
      I0 => rd_data_sm_cs(0),
      I1 => rd_data_sm_cs(2),
      I2 => rd_data_sm_cs(1),
      I3 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_4_n_0\,
      I4 => rd_data_sm_cs(3),
      I5 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_3_n_0\,
      O => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_1_n_0\
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C08000000080000"
    )
        port map (
      I0 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_4_n_0\,
      I1 => rd_data_sm_cs(2),
      I2 => rd_data_sm_cs(3),
      I3 => rd_data_sm_cs(1),
      I4 => rd_data_sm_cs(0),
      I5 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_4_n_0\,
      O => rd_data_sm_ns(3)
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFFFBF30FFFCBC"
    )
        port map (
      I0 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_5_n_0\,
      I1 => rd_data_sm_cs(1),
      I2 => rd_data_sm_cs(0),
      I3 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_4_n_0\,
      I4 => rd_data_sm_cs(2),
      I5 => ar_active_re,
      O => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_3_n_0\
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4440000000000000"
    )
        port map (
      I0 => \^ar_active_d1\,
      I1 => Arb2AR_Active,
      I2 => act_rd_burst_two,
      I3 => act_rd_burst,
      I4 => \^gen_no_rd_cmd_opt.axi_rvalid_int_reg_0\,
      I5 => s_axi_rready,
      O => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_4_n_0\
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => brst_zero,
      I1 => end_brst_rd,
      O => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_5_n_0\
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_1_n_0\,
      D => rd_data_sm_ns(0),
      Q => rd_data_sm_cs(0),
      R => \^s_axi_aresetn_0\
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_1_n_0\,
      D => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_1_n_0\,
      Q => rd_data_sm_cs(1),
      R => \^s_axi_aresetn_0\
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_1_n_0\,
      D => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_1_n_0\,
      Q => rd_data_sm_cs(2),
      R => \^s_axi_aresetn_0\
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_1_n_0\,
      D => rd_data_sm_ns(3),
      Q => rd_data_sm_cs(3),
      R => \^s_axi_aresetn_0\
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F4F005F004"
    )
        port map (
      I0 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[0]_i_2_n_0\,
      I1 => last_bram_addr,
      I2 => rlast_sm_cs(0),
      I3 => rlast_sm_cs(2),
      I4 => rlast_sm_cs(1),
      I5 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_4_n_0\,
      O => \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[0]_i_1_n_0\
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001500550055"
    )
        port map (
      I0 => rlast_sm_cs(1),
      I1 => s_axi_rready,
      I2 => \^gen_no_rd_cmd_opt.axi_rvalid_int_reg_0\,
      I3 => \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0\,
      I4 => act_rd_burst_two,
      I5 => axi_rd_burst,
      O => \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[0]_i_2_n_0\
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0004FF050004"
    )
        port map (
      I0 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_2_n_0\,
      I1 => last_bram_addr,
      I2 => rlast_sm_cs(0),
      I3 => rlast_sm_cs(2),
      I4 => rlast_sm_cs(1),
      I5 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_4_n_0\,
      O => \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_1_n_0\
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1515150015551555"
    )
        port map (
      I0 => rlast_sm_cs(1),
      I1 => s_axi_rready,
      I2 => \^gen_no_rd_cmd_opt.axi_rvalid_int_reg_0\,
      I3 => \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0\,
      I4 => act_rd_burst_two,
      I5 => axi_rd_burst,
      O => \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_2_n_0\
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF08FFF0F008"
    )
        port map (
      I0 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_2_n_0\,
      I1 => last_bram_addr,
      I2 => rlast_sm_cs(0),
      I3 => rlast_sm_cs(2),
      I4 => rlast_sm_cs(1),
      I5 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_4_n_0\,
      O => \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[2]_i_1_n_0\
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[0]_i_1_n_0\,
      Q => rlast_sm_cs(0),
      R => \^s_axi_aresetn_0\
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_1_n_0\,
      Q => rlast_sm_cs(1),
      R => \^s_axi_aresetn_0\
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[2]_i_1_n_0\,
      Q => rlast_sm_cs(2),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg_0\,
      Q => \^ar_active_d1\,
      R => '0'
    );
\GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00B00000"
    )
        port map (
      I0 => \^ar_active_d1\,
      I1 => Arb2AR_Active,
      I2 => s_axi_aresetn,
      I3 => end_brst_rd_clr,
      I4 => \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_2_n_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00404040"
    )
        port map (
      I0 => pend_rd_op,
      I1 => brst_zero,
      I2 => Arb2AR_Active,
      I3 => curr_narrow_burst,
      I4 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_2_n_0\,
      I5 => \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg_n_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_2_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_1_n_0\,
      Q => \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg_n_0\,
      R => '0'
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0C0F0C0A0F0A00"
    )
        port map (
      I0 => s_axi_araddr(2),
      I1 => s_axi_araddr(1),
      I2 => s_axi_arsize(2),
      I3 => s_axi_arsize(1),
      I4 => s_axi_araddr(0),
      I5 => s_axi_arsize(0),
      O => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => s_axi_arsize(2),
      I1 => s_axi_arsize(0),
      I2 => s_axi_arsize(1),
      O => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_4_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FAFC"
    )
        port map (
      I0 => s_axi_araddr(2),
      I1 => s_axi_araddr(1),
      I2 => s_axi_arsize(1),
      I3 => s_axi_arsize(0),
      I4 => s_axi_arsize(2),
      O => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_3_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_axi_arsize(1),
      I1 => s_axi_arsize(2),
      O => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_4_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88008800992ADD2A"
    )
        port map (
      I0 => s_axi_arsize(1),
      I1 => s_axi_arsize(2),
      I2 => s_axi_arlen(0),
      I3 => s_axi_arsize(0),
      I4 => s_axi_arlen(1),
      I5 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_14_n_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_10_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF45"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_15_n_0\,
      I1 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_13_n_0\,
      I2 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_16_n_0\,
      I3 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_17_n_0\,
      I4 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_18_n_0\,
      I5 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_19_n_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_11_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABAAABAAABFFFF"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_8_n_0\,
      I1 => s_axi_araddr(2),
      I2 => s_axi_araddr(1),
      I3 => s_axi_araddr(0),
      I4 => s_axi_arburst(0),
      I5 => s_axi_arburst(1),
      O => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_12_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arlen(7),
      I1 => s_axi_arsize(0),
      I2 => s_axi_arlen(6),
      O => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_13_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arlen(5),
      I1 => s_axi_arsize(0),
      I2 => s_axi_arlen(4),
      O => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_14_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF35003"
    )
        port map (
      I0 => s_axi_arlen(5),
      I1 => s_axi_arlen(4),
      I2 => s_axi_arsize(1),
      I3 => s_axi_arsize(0),
      I4 => s_axi_arsize(2),
      O => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_15_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axi_arsize(1),
      I1 => s_axi_arsize(0),
      O => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_16_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFEFFFC50FC"
    )
        port map (
      I0 => s_axi_arsize(1),
      I1 => s_axi_arlen(5),
      I2 => s_axi_arlen(3),
      I3 => s_axi_arsize(0),
      I4 => s_axi_arlen(4),
      I5 => s_axi_arlen(2),
      O => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_17_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88FCFCFC88303030"
    )
        port map (
      I0 => s_axi_arlen(3),
      I1 => s_axi_arsize(0),
      I2 => s_axi_arlen(7),
      I3 => s_axi_arsize(2),
      I4 => s_axi_arsize(1),
      I5 => s_axi_arlen(6),
      O => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_18_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF8AC088"
    )
        port map (
      I0 => s_axi_arsize(2),
      I1 => s_axi_arlen(0),
      I2 => s_axi_arsize(0),
      I3 => s_axi_arsize(1),
      I4 => s_axi_arlen(1),
      O => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_19_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55D555D555D50000"
    )
        port map (
      I0 => ar_active_re,
      I1 => s_axi_arsize(0),
      I2 => s_axi_arsize(1),
      I3 => s_axi_arsize(2),
      I4 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_2_n_0\,
      I5 => narrow_bram_addr_inc_d1,
      O => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_2_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_12\,
      I1 => curr_narrow_burst,
      I2 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_8_n_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_4_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAAB"
    )
        port map (
      I0 => s_axi_arsize(2),
      I1 => s_axi_arsize(0),
      I2 => s_axi_arsize(1),
      I3 => s_axi_araddr(2),
      O => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_5_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005555FF57"
    )
        port map (
      I0 => s_axi_arburst(1),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_9_n_0\,
      I2 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_10_n_0\,
      I3 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_11_n_0\,
      I4 => s_axi_arburst(0),
      I5 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_12_n_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_6_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => s_axi_arsize(0),
      I1 => s_axi_arsize(2),
      I2 => s_axi_arsize(1),
      O => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_7_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF40FFFF"
    )
        port map (
      I0 => s_axi_arsize(2),
      I1 => s_axi_arsize(1),
      I2 => s_axi_arsize(0),
      I3 => \^ar_active_d1\,
      I4 => Arb2AR_Active,
      O => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_8_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"005500000000003F"
    )
        port map (
      I0 => s_axi_arlen(3),
      I1 => s_axi_arlen(2),
      I2 => s_axi_arsize(2),
      I3 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_13_n_0\,
      I4 => s_axi_arsize(1),
      I5 => s_axi_arsize(0),
      O => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_9_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_2\,
      Q => narrow_addr_int(0),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_1\,
      Q => narrow_addr_int(1),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_0\,
      Q => narrow_addr_int(2),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_2_n_0\,
      O => narrow_bram_addr_inc
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFD"
    )
        port map (
      I0 => curr_narrow_burst,
      I1 => \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_12\,
      I2 => narrow_addr_int(2),
      I3 => narrow_addr_int(1),
      I4 => narrow_addr_int(0),
      O => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_2_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_bram_addr_inc_d1_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => narrow_bram_addr_inc,
      Q => narrow_bram_addr_inc_d1,
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF15FF00001500"
    )
        port map (
      I0 => s_axi_arsize(2),
      I1 => s_axi_arsize(0),
      I2 => s_axi_arsize(1),
      I3 => Arb2AR_Active,
      I4 => \^ar_active_d1\,
      I5 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[0]\,
      O => narrow_burst_cnt_ld_reg(0)
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF1F0010"
    )
        port map (
      I0 => s_axi_arsize(1),
      I1 => s_axi_arsize(2),
      I2 => Arb2AR_Active,
      I3 => \^ar_active_d1\,
      I4 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[1]\,
      O => narrow_burst_cnt_ld_reg(1)
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF01FF00000100"
    )
        port map (
      I0 => s_axi_arsize(0),
      I1 => s_axi_arsize(2),
      I2 => s_axi_arsize(1),
      I3 => Arb2AR_Active,
      I4 => \^ar_active_d1\,
      I5 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[2]\,
      O => narrow_burst_cnt_ld_reg(2)
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => narrow_burst_cnt_ld_reg(0),
      Q => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[0]\,
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => narrow_burst_cnt_ld_reg(1),
      Q => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[1]\,
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => narrow_burst_cnt_ld_reg(2),
      Q => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[2]\,
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFBA"
    )
        port map (
      I0 => pend_rd_op,
      I1 => \^ar_active_d1\,
      I2 => Arb2AR_Active,
      I3 => \GEN_NO_RD_CMD_OPT.axi_rlast_int_i_3_n_0\,
      I4 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_i_2_n_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF7777755577777"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => curr_narrow_burst,
      I2 => s_axi_arburst(0),
      I3 => s_axi_arburst(1),
      I4 => \GEN_NO_RD_CMD_OPT.brst_zero_reg_0\,
      I5 => \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_2\,
      O => \GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_i_2_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_i_1_n_0\,
      Q => curr_narrow_burst,
      R => '0'
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[0].axi_rdata_int[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(0),
      I1 => bram_rddata_a(0),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[0].axi_rdata_int[0]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[0].axi_rdata_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[0].axi_rdata_int[0]_i_1_n_0\,
      Q => s_axi_rdata(0),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[10].axi_rdata_int[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(10),
      I1 => bram_rddata_a(10),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[10].axi_rdata_int[10]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[10].axi_rdata_int_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[10].axi_rdata_int[10]_i_1_n_0\,
      Q => s_axi_rdata(10),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[11].axi_rdata_int[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(11),
      I1 => bram_rddata_a(11),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[11].axi_rdata_int[11]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[11].axi_rdata_int_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[11].axi_rdata_int[11]_i_1_n_0\,
      Q => s_axi_rdata(11),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[12].axi_rdata_int[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(12),
      I1 => bram_rddata_a(12),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[12].axi_rdata_int[12]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[12].axi_rdata_int_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[12].axi_rdata_int[12]_i_1_n_0\,
      Q => s_axi_rdata(12),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[13].axi_rdata_int[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(13),
      I1 => bram_rddata_a(13),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[13].axi_rdata_int[13]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[13].axi_rdata_int_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[13].axi_rdata_int[13]_i_1_n_0\,
      Q => s_axi_rdata(13),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[14].axi_rdata_int[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(14),
      I1 => bram_rddata_a(14),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[14].axi_rdata_int[14]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[14].axi_rdata_int_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[14].axi_rdata_int[14]_i_1_n_0\,
      Q => s_axi_rdata(14),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[15].axi_rdata_int[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(15),
      I1 => bram_rddata_a(15),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[15].axi_rdata_int[15]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[15].axi_rdata_int_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[15].axi_rdata_int[15]_i_1_n_0\,
      Q => s_axi_rdata(15),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[16].axi_rdata_int[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(16),
      I1 => bram_rddata_a(16),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[16].axi_rdata_int[16]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[16].axi_rdata_int_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[16].axi_rdata_int[16]_i_1_n_0\,
      Q => s_axi_rdata(16),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[17].axi_rdata_int[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(17),
      I1 => bram_rddata_a(17),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[17].axi_rdata_int[17]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[17].axi_rdata_int_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[17].axi_rdata_int[17]_i_1_n_0\,
      Q => s_axi_rdata(17),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[18].axi_rdata_int[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(18),
      I1 => bram_rddata_a(18),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[18].axi_rdata_int[18]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[18].axi_rdata_int_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[18].axi_rdata_int[18]_i_1_n_0\,
      Q => s_axi_rdata(18),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[19].axi_rdata_int[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(19),
      I1 => bram_rddata_a(19),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[19].axi_rdata_int[19]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[19].axi_rdata_int_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[19].axi_rdata_int[19]_i_1_n_0\,
      Q => s_axi_rdata(19),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[1].axi_rdata_int[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(1),
      I1 => bram_rddata_a(1),
      I2 => rddata_mux_sel,
      O => \p_0_in__0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[1].axi_rdata_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \p_0_in__0\,
      Q => s_axi_rdata(1),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[20].axi_rdata_int[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(20),
      I1 => bram_rddata_a(20),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[20].axi_rdata_int[20]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[20].axi_rdata_int_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[20].axi_rdata_int[20]_i_1_n_0\,
      Q => s_axi_rdata(20),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[21].axi_rdata_int[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(21),
      I1 => bram_rddata_a(21),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[21].axi_rdata_int[21]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[21].axi_rdata_int_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[21].axi_rdata_int[21]_i_1_n_0\,
      Q => s_axi_rdata(21),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[22].axi_rdata_int[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(22),
      I1 => bram_rddata_a(22),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[22].axi_rdata_int[22]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[22].axi_rdata_int_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[22].axi_rdata_int[22]_i_1_n_0\,
      Q => s_axi_rdata(22),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[23].axi_rdata_int[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(23),
      I1 => bram_rddata_a(23),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[23].axi_rdata_int[23]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[23].axi_rdata_int_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[23].axi_rdata_int[23]_i_1_n_0\,
      Q => s_axi_rdata(23),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[24].axi_rdata_int[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(24),
      I1 => bram_rddata_a(24),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[24].axi_rdata_int[24]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[24].axi_rdata_int_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[24].axi_rdata_int[24]_i_1_n_0\,
      Q => s_axi_rdata(24),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[25].axi_rdata_int[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(25),
      I1 => bram_rddata_a(25),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[25].axi_rdata_int[25]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[25].axi_rdata_int_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[25].axi_rdata_int[25]_i_1_n_0\,
      Q => s_axi_rdata(25),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[26].axi_rdata_int[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(26),
      I1 => bram_rddata_a(26),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[26].axi_rdata_int[26]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[26].axi_rdata_int_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[26].axi_rdata_int[26]_i_1_n_0\,
      Q => s_axi_rdata(26),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[27].axi_rdata_int[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(27),
      I1 => bram_rddata_a(27),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[27].axi_rdata_int[27]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[27].axi_rdata_int_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[27].axi_rdata_int[27]_i_1_n_0\,
      Q => s_axi_rdata(27),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[28].axi_rdata_int[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(28),
      I1 => bram_rddata_a(28),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[28].axi_rdata_int[28]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[28].axi_rdata_int_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[28].axi_rdata_int[28]_i_1_n_0\,
      Q => s_axi_rdata(28),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[29].axi_rdata_int[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(29),
      I1 => bram_rddata_a(29),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[29].axi_rdata_int[29]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[29].axi_rdata_int_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[29].axi_rdata_int[29]_i_1_n_0\,
      Q => s_axi_rdata(29),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[2].axi_rdata_int[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(2),
      I1 => bram_rddata_a(2),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[2].axi_rdata_int[2]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[2].axi_rdata_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[2].axi_rdata_int[2]_i_1_n_0\,
      Q => s_axi_rdata(2),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[30].axi_rdata_int[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(30),
      I1 => bram_rddata_a(30),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[30].axi_rdata_int[30]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[30].axi_rdata_int_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[30].axi_rdata_int[30]_i_1_n_0\,
      Q => s_axi_rdata(30),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(31),
      I1 => bram_rddata_a(31),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0\,
      Q => s_axi_rdata(31),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[32].axi_rdata_int[32]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(32),
      I1 => bram_rddata_a(32),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[32].axi_rdata_int[32]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[32].axi_rdata_int_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[32].axi_rdata_int[32]_i_1_n_0\,
      Q => s_axi_rdata(32),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[33].axi_rdata_int[33]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(33),
      I1 => bram_rddata_a(33),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[33].axi_rdata_int[33]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[33].axi_rdata_int_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[33].axi_rdata_int[33]_i_1_n_0\,
      Q => s_axi_rdata(33),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[34].axi_rdata_int[34]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(34),
      I1 => bram_rddata_a(34),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[34].axi_rdata_int[34]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[34].axi_rdata_int_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[34].axi_rdata_int[34]_i_1_n_0\,
      Q => s_axi_rdata(34),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[35].axi_rdata_int[35]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(35),
      I1 => bram_rddata_a(35),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[35].axi_rdata_int[35]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[35].axi_rdata_int_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[35].axi_rdata_int[35]_i_1_n_0\,
      Q => s_axi_rdata(35),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[36].axi_rdata_int[36]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(36),
      I1 => bram_rddata_a(36),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[36].axi_rdata_int[36]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[36].axi_rdata_int_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[36].axi_rdata_int[36]_i_1_n_0\,
      Q => s_axi_rdata(36),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[37].axi_rdata_int[37]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(37),
      I1 => bram_rddata_a(37),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[37].axi_rdata_int[37]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[37].axi_rdata_int_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[37].axi_rdata_int[37]_i_1_n_0\,
      Q => s_axi_rdata(37),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[38].axi_rdata_int[38]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(38),
      I1 => bram_rddata_a(38),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[38].axi_rdata_int[38]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[38].axi_rdata_int_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[38].axi_rdata_int[38]_i_1_n_0\,
      Q => s_axi_rdata(38),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[39].axi_rdata_int[39]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(39),
      I1 => bram_rddata_a(39),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[39].axi_rdata_int[39]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[39].axi_rdata_int_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[39].axi_rdata_int[39]_i_1_n_0\,
      Q => s_axi_rdata(39),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[3].axi_rdata_int[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(3),
      I1 => bram_rddata_a(3),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[3].axi_rdata_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[3].axi_rdata_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[3].axi_rdata_int[3]_i_1_n_0\,
      Q => s_axi_rdata(3),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[40].axi_rdata_int[40]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(40),
      I1 => bram_rddata_a(40),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[40].axi_rdata_int[40]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[40].axi_rdata_int_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[40].axi_rdata_int[40]_i_1_n_0\,
      Q => s_axi_rdata(40),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[41].axi_rdata_int[41]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(41),
      I1 => bram_rddata_a(41),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[41].axi_rdata_int[41]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[41].axi_rdata_int_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[41].axi_rdata_int[41]_i_1_n_0\,
      Q => s_axi_rdata(41),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[42].axi_rdata_int[42]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(42),
      I1 => bram_rddata_a(42),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[42].axi_rdata_int[42]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[42].axi_rdata_int_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[42].axi_rdata_int[42]_i_1_n_0\,
      Q => s_axi_rdata(42),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[43].axi_rdata_int[43]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(43),
      I1 => bram_rddata_a(43),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[43].axi_rdata_int[43]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[43].axi_rdata_int_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[43].axi_rdata_int[43]_i_1_n_0\,
      Q => s_axi_rdata(43),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[44].axi_rdata_int[44]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(44),
      I1 => bram_rddata_a(44),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[44].axi_rdata_int[44]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[44].axi_rdata_int_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[44].axi_rdata_int[44]_i_1_n_0\,
      Q => s_axi_rdata(44),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[45].axi_rdata_int[45]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(45),
      I1 => bram_rddata_a(45),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[45].axi_rdata_int[45]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[45].axi_rdata_int_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[45].axi_rdata_int[45]_i_1_n_0\,
      Q => s_axi_rdata(45),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[46].axi_rdata_int[46]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(46),
      I1 => bram_rddata_a(46),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[46].axi_rdata_int[46]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[46].axi_rdata_int_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[46].axi_rdata_int[46]_i_1_n_0\,
      Q => s_axi_rdata(46),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[47].axi_rdata_int[47]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(47),
      I1 => bram_rddata_a(47),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[47].axi_rdata_int[47]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[47].axi_rdata_int_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[47].axi_rdata_int[47]_i_1_n_0\,
      Q => s_axi_rdata(47),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[48].axi_rdata_int[48]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(48),
      I1 => bram_rddata_a(48),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[48].axi_rdata_int[48]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[48].axi_rdata_int_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[48].axi_rdata_int[48]_i_1_n_0\,
      Q => s_axi_rdata(48),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[49].axi_rdata_int[49]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(49),
      I1 => bram_rddata_a(49),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[49].axi_rdata_int[49]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[49].axi_rdata_int_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[49].axi_rdata_int[49]_i_1_n_0\,
      Q => s_axi_rdata(49),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[4].axi_rdata_int[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(4),
      I1 => bram_rddata_a(4),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[4].axi_rdata_int[4]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[4].axi_rdata_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[4].axi_rdata_int[4]_i_1_n_0\,
      Q => s_axi_rdata(4),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[50].axi_rdata_int[50]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(50),
      I1 => bram_rddata_a(50),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[50].axi_rdata_int[50]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[50].axi_rdata_int_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[50].axi_rdata_int[50]_i_1_n_0\,
      Q => s_axi_rdata(50),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[51].axi_rdata_int[51]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(51),
      I1 => bram_rddata_a(51),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[51].axi_rdata_int[51]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[51].axi_rdata_int_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[51].axi_rdata_int[51]_i_1_n_0\,
      Q => s_axi_rdata(51),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[52].axi_rdata_int[52]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(52),
      I1 => bram_rddata_a(52),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[52].axi_rdata_int[52]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[52].axi_rdata_int_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[52].axi_rdata_int[52]_i_1_n_0\,
      Q => s_axi_rdata(52),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[53].axi_rdata_int[53]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(53),
      I1 => bram_rddata_a(53),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[53].axi_rdata_int[53]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[53].axi_rdata_int_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[53].axi_rdata_int[53]_i_1_n_0\,
      Q => s_axi_rdata(53),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[54].axi_rdata_int[54]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(54),
      I1 => bram_rddata_a(54),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[54].axi_rdata_int[54]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[54].axi_rdata_int_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[54].axi_rdata_int[54]_i_1_n_0\,
      Q => s_axi_rdata(54),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[55].axi_rdata_int[55]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(55),
      I1 => bram_rddata_a(55),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[55].axi_rdata_int[55]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[55].axi_rdata_int_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[55].axi_rdata_int[55]_i_1_n_0\,
      Q => s_axi_rdata(55),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[56].axi_rdata_int[56]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(56),
      I1 => bram_rddata_a(56),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[56].axi_rdata_int[56]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[56].axi_rdata_int_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[56].axi_rdata_int[56]_i_1_n_0\,
      Q => s_axi_rdata(56),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[57].axi_rdata_int[57]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(57),
      I1 => bram_rddata_a(57),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[57].axi_rdata_int[57]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[57].axi_rdata_int_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[57].axi_rdata_int[57]_i_1_n_0\,
      Q => s_axi_rdata(57),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[58].axi_rdata_int[58]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(58),
      I1 => bram_rddata_a(58),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[58].axi_rdata_int[58]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[58].axi_rdata_int_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[58].axi_rdata_int[58]_i_1_n_0\,
      Q => s_axi_rdata(58),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[59].axi_rdata_int[59]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(59),
      I1 => bram_rddata_a(59),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[59].axi_rdata_int[59]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[59].axi_rdata_int_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[59].axi_rdata_int[59]_i_1_n_0\,
      Q => s_axi_rdata(59),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[5].axi_rdata_int[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(5),
      I1 => bram_rddata_a(5),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[5].axi_rdata_int[5]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[5].axi_rdata_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[5].axi_rdata_int[5]_i_1_n_0\,
      Q => s_axi_rdata(5),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[60].axi_rdata_int[60]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(60),
      I1 => bram_rddata_a(60),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[60].axi_rdata_int[60]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[60].axi_rdata_int_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[60].axi_rdata_int[60]_i_1_n_0\,
      Q => s_axi_rdata(60),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[61].axi_rdata_int[61]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(61),
      I1 => bram_rddata_a(61),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[61].axi_rdata_int[61]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[61].axi_rdata_int_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[61].axi_rdata_int[61]_i_1_n_0\,
      Q => s_axi_rdata(61),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[62].axi_rdata_int[62]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(62),
      I1 => bram_rddata_a(62),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[62].axi_rdata_int[62]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[62].axi_rdata_int_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[62].axi_rdata_int[62]_i_1_n_0\,
      Q => s_axi_rdata(62),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02040004070C070C"
    )
        port map (
      I0 => rd_data_sm_cs(0),
      I1 => rd_data_sm_cs(1),
      I2 => rd_data_sm_cs(3),
      I3 => rd_data_sm_cs(2),
      I4 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_3_n_0\,
      I5 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_4_n_0\,
      O => axi_rdata_en
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(63),
      I1 => bram_rddata_a(63),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_2_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => act_rd_burst_two,
      I1 => act_rd_burst,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_3_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^gen_no_rd_cmd_opt.axi_rvalid_int_reg_0\,
      I1 => s_axi_rready,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_4_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[63].axi_rdata_int_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_2_n_0\,
      Q => s_axi_rdata(63),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[6].axi_rdata_int[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(6),
      I1 => bram_rddata_a(6),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[6].axi_rdata_int[6]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[6].axi_rdata_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[6].axi_rdata_int[6]_i_1_n_0\,
      Q => s_axi_rdata(6),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[7].axi_rdata_int[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(7),
      I1 => bram_rddata_a(7),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[7].axi_rdata_int[7]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[7].axi_rdata_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[7].axi_rdata_int[7]_i_1_n_0\,
      Q => s_axi_rdata(7),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[8].axi_rdata_int[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(8),
      I1 => bram_rddata_a(8),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[8].axi_rdata_int[8]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[8].axi_rdata_int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[8].axi_rdata_int[8]_i_1_n_0\,
      Q => s_axi_rdata(8),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[9].axi_rdata_int[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(9),
      I1 => bram_rddata_a(9),
      I2 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[9].axi_rdata_int[9]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[9].axi_rdata_int_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[9].axi_rdata_int[9]_i_1_n_0\,
      Q => s_axi_rdata(9),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf[63]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAABA"
    )
        port map (
      I0 => rd_skid_buf_ld_reg,
      I1 => rd_data_sm_cs(0),
      I2 => rd_data_sm_cs(2),
      I3 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_4_n_0\,
      I4 => rd_data_sm_cs(3),
      I5 => rd_data_sm_cs(1),
      O => rd_skid_buf_ld
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(0),
      Q => rd_skid_buf(0),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(10),
      Q => rd_skid_buf(10),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(11),
      Q => rd_skid_buf(11),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(12),
      Q => rd_skid_buf(12),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(13),
      Q => rd_skid_buf(13),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(14),
      Q => rd_skid_buf(14),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(15),
      Q => rd_skid_buf(15),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(16),
      Q => rd_skid_buf(16),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(17),
      Q => rd_skid_buf(17),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(18),
      Q => rd_skid_buf(18),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(19),
      Q => rd_skid_buf(19),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(1),
      Q => rd_skid_buf(1),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(20),
      Q => rd_skid_buf(20),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(21),
      Q => rd_skid_buf(21),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(22),
      Q => rd_skid_buf(22),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(23),
      Q => rd_skid_buf(23),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(24),
      Q => rd_skid_buf(24),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(25),
      Q => rd_skid_buf(25),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(26),
      Q => rd_skid_buf(26),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(27),
      Q => rd_skid_buf(27),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(28),
      Q => rd_skid_buf(28),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(29),
      Q => rd_skid_buf(29),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(2),
      Q => rd_skid_buf(2),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(30),
      Q => rd_skid_buf(30),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(31),
      Q => rd_skid_buf(31),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(32),
      Q => rd_skid_buf(32),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(33),
      Q => rd_skid_buf(33),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(34),
      Q => rd_skid_buf(34),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(35),
      Q => rd_skid_buf(35),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(36),
      Q => rd_skid_buf(36),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(37),
      Q => rd_skid_buf(37),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(38),
      Q => rd_skid_buf(38),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(39),
      Q => rd_skid_buf(39),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(3),
      Q => rd_skid_buf(3),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(40),
      Q => rd_skid_buf(40),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(41),
      Q => rd_skid_buf(41),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(42),
      Q => rd_skid_buf(42),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(43),
      Q => rd_skid_buf(43),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(44),
      Q => rd_skid_buf(44),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(45),
      Q => rd_skid_buf(45),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(46),
      Q => rd_skid_buf(46),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(47),
      Q => rd_skid_buf(47),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(48),
      Q => rd_skid_buf(48),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(49),
      Q => rd_skid_buf(49),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(4),
      Q => rd_skid_buf(4),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(50),
      Q => rd_skid_buf(50),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(51),
      Q => rd_skid_buf(51),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(52),
      Q => rd_skid_buf(52),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(53),
      Q => rd_skid_buf(53),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(54),
      Q => rd_skid_buf(54),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(55),
      Q => rd_skid_buf(55),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(56),
      Q => rd_skid_buf(56),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(57),
      Q => rd_skid_buf(57),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(58),
      Q => rd_skid_buf(58),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(59),
      Q => rd_skid_buf(59),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(5),
      Q => rd_skid_buf(5),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(60),
      Q => rd_skid_buf(60),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(61),
      Q => rd_skid_buf(61),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(62),
      Q => rd_skid_buf(62),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(63),
      Q => rd_skid_buf(63),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(6),
      Q => rd_skid_buf(6),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(7),
      Q => rd_skid_buf(7),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(8),
      Q => rd_skid_buf(8),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(9),
      Q => rd_skid_buf(9),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"030003000000AA00"
    )
        port map (
      I0 => axi_rd_burst,
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_2_n_0\,
      I2 => axi_rd_burst_two,
      I3 => s_axi_aresetn,
      I4 => brst_zero,
      I5 => ar_active_re,
      O => \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => s_axi_arlen_4_sn_1,
      I1 => s_axi_arlen(1),
      I2 => s_axi_arlen(0),
      I3 => s_axi_arlen(3),
      I4 => s_axi_arlen(2),
      O => \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_2_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => s_axi_arlen_4_sn_1,
      I1 => s_axi_arlen(0),
      I2 => s_axi_arlen(1),
      I3 => s_axi_arlen(3),
      I4 => s_axi_arlen(2),
      O => axi_rd_burst_two
    );
\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_1_n_0\,
      Q => axi_rd_burst,
      R => '0'
    );
\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A0C0C000A000A0"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0\,
      I1 => axi_rd_burst_two,
      I2 => s_axi_aresetn,
      I3 => brst_zero,
      I4 => \^ar_active_d1\,
      I5 => Arb2AR_Active,
      O => \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_i_1_n_0\,
      Q => \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0\,
      R => '0'
    );
\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_arid(0),
      I1 => Arb2AR_Active,
      I2 => \^ar_active_d1\,
      I3 => axi_rid_temp(0),
      O => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[0]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_arid(1),
      I1 => Arb2AR_Active,
      I2 => \^ar_active_d1\,
      I3 => axi_rid_temp(1),
      O => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[1]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_arid(2),
      I1 => Arb2AR_Active,
      I2 => \^ar_active_d1\,
      I3 => axi_rid_temp(2),
      O => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[2]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\,
      I1 => s_axi_rready,
      I2 => s_axi_aresetn,
      O => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => axi_rvalid_set,
      I1 => \^ar_active_d1\,
      I2 => Arb2AR_Active,
      O => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_2_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_arid(3),
      I1 => Arb2AR_Active,
      I2 => \^ar_active_d1\,
      I3 => axi_rid_temp(3),
      O => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_3_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_2_n_0\,
      D => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[0]_i_1_n_0\,
      Q => s_axi_rid(0),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_2_n_0\,
      D => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[1]_i_1_n_0\,
      Q => s_axi_rid(1),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_2_n_0\,
      D => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[2]_i_1_n_0\,
      Q => s_axi_rid(2),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_2_n_0\,
      D => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_3_n_0\,
      Q => s_axi_rid(3),
      R => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_temp_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => s_axi_arid(0),
      Q => axi_rid_temp(0),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_temp_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => s_axi_arid(1),
      Q => axi_rid_temp(1),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_temp_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => s_axi_arid(2),
      Q => axi_rid_temp(2),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_temp_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => s_axi_arid(3),
      Q => axi_rid_temp(3),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW\: entity work.icyradio_axi_bram_ctrl_0_0_ua_narrow_0
     port map (
      \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]\ => \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_0\,
      \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_0\ => \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_1\,
      \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_1\ => \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_2\,
      \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_2\ => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3_n_0\,
      \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_3\ => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_6_n_0\,
      \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_4\ => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_4_n_0\,
      \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1]\ => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_3_n_0\,
      \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1]_0\ => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_4_n_0\,
      \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2]\ => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_5_n_0\,
      \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2]_0\ => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_7_n_0\,
      \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2]_1\ => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_2_n_0\,
      \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2]_2\ => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_4_n_0\,
      Q(2) => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[2]\,
      Q(1) => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[1]\,
      Q(0) => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[0]\,
      ar_active_re => ar_active_re,
      narrow_addr_int(2 downto 0) => narrow_addr_int(2 downto 0),
      s_axi_araddr(2 downto 0) => s_axi_araddr(2 downto 0),
      s_axi_arsize(2 downto 0) => s_axi_arsize(2 downto 0)
    );
\GEN_NO_RD_CMD_OPT.I_WRAP_BRST\: entity work.icyradio_axi_bram_ctrl_0_0_wrap_brst_1
     port map (
      \ADDR_SNG_PORT.bram_addr_int_reg[4]\ => \ADDR_SNG_PORT.bram_addr_int_reg[4]\,
      Arb2AR_Active => Arb2AR_Active,
      D(8 downto 0) => D(8 downto 0),
      \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1]\ => \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_12\,
      \GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_reg\ => \GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_reg_0\,
      \GEN_NO_RD_CMD_OPT.bram_en_int_i_3\ => \^gen_no_rd_cmd_opt.axi_rvalid_int_reg_0\,
      \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_3_0\ => \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0\,
      Q(3 downto 0) => rd_data_sm_cs(3 downto 0),
      SR(0) => \^s_axi_aresetn_0\,
      ar_active_re => ar_active_re,
      axi_rd_burst => axi_rd_burst,
      bram_addr_a(3 downto 0) => bram_addr_a(3 downto 0),
      brst_zero => brst_zero,
      curr_narrow_burst => curr_narrow_burst,
      curr_wrap_burst_reg => curr_wrap_burst_reg,
      end_brst_rd => end_brst_rd,
      narrow_addr_int(2 downto 0) => narrow_addr_int(2 downto 0),
      narrow_bram_addr_inc_d1 => narrow_bram_addr_inc_d1,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(9 downto 0) => s_axi_araddr(12 downto 3),
      s_axi_araddr_3_sp_1 => s_axi_araddr_3_sn_1,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arlen(3 downto 0) => s_axi_arlen(3 downto 0),
      s_axi_arsize(2 downto 0) => s_axi_arsize(2 downto 0),
      s_axi_arsize_0_sp_1 => \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_2\,
      s_axi_rready => s_axi_rready,
      s_axi_rready_0 => \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_13\
    );
\GEN_NO_RD_CMD_OPT.act_rd_burst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002EEE2E22"
    )
        port map (
      I0 => act_rd_burst,
      I1 => act_rd_burst_set,
      I2 => axi_rd_burst_two,
      I3 => ar_active_re,
      I4 => axi_rd_burst,
      I5 => \GEN_NO_RD_CMD_OPT.act_rd_burst_i_3_n_0\,
      O => \GEN_NO_RD_CMD_OPT.act_rd_burst_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.act_rd_burst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000002E"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.brst_zero_reg_0\,
      I1 => rd_data_sm_cs(0),
      I2 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_2_n_0\,
      I3 => rd_data_sm_cs(3),
      I4 => rd_data_sm_cs(1),
      I5 => rd_data_sm_cs(2),
      O => act_rd_burst_set
    );
\GEN_NO_RD_CMD_OPT.act_rd_burst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02000004FFFFFFFF"
    )
        port map (
      I0 => rd_data_sm_cs(2),
      I1 => rd_data_sm_cs(3),
      I2 => \GEN_NO_RD_CMD_OPT.act_rd_burst_i_4_n_0\,
      I3 => rd_data_sm_cs(0),
      I4 => rd_data_sm_cs(1),
      I5 => s_axi_aresetn,
      O => \GEN_NO_RD_CMD_OPT.act_rd_burst_i_3_n_0\
    );
\GEN_NO_RD_CMD_OPT.act_rd_burst_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"777F"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \^gen_no_rd_cmd_opt.axi_rvalid_int_reg_0\,
      I2 => act_rd_burst,
      I3 => act_rd_burst_two,
      O => \GEN_NO_RD_CMD_OPT.act_rd_burst_i_4_n_0\
    );
\GEN_NO_RD_CMD_OPT.act_rd_burst_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_NO_RD_CMD_OPT.act_rd_burst_i_1_n_0\,
      Q => act_rd_burst,
      R => '0'
    );
\GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => act_rd_burst_two,
      I1 => act_rd_burst_set,
      I2 => \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0\,
      I3 => ar_active_re,
      I4 => axi_rd_burst_two,
      I5 => \GEN_NO_RD_CMD_OPT.act_rd_burst_i_3_n_0\,
      O => \GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.act_rd_burst_two_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_1_n_0\,
      Q => act_rd_burst_two,
      R => '0'
    );
\GEN_NO_RD_CMD_OPT.axi_rlast_int_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D0DF0000"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \GEN_NO_RD_CMD_OPT.axi_rlast_int_i_2_n_0\,
      I2 => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\,
      I3 => \GEN_NO_RD_CMD_OPT.axi_rlast_int_i_3_n_0\,
      I4 => s_axi_aresetn,
      O => \GEN_NO_RD_CMD_OPT.axi_rlast_int_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.axi_rlast_int_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \^gen_no_rd_cmd_opt.axi_rvalid_int_reg_0\,
      I2 => rlast_sm_cs(0),
      I3 => rlast_sm_cs(2),
      O => \GEN_NO_RD_CMD_OPT.axi_rlast_int_i_2_n_0\
    );
\GEN_NO_RD_CMD_OPT.axi_rlast_int_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF77FFFFFF77F0FF"
    )
        port map (
      I0 => \^gen_no_rd_cmd_opt.axi_rvalid_int_reg_0\,
      I1 => s_axi_rready,
      I2 => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\,
      I3 => rlast_sm_cs(2),
      I4 => rlast_sm_cs(0),
      I5 => rlast_sm_cs(1),
      O => \GEN_NO_RD_CMD_OPT.axi_rlast_int_i_3_n_0\
    );
\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_NO_RD_CMD_OPT.axi_rlast_int_i_1_n_0\,
      Q => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\,
      R => '0'
    );
\GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEAA"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_2_n_0\,
      I1 => \GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_2_n_0\,
      I2 => disable_b2b_brst,
      I3 => last_bram_addr,
      I4 => axi_rvalid_clr_ok,
      O => \GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"444F444444444444"
    )
        port map (
      I0 => \^ar_active_d1\,
      I1 => Arb2AR_Active,
      I2 => rd_data_sm_cs(3),
      I3 => rd_data_sm_cs(1),
      I4 => rd_data_sm_cs(2),
      I5 => rd_data_sm_cs(0),
      O => \GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_2_n_0\
    );
\GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_1_n_0\,
      Q => axi_rvalid_clr_ok,
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.axi_rvalid_int_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F7F7F0000000000"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\,
      I2 => axi_rvalid_clr_ok,
      I3 => axi_rvalid_set,
      I4 => \^gen_no_rd_cmd_opt.axi_rvalid_int_reg_0\,
      I5 => s_axi_aresetn,
      O => \GEN_NO_RD_CMD_OPT.axi_rvalid_int_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_NO_RD_CMD_OPT.axi_rvalid_int_i_1_n_0\,
      Q => \^gen_no_rd_cmd_opt.axi_rvalid_int_reg_0\,
      R => '0'
    );
\GEN_NO_RD_CMD_OPT.axi_rvalid_set_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => rd_data_sm_cs(2),
      I1 => rd_data_sm_cs(0),
      I2 => rd_data_sm_cs(1),
      I3 => rd_data_sm_cs(3),
      O => axi_rvalid_set_cmb
    );
\GEN_NO_RD_CMD_OPT.axi_rvalid_set_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_rvalid_set_cmb,
      Q => axi_rvalid_set,
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.bram_en_int_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFBFB0B000B0B"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.bram_en_int_i_2_n_0\,
      I1 => \GEN_NO_RD_CMD_OPT.bram_en_int_i_3_n_0\,
      I2 => rd_data_sm_cs(3),
      I3 => \GEN_NO_RD_CMD_OPT.bram_en_int_i_4_n_0\,
      I4 => \GEN_NO_RD_CMD_OPT.bram_en_int_i_5_n_0\,
      I5 => \^bram_en_b_i\,
      O => \GEN_NO_RD_CMD_OPT.bram_en_int_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.bram_en_int_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABABFAAAAAAAA"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.bram_en_int_i_6_n_0\,
      I1 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_5_n_0\,
      I2 => rd_data_sm_cs(0),
      I3 => \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0\,
      I4 => rd_data_sm_cs(2),
      I5 => rd_data_sm_cs(1),
      O => \GEN_NO_RD_CMD_OPT.bram_en_int_i_2_n_0\
    );
\GEN_NO_RD_CMD_OPT.bram_en_int_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7D4DF3F37141"
    )
        port map (
      I0 => ar_active_re,
      I1 => rd_data_sm_cs(2),
      I2 => rd_data_sm_cs(0),
      I3 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_2_n_0\,
      I4 => rd_data_sm_cs(1),
      I5 => \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_13\,
      O => \GEN_NO_RD_CMD_OPT.bram_en_int_i_3_n_0\
    );
\GEN_NO_RD_CMD_OPT.bram_en_int_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000F000F88CF88CC"
    )
        port map (
      I0 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_4_n_0\,
      I1 => rd_data_sm_cs(0),
      I2 => \GEN_NO_RD_CMD_OPT.bram_en_int_i_7_n_0\,
      I3 => rd_data_sm_cs(2),
      I4 => ar_active_re,
      I5 => rd_data_sm_cs(1),
      O => \GEN_NO_RD_CMD_OPT.bram_en_int_i_4_n_0\
    );
\GEN_NO_RD_CMD_OPT.bram_en_int_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3333ABAA3333BBBB"
    )
        port map (
      I0 => rd_data_sm_cs(1),
      I1 => \GEN_NO_RD_CMD_OPT.bram_en_int_i_6_n_0\,
      I2 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_5_n_0\,
      I3 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_4_n_0\,
      I4 => rd_data_sm_cs(0),
      I5 => rd_data_sm_cs(2),
      O => \GEN_NO_RD_CMD_OPT.bram_en_int_i_5_n_0\
    );
\GEN_NO_RD_CMD_OPT.bram_en_int_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888880000000"
    )
        port map (
      I0 => rd_data_sm_cs(1),
      I1 => rd_data_sm_cs(2),
      I2 => pend_rd_op,
      I3 => s_axi_rready,
      I4 => \^gen_no_rd_cmd_opt.axi_rvalid_int_reg_0\,
      I5 => ar_active_re,
      O => \GEN_NO_RD_CMD_OPT.bram_en_int_i_6_n_0\
    );
\GEN_NO_RD_CMD_OPT.bram_en_int_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => brst_zero,
      I1 => end_brst_rd,
      I2 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_4_n_0\,
      I3 => rd_data_sm_cs(1),
      I4 => rd_data_sm_cs(0),
      I5 => brst_one,
      O => \GEN_NO_RD_CMD_OPT.bram_en_int_i_7_n_0\
    );
\GEN_NO_RD_CMD_OPT.bram_en_int_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_NO_RD_CMD_OPT.bram_en_int_i_1_n_0\,
      Q => \^bram_en_b_i\,
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.brst_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08FB"
    )
        port map (
      I0 => s_axi_arlen(0),
      I1 => Arb2AR_Active,
      I2 => \^ar_active_d1\,
      I3 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(0),
      O => p_0_in(0)
    );
\GEN_NO_RD_CMD_OPT.brst_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB0808FB"
    )
        port map (
      I0 => s_axi_arlen(1),
      I1 => Arb2AR_Active,
      I2 => \^ar_active_d1\,
      I3 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(0),
      I4 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(1),
      O => p_0_in(1)
    );
\GEN_NO_RD_CMD_OPT.brst_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FB08FB0808FB"
    )
        port map (
      I0 => s_axi_arlen(2),
      I1 => Arb2AR_Active,
      I2 => \^ar_active_d1\,
      I3 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(2),
      I4 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(1),
      I5 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(0),
      O => p_0_in(2)
    );
\GEN_NO_RD_CMD_OPT.brst_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8B8B8B88B"
    )
        port map (
      I0 => s_axi_arlen(3),
      I1 => ar_active_re,
      I2 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(3),
      I3 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(2),
      I4 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(0),
      I5 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(1),
      O => p_0_in(3)
    );
\GEN_NO_RD_CMD_OPT.brst_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB0808FBFB08FB08"
    )
        port map (
      I0 => s_axi_arlen(4),
      I1 => Arb2AR_Active,
      I2 => \^ar_active_d1\,
      I3 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(4),
      I4 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(3),
      I5 => \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_5_n_0\,
      O => p_0_in(4)
    );
\GEN_NO_RD_CMD_OPT.brst_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8B88BB8B8"
    )
        port map (
      I0 => s_axi_arlen(5),
      I1 => ar_active_re,
      I2 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(5),
      I3 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(4),
      I4 => \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_5_n_0\,
      I5 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(3),
      O => p_0_in(5)
    );
\GEN_NO_RD_CMD_OPT.brst_cnt[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB0808FBFB08FB08"
    )
        port map (
      I0 => s_axi_arlen(6),
      I1 => Arb2AR_Active,
      I2 => \^ar_active_d1\,
      I3 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(6),
      I4 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(5),
      I5 => \GEN_NO_RD_CMD_OPT.brst_cnt[6]_i_2_n_0\,
      O => p_0_in(6)
    );
\GEN_NO_RD_CMD_OPT.brst_cnt[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(3),
      I1 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(1),
      I2 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(0),
      I3 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(2),
      I4 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(4),
      O => \GEN_NO_RD_CMD_OPT.brst_cnt[6]_i_2_n_0\
    );
\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => \^ar_active_d1\,
      I1 => Arb2AR_Active,
      I2 => \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_12\,
      O => \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB0808FBFB08FB08"
    )
        port map (
      I0 => s_axi_arlen(7),
      I1 => Arb2AR_Active,
      I2 => \^ar_active_d1\,
      I3 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(7),
      I4 => \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_4_n_0\,
      I5 => \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_5_n_0\,
      O => p_0_in(7)
    );
\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(6),
      I1 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(4),
      I2 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(3),
      I3 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(5),
      O => \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_4_n_0\
    );
\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(1),
      I1 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(0),
      I2 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(2),
      O => \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_5_n_0\
    );
\GEN_NO_RD_CMD_OPT.brst_cnt_max_d1_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg_n_0\,
      Q => brst_cnt_max_d1,
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.brst_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0\,
      D => p_0_in(0),
      Q => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(0),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.brst_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0\,
      D => p_0_in(1),
      Q => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(1),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.brst_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0\,
      D => p_0_in(2),
      Q => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(2),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.brst_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0\,
      D => p_0_in(3),
      Q => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(3),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.brst_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0\,
      D => p_0_in(4),
      Q => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(4),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.brst_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0\,
      D => p_0_in(5),
      Q => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(5),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.brst_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0\,
      D => p_0_in(6),
      Q => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(6),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.brst_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0\,
      D => p_0_in(7),
      Q => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(7),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.brst_one_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444004444400040"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.last_bram_addr_i_3_n_0\,
      I1 => s_axi_aresetn,
      I2 => brst_one,
      I3 => ar_active_re,
      I4 => axi_rd_burst_two,
      I5 => \GEN_NO_RD_CMD_OPT.brst_one_i_2_n_0\,
      O => \GEN_NO_RD_CMD_OPT.brst_one_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.brst_one_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_12\,
      I1 => \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_4_n_0\,
      I2 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(7),
      I3 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(2),
      I4 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(1),
      I5 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(0),
      O => \GEN_NO_RD_CMD_OPT.brst_one_i_2_n_0\
    );
\GEN_NO_RD_CMD_OPT.brst_one_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_NO_RD_CMD_OPT.brst_one_i_1_n_0\,
      Q => brst_one,
      R => '0'
    );
\GEN_NO_RD_CMD_OPT.brst_zero_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.last_bram_addr_i_3_n_0\,
      I1 => brst_zero,
      I2 => s_axi_aresetn,
      I3 => \GEN_NO_RD_CMD_OPT.brst_zero_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.brst_zero_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.brst_zero_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => s_axi_arlen(4),
      I1 => s_axi_arlen(6),
      I2 => s_axi_arlen(7),
      I3 => s_axi_arlen(5),
      O => s_axi_arlen_4_sn_1
    );
\GEN_NO_RD_CMD_OPT.brst_zero_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_NO_RD_CMD_OPT.brst_zero_i_1_n_0\,
      Q => brst_zero,
      R => '0'
    );
\GEN_NO_RD_CMD_OPT.curr_fixed_burst_reg_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_arburst(0),
      I1 => s_axi_arburst(1),
      O => curr_fixed_burst
    );
\GEN_NO_RD_CMD_OPT.curr_fixed_burst_reg_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => curr_fixed_burst,
      Q => curr_fixed_burst_reg,
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.curr_wrap_burst_reg_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_arburst(1),
      I1 => s_axi_arburst(0),
      O => curr_wrap_burst
    );
\GEN_NO_RD_CMD_OPT.curr_wrap_burst_reg_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => curr_wrap_burst,
      Q => curr_wrap_burst_reg,
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABAAABABABAAABA"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_2_n_0\,
      I1 => rd_data_sm_cs(3),
      I2 => disable_b2b_brst,
      I3 => rd_data_sm_cs(0),
      I4 => rd_data_sm_cs(2),
      I5 => rd_data_sm_cs(1),
      O => disable_b2b_brst_cmb
    );
\GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FBFBFBBB"
    )
        port map (
      I0 => disable_b2b_brst,
      I1 => rd_data_sm_cs(1),
      I2 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_4_n_0\,
      I3 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_5_n_0\,
      I4 => brst_one,
      I5 => \GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_3_n_0\,
      O => \GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_2_n_0\
    );
\GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF10FF"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0\,
      I1 => rd_data_sm_cs(1),
      I2 => axi_rd_burst,
      I3 => rd_data_sm_cs(0),
      I4 => rd_data_sm_cs(3),
      I5 => rd_data_sm_cs(2),
      O => \GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_3_n_0\
    );
\GEN_NO_RD_CMD_OPT.disable_b2b_brst_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => disable_b2b_brst_cmb,
      Q => disable_b2b_brst,
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.end_brst_rd_clr_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCFFFD03000000"
    )
        port map (
      I0 => ar_active_re,
      I1 => rd_data_sm_cs(3),
      I2 => rd_data_sm_cs(1),
      I3 => rd_data_sm_cs(2),
      I4 => rd_data_sm_cs(0),
      I5 => end_brst_rd_clr,
      O => \GEN_NO_RD_CMD_OPT.end_brst_rd_clr_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.end_brst_rd_clr_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_NO_RD_CMD_OPT.end_brst_rd_clr_i_1_n_0\,
      Q => end_brst_rd_clr,
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.end_brst_rd_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55300000"
    )
        port map (
      I0 => end_brst_rd_clr,
      I1 => brst_cnt_max_d1,
      I2 => \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg_n_0\,
      I3 => end_brst_rd,
      I4 => s_axi_aresetn,
      O => \GEN_NO_RD_CMD_OPT.end_brst_rd_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.end_brst_rd_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_NO_RD_CMD_OPT.end_brst_rd_i_1_n_0\,
      Q => end_brst_rd,
      R => '0'
    );
\GEN_NO_RD_CMD_OPT.last_bram_addr_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF4001"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.last_bram_addr_i_2_n_0\,
      I1 => rd_data_sm_cs(0),
      I2 => rd_data_sm_cs(2),
      I3 => rd_data_sm_cs(1),
      I4 => \GEN_NO_RD_CMD_OPT.last_bram_addr_i_3_n_0\,
      O => last_bram_addr0
    );
\GEN_NO_RD_CMD_OPT.last_bram_addr_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBF0000FFBFFFBF"
    )
        port map (
      I0 => rd_data_sm_cs(2),
      I1 => rd_data_sm_cs(3),
      I2 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_2_n_0\,
      I3 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_4_n_0\,
      I4 => \GEN_NO_RD_CMD_OPT.brst_zero_reg_0\,
      I5 => \GEN_NO_RD_CMD_OPT.last_bram_addr_i_4_n_0\,
      O => \GEN_NO_RD_CMD_OPT.last_bram_addr_i_2_n_0\
    );
\GEN_NO_RD_CMD_OPT.last_bram_addr_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_12\,
      I1 => \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_4_n_0\,
      I2 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(7),
      I3 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(2),
      I4 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(1),
      I5 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(0),
      O => \GEN_NO_RD_CMD_OPT.last_bram_addr_i_3_n_0\
    );
\GEN_NO_RD_CMD_OPT.last_bram_addr_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000F0F0F00000800"
    )
        port map (
      I0 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_2_n_0\,
      I1 => pend_rd_op,
      I2 => rd_data_sm_cs(3),
      I3 => rd_data_sm_cs(2),
      I4 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_4_n_0\,
      I5 => ar_active_re,
      O => \GEN_NO_RD_CMD_OPT.last_bram_addr_i_4_n_0\
    );
\GEN_NO_RD_CMD_OPT.last_bram_addr_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => last_bram_addr0,
      Q => last_bram_addr,
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.pend_rd_op_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E000FFFFE0000000"
    )
        port map (
      I0 => rd_data_sm_cs(2),
      I1 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_2_n_0\,
      I2 => \GEN_NO_RD_CMD_OPT.pend_rd_op_i_2_n_0\,
      I3 => ar_active_re,
      I4 => \GEN_NO_RD_CMD_OPT.pend_rd_op_reg_i_3_n_0\,
      I5 => pend_rd_op,
      O => \GEN_NO_RD_CMD_OPT.pend_rd_op_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.pend_rd_op_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rd_data_sm_cs(3),
      I1 => rd_data_sm_cs(1),
      O => \GEN_NO_RD_CMD_OPT.pend_rd_op_i_2_n_0\
    );
\GEN_NO_RD_CMD_OPT.pend_rd_op_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1010101010000000"
    )
        port map (
      I0 => rd_data_sm_cs(1),
      I1 => rd_data_sm_cs(3),
      I2 => rd_data_sm_cs(2),
      I3 => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\,
      I4 => pend_rd_op,
      I5 => ar_active_re,
      O => \GEN_NO_RD_CMD_OPT.pend_rd_op_i_4_n_0\
    );
\GEN_NO_RD_CMD_OPT.pend_rd_op_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00004000"
    )
        port map (
      I0 => rd_data_sm_cs(3),
      I1 => rd_data_sm_cs(1),
      I2 => rd_data_sm_cs(2),
      I3 => pend_rd_op,
      I4 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_4_n_0\,
      I5 => \GEN_NO_RD_CMD_OPT.pend_rd_op_i_6_n_0\,
      O => \GEN_NO_RD_CMD_OPT.pend_rd_op_i_5_n_0\
    );
\GEN_NO_RD_CMD_OPT.pend_rd_op_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0003000200030000"
    )
        port map (
      I0 => ar_active_re,
      I1 => rd_data_sm_cs(2),
      I2 => rd_data_sm_cs(1),
      I3 => rd_data_sm_cs(3),
      I4 => pend_rd_op,
      I5 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_2_n_0\,
      O => \GEN_NO_RD_CMD_OPT.pend_rd_op_i_6_n_0\
    );
\GEN_NO_RD_CMD_OPT.pend_rd_op_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_NO_RD_CMD_OPT.pend_rd_op_i_1_n_0\,
      Q => pend_rd_op,
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.pend_rd_op_reg_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \GEN_NO_RD_CMD_OPT.pend_rd_op_i_4_n_0\,
      I1 => \GEN_NO_RD_CMD_OPT.pend_rd_op_i_5_n_0\,
      O => \GEN_NO_RD_CMD_OPT.pend_rd_op_reg_i_3_n_0\,
      S => rd_data_sm_cs(0)
    );
\GEN_NO_RD_CMD_OPT.rd_skid_buf_ld_reg_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000080F0F00"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \^gen_no_rd_cmd_opt.axi_rvalid_int_reg_0\,
      I2 => rd_data_sm_cs(3),
      I3 => rd_data_sm_cs(1),
      I4 => rd_data_sm_cs(0),
      I5 => rd_data_sm_cs(2),
      O => rd_skid_buf_ld_cmb
    );
\GEN_NO_RD_CMD_OPT.rd_skid_buf_ld_reg_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => rd_skid_buf_ld_cmb,
      Q => rd_skid_buf_ld_reg,
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD01"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_2_n_0\,
      I1 => rd_data_sm_cs(3),
      I2 => \GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_3_n_0\,
      I3 => rddata_mux_sel,
      O => \GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF55FFFC00FFFF"
    )
        port map (
      I0 => rd_data_sm_cs(1),
      I1 => act_rd_burst,
      I2 => act_rd_burst_two,
      I3 => rd_data_sm_cs(0),
      I4 => rd_data_sm_cs(2),
      I5 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_4_n_0\,
      O => \GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_2_n_0\
    );
\GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCC00000FFF7777"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0\,
      I1 => rd_data_sm_cs(1),
      I2 => \^gen_no_rd_cmd_opt.axi_rvalid_int_reg_0\,
      I3 => s_axi_rready,
      I4 => rd_data_sm_cs(2),
      I5 => rd_data_sm_cs(0),
      O => \GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_3_n_0\
    );
\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_1_n_0\,
      Q => rddata_mux_sel,
      R => \^s_axi_aresetn_0\
    );
axi_awready_int_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\,
      O => s_axi_rready_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_bram_ctrl_0_0_wr_chnl is
  port (
    aw_active_d1 : out STD_LOGIC;
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wready : out STD_LOGIC;
    axi_bvalid_int_reg_0 : out STD_LOGIC;
    aw_active_d1_reg_0 : out STD_LOGIC;
    curr_wrap_burst_reg_reg_0 : out STD_LOGIC;
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]_0\ : out STD_LOGIC;
    AW2Arb_Active_Clr : out STD_LOGIC;
    \GEN_NARROW_CNT.narrow_bram_addr_inc_d1_reg_0\ : out STD_LOGIC;
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \save_init_bram_addr_ld_reg[11]\ : out STD_LOGIC;
    \save_init_bram_addr_ld_reg[10]\ : out STD_LOGIC;
    \save_init_bram_addr_ld_reg[9]\ : out STD_LOGIC;
    \save_init_bram_addr_ld_reg[8]\ : out STD_LOGIC;
    \save_init_bram_addr_ld_reg[7]\ : out STD_LOGIC;
    \save_init_bram_addr_ld_reg[6]\ : out STD_LOGIC;
    aw_active_d1_reg_1 : out STD_LOGIC;
    s_axi_awaddr_4_sp_1 : out STD_LOGIC;
    s_axi_awlen_2_sp_1 : out STD_LOGIC;
    s_axi_awlen_1_sp_1 : out STD_LOGIC;
    \bvalid_cnt_reg[2]_0\ : out STD_LOGIC;
    s_axi_awvalid_0 : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \wrap_burst_total_reg[0]\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Arb2AW_Active : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    aw_active_re : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    curr_narrow_burst_en : in STD_LOGIC;
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[11]\ : in STD_LOGIC;
    bram_addr_a : in STD_LOGIC_VECTOR ( 2 downto 0 );
    arb_sm_cs : in STD_LOGIC_VECTOR ( 1 downto 0 );
    BRAM_En_B_i : in STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_axi_bram_ctrl_0_0_wr_chnl : entity is "wr_chnl";
end icyradio_axi_bram_ctrl_0_0_wr_chnl;

architecture STRUCTURE of icyradio_axi_bram_ctrl_0_0_wr_chnl is
  signal \ADDR_SNG_PORT.bram_addr_int[11]_i_13_n_0\ : STD_LOGIC;
  signal \^aw2arb_active_clr\ : STD_LOGIC;
  signal AW2Arb_BVALID_Cnt : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal BID_FIFO_n_0 : STD_LOGIC;
  signal BID_FIFO_n_2 : STD_LOGIC;
  signal BID_FIFO_n_3 : STD_LOGIC;
  signal BID_FIFO_n_4 : STD_LOGIC;
  signal BID_FIFO_n_5 : STD_LOGIC;
  signal BID_FIFO_n_6 : STD_LOGIC;
  signal BID_FIFO_n_7 : STD_LOGIC;
  signal BRAM_En_A_i : STD_LOGIC;
  signal \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_3_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[1]_0\ : STD_LOGIC;
  signal \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0]\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[0]_i_10_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[0]_i_11_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[0]_i_12_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[0]_i_13_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[0]_i_14_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[0]_i_15_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[0]_i_16_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[0]_i_17_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[0]_i_18_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[0]_i_19_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[0]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[0]_i_4_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[0]_i_5_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[0]_i_6_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[0]_i_7_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[0]_i_8_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[0]_i_9_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[1]_i_3_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[2]_i_10_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[2]_i_11_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[2]_i_12_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[2]_i_13_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[2]_i_14_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[2]_i_15_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[2]_i_16_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[2]_i_17_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[2]_i_18_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[2]_i_19_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[2]_i_20_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[2]_i_21_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[2]_i_22_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[2]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[2]_i_4_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[2]_i_5_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[2]_i_6_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[2]_i_7_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[2]_i_8_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[2]_i_9_n_0\ : STD_LOGIC;
  signal \^gen_narrow_cnt.narrow_bram_addr_inc_d1_reg_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \GEN_NARROW_EN.curr_narrow_burst_i_1_n_0\ : STD_LOGIC;
  signal \GEN_UA_NARROW.I_UA_NARROW_n_0\ : STD_LOGIC;
  signal \GEN_UA_NARROW.I_UA_NARROW_n_1\ : STD_LOGIC;
  signal \GEN_UA_NARROW.I_UA_NARROW_n_2\ : STD_LOGIC;
  signal \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.bram_en_int_i_1_n_0\ : STD_LOGIC;
  signal \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_WR_NO_ECC.bram_we_int[7]_i_1_n_0\ : STD_LOGIC;
  signal I_WRAP_BRST_n_13 : STD_LOGIC;
  signal I_WRAP_BRST_n_14 : STD_LOGIC;
  signal I_WRAP_BRST_n_15 : STD_LOGIC;
  signal I_WRAP_BRST_n_16 : STD_LOGIC;
  signal I_WRAP_BRST_n_3 : STD_LOGIC;
  signal \^aw_active_d1\ : STD_LOGIC;
  signal axi_bvalid_int_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_int_i_2_n_0 : STD_LOGIC;
  signal \^axi_bvalid_int_reg_0\ : STD_LOGIC;
  signal axi_wdata_full_cmb : STD_LOGIC;
  signal axi_wdata_full_reg : STD_LOGIC;
  signal axi_wlast_d1 : STD_LOGIC;
  signal axi_wr_burst : STD_LOGIC;
  signal axi_wr_burst_i_1_n_0 : STD_LOGIC;
  signal axi_wr_burst_i_2_n_0 : STD_LOGIC;
  signal axi_wready_int_mod_i_1_n_0 : STD_LOGIC;
  signal bid_gets_fifo_load : STD_LOGIC;
  signal bid_gets_fifo_load_d1 : STD_LOGIC;
  signal \bvalid_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \bvalid_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \bvalid_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal bvalid_cnt_inc : STD_LOGIC;
  signal clr_bram_we : STD_LOGIC;
  signal curr_fixed_burst_reg : STD_LOGIC;
  signal curr_narrow_burst : STD_LOGIC;
  signal curr_wrap_burst_reg : STD_LOGIC;
  signal narrow_addr_int : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal narrow_bram_addr_inc : STD_LOGIC;
  signal narrow_bram_addr_inc_d1 : STD_LOGIC;
  signal narrow_burst_cnt_ld_reg : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_8_in : STD_LOGIC;
  signal s_axi_awaddr_4_sn_1 : STD_LOGIC;
  signal s_axi_awlen_1_sn_1 : STD_LOGIC;
  signal s_axi_awlen_2_sn_1 : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_3\ : label is "soft_lutpair66";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0]\ : label is "idle:001,brst_wr_data:010,sng_wr_data:100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]\ : label is "idle:001,brst_wr_data:010,sng_wr_data:100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]\ : label is "idle:001,brst_wr_data:010,sng_wr_data:100";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[0]_i_10\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[0]_i_11\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[0]_i_19\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[0]_i_8\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[0]_i_9\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[1]_i_3\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[2]_i_12\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[2]_i_16\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[2]_i_17\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[2]_i_18\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[2]_i_19\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[2]_i_20\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[2]_i_21\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[2]_i_22\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[2]_i_7\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \GEN_NARROW_EN.curr_narrow_burst_i_3\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \GEN_NARROW_EN.curr_narrow_burst_i_4\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.bram_en_int_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of axi_awready_int_i_3 : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of axi_bvalid_int_i_1 : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of axi_wready_int_mod_i_1 : label is "soft_lutpair75";
begin
  AW2Arb_Active_Clr <= \^aw2arb_active_clr\;
  \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]_0\ <= \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[1]_0\;
  \GEN_NARROW_CNT.narrow_bram_addr_inc_d1_reg_0\ <= \^gen_narrow_cnt.narrow_bram_addr_inc_d1_reg_0\;
  aw_active_d1 <= \^aw_active_d1\;
  axi_bvalid_int_reg_0 <= \^axi_bvalid_int_reg_0\;
  s_axi_awaddr_4_sp_1 <= s_axi_awaddr_4_sn_1;
  s_axi_awlen_1_sp_1 <= s_axi_awlen_1_sn_1;
  s_axi_awlen_2_sp_1 <= s_axi_awlen_2_sn_1;
  s_axi_wready <= \^s_axi_wready\;
\ADDR_SNG_PORT.bram_addr_int[11]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF7F"
    )
        port map (
      I0 => curr_narrow_burst,
      I1 => s_axi_wvalid,
      I2 => \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[1]_0\,
      I3 => narrow_addr_int(1),
      I4 => narrow_addr_int(0),
      I5 => narrow_addr_int(2),
      O => \ADDR_SNG_PORT.bram_addr_int[11]_i_13_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[11]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000001111F000"
    )
        port map (
      I0 => narrow_bram_addr_inc_d1,
      I1 => \ADDR_SNG_PORT.bram_addr_int[11]_i_13_n_0\,
      I2 => \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[1]_0\,
      I3 => s_axi_wvalid,
      I4 => curr_narrow_burst,
      I5 => curr_fixed_burst_reg,
      O => \^gen_narrow_cnt.narrow_bram_addr_inc_d1_reg_0\
    );
BID_FIFO: entity work.icyradio_axi_bram_ctrl_0_0_SRL_FIFO
     port map (
      AW2Arb_BVALID_Cnt(2 downto 0) => AW2Arb_BVALID_Cnt(2 downto 0),
      \Addr_Counters[3].FDRE_I_0\ => \wrap_burst_total_reg[0]\,
      Arb2AW_Active => Arb2AW_Active,
      D(3) => BID_FIFO_n_2,
      D(2) => BID_FIFO_n_3,
      D(1) => BID_FIFO_n_4,
      D(0) => BID_FIFO_n_5,
      Data_Exists_DFF_0 => \^aw_active_d1\,
      Data_Exists_DFF_1 => \^axi_bvalid_int_reg_0\,
      E(0) => BID_FIFO_n_0,
      \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0]\ => BID_FIFO_n_7,
      \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]\ => BID_FIFO_n_6,
      \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]\ => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0]\,
      aw_active_re => aw_active_re,
      axi_wdata_full_reg => axi_wdata_full_reg,
      axi_wr_burst => axi_wr_burst,
      bid_gets_fifo_load => bid_gets_fifo_load,
      bid_gets_fifo_load_d1 => bid_gets_fifo_load_d1,
      bid_gets_fifo_load_d1_reg => axi_bvalid_int_i_2_n_0,
      bid_gets_fifo_load_d1_reg_0 => \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[1]_0\,
      s_axi_aclk => s_axi_aclk,
      s_axi_awid(3 downto 0) => s_axi_awid(3 downto 0),
      s_axi_bready => s_axi_bready,
      s_axi_wlast => s_axi_wlast,
      s_axi_wvalid => s_axi_wvalid
    );
\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1555FFFF0000"
    )
        port map (
      I0 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_3_n_0\,
      I1 => s_axi_wlast,
      I2 => \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[1]_0\,
      I3 => s_axi_wvalid,
      I4 => \^aw2arb_active_clr\,
      I5 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0]\,
      O => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[0]_i_1_n_0\
    );
\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A202FFFFA2020000"
    )
        port map (
      I0 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0]\,
      I1 => s_axi_wlast,
      I2 => axi_wdata_full_reg,
      I3 => axi_wr_burst,
      I4 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_2_n_0\,
      I5 => \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[1]_0\,
      O => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_1_n_0\
    );
\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEAAA"
    )
        port map (
      I0 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_3_n_0\,
      I1 => s_axi_wlast,
      I2 => \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[1]_0\,
      I3 => s_axi_wvalid,
      I4 => \^aw2arb_active_clr\,
      O => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_2_n_0\
    );
\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAFFAAFC88CC88"
    )
        port map (
      I0 => BID_FIFO_n_7,
      I1 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_3_n_0\,
      I2 => s_axi_wlast,
      I3 => \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[1]_0\,
      I4 => s_axi_wvalid,
      I5 => \^aw2arb_active_clr\,
      O => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_1_n_0\
    );
\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8880"
    )
        port map (
      I0 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0]\,
      I1 => Arb2AW_Active,
      I2 => axi_wdata_full_reg,
      I3 => s_axi_wvalid,
      O => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_3_n_0\
    );
\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[0]_i_1_n_0\,
      Q => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0]\,
      S => \wrap_burst_total_reg[0]\
    );
\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_1_n_0\,
      Q => \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[1]_0\,
      R => \wrap_burst_total_reg[0]\
    );
\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_1_n_0\,
      Q => \^aw2arb_active_clr\,
      R => \wrap_burst_total_reg[0]\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F7F"
    )
        port map (
      I0 => s_axi_awlen(0),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awvalid,
      I3 => s_axi_awlen(1),
      O => \GEN_NARROW_CNT.narrow_addr_int[0]_i_10_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => s_axi_awlen(6),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awvalid,
      I3 => s_axi_awlen(7),
      O => \GEN_NARROW_CNT.narrow_addr_int[0]_i_11_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F220FFF22222222"
    )
        port map (
      I0 => \GEN_NARROW_CNT.narrow_addr_int[2]_i_19_n_0\,
      I1 => s_axi_awsize(2),
      I2 => I_WRAP_BRST_n_14,
      I3 => s_axi_awsize(0),
      I4 => \GEN_NARROW_CNT.narrow_addr_int[0]_i_19_n_0\,
      I5 => s_axi_awsize(1),
      O => \GEN_NARROW_CNT.narrow_addr_int[0]_i_12_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"282BE8EB2828E8E8"
    )
        port map (
      I0 => \GEN_NARROW_CNT.narrow_addr_int[2]_i_14_n_0\,
      I1 => s_axi_awsize(1),
      I2 => s_axi_awsize(0),
      I3 => I_WRAP_BRST_n_14,
      I4 => \GEN_NARROW_CNT.narrow_addr_int[0]_i_19_n_0\,
      I5 => s_axi_awsize(2),
      O => \GEN_NARROW_CNT.narrow_addr_int[0]_i_13_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0000000B0800000"
    )
        port map (
      I0 => s_axi_awlen(2),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awvalid,
      I3 => s_axi_awlen(3),
      I4 => s_axi_awsize(1),
      I5 => s_axi_awsize(2),
      O => \GEN_NARROW_CNT.narrow_addr_int[0]_i_14_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF01FF11FF01FF"
    )
        port map (
      I0 => s_axi_awlen(4),
      I1 => s_axi_awlen(5),
      I2 => s_axi_awlen(7),
      I3 => s_axi_awvalid,
      I4 => s_axi_awsize(0),
      I5 => s_axi_awlen(6),
      O => \GEN_NARROW_CNT.narrow_addr_int[0]_i_15_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000003700F70"
    )
        port map (
      I0 => s_axi_awlen(4),
      I1 => s_axi_awvalid,
      I2 => s_axi_awsize(1),
      I3 => s_axi_awsize(0),
      I4 => s_axi_awlen(5),
      I5 => \GEN_NARROW_CNT.narrow_addr_int[2]_i_22_n_0\,
      O => \GEN_NARROW_CNT.narrow_addr_int[0]_i_16_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFA0FFFFFFFFFF88"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_awlen(6),
      I2 => s_axi_awlen(7),
      I3 => \GEN_NARROW_CNT.narrow_addr_int[2]_i_14_n_0\,
      I4 => s_axi_awsize(1),
      I5 => s_axi_awsize(0),
      O => \GEN_NARROW_CNT.narrow_addr_int[0]_i_17_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D5FD5555D5F55555"
    )
        port map (
      I0 => \GEN_NARROW_CNT.narrow_addr_int[0]_i_9_n_0\,
      I1 => s_axi_awsize(2),
      I2 => s_axi_awlen(4),
      I3 => s_axi_awsize(0),
      I4 => s_axi_awvalid,
      I5 => s_axi_awlen(5),
      O => \GEN_NARROW_CNT.narrow_addr_int[0]_i_18_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_awlen(1),
      O => \GEN_NARROW_CNT.narrow_addr_int[0]_i_19_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF020000"
    )
        port map (
      I0 => \GEN_NARROW_CNT.narrow_addr_int[0]_i_4_n_0\,
      I1 => \GEN_NARROW_CNT.narrow_addr_int[0]_i_5_n_0\,
      I2 => \GEN_NARROW_CNT.narrow_addr_int[0]_i_6_n_0\,
      I3 => s_axi_awburst(0),
      I4 => s_axi_awburst(1),
      I5 => \GEN_NARROW_CNT.narrow_addr_int[2]_i_6_n_0\,
      O => \GEN_NARROW_CNT.narrow_addr_int[0]_i_2_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F8F8F8F0F0FFF0F"
    )
        port map (
      I0 => \GEN_NARROW_CNT.narrow_addr_int[0]_i_8_n_0\,
      I1 => \GEN_NARROW_CNT.narrow_addr_int[0]_i_9_n_0\,
      I2 => s_axi_awsize(2),
      I3 => \GEN_NARROW_CNT.narrow_addr_int[0]_i_10_n_0\,
      I4 => \GEN_NARROW_CNT.narrow_addr_int[0]_i_11_n_0\,
      I5 => s_axi_awsize(1),
      O => \GEN_NARROW_CNT.narrow_addr_int[0]_i_4_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFEFEFF"
    )
        port map (
      I0 => \GEN_NARROW_CNT.narrow_addr_int[0]_i_12_n_0\,
      I1 => \GEN_NARROW_CNT.narrow_addr_int[0]_i_13_n_0\,
      I2 => \GEN_NARROW_CNT.narrow_addr_int[0]_i_14_n_0\,
      I3 => s_axi_awsize(2),
      I4 => \GEN_NARROW_CNT.narrow_addr_int[0]_i_15_n_0\,
      O => \GEN_NARROW_CNT.narrow_addr_int[0]_i_5_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1400FFFF14005000"
    )
        port map (
      I0 => \GEN_NARROW_CNT.narrow_addr_int[0]_i_16_n_0\,
      I1 => s_axi_awsize(0),
      I2 => s_axi_awsize(2),
      I3 => \GEN_NARROW_CNT.narrow_addr_int[0]_i_17_n_0\,
      I4 => s_axi_awsize(1),
      I5 => \GEN_NARROW_CNT.narrow_addr_int[0]_i_18_n_0\,
      O => \GEN_NARROW_CNT.narrow_addr_int[0]_i_6_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00EF00E300EC00E0"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awsize(1),
      I3 => s_axi_awsize(2),
      I4 => s_axi_awaddr(1),
      I5 => s_axi_awaddr(0),
      O => \GEN_NARROW_CNT.narrow_addr_int[0]_i_7_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F7F"
    )
        port map (
      I0 => s_axi_awlen(4),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awvalid,
      I3 => s_axi_awlen(5),
      O => \GEN_NARROW_CNT.narrow_addr_int[0]_i_8_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F7F"
    )
        port map (
      I0 => s_axi_awlen(2),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awvalid,
      I3 => s_axi_awlen(3),
      O => \GEN_NARROW_CNT.narrow_addr_int[0]_i_9_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FB00F8"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awsize(1),
      I3 => s_axi_awsize(2),
      I4 => s_axi_awaddr(1),
      O => \GEN_NARROW_CNT.narrow_addr_int[1]_i_3_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[2]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000001F03FFFF"
    )
        port map (
      I0 => \GEN_NARROW_CNT.narrow_addr_int[2]_i_16_n_0\,
      I1 => s_axi_awsize(0),
      I2 => \GEN_NARROW_CNT.narrow_addr_int[2]_i_17_n_0\,
      I3 => s_axi_awsize(2),
      I4 => \GEN_NARROW_CNT.narrow_addr_int[0]_i_9_n_0\,
      I5 => s_axi_awsize(1),
      O => \GEN_NARROW_CNT.narrow_addr_int[2]_i_10_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[2]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0EE00EE000000EE0"
    )
        port map (
      I0 => \GEN_NARROW_CNT.narrow_addr_int[2]_i_18_n_0\,
      I1 => \GEN_NARROW_CNT.narrow_addr_int[2]_i_19_n_0\,
      I2 => s_axi_awsize(2),
      I3 => \GEN_NARROW_CNT.narrow_addr_int[2]_i_20_n_0\,
      I4 => \GEN_NARROW_CNT.narrow_addr_int[2]_i_21_n_0\,
      I5 => \GEN_NARROW_CNT.narrow_addr_int[2]_i_22_n_0\,
      O => \GEN_NARROW_CNT.narrow_addr_int[2]_i_11_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[2]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF40FFFF"
    )
        port map (
      I0 => s_axi_awsize(2),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awsize(0),
      I3 => \^aw_active_d1\,
      I4 => Arb2AW_Active,
      O => \GEN_NARROW_CNT.narrow_addr_int[2]_i_12_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[2]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A808A808A8080000"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_awlen(0),
      I2 => s_axi_awsize(0),
      I3 => s_axi_awlen(1),
      I4 => s_axi_awsize(2),
      I5 => s_axi_awsize(1),
      O => \GEN_NARROW_CNT.narrow_addr_int[2]_i_13_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[2]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B800"
    )
        port map (
      I0 => s_axi_awlen(3),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awlen(2),
      I3 => s_axi_awvalid,
      O => \GEN_NARROW_CNT.narrow_addr_int[2]_i_14_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[2]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1010300000003000"
    )
        port map (
      I0 => s_axi_awsize(1),
      I1 => s_axi_awsize(2),
      I2 => s_axi_awvalid,
      I3 => s_axi_awlen(6),
      I4 => s_axi_awsize(0),
      I5 => s_axi_awlen(7),
      O => \GEN_NARROW_CNT.narrow_addr_int[2]_i_15_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[2]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_awlen(5),
      O => \GEN_NARROW_CNT.narrow_addr_int[2]_i_16_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[2]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_awlen(4),
      O => \GEN_NARROW_CNT.narrow_addr_int[2]_i_17_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[2]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDEA55EA"
    )
        port map (
      I0 => s_axi_awsize(1),
      I1 => s_axi_awvalid,
      I2 => s_axi_awlen(2),
      I3 => s_axi_awsize(0),
      I4 => s_axi_awlen(3),
      O => \GEN_NARROW_CNT.narrow_addr_int[2]_i_18_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[2]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B800"
    )
        port map (
      I0 => s_axi_awlen(7),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awlen(6),
      I3 => s_axi_awvalid,
      O => \GEN_NARROW_CNT.narrow_addr_int[2]_i_19_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55D555D555D50000"
    )
        port map (
      I0 => aw_active_re,
      I1 => s_axi_awsize(0),
      I2 => s_axi_awsize(1),
      I3 => s_axi_awsize(2),
      I4 => \ADDR_SNG_PORT.bram_addr_int[11]_i_13_n_0\,
      I5 => narrow_bram_addr_inc_d1,
      O => \GEN_NARROW_CNT.narrow_addr_int[2]_i_2_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[2]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_awsize(1),
      I1 => s_axi_awsize(0),
      O => \GEN_NARROW_CNT.narrow_addr_int[2]_i_20_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[2]_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"043C343C"
    )
        port map (
      I0 => s_axi_awlen(5),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awsize(1),
      I3 => s_axi_awvalid,
      I4 => s_axi_awlen(4),
      O => \GEN_NARROW_CNT.narrow_addr_int[2]_i_21_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[2]_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B800"
    )
        port map (
      I0 => s_axi_awlen(1),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awlen(0),
      I3 => s_axi_awvalid,
      O => \GEN_NARROW_CNT.narrow_addr_int[2]_i_22_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80FF"
    )
        port map (
      I0 => curr_narrow_burst,
      I1 => s_axi_wvalid,
      I2 => \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[1]_0\,
      I3 => \GEN_NARROW_CNT.narrow_addr_int[2]_i_2_n_0\,
      O => \GEN_NARROW_CNT.narrow_addr_int[2]_i_4_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFFD"
    )
        port map (
      I0 => \GEN_NARROW_CNT.narrow_addr_int[0]_i_4_n_0\,
      I1 => \GEN_NARROW_CNT.narrow_addr_int[2]_i_8_n_0\,
      I2 => \GEN_NARROW_CNT.narrow_addr_int[2]_i_9_n_0\,
      I3 => \GEN_NARROW_CNT.narrow_addr_int[2]_i_10_n_0\,
      I4 => \GEN_NARROW_CNT.narrow_addr_int[2]_i_11_n_0\,
      I5 => s_axi_awburst(0),
      O => \GEN_NARROW_CNT.narrow_addr_int[2]_i_5_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABAAABAAABFFFF"
    )
        port map (
      I0 => \GEN_NARROW_CNT.narrow_addr_int[2]_i_12_n_0\,
      I1 => s_axi_awaddr(2),
      I2 => s_axi_awaddr(1),
      I3 => s_axi_awaddr(0),
      I4 => s_axi_awburst(0),
      I5 => s_axi_awburst(1),
      O => \GEN_NARROW_CNT.narrow_addr_int[2]_i_6_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[2]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF01"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awsize(1),
      I3 => s_axi_awsize(2),
      O => \GEN_NARROW_CNT.narrow_addr_int[2]_i_7_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0000FFA8"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_awlen(4),
      I2 => s_axi_awlen(5),
      I3 => \GEN_NARROW_CNT.narrow_addr_int[0]_i_11_n_0\,
      I4 => s_axi_awsize(2),
      I5 => \GEN_NARROW_CNT.narrow_addr_int[0]_i_14_n_0\,
      O => \GEN_NARROW_CNT.narrow_addr_int[2]_i_8_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[2]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFB8E2FFE2"
    )
        port map (
      I0 => \GEN_NARROW_CNT.narrow_addr_int[2]_i_13_n_0\,
      I1 => s_axi_awsize(0),
      I2 => \GEN_NARROW_CNT.narrow_addr_int[2]_i_14_n_0\,
      I3 => s_axi_awsize(1),
      I4 => \GEN_NARROW_CNT.narrow_addr_int[0]_i_10_n_0\,
      I5 => \GEN_NARROW_CNT.narrow_addr_int[2]_i_15_n_0\,
      O => \GEN_NARROW_CNT.narrow_addr_int[2]_i_9_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_UA_NARROW.I_UA_NARROW_n_2\,
      Q => narrow_addr_int(0),
      R => \wrap_burst_total_reg[0]\
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_UA_NARROW.I_UA_NARROW_n_1\,
      Q => narrow_addr_int(1),
      R => \wrap_burst_total_reg[0]\
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_UA_NARROW.I_UA_NARROW_n_0\,
      Q => narrow_addr_int(2),
      R => \wrap_burst_total_reg[0]\
    );
\GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => narrow_addr_int(2),
      I1 => narrow_addr_int(0),
      I2 => narrow_addr_int(1),
      I3 => \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[1]_0\,
      I4 => s_axi_wvalid,
      I5 => curr_narrow_burst,
      O => narrow_bram_addr_inc
    );
\GEN_NARROW_CNT.narrow_bram_addr_inc_d1_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => narrow_bram_addr_inc,
      Q => narrow_bram_addr_inc_d1,
      R => \wrap_burst_total_reg[0]\
    );
\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF15FF00001500"
    )
        port map (
      I0 => s_axi_awsize(2),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awsize(1),
      I3 => Arb2AW_Active,
      I4 => \^aw_active_d1\,
      I5 => \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[0]\,
      O => narrow_burst_cnt_ld_reg(0)
    );
\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF1F0010"
    )
        port map (
      I0 => s_axi_awsize(2),
      I1 => s_axi_awsize(1),
      I2 => Arb2AW_Active,
      I3 => \^aw_active_d1\,
      I4 => \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[1]\,
      O => narrow_burst_cnt_ld_reg(1)
    );
\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF01FF00000100"
    )
        port map (
      I0 => s_axi_awsize(1),
      I1 => s_axi_awsize(2),
      I2 => s_axi_awsize(0),
      I3 => Arb2AW_Active,
      I4 => \^aw_active_d1\,
      I5 => \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[2]\,
      O => narrow_burst_cnt_ld_reg(2)
    );
\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => narrow_burst_cnt_ld_reg(0),
      Q => \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[0]\,
      R => \wrap_burst_total_reg[0]\
    );
\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => narrow_burst_cnt_ld_reg(1),
      Q => \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[1]\,
      R => \wrap_burst_total_reg[0]\
    );
\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => narrow_burst_cnt_ld_reg(2),
      Q => \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[2]\,
      R => \wrap_burst_total_reg[0]\
    );
\GEN_NARROW_EN.axi_wlast_d1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => s_axi_wvalid,
      I2 => s_axi_wlast,
      O => p_8_in
    );
\GEN_NARROW_EN.axi_wlast_d1_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_8_in,
      Q => axi_wlast_d1,
      R => \wrap_burst_total_reg[0]\
    );
\GEN_NARROW_EN.curr_narrow_burst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FBB0F0000000000"
    )
        port map (
      I0 => axi_wlast_d1,
      I1 => p_8_in,
      I2 => I_WRAP_BRST_n_13,
      I3 => curr_narrow_burst_en,
      I4 => curr_narrow_burst,
      I5 => s_axi_aresetn,
      O => \GEN_NARROW_EN.curr_narrow_burst_i_1_n_0\
    );
\GEN_NARROW_EN.curr_narrow_burst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0F0E0"
    )
        port map (
      I0 => s_axi_awlen(2),
      I1 => s_axi_awlen(3),
      I2 => s_axi_awvalid,
      I3 => s_axi_awlen(4),
      I4 => s_axi_awlen(5),
      O => s_axi_awlen_2_sn_1
    );
\GEN_NARROW_EN.curr_narrow_burst_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0F0E0"
    )
        port map (
      I0 => s_axi_awlen(1),
      I1 => s_axi_awlen(0),
      I2 => s_axi_awvalid,
      I3 => s_axi_awlen(7),
      I4 => s_axi_awlen(6),
      O => s_axi_awlen_1_sn_1
    );
\GEN_NARROW_EN.curr_narrow_burst_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_NARROW_EN.curr_narrow_burst_i_1_n_0\,
      Q => curr_narrow_burst,
      R => '0'
    );
\GEN_UA_NARROW.I_UA_NARROW\: entity work.icyradio_axi_bram_ctrl_0_0_ua_narrow
     port map (
      D(2 downto 0) => narrow_burst_cnt_ld_reg(2 downto 0),
      \GEN_NARROW_CNT.narrow_addr_int_reg[0]\ => \GEN_UA_NARROW.I_UA_NARROW_n_1\,
      \GEN_NARROW_CNT.narrow_addr_int_reg[0]_0\ => \GEN_UA_NARROW.I_UA_NARROW_n_2\,
      \GEN_NARROW_CNT.narrow_addr_int_reg[0]_1\ => \GEN_NARROW_CNT.narrow_addr_int[0]_i_7_n_0\,
      \GEN_NARROW_CNT.narrow_addr_int_reg[0]_2\ => \GEN_NARROW_CNT.narrow_addr_int[0]_i_2_n_0\,
      \GEN_NARROW_CNT.narrow_addr_int_reg[1]\ => \GEN_UA_NARROW.I_UA_NARROW_n_0\,
      \GEN_NARROW_CNT.narrow_addr_int_reg[1]_0\ => \GEN_NARROW_CNT.narrow_addr_int[2]_i_5_n_0\,
      \GEN_NARROW_CNT.narrow_addr_int_reg[1]_1\ => \GEN_NARROW_CNT.narrow_addr_int[2]_i_6_n_0\,
      \GEN_NARROW_CNT.narrow_addr_int_reg[1]_2\ => \GEN_NARROW_CNT.narrow_addr_int[1]_i_3_n_0\,
      \GEN_NARROW_CNT.narrow_addr_int_reg[1]_3\ => I_WRAP_BRST_n_3,
      \GEN_NARROW_CNT.narrow_addr_int_reg[2]\ => \GEN_NARROW_CNT.narrow_addr_int[2]_i_7_n_0\,
      \GEN_NARROW_CNT.narrow_addr_int_reg[2]_0\ => \GEN_NARROW_CNT.narrow_addr_int[2]_i_2_n_0\,
      \GEN_NARROW_CNT.narrow_addr_int_reg[2]_1\ => \GEN_NARROW_CNT.narrow_addr_int[2]_i_4_n_0\,
      curr_narrow_burst => curr_narrow_burst,
      narrow_addr_int(2 downto 0) => narrow_addr_int(2 downto 0),
      s_axi_awaddr(2 downto 0) => s_axi_awaddr(2 downto 0),
      s_axi_awburst(0) => s_axi_awburst(1),
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0)
    );
\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.axi_wdata_full_reg_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF020F222F020"
    )
        port map (
      I0 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0]\,
      I1 => Arb2AW_Active,
      I2 => axi_wdata_full_reg,
      I3 => \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[1]_0\,
      I4 => s_axi_wvalid,
      I5 => \^aw2arb_active_clr\,
      O => axi_wdata_full_cmb
    );
\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.axi_wdata_full_reg_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_wdata_full_cmb,
      Q => axi_wdata_full_reg,
      R => \wrap_burst_total_reg[0]\
    );
\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.bram_en_int_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFC08080"
    )
        port map (
      I0 => axi_wdata_full_reg,
      I1 => Arb2AW_Active,
      I2 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0]\,
      I3 => \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[1]_0\,
      I4 => s_axi_wvalid,
      O => \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.bram_en_int_i_1_n_0\
    );
\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.bram_en_int_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.bram_en_int_i_1_n_0\,
      Q => BRAM_En_A_i,
      R => \wrap_burst_total_reg[0]\
    );
\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => BID_FIFO_n_6,
      O => bvalid_cnt_inc
    );
\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => bvalid_cnt_inc,
      Q => clr_bram_we,
      R => \wrap_burst_total_reg[0]\
    );
\GEN_WRDATA[0].bram_wrdata_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wdata(0),
      Q => bram_wrdata_a(0),
      R => '0'
    );
\GEN_WRDATA[10].bram_wrdata_int_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wdata(10),
      Q => bram_wrdata_a(10),
      R => '0'
    );
\GEN_WRDATA[11].bram_wrdata_int_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wdata(11),
      Q => bram_wrdata_a(11),
      R => '0'
    );
\GEN_WRDATA[12].bram_wrdata_int_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wdata(12),
      Q => bram_wrdata_a(12),
      R => '0'
    );
\GEN_WRDATA[13].bram_wrdata_int_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wdata(13),
      Q => bram_wrdata_a(13),
      R => '0'
    );
\GEN_WRDATA[14].bram_wrdata_int_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wdata(14),
      Q => bram_wrdata_a(14),
      R => '0'
    );
\GEN_WRDATA[15].bram_wrdata_int_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wdata(15),
      Q => bram_wrdata_a(15),
      R => '0'
    );
\GEN_WRDATA[16].bram_wrdata_int_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wdata(16),
      Q => bram_wrdata_a(16),
      R => '0'
    );
\GEN_WRDATA[17].bram_wrdata_int_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wdata(17),
      Q => bram_wrdata_a(17),
      R => '0'
    );
\GEN_WRDATA[18].bram_wrdata_int_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wdata(18),
      Q => bram_wrdata_a(18),
      R => '0'
    );
\GEN_WRDATA[19].bram_wrdata_int_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wdata(19),
      Q => bram_wrdata_a(19),
      R => '0'
    );
\GEN_WRDATA[1].bram_wrdata_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wdata(1),
      Q => bram_wrdata_a(1),
      R => '0'
    );
\GEN_WRDATA[20].bram_wrdata_int_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wdata(20),
      Q => bram_wrdata_a(20),
      R => '0'
    );
\GEN_WRDATA[21].bram_wrdata_int_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wdata(21),
      Q => bram_wrdata_a(21),
      R => '0'
    );
\GEN_WRDATA[22].bram_wrdata_int_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wdata(22),
      Q => bram_wrdata_a(22),
      R => '0'
    );
\GEN_WRDATA[23].bram_wrdata_int_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wdata(23),
      Q => bram_wrdata_a(23),
      R => '0'
    );
\GEN_WRDATA[24].bram_wrdata_int_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wdata(24),
      Q => bram_wrdata_a(24),
      R => '0'
    );
\GEN_WRDATA[25].bram_wrdata_int_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wdata(25),
      Q => bram_wrdata_a(25),
      R => '0'
    );
\GEN_WRDATA[26].bram_wrdata_int_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wdata(26),
      Q => bram_wrdata_a(26),
      R => '0'
    );
\GEN_WRDATA[27].bram_wrdata_int_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wdata(27),
      Q => bram_wrdata_a(27),
      R => '0'
    );
\GEN_WRDATA[28].bram_wrdata_int_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wdata(28),
      Q => bram_wrdata_a(28),
      R => '0'
    );
\GEN_WRDATA[29].bram_wrdata_int_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wdata(29),
      Q => bram_wrdata_a(29),
      R => '0'
    );
\GEN_WRDATA[2].bram_wrdata_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wdata(2),
      Q => bram_wrdata_a(2),
      R => '0'
    );
\GEN_WRDATA[30].bram_wrdata_int_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wdata(30),
      Q => bram_wrdata_a(30),
      R => '0'
    );
\GEN_WRDATA[31].bram_wrdata_int_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wdata(31),
      Q => bram_wrdata_a(31),
      R => '0'
    );
\GEN_WRDATA[32].bram_wrdata_int_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wdata(32),
      Q => bram_wrdata_a(32),
      R => '0'
    );
\GEN_WRDATA[33].bram_wrdata_int_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wdata(33),
      Q => bram_wrdata_a(33),
      R => '0'
    );
\GEN_WRDATA[34].bram_wrdata_int_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wdata(34),
      Q => bram_wrdata_a(34),
      R => '0'
    );
\GEN_WRDATA[35].bram_wrdata_int_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wdata(35),
      Q => bram_wrdata_a(35),
      R => '0'
    );
\GEN_WRDATA[36].bram_wrdata_int_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wdata(36),
      Q => bram_wrdata_a(36),
      R => '0'
    );
\GEN_WRDATA[37].bram_wrdata_int_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wdata(37),
      Q => bram_wrdata_a(37),
      R => '0'
    );
\GEN_WRDATA[38].bram_wrdata_int_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wdata(38),
      Q => bram_wrdata_a(38),
      R => '0'
    );
\GEN_WRDATA[39].bram_wrdata_int_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wdata(39),
      Q => bram_wrdata_a(39),
      R => '0'
    );
\GEN_WRDATA[3].bram_wrdata_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wdata(3),
      Q => bram_wrdata_a(3),
      R => '0'
    );
\GEN_WRDATA[40].bram_wrdata_int_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wdata(40),
      Q => bram_wrdata_a(40),
      R => '0'
    );
\GEN_WRDATA[41].bram_wrdata_int_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wdata(41),
      Q => bram_wrdata_a(41),
      R => '0'
    );
\GEN_WRDATA[42].bram_wrdata_int_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wdata(42),
      Q => bram_wrdata_a(42),
      R => '0'
    );
\GEN_WRDATA[43].bram_wrdata_int_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wdata(43),
      Q => bram_wrdata_a(43),
      R => '0'
    );
\GEN_WRDATA[44].bram_wrdata_int_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wdata(44),
      Q => bram_wrdata_a(44),
      R => '0'
    );
\GEN_WRDATA[45].bram_wrdata_int_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wdata(45),
      Q => bram_wrdata_a(45),
      R => '0'
    );
\GEN_WRDATA[46].bram_wrdata_int_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wdata(46),
      Q => bram_wrdata_a(46),
      R => '0'
    );
\GEN_WRDATA[47].bram_wrdata_int_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wdata(47),
      Q => bram_wrdata_a(47),
      R => '0'
    );
\GEN_WRDATA[48].bram_wrdata_int_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wdata(48),
      Q => bram_wrdata_a(48),
      R => '0'
    );
\GEN_WRDATA[49].bram_wrdata_int_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wdata(49),
      Q => bram_wrdata_a(49),
      R => '0'
    );
\GEN_WRDATA[4].bram_wrdata_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wdata(4),
      Q => bram_wrdata_a(4),
      R => '0'
    );
\GEN_WRDATA[50].bram_wrdata_int_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wdata(50),
      Q => bram_wrdata_a(50),
      R => '0'
    );
\GEN_WRDATA[51].bram_wrdata_int_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wdata(51),
      Q => bram_wrdata_a(51),
      R => '0'
    );
\GEN_WRDATA[52].bram_wrdata_int_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wdata(52),
      Q => bram_wrdata_a(52),
      R => '0'
    );
\GEN_WRDATA[53].bram_wrdata_int_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wdata(53),
      Q => bram_wrdata_a(53),
      R => '0'
    );
\GEN_WRDATA[54].bram_wrdata_int_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wdata(54),
      Q => bram_wrdata_a(54),
      R => '0'
    );
\GEN_WRDATA[55].bram_wrdata_int_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wdata(55),
      Q => bram_wrdata_a(55),
      R => '0'
    );
\GEN_WRDATA[56].bram_wrdata_int_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wdata(56),
      Q => bram_wrdata_a(56),
      R => '0'
    );
\GEN_WRDATA[57].bram_wrdata_int_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wdata(57),
      Q => bram_wrdata_a(57),
      R => '0'
    );
\GEN_WRDATA[58].bram_wrdata_int_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wdata(58),
      Q => bram_wrdata_a(58),
      R => '0'
    );
\GEN_WRDATA[59].bram_wrdata_int_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wdata(59),
      Q => bram_wrdata_a(59),
      R => '0'
    );
\GEN_WRDATA[5].bram_wrdata_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wdata(5),
      Q => bram_wrdata_a(5),
      R => '0'
    );
\GEN_WRDATA[60].bram_wrdata_int_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wdata(60),
      Q => bram_wrdata_a(60),
      R => '0'
    );
\GEN_WRDATA[61].bram_wrdata_int_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wdata(61),
      Q => bram_wrdata_a(61),
      R => '0'
    );
\GEN_WRDATA[62].bram_wrdata_int_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wdata(62),
      Q => bram_wrdata_a(62),
      R => '0'
    );
\GEN_WRDATA[63].bram_wrdata_int[63]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF40000"
    )
        port map (
      I0 => axi_wdata_full_reg,
      I1 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0]\,
      I2 => \^aw2arb_active_clr\,
      I3 => \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[1]_0\,
      I4 => s_axi_wvalid,
      O => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\
    );
\GEN_WRDATA[63].bram_wrdata_int_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wdata(63),
      Q => bram_wrdata_a(63),
      R => '0'
    );
\GEN_WRDATA[6].bram_wrdata_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wdata(6),
      Q => bram_wrdata_a(6),
      R => '0'
    );
\GEN_WRDATA[7].bram_wrdata_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wdata(7),
      Q => bram_wrdata_a(7),
      R => '0'
    );
\GEN_WRDATA[8].bram_wrdata_int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wdata(8),
      Q => bram_wrdata_a(8),
      R => '0'
    );
\GEN_WRDATA[9].bram_wrdata_int_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wdata(9),
      Q => bram_wrdata_a(9),
      R => '0'
    );
\GEN_WR_NO_ECC.bram_we_int[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      I1 => clr_bram_we,
      I2 => s_axi_aresetn,
      O => \GEN_WR_NO_ECC.bram_we_int[7]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wstrb(0),
      Q => Q(0),
      R => \GEN_WR_NO_ECC.bram_we_int[7]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wstrb(1),
      Q => Q(1),
      R => \GEN_WR_NO_ECC.bram_we_int[7]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wstrb(2),
      Q => Q(2),
      R => \GEN_WR_NO_ECC.bram_we_int[7]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wstrb(3),
      Q => Q(3),
      R => \GEN_WR_NO_ECC.bram_we_int[7]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wstrb(4),
      Q => Q(4),
      R => \GEN_WR_NO_ECC.bram_we_int[7]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wstrb(5),
      Q => Q(5),
      R => \GEN_WR_NO_ECC.bram_we_int[7]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wstrb(6),
      Q => Q(6),
      R => \GEN_WR_NO_ECC.bram_we_int[7]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WRDATA[63].bram_wrdata_int[63]_i_1_n_0\,
      D => s_axi_wstrb(7),
      Q => Q(7),
      R => \GEN_WR_NO_ECC.bram_we_int[7]_i_1_n_0\
    );
I_WRAP_BRST: entity work.icyradio_axi_bram_ctrl_0_0_wrap_brst
     port map (
      \ADDR_SNG_PORT.bram_addr_int_reg[11]\ => \^aw2arb_active_clr\,
      \ADDR_SNG_PORT.bram_addr_int_reg[11]_0\ => \^gen_narrow_cnt.narrow_bram_addr_inc_d1_reg_0\,
      \ADDR_SNG_PORT.bram_addr_int_reg[11]_1\ => \ADDR_SNG_PORT.bram_addr_int_reg[11]\,
      \ADDR_SNG_PORT.bram_addr_int_reg[11]_2\ => \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[1]_0\,
      Arb2AW_Active => Arb2AW_Active,
      D(0) => D(0),
      \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]\ => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]_0\,
      aw_active_d1_reg => aw_active_d1_reg_0,
      aw_active_d1_reg_0 => aw_active_d1_reg_1,
      aw_active_re => aw_active_re,
      bram_addr_a(2 downto 0) => bram_addr_a(2 downto 0),
      curr_fixed_burst_reg => curr_fixed_burst_reg,
      curr_fixed_burst_reg_reg => I_WRAP_BRST_n_16,
      curr_narrow_burst => curr_narrow_burst,
      curr_wrap_burst_reg => curr_wrap_burst_reg,
      curr_wrap_burst_reg_reg => curr_wrap_burst_reg_reg_0,
      curr_wrap_burst_reg_reg_0 => I_WRAP_BRST_n_15,
      narrow_addr_int(2 downto 0) => narrow_addr_int(2 downto 0),
      narrow_bram_addr_inc_d1 => narrow_bram_addr_inc_d1,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_awaddr(8 downto 0) => s_axi_awaddr(11 downto 3),
      s_axi_awaddr_4_sp_1 => s_axi_awaddr_4_sn_1,
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awlen(3 downto 0) => s_axi_awlen(3 downto 0),
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_awsize_0_sp_1 => I_WRAP_BRST_n_13,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_awvalid_0 => I_WRAP_BRST_n_14,
      s_axi_wvalid => s_axi_wvalid,
      s_axi_wvalid_0 => I_WRAP_BRST_n_3,
      \save_init_bram_addr_ld_reg[10]_0\ => \save_init_bram_addr_ld_reg[10]\,
      \save_init_bram_addr_ld_reg[11]_0\ => \save_init_bram_addr_ld_reg[11]\,
      \save_init_bram_addr_ld_reg[12]_0\ => \^aw_active_d1\,
      \save_init_bram_addr_ld_reg[6]_0\ => \save_init_bram_addr_ld_reg[6]\,
      \save_init_bram_addr_ld_reg[7]_0\ => \save_init_bram_addr_ld_reg[7]\,
      \save_init_bram_addr_ld_reg[8]_0\ => \save_init_bram_addr_ld_reg[8]\,
      \save_init_bram_addr_ld_reg[9]_0\ => \save_init_bram_addr_ld_reg[9]\,
      \wrap_burst_total_reg[0]_0\ => \wrap_burst_total_reg[0]\
    );
aw_active_d1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => Arb2AW_Active,
      Q => \^aw_active_d1\,
      R => \wrap_burst_total_reg[0]\
    );
axi_awready_int_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => AW2Arb_BVALID_Cnt(0),
      I2 => AW2Arb_BVALID_Cnt(1),
      I3 => AW2Arb_BVALID_Cnt(2),
      O => s_axi_awvalid_0
    );
\axi_bid_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => BID_FIFO_n_0,
      D => BID_FIFO_n_5,
      Q => s_axi_bid(0),
      R => \wrap_burst_total_reg[0]\
    );
\axi_bid_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => BID_FIFO_n_0,
      D => BID_FIFO_n_4,
      Q => s_axi_bid(1),
      R => \wrap_burst_total_reg[0]\
    );
\axi_bid_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => BID_FIFO_n_0,
      D => BID_FIFO_n_3,
      Q => s_axi_bid(2),
      R => \wrap_burst_total_reg[0]\
    );
\axi_bid_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => BID_FIFO_n_0,
      D => BID_FIFO_n_2,
      Q => s_axi_bid(3),
      R => \wrap_burst_total_reg[0]\
    );
axi_bvalid_int_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => axi_bvalid_int_i_2_n_0,
      I2 => BID_FIFO_n_6,
      O => axi_bvalid_int_i_1_n_0
    );
axi_bvalid_int_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF70"
    )
        port map (
      I0 => s_axi_bready,
      I1 => \^axi_bvalid_int_reg_0\,
      I2 => AW2Arb_BVALID_Cnt(0),
      I3 => AW2Arb_BVALID_Cnt(1),
      I4 => AW2Arb_BVALID_Cnt(2),
      O => axi_bvalid_int_i_2_n_0
    );
axi_bvalid_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_bvalid_int_i_1_n_0,
      Q => \^axi_bvalid_int_reg_0\,
      R => '0'
    );
axi_wr_burst_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5754"
    )
        port map (
      I0 => s_axi_wlast,
      I1 => axi_wr_burst_i_2_n_0,
      I2 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_3_n_0\,
      I3 => axi_wr_burst,
      O => axi_wr_burst_i_1_n_0
    );
axi_wr_burst_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0E0"
    )
        port map (
      I0 => \^aw2arb_active_clr\,
      I1 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0]\,
      I2 => s_axi_wvalid,
      I3 => axi_wdata_full_reg,
      O => axi_wr_burst_i_2_n_0
    );
axi_wr_burst_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_wr_burst_i_1_n_0,
      Q => axi_wr_burst,
      R => \wrap_burst_total_reg[0]\
    );
axi_wready_int_mod_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => axi_wdata_full_cmb,
      O => axi_wready_int_mod_i_1_n_0
    );
axi_wready_int_mod_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_wready_int_mod_i_1_n_0,
      Q => \^s_axi_wready\,
      R => '0'
    );
bid_gets_fifo_load_d1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => bid_gets_fifo_load,
      Q => bid_gets_fifo_load_d1,
      R => \wrap_burst_total_reg[0]\
    );
bram_en_a_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => BRAM_En_A_i,
      I1 => BRAM_En_B_i,
      O => bram_en_a
    );
\bvalid_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"777788888880777F"
    )
        port map (
      I0 => \^axi_bvalid_int_reg_0\,
      I1 => s_axi_bready,
      I2 => AW2Arb_BVALID_Cnt(1),
      I3 => AW2Arb_BVALID_Cnt(2),
      I4 => BID_FIFO_n_6,
      I5 => AW2Arb_BVALID_Cnt(0),
      O => \bvalid_cnt[0]_i_1_n_0\
    );
\bvalid_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F058A5F0A5F0A5F0"
    )
        port map (
      I0 => BID_FIFO_n_6,
      I1 => AW2Arb_BVALID_Cnt(2),
      I2 => AW2Arb_BVALID_Cnt(1),
      I3 => AW2Arb_BVALID_Cnt(0),
      I4 => s_axi_bready,
      I5 => \^axi_bvalid_int_reg_0\,
      O => \bvalid_cnt[1]_i_1_n_0\
    );
\bvalid_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCC49CCC9CCC9CCC"
    )
        port map (
      I0 => BID_FIFO_n_6,
      I1 => AW2Arb_BVALID_Cnt(2),
      I2 => AW2Arb_BVALID_Cnt(1),
      I3 => AW2Arb_BVALID_Cnt(0),
      I4 => s_axi_bready,
      I5 => \^axi_bvalid_int_reg_0\,
      O => \bvalid_cnt[2]_i_1_n_0\
    );
\bvalid_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \bvalid_cnt[0]_i_1_n_0\,
      Q => AW2Arb_BVALID_Cnt(0),
      R => \wrap_burst_total_reg[0]\
    );
\bvalid_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \bvalid_cnt[1]_i_1_n_0\,
      Q => AW2Arb_BVALID_Cnt(1),
      R => \wrap_burst_total_reg[0]\
    );
\bvalid_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \bvalid_cnt[2]_i_1_n_0\,
      Q => AW2Arb_BVALID_Cnt(2),
      R => \wrap_burst_total_reg[0]\
    );
curr_fixed_burst_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => I_WRAP_BRST_n_16,
      Q => curr_fixed_burst_reg,
      R => '0'
    );
curr_wrap_burst_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => I_WRAP_BRST_n_15,
      Q => curr_wrap_burst_reg,
      R => '0'
    );
last_arb_won_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000007F00"
    )
        port map (
      I0 => AW2Arb_BVALID_Cnt(2),
      I1 => AW2Arb_BVALID_Cnt(1),
      I2 => AW2Arb_BVALID_Cnt(0),
      I3 => s_axi_awvalid,
      I4 => arb_sm_cs(0),
      I5 => arb_sm_cs(1),
      O => \bvalid_cnt_reg[2]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_bram_ctrl_0_0_full_axi is
  port (
    \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg\ : out STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    axi_bvalid_int_reg : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    bram_addr_a : out STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_wready : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 7 downto 0 );
    bram_en_a : out STD_LOGIC;
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_axi_bram_ctrl_0_0_full_axi : entity is "full_axi";
end icyradio_axi_bram_ctrl_0_0_full_axi;

architecture STRUCTURE of icyradio_axi_bram_ctrl_0_0_full_axi is
  signal \ADDR_SNG_PORT.bram_addr_int[10]_i_3_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int[11]_i_9_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int[5]_i_2_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int[6]_i_2_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int[8]_i_3_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int[9]_i_3_n_0\ : STD_LOGIC;
  signal AW2Arb_Active_Clr : STD_LOGIC;
  signal Arb2AR_Active : STD_LOGIC;
  signal Arb2AW_Active : STD_LOGIC;
  signal BRAM_En_B_i : STD_LOGIC;
  signal BRAM_WE_A_i : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \GEN_ARB.I_SNG_PORT_n_21\ : STD_LOGIC;
  signal \GEN_ARB.I_SNG_PORT_n_22\ : STD_LOGIC;
  signal \GEN_ARB.I_SNG_PORT_n_23\ : STD_LOGIC;
  signal \GEN_ARB.I_SNG_PORT_n_26\ : STD_LOGIC;
  signal \GEN_ARB.I_SNG_PORT_n_36\ : STD_LOGIC;
  signal \GEN_ARB.I_SNG_PORT_n_7\ : STD_LOGIC;
  signal \GEN_ARB.I_SNG_PORT_n_8\ : STD_LOGIC;
  signal \^gen_no_rd_cmd_opt.axi_rlast_int_reg\ : STD_LOGIC;
  signal I_RD_CHNL_n_69 : STD_LOGIC;
  signal I_RD_CHNL_n_70 : STD_LOGIC;
  signal I_RD_CHNL_n_81 : STD_LOGIC;
  signal I_RD_CHNL_n_82 : STD_LOGIC;
  signal I_RD_CHNL_n_83 : STD_LOGIC;
  signal I_WR_CHNL_n_67 : STD_LOGIC;
  signal I_WR_CHNL_n_68 : STD_LOGIC;
  signal I_WR_CHNL_n_69 : STD_LOGIC;
  signal I_WR_CHNL_n_71 : STD_LOGIC;
  signal I_WR_CHNL_n_72 : STD_LOGIC;
  signal I_WR_CHNL_n_74 : STD_LOGIC;
  signal I_WR_CHNL_n_75 : STD_LOGIC;
  signal I_WR_CHNL_n_76 : STD_LOGIC;
  signal I_WR_CHNL_n_77 : STD_LOGIC;
  signal I_WR_CHNL_n_78 : STD_LOGIC;
  signal I_WR_CHNL_n_79 : STD_LOGIC;
  signal I_WR_CHNL_n_80 : STD_LOGIC;
  signal I_WR_CHNL_n_81 : STD_LOGIC;
  signal I_WR_CHNL_n_82 : STD_LOGIC;
  signal I_WR_CHNL_n_83 : STD_LOGIC;
  signal I_WR_CHNL_n_84 : STD_LOGIC;
  signal I_WR_CHNL_n_85 : STD_LOGIC;
  signal RdChnl_BRAM_Addr_Ld : STD_LOGIC_VECTOR ( 12 downto 4 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal WrChnl_BRAM_Addr_Ld : STD_LOGIC_VECTOR ( 12 to 12 );
  signal ar_active_d1 : STD_LOGIC;
  signal ar_active_i_1_n_0 : STD_LOGIC;
  signal ar_active_re : STD_LOGIC;
  signal arb_sm_cs : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal arb_sm_ns : STD_LOGIC_VECTOR ( 1 to 1 );
  signal aw_active_d1 : STD_LOGIC;
  signal aw_active_i_1_n_0 : STD_LOGIC;
  signal aw_active_re : STD_LOGIC;
  signal axi_arready_cmb : STD_LOGIC;
  signal axi_awready_cmb : STD_LOGIC;
  signal \^bram_addr_a\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal curr_narrow_burst_en : STD_LOGIC;
  signal last_arb_won : STD_LOGIC;
  signal last_arb_won_i_1_n_0 : STD_LOGIC;
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal p_1_in : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[6]_i_2\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[8]_i_3\ : label is "soft_lutpair76";
begin
  \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg\ <= \^gen_no_rd_cmd_opt.axi_rlast_int_reg\;
  SR(0) <= \^sr\(0);
  bram_addr_a(9 downto 0) <= \^bram_addr_a\(9 downto 0);
\ADDR_SNG_PORT.bram_addr_int[10]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^bram_addr_a\(6),
      I1 => \^bram_addr_a\(4),
      I2 => I_RD_CHNL_n_83,
      I3 => \^bram_addr_a\(5),
      O => \ADDR_SNG_PORT.bram_addr_int[10]_i_3_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[11]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA6AAAAAAAAAAAAA"
    )
        port map (
      I0 => \^bram_addr_a\(8),
      I1 => \^bram_addr_a\(6),
      I2 => \^bram_addr_a\(4),
      I3 => I_RD_CHNL_n_83,
      I4 => \^bram_addr_a\(5),
      I5 => \^bram_addr_a\(7),
      O => \ADDR_SNG_PORT.bram_addr_int[11]_i_9_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^bram_addr_a\(1),
      I1 => \^bram_addr_a\(0),
      O => \ADDR_SNG_PORT.bram_addr_int[5]_i_2_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^bram_addr_a\(2),
      I1 => \^bram_addr_a\(0),
      I2 => \^bram_addr_a\(1),
      O => \ADDR_SNG_PORT.bram_addr_int[6]_i_2_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \^bram_addr_a\(4),
      I1 => \^bram_addr_a\(3),
      I2 => \^bram_addr_a\(2),
      I3 => \^bram_addr_a\(0),
      I4 => \^bram_addr_a\(1),
      O => \ADDR_SNG_PORT.bram_addr_int[8]_i_3_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^bram_addr_a\(5),
      I1 => \^bram_addr_a\(1),
      I2 => \^bram_addr_a\(0),
      I3 => \^bram_addr_a\(2),
      I4 => \^bram_addr_a\(3),
      I5 => \^bram_addr_a\(4),
      O => \ADDR_SNG_PORT.bram_addr_int[9]_i_3_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_0_in_0(8),
      D => p_1_in(7),
      Q => \^bram_addr_a\(7),
      R => I_WR_CHNL_n_69
    );
\ADDR_SNG_PORT.bram_addr_int_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_0_in_0(8),
      D => p_1_in(8),
      Q => \^bram_addr_a\(8),
      R => I_WR_CHNL_n_69
    );
\ADDR_SNG_PORT.bram_addr_int_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_ARB.I_SNG_PORT_n_7\,
      Q => \^bram_addr_a\(9),
      R => '0'
    );
\ADDR_SNG_PORT.bram_addr_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_0_in_0(8),
      D => p_1_in(0),
      Q => \^bram_addr_a\(0),
      R => I_WR_CHNL_n_69
    );
\ADDR_SNG_PORT.bram_addr_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_0_in_0(8),
      D => p_1_in(1),
      Q => \^bram_addr_a\(1),
      R => I_WR_CHNL_n_69
    );
\ADDR_SNG_PORT.bram_addr_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_0_in_0(8),
      D => p_1_in(2),
      Q => \^bram_addr_a\(2),
      R => I_WR_CHNL_n_69
    );
\ADDR_SNG_PORT.bram_addr_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_0_in_0(8),
      D => p_1_in(3),
      Q => \^bram_addr_a\(3),
      R => I_WR_CHNL_n_69
    );
\ADDR_SNG_PORT.bram_addr_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_0_in_0(8),
      D => p_1_in(4),
      Q => \^bram_addr_a\(4),
      R => I_WR_CHNL_n_69
    );
\ADDR_SNG_PORT.bram_addr_int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_0_in_0(8),
      D => p_1_in(5),
      Q => \^bram_addr_a\(5),
      R => I_WR_CHNL_n_69
    );
\ADDR_SNG_PORT.bram_addr_int_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_0_in_0(8),
      D => p_1_in(6),
      Q => \^bram_addr_a\(6),
      R => I_WR_CHNL_n_69
    );
\GEN_ARB.I_SNG_PORT\: entity work.icyradio_axi_bram_ctrl_0_0_sng_port_arb
     port map (
      \ADDR_SNG_PORT.bram_addr_int_reg[10]\ => I_WR_CHNL_n_75,
      \ADDR_SNG_PORT.bram_addr_int_reg[10]_0\ => \ADDR_SNG_PORT.bram_addr_int[10]_i_3_n_0\,
      \ADDR_SNG_PORT.bram_addr_int_reg[11]\ => I_WR_CHNL_n_74,
      \ADDR_SNG_PORT.bram_addr_int_reg[11]_0\ => \ADDR_SNG_PORT.bram_addr_int[11]_i_9_n_0\,
      \ADDR_SNG_PORT.bram_addr_int_reg[12]\ => \GEN_ARB.I_SNG_PORT_n_7\,
      \ADDR_SNG_PORT.bram_addr_int_reg[12]_0\(8 downto 0) => RdChnl_BRAM_Addr_Ld(12 downto 4),
      \ADDR_SNG_PORT.bram_addr_int_reg[12]_1\ => I_WR_CHNL_n_69,
      \ADDR_SNG_PORT.bram_addr_int_reg[12]_2\ => I_RD_CHNL_n_70,
      \ADDR_SNG_PORT.bram_addr_int_reg[12]_3\ => I_WR_CHNL_n_68,
      \ADDR_SNG_PORT.bram_addr_int_reg[12]_4\ => I_WR_CHNL_n_72,
      \ADDR_SNG_PORT.bram_addr_int_reg[3]\ => I_WR_CHNL_n_67,
      \ADDR_SNG_PORT.bram_addr_int_reg[3]_0\ => I_RD_CHNL_n_69,
      \ADDR_SNG_PORT.bram_addr_int_reg[4]\ => I_WR_CHNL_n_81,
      \ADDR_SNG_PORT.bram_addr_int_reg[5]\ => \ADDR_SNG_PORT.bram_addr_int[5]_i_2_n_0\,
      \ADDR_SNG_PORT.bram_addr_int_reg[5]_0\ => I_WR_CHNL_n_80,
      \ADDR_SNG_PORT.bram_addr_int_reg[6]\ => \ADDR_SNG_PORT.bram_addr_int[6]_i_2_n_0\,
      \ADDR_SNG_PORT.bram_addr_int_reg[6]_0\ => I_WR_CHNL_n_79,
      \ADDR_SNG_PORT.bram_addr_int_reg[7]\ => I_RD_CHNL_n_83,
      \ADDR_SNG_PORT.bram_addr_int_reg[7]_0\ => I_WR_CHNL_n_78,
      \ADDR_SNG_PORT.bram_addr_int_reg[8]\ => I_WR_CHNL_n_77,
      \ADDR_SNG_PORT.bram_addr_int_reg[8]_0\ => \ADDR_SNG_PORT.bram_addr_int[8]_i_3_n_0\,
      \ADDR_SNG_PORT.bram_addr_int_reg[9]\ => I_WR_CHNL_n_76,
      \ADDR_SNG_PORT.bram_addr_int_reg[9]_0\ => \ADDR_SNG_PORT.bram_addr_int[9]_i_3_n_0\,
      AW2Arb_Active_Clr => AW2Arb_Active_Clr,
      Arb2AR_Active => Arb2AR_Active,
      Arb2AW_Active => Arb2AW_Active,
      D(0) => WrChnl_BRAM_Addr_Ld(12),
      \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]\ => \GEN_ARB.I_SNG_PORT_n_23\,
      \FSM_sequential_arb_sm_cs_reg[0]_0\ => I_RD_CHNL_n_82,
      \FSM_sequential_arb_sm_cs_reg[0]_1\ => I_WR_CHNL_n_85,
      \GEN_NARROW_EN.curr_narrow_burst_reg\ => I_WR_CHNL_n_82,
      \GEN_NARROW_EN.curr_narrow_burst_reg_0\ => I_WR_CHNL_n_83,
      \GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg\ => \^gen_no_rd_cmd_opt.axi_rlast_int_reg\,
      \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg\ => \GEN_ARB.I_SNG_PORT_n_22\,
      \GEN_NO_RD_CMD_OPT.brst_zero_reg\ => I_RD_CHNL_n_81,
      Q(7 downto 0) => BRAM_WE_A_i(7 downto 0),
      ar_active_d1 => ar_active_d1,
      ar_active_re => ar_active_re,
      ar_active_reg_0 => \GEN_ARB.I_SNG_PORT_n_36\,
      ar_active_reg_1 => \^sr\(0),
      ar_active_reg_2 => ar_active_i_1_n_0,
      arb_sm_cs(1 downto 0) => arb_sm_cs(1 downto 0),
      arb_sm_ns(0) => arb_sm_ns(1),
      aw_active_d1 => aw_active_d1,
      aw_active_re => aw_active_re,
      aw_active_reg_0 => aw_active_i_1_n_0,
      axi_arready_cmb => axi_arready_cmb,
      axi_awready_cmb => axi_awready_cmb,
      bram_addr_a(8) => \^bram_addr_a\(9),
      bram_addr_a(7 downto 0) => \^bram_addr_a\(7 downto 0),
      bram_we_a(7 downto 0) => bram_we_a(7 downto 0),
      curr_narrow_burst_en => curr_narrow_burst_en,
      last_arb_won => last_arb_won,
      last_arb_won_reg_0 => \GEN_ARB.I_SNG_PORT_n_26\,
      last_arb_won_reg_1 => last_arb_won_i_1_n_0,
      p_1_in(8 downto 0) => p_1_in(8 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arlen(3 downto 0) => s_axi_arlen(3 downto 0),
      s_axi_arlen_2_sp_1 => \GEN_ARB.I_SNG_PORT_n_21\,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(0) => s_axi_awaddr(3),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_rready => s_axi_rready,
      s_axi_wvalid => s_axi_wvalid,
      s_axi_wvalid_0 => \GEN_ARB.I_SNG_PORT_n_8\
    );
I_RD_CHNL: entity work.icyradio_axi_bram_ctrl_0_0_rd_chnl
     port map (
      \ADDR_SNG_PORT.bram_addr_int_reg[3]\ => I_WR_CHNL_n_71,
      \ADDR_SNG_PORT.bram_addr_int_reg[3]_0\ => \GEN_ARB.I_SNG_PORT_n_8\,
      \ADDR_SNG_PORT.bram_addr_int_reg[4]\ => I_RD_CHNL_n_83,
      Arb2AR_Active => Arb2AR_Active,
      BRAM_En_B_i => BRAM_En_B_i,
      D(8 downto 0) => RdChnl_BRAM_Addr_Ld(12 downto 4),
      \GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg_0\ => \GEN_ARB.I_SNG_PORT_n_36\,
      \GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_reg_0\ => I_RD_CHNL_n_70,
      \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0\ => \^gen_no_rd_cmd_opt.axi_rlast_int_reg\,
      \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0\ => \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg\,
      \GEN_NO_RD_CMD_OPT.brst_zero_reg_0\ => \GEN_ARB.I_SNG_PORT_n_21\,
      ar_active_d1 => ar_active_d1,
      ar_active_re => ar_active_re,
      bram_addr_a(3 downto 0) => \^bram_addr_a\(3 downto 0),
      bram_rddata_a(63 downto 0) => bram_rddata_a(63 downto 0),
      p_0_in_0(0) => p_0_in_0(8),
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(12 downto 0) => s_axi_araddr(12 downto 0),
      s_axi_araddr_3_sp_1 => I_RD_CHNL_n_69,
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_aresetn_0 => \^sr\(0),
      s_axi_arid(3 downto 0) => s_axi_arid(3 downto 0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arlen_4_sp_1 => I_RD_CHNL_n_81,
      s_axi_arsize(2 downto 0) => s_axi_arsize(2 downto 0),
      s_axi_rdata(63 downto 0) => s_axi_rdata(63 downto 0),
      s_axi_rid(3 downto 0) => s_axi_rid(3 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rready_0 => I_RD_CHNL_n_82
    );
I_WR_CHNL: entity work.icyradio_axi_bram_ctrl_0_0_wr_chnl
     port map (
      \ADDR_SNG_PORT.bram_addr_int_reg[11]\ => I_RD_CHNL_n_83,
      AW2Arb_Active_Clr => AW2Arb_Active_Clr,
      Arb2AW_Active => Arb2AW_Active,
      BRAM_En_B_i => BRAM_En_B_i,
      D(0) => WrChnl_BRAM_Addr_Ld(12),
      \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]_0\ => I_WR_CHNL_n_72,
      \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]_0\ => I_WR_CHNL_n_69,
      \GEN_NARROW_CNT.narrow_bram_addr_inc_d1_reg_0\ => I_WR_CHNL_n_71,
      Q(7 downto 0) => BRAM_WE_A_i(7 downto 0),
      arb_sm_cs(1 downto 0) => arb_sm_cs(1 downto 0),
      aw_active_d1 => aw_active_d1,
      aw_active_d1_reg_0 => I_WR_CHNL_n_67,
      aw_active_d1_reg_1 => I_WR_CHNL_n_80,
      aw_active_re => aw_active_re,
      axi_bvalid_int_reg_0 => axi_bvalid_int_reg,
      bram_addr_a(2 downto 0) => \^bram_addr_a\(2 downto 0),
      bram_en_a => bram_en_a,
      bram_wrdata_a(63 downto 0) => bram_wrdata_a(63 downto 0),
      \bvalid_cnt_reg[2]_0\ => I_WR_CHNL_n_84,
      curr_narrow_burst_en => curr_narrow_burst_en,
      curr_wrap_burst_reg_reg_0 => I_WR_CHNL_n_68,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_awaddr(11 downto 3) => s_axi_awaddr(12 downto 4),
      s_axi_awaddr(2 downto 0) => s_axi_awaddr(2 downto 0),
      s_axi_awaddr_4_sp_1 => I_WR_CHNL_n_81,
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awid(3 downto 0) => s_axi_awid(3 downto 0),
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awlen_1_sp_1 => I_WR_CHNL_n_83,
      s_axi_awlen_2_sp_1 => I_WR_CHNL_n_82,
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_awvalid_0 => I_WR_CHNL_n_85,
      s_axi_bid(3 downto 0) => s_axi_bid(3 downto 0),
      s_axi_bready => s_axi_bready,
      s_axi_wdata(63 downto 0) => s_axi_wdata(63 downto 0),
      s_axi_wlast => s_axi_wlast,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(7 downto 0) => s_axi_wstrb(7 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      \save_init_bram_addr_ld_reg[10]\ => I_WR_CHNL_n_75,
      \save_init_bram_addr_ld_reg[11]\ => I_WR_CHNL_n_74,
      \save_init_bram_addr_ld_reg[6]\ => I_WR_CHNL_n_79,
      \save_init_bram_addr_ld_reg[7]\ => I_WR_CHNL_n_78,
      \save_init_bram_addr_ld_reg[8]\ => I_WR_CHNL_n_77,
      \save_init_bram_addr_ld_reg[9]\ => I_WR_CHNL_n_76,
      \wrap_burst_total_reg[0]\ => \^sr\(0)
    );
ar_active_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBBA888"
    )
        port map (
      I0 => arb_sm_ns(1),
      I1 => \GEN_ARB.I_SNG_PORT_n_26\,
      I2 => \GEN_ARB.I_SNG_PORT_n_23\,
      I3 => s_axi_arvalid,
      I4 => Arb2AR_Active,
      O => ar_active_i_1_n_0
    );
aw_active_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0ACFFF0A0A0000"
    )
        port map (
      I0 => I_WR_CHNL_n_85,
      I1 => arb_sm_cs(1),
      I2 => arb_sm_cs(0),
      I3 => AW2Arb_Active_Clr,
      I4 => axi_awready_cmb,
      I5 => Arb2AW_Active,
      O => aw_active_i_1_n_0
    );
last_arb_won_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAABBBAAAAA888"
    )
        port map (
      I0 => arb_sm_ns(1),
      I1 => axi_arready_cmb,
      I2 => I_WR_CHNL_n_85,
      I3 => \GEN_ARB.I_SNG_PORT_n_22\,
      I4 => I_WR_CHNL_n_84,
      I5 => last_arb_won,
      O => last_arb_won_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_bram_ctrl_0_0_axi_bram_ctrl_top is
  port (
    \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg\ : out STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg\ : out STD_LOGIC;
    bram_rst_a : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    axi_bvalid_int_reg : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    bram_addr_a : out STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_wready : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 7 downto 0 );
    bram_en_a : out STD_LOGIC;
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_axi_bram_ctrl_0_0_axi_bram_ctrl_top : entity is "axi_bram_ctrl_top";
end icyradio_axi_bram_ctrl_0_0_axi_bram_ctrl_top;

architecture STRUCTURE of icyradio_axi_bram_ctrl_0_0_axi_bram_ctrl_top is
begin
\GEN_AXI4.I_FULL_AXI\: entity work.icyradio_axi_bram_ctrl_0_0_full_axi
     port map (
      \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg\ => \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg\,
      \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg\ => \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg\,
      SR(0) => bram_rst_a,
      axi_bvalid_int_reg => axi_bvalid_int_reg,
      bram_addr_a(9 downto 0) => bram_addr_a(9 downto 0),
      bram_en_a => bram_en_a,
      bram_rddata_a(63 downto 0) => bram_rddata_a(63 downto 0),
      bram_we_a(7 downto 0) => bram_we_a(7 downto 0),
      bram_wrdata_a(63 downto 0) => bram_wrdata_a(63 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(12 downto 0) => s_axi_araddr(12 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arid(3 downto 0) => s_axi_arid(3 downto 0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arsize(2 downto 0) => s_axi_arsize(2 downto 0),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(12 downto 0) => s_axi_awaddr(12 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awid(3 downto 0) => s_axi_awid(3 downto 0),
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(3 downto 0) => s_axi_bid(3 downto 0),
      s_axi_bready => s_axi_bready,
      s_axi_rdata(63 downto 0) => s_axi_rdata(63 downto 0),
      s_axi_rid(3 downto 0) => s_axi_rid(3 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_wdata(63 downto 0) => s_axi_wdata(63 downto 0),
      s_axi_wlast => s_axi_wlast,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(7 downto 0) => s_axi_wstrb(7 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_bram_ctrl_0_0_axi_bram_ctrl is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    ecc_interrupt : out STD_LOGIC;
    ecc_ue : out STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC;
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC;
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_ctrl_awvalid : in STD_LOGIC;
    s_axi_ctrl_awready : out STD_LOGIC;
    s_axi_ctrl_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_wvalid : in STD_LOGIC;
    s_axi_ctrl_wready : out STD_LOGIC;
    s_axi_ctrl_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_bvalid : out STD_LOGIC;
    s_axi_ctrl_bready : in STD_LOGIC;
    s_axi_ctrl_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_arvalid : in STD_LOGIC;
    s_axi_ctrl_arready : out STD_LOGIC;
    s_axi_ctrl_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_rvalid : out STD_LOGIC;
    s_axi_ctrl_rready : in STD_LOGIC;
    bram_rst_a : out STD_LOGIC;
    bram_clk_a : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 7 downto 0 );
    bram_addr_a : out STD_LOGIC_VECTOR ( 12 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 63 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 63 downto 0 );
    bram_rst_b : out STD_LOGIC;
    bram_clk_b : out STD_LOGIC;
    bram_en_b : out STD_LOGIC;
    bram_we_b : out STD_LOGIC_VECTOR ( 7 downto 0 );
    bram_addr_b : out STD_LOGIC_VECTOR ( 12 downto 0 );
    bram_wrdata_b : out STD_LOGIC_VECTOR ( 63 downto 0 );
    bram_rddata_b : in STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  attribute C_BRAM_ADDR_WIDTH : integer;
  attribute C_BRAM_ADDR_WIDTH of icyradio_axi_bram_ctrl_0_0_axi_bram_ctrl : entity is 10;
  attribute C_BRAM_INST_MODE : string;
  attribute C_BRAM_INST_MODE of icyradio_axi_bram_ctrl_0_0_axi_bram_ctrl : entity is "EXTERNAL";
  attribute C_ECC : integer;
  attribute C_ECC of icyradio_axi_bram_ctrl_0_0_axi_bram_ctrl : entity is 0;
  attribute C_ECC_ONOFF_RESET_VALUE : integer;
  attribute C_ECC_ONOFF_RESET_VALUE of icyradio_axi_bram_ctrl_0_0_axi_bram_ctrl : entity is 0;
  attribute C_ECC_TYPE : integer;
  attribute C_ECC_TYPE of icyradio_axi_bram_ctrl_0_0_axi_bram_ctrl : entity is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of icyradio_axi_bram_ctrl_0_0_axi_bram_ctrl : entity is "artix7";
  attribute C_FAULT_INJECT : integer;
  attribute C_FAULT_INJECT of icyradio_axi_bram_ctrl_0_0_axi_bram_ctrl : entity is 0;
  attribute C_MEMORY_DEPTH : integer;
  attribute C_MEMORY_DEPTH of icyradio_axi_bram_ctrl_0_0_axi_bram_ctrl : entity is 1024;
  attribute C_RD_CMD_OPTIMIZATION : integer;
  attribute C_RD_CMD_OPTIMIZATION of icyradio_axi_bram_ctrl_0_0_axi_bram_ctrl : entity is 0;
  attribute C_READ_LATENCY : integer;
  attribute C_READ_LATENCY of icyradio_axi_bram_ctrl_0_0_axi_bram_ctrl : entity is 1;
  attribute C_SINGLE_PORT_BRAM : integer;
  attribute C_SINGLE_PORT_BRAM of icyradio_axi_bram_ctrl_0_0_axi_bram_ctrl : entity is 1;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of icyradio_axi_bram_ctrl_0_0_axi_bram_ctrl : entity is 13;
  attribute C_S_AXI_CTRL_ADDR_WIDTH : integer;
  attribute C_S_AXI_CTRL_ADDR_WIDTH of icyradio_axi_bram_ctrl_0_0_axi_bram_ctrl : entity is 32;
  attribute C_S_AXI_CTRL_DATA_WIDTH : integer;
  attribute C_S_AXI_CTRL_DATA_WIDTH of icyradio_axi_bram_ctrl_0_0_axi_bram_ctrl : entity is 32;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of icyradio_axi_bram_ctrl_0_0_axi_bram_ctrl : entity is 64;
  attribute C_S_AXI_ID_WIDTH : integer;
  attribute C_S_AXI_ID_WIDTH of icyradio_axi_bram_ctrl_0_0_axi_bram_ctrl : entity is 4;
  attribute C_S_AXI_PROTOCOL : string;
  attribute C_S_AXI_PROTOCOL of icyradio_axi_bram_ctrl_0_0_axi_bram_ctrl : entity is "AXI4";
  attribute C_S_AXI_SUPPORTS_NARROW_BURST : integer;
  attribute C_S_AXI_SUPPORTS_NARROW_BURST of icyradio_axi_bram_ctrl_0_0_axi_bram_ctrl : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_axi_bram_ctrl_0_0_axi_bram_ctrl : entity is "axi_bram_ctrl";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of icyradio_axi_bram_ctrl_0_0_axi_bram_ctrl : entity is "yes";
end icyradio_axi_bram_ctrl_0_0_axi_bram_ctrl;

architecture STRUCTURE of icyradio_axi_bram_ctrl_0_0_axi_bram_ctrl is
  signal \<const0>\ : STD_LOGIC;
  signal \^bram_addr_a\ : STD_LOGIC_VECTOR ( 12 downto 3 );
  signal \^s_axi_aclk\ : STD_LOGIC;
begin
  \^s_axi_aclk\ <= s_axi_aclk;
  bram_addr_a(12 downto 3) <= \^bram_addr_a\(12 downto 3);
  bram_addr_a(2) <= \<const0>\;
  bram_addr_a(1) <= \<const0>\;
  bram_addr_a(0) <= \<const0>\;
  bram_addr_b(12) <= \<const0>\;
  bram_addr_b(11) <= \<const0>\;
  bram_addr_b(10) <= \<const0>\;
  bram_addr_b(9) <= \<const0>\;
  bram_addr_b(8) <= \<const0>\;
  bram_addr_b(7) <= \<const0>\;
  bram_addr_b(6) <= \<const0>\;
  bram_addr_b(5) <= \<const0>\;
  bram_addr_b(4) <= \<const0>\;
  bram_addr_b(3) <= \<const0>\;
  bram_addr_b(2) <= \<const0>\;
  bram_addr_b(1) <= \<const0>\;
  bram_addr_b(0) <= \<const0>\;
  bram_clk_a <= \^s_axi_aclk\;
  bram_clk_b <= \<const0>\;
  bram_en_b <= \<const0>\;
  bram_rst_b <= \<const0>\;
  bram_we_b(7) <= \<const0>\;
  bram_we_b(6) <= \<const0>\;
  bram_we_b(5) <= \<const0>\;
  bram_we_b(4) <= \<const0>\;
  bram_we_b(3) <= \<const0>\;
  bram_we_b(2) <= \<const0>\;
  bram_we_b(1) <= \<const0>\;
  bram_we_b(0) <= \<const0>\;
  bram_wrdata_b(63) <= \<const0>\;
  bram_wrdata_b(62) <= \<const0>\;
  bram_wrdata_b(61) <= \<const0>\;
  bram_wrdata_b(60) <= \<const0>\;
  bram_wrdata_b(59) <= \<const0>\;
  bram_wrdata_b(58) <= \<const0>\;
  bram_wrdata_b(57) <= \<const0>\;
  bram_wrdata_b(56) <= \<const0>\;
  bram_wrdata_b(55) <= \<const0>\;
  bram_wrdata_b(54) <= \<const0>\;
  bram_wrdata_b(53) <= \<const0>\;
  bram_wrdata_b(52) <= \<const0>\;
  bram_wrdata_b(51) <= \<const0>\;
  bram_wrdata_b(50) <= \<const0>\;
  bram_wrdata_b(49) <= \<const0>\;
  bram_wrdata_b(48) <= \<const0>\;
  bram_wrdata_b(47) <= \<const0>\;
  bram_wrdata_b(46) <= \<const0>\;
  bram_wrdata_b(45) <= \<const0>\;
  bram_wrdata_b(44) <= \<const0>\;
  bram_wrdata_b(43) <= \<const0>\;
  bram_wrdata_b(42) <= \<const0>\;
  bram_wrdata_b(41) <= \<const0>\;
  bram_wrdata_b(40) <= \<const0>\;
  bram_wrdata_b(39) <= \<const0>\;
  bram_wrdata_b(38) <= \<const0>\;
  bram_wrdata_b(37) <= \<const0>\;
  bram_wrdata_b(36) <= \<const0>\;
  bram_wrdata_b(35) <= \<const0>\;
  bram_wrdata_b(34) <= \<const0>\;
  bram_wrdata_b(33) <= \<const0>\;
  bram_wrdata_b(32) <= \<const0>\;
  bram_wrdata_b(31) <= \<const0>\;
  bram_wrdata_b(30) <= \<const0>\;
  bram_wrdata_b(29) <= \<const0>\;
  bram_wrdata_b(28) <= \<const0>\;
  bram_wrdata_b(27) <= \<const0>\;
  bram_wrdata_b(26) <= \<const0>\;
  bram_wrdata_b(25) <= \<const0>\;
  bram_wrdata_b(24) <= \<const0>\;
  bram_wrdata_b(23) <= \<const0>\;
  bram_wrdata_b(22) <= \<const0>\;
  bram_wrdata_b(21) <= \<const0>\;
  bram_wrdata_b(20) <= \<const0>\;
  bram_wrdata_b(19) <= \<const0>\;
  bram_wrdata_b(18) <= \<const0>\;
  bram_wrdata_b(17) <= \<const0>\;
  bram_wrdata_b(16) <= \<const0>\;
  bram_wrdata_b(15) <= \<const0>\;
  bram_wrdata_b(14) <= \<const0>\;
  bram_wrdata_b(13) <= \<const0>\;
  bram_wrdata_b(12) <= \<const0>\;
  bram_wrdata_b(11) <= \<const0>\;
  bram_wrdata_b(10) <= \<const0>\;
  bram_wrdata_b(9) <= \<const0>\;
  bram_wrdata_b(8) <= \<const0>\;
  bram_wrdata_b(7) <= \<const0>\;
  bram_wrdata_b(6) <= \<const0>\;
  bram_wrdata_b(5) <= \<const0>\;
  bram_wrdata_b(4) <= \<const0>\;
  bram_wrdata_b(3) <= \<const0>\;
  bram_wrdata_b(2) <= \<const0>\;
  bram_wrdata_b(1) <= \<const0>\;
  bram_wrdata_b(0) <= \<const0>\;
  ecc_interrupt <= \<const0>\;
  ecc_ue <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_ctrl_arready <= \<const0>\;
  s_axi_ctrl_awready <= \<const0>\;
  s_axi_ctrl_bresp(1) <= \<const0>\;
  s_axi_ctrl_bresp(0) <= \<const0>\;
  s_axi_ctrl_bvalid <= \<const0>\;
  s_axi_ctrl_rdata(31) <= \<const0>\;
  s_axi_ctrl_rdata(30) <= \<const0>\;
  s_axi_ctrl_rdata(29) <= \<const0>\;
  s_axi_ctrl_rdata(28) <= \<const0>\;
  s_axi_ctrl_rdata(27) <= \<const0>\;
  s_axi_ctrl_rdata(26) <= \<const0>\;
  s_axi_ctrl_rdata(25) <= \<const0>\;
  s_axi_ctrl_rdata(24) <= \<const0>\;
  s_axi_ctrl_rdata(23) <= \<const0>\;
  s_axi_ctrl_rdata(22) <= \<const0>\;
  s_axi_ctrl_rdata(21) <= \<const0>\;
  s_axi_ctrl_rdata(20) <= \<const0>\;
  s_axi_ctrl_rdata(19) <= \<const0>\;
  s_axi_ctrl_rdata(18) <= \<const0>\;
  s_axi_ctrl_rdata(17) <= \<const0>\;
  s_axi_ctrl_rdata(16) <= \<const0>\;
  s_axi_ctrl_rdata(15) <= \<const0>\;
  s_axi_ctrl_rdata(14) <= \<const0>\;
  s_axi_ctrl_rdata(13) <= \<const0>\;
  s_axi_ctrl_rdata(12) <= \<const0>\;
  s_axi_ctrl_rdata(11) <= \<const0>\;
  s_axi_ctrl_rdata(10) <= \<const0>\;
  s_axi_ctrl_rdata(9) <= \<const0>\;
  s_axi_ctrl_rdata(8) <= \<const0>\;
  s_axi_ctrl_rdata(7) <= \<const0>\;
  s_axi_ctrl_rdata(6) <= \<const0>\;
  s_axi_ctrl_rdata(5) <= \<const0>\;
  s_axi_ctrl_rdata(4) <= \<const0>\;
  s_axi_ctrl_rdata(3) <= \<const0>\;
  s_axi_ctrl_rdata(2) <= \<const0>\;
  s_axi_ctrl_rdata(1) <= \<const0>\;
  s_axi_ctrl_rdata(0) <= \<const0>\;
  s_axi_ctrl_rresp(1) <= \<const0>\;
  s_axi_ctrl_rresp(0) <= \<const0>\;
  s_axi_ctrl_rvalid <= \<const0>\;
  s_axi_ctrl_wready <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gext_inst.abcv4_0_ext_inst\: entity work.icyradio_axi_bram_ctrl_0_0_axi_bram_ctrl_top
     port map (
      \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg\ => s_axi_rlast,
      \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg\ => s_axi_rvalid,
      axi_bvalid_int_reg => s_axi_bvalid,
      bram_addr_a(9 downto 0) => \^bram_addr_a\(12 downto 3),
      bram_en_a => bram_en_a,
      bram_rddata_a(63 downto 0) => bram_rddata_a(63 downto 0),
      bram_rst_a => bram_rst_a,
      bram_we_a(7 downto 0) => bram_we_a(7 downto 0),
      bram_wrdata_a(63 downto 0) => bram_wrdata_a(63 downto 0),
      s_axi_aclk => \^s_axi_aclk\,
      s_axi_araddr(12 downto 0) => s_axi_araddr(12 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arid(3 downto 0) => s_axi_arid(3 downto 0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arsize(2 downto 0) => s_axi_arsize(2 downto 0),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(12 downto 0) => s_axi_awaddr(12 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awid(3 downto 0) => s_axi_awid(3 downto 0),
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(3 downto 0) => s_axi_bid(3 downto 0),
      s_axi_bready => s_axi_bready,
      s_axi_rdata(63 downto 0) => s_axi_rdata(63 downto 0),
      s_axi_rid(3 downto 0) => s_axi_rid(3 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_wdata(63 downto 0) => s_axi_wdata(63 downto 0),
      s_axi_wlast => s_axi_wlast,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(7 downto 0) => s_axi_wstrb(7 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_bram_ctrl_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC;
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC;
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    bram_rst_a : out STD_LOGIC;
    bram_clk_a : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 7 downto 0 );
    bram_addr_a : out STD_LOGIC_VECTOR ( 12 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 63 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of icyradio_axi_bram_ctrl_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of icyradio_axi_bram_ctrl_0_0 : entity is "icyradio_axi_bram_ctrl_0_0,axi_bram_ctrl,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of icyradio_axi_bram_ctrl_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of icyradio_axi_bram_ctrl_0_0 : entity is "axi_bram_ctrl,Vivado 2021.1";
end icyradio_axi_bram_ctrl_0_0;

architecture STRUCTURE of icyradio_axi_bram_ctrl_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^bram_addr_a\ : STD_LOGIC_VECTOR ( 12 downto 3 );
  signal NLW_U0_bram_clk_b_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_bram_en_b_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_bram_rst_b_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_ecc_interrupt_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_ecc_ue_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_ctrl_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_ctrl_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_ctrl_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_ctrl_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_ctrl_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_bram_addr_a_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_bram_addr_b_UNCONNECTED : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal NLW_U0_bram_we_b_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_bram_wrdata_b_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_ctrl_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_ctrl_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_s_axi_ctrl_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_BRAM_ADDR_WIDTH : integer;
  attribute C_BRAM_ADDR_WIDTH of U0 : label is 10;
  attribute C_BRAM_INST_MODE : string;
  attribute C_BRAM_INST_MODE of U0 : label is "EXTERNAL";
  attribute C_ECC : integer;
  attribute C_ECC of U0 : label is 0;
  attribute C_ECC_ONOFF_RESET_VALUE : integer;
  attribute C_ECC_ONOFF_RESET_VALUE of U0 : label is 0;
  attribute C_ECC_TYPE : integer;
  attribute C_ECC_TYPE of U0 : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "artix7";
  attribute C_FAULT_INJECT : integer;
  attribute C_FAULT_INJECT of U0 : label is 0;
  attribute C_MEMORY_DEPTH : integer;
  attribute C_MEMORY_DEPTH of U0 : label is 1024;
  attribute C_RD_CMD_OPTIMIZATION : integer;
  attribute C_RD_CMD_OPTIMIZATION of U0 : label is 0;
  attribute C_READ_LATENCY : integer;
  attribute C_READ_LATENCY of U0 : label is 1;
  attribute C_SINGLE_PORT_BRAM : integer;
  attribute C_SINGLE_PORT_BRAM of U0 : label is 1;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of U0 : label is 13;
  attribute C_S_AXI_CTRL_ADDR_WIDTH : integer;
  attribute C_S_AXI_CTRL_ADDR_WIDTH of U0 : label is 32;
  attribute C_S_AXI_CTRL_DATA_WIDTH : integer;
  attribute C_S_AXI_CTRL_DATA_WIDTH of U0 : label is 32;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of U0 : label is 64;
  attribute C_S_AXI_ID_WIDTH : integer;
  attribute C_S_AXI_ID_WIDTH of U0 : label is 4;
  attribute C_S_AXI_PROTOCOL : string;
  attribute C_S_AXI_PROTOCOL of U0 : label is "AXI4";
  attribute C_S_AXI_SUPPORTS_NARROW_BURST : integer;
  attribute C_S_AXI_SUPPORTS_NARROW_BURST of U0 : label is 1;
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of bram_clk_a : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK";
  attribute x_interface_info of bram_en_a : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA EN";
  attribute x_interface_info of bram_rst_a : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA RST";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of bram_rst_a : signal is "XIL_INTERFACENAME BRAM_PORTA, MASTER_TYPE BRAM_CTRL, MEM_SIZE 8192, MEM_WIDTH 64, MEM_ECC NONE, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1";
  attribute x_interface_info of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 CLKIF CLK";
  attribute x_interface_parameter of s_axi_aclk : signal is "XIL_INTERFACENAME CLKIF, ASSOCIATED_BUSIF S_AXI:S_AXI_CTRL, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN icyradio_axi_pcie_0_0_axi_aclk_out, INSERT_VIP 0";
  attribute x_interface_info of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 RSTIF RST";
  attribute x_interface_parameter of s_axi_aresetn : signal is "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s_axi_arlock : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK";
  attribute x_interface_info of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute x_interface_info of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute x_interface_info of s_axi_awlock : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK";
  attribute x_interface_info of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute x_interface_info of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute x_interface_info of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute x_interface_info of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute x_interface_info of s_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 S_AXI RLAST";
  attribute x_interface_info of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute x_interface_info of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute x_interface_info of s_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 S_AXI WLAST";
  attribute x_interface_info of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute x_interface_info of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute x_interface_info of bram_addr_a : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR";
  attribute x_interface_info of bram_rddata_a : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT";
  attribute x_interface_info of bram_we_a : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA WE";
  attribute x_interface_info of bram_wrdata_a : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN";
  attribute x_interface_info of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute x_interface_info of s_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARBURST";
  attribute x_interface_info of s_axi_arcache : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARCACHE";
  attribute x_interface_info of s_axi_arid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARID";
  attribute x_interface_info of s_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARLEN";
  attribute x_interface_info of s_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARPROT";
  attribute x_interface_info of s_axi_arsize : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE";
  attribute x_interface_info of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute x_interface_info of s_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWBURST";
  attribute x_interface_info of s_axi_awcache : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE";
  attribute x_interface_info of s_axi_awid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWID";
  attribute x_interface_parameter of s_axi_awid : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 125000000, ID_WIDTH 4, ADDR_WIDTH 13, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN icyradio_axi_pcie_0_0_axi_aclk_out, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWLEN";
  attribute x_interface_info of s_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWPROT";
  attribute x_interface_info of s_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE";
  attribute x_interface_info of s_axi_bid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BID";
  attribute x_interface_info of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute x_interface_info of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute x_interface_info of s_axi_rid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RID";
  attribute x_interface_info of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute x_interface_info of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute x_interface_info of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
  bram_addr_a(12 downto 3) <= \^bram_addr_a\(12 downto 3);
  bram_addr_a(2) <= \<const0>\;
  bram_addr_a(1) <= \<const0>\;
  bram_addr_a(0) <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.icyradio_axi_bram_ctrl_0_0_axi_bram_ctrl
     port map (
      bram_addr_a(12 downto 3) => \^bram_addr_a\(12 downto 3),
      bram_addr_a(2 downto 0) => NLW_U0_bram_addr_a_UNCONNECTED(2 downto 0),
      bram_addr_b(12 downto 0) => NLW_U0_bram_addr_b_UNCONNECTED(12 downto 0),
      bram_clk_a => bram_clk_a,
      bram_clk_b => NLW_U0_bram_clk_b_UNCONNECTED,
      bram_en_a => bram_en_a,
      bram_en_b => NLW_U0_bram_en_b_UNCONNECTED,
      bram_rddata_a(63 downto 0) => bram_rddata_a(63 downto 0),
      bram_rddata_b(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      bram_rst_a => bram_rst_a,
      bram_rst_b => NLW_U0_bram_rst_b_UNCONNECTED,
      bram_we_a(7 downto 0) => bram_we_a(7 downto 0),
      bram_we_b(7 downto 0) => NLW_U0_bram_we_b_UNCONNECTED(7 downto 0),
      bram_wrdata_a(63 downto 0) => bram_wrdata_a(63 downto 0),
      bram_wrdata_b(63 downto 0) => NLW_U0_bram_wrdata_b_UNCONNECTED(63 downto 0),
      ecc_interrupt => NLW_U0_ecc_interrupt_UNCONNECTED,
      ecc_ue => NLW_U0_ecc_ue_UNCONNECTED,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(12 downto 0) => s_axi_araddr(12 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_arcache(3 downto 0) => B"0000",
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arid(3 downto 0) => s_axi_arid(3 downto 0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arlock => '0',
      s_axi_arprot(2 downto 0) => B"000",
      s_axi_arready => s_axi_arready,
      s_axi_arsize(2 downto 0) => s_axi_arsize(2 downto 0),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(12 downto 0) => s_axi_awaddr(12 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awcache(3 downto 0) => B"0000",
      s_axi_awid(3 downto 0) => s_axi_awid(3 downto 0),
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awlock => '0',
      s_axi_awprot(2 downto 0) => B"000",
      s_axi_awready => s_axi_awready,
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(3 downto 0) => s_axi_bid(3 downto 0),
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_ctrl_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_ctrl_arready => NLW_U0_s_axi_ctrl_arready_UNCONNECTED,
      s_axi_ctrl_arvalid => '0',
      s_axi_ctrl_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_ctrl_awready => NLW_U0_s_axi_ctrl_awready_UNCONNECTED,
      s_axi_ctrl_awvalid => '0',
      s_axi_ctrl_bready => '0',
      s_axi_ctrl_bresp(1 downto 0) => NLW_U0_s_axi_ctrl_bresp_UNCONNECTED(1 downto 0),
      s_axi_ctrl_bvalid => NLW_U0_s_axi_ctrl_bvalid_UNCONNECTED,
      s_axi_ctrl_rdata(31 downto 0) => NLW_U0_s_axi_ctrl_rdata_UNCONNECTED(31 downto 0),
      s_axi_ctrl_rready => '0',
      s_axi_ctrl_rresp(1 downto 0) => NLW_U0_s_axi_ctrl_rresp_UNCONNECTED(1 downto 0),
      s_axi_ctrl_rvalid => NLW_U0_s_axi_ctrl_rvalid_UNCONNECTED,
      s_axi_ctrl_wdata(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_ctrl_wready => NLW_U0_s_axi_ctrl_wready_UNCONNECTED,
      s_axi_ctrl_wvalid => '0',
      s_axi_rdata(63 downto 0) => s_axi_rdata(63 downto 0),
      s_axi_rid(3 downto 0) => s_axi_rid(3 downto 0),
      s_axi_rlast => s_axi_rlast,
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(63 downto 0) => s_axi_wdata(63 downto 0),
      s_axi_wlast => s_axi_wlast,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(7 downto 0) => s_axi_wstrb(7 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
