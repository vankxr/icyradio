-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Fri Oct 27 00:55:34 2023
-- Host        : node4-dev running 64-bit Ubuntu 22.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/joao/icyradio/firmware/icyradio.gen/sources_1/bd/icyradio/ip/icyradio_rst_pulse_gen_0_1/icyradio_rst_pulse_gen_0_1_sim_netlist.vhdl
-- Design      : icyradio_rst_pulse_gen_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_rst_pulse_gen_0_1_rst_pulse_gen is
  port (
    rst_out : out STD_LOGIC;
    trigger : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_rst_pulse_gen_0_1_rst_pulse_gen : entity is "rst_pulse_gen";
end icyradio_rst_pulse_gen_0_1_rst_pulse_gen;

architecture STRUCTURE of icyradio_rst_pulse_gen_0_1_rst_pulse_gen is
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg_n_0_[0]\ : STD_LOGIC;
  signal ctr : STD_LOGIC;
  signal \ctr0_carry__0_n_0\ : STD_LOGIC;
  signal \ctr0_carry__0_n_1\ : STD_LOGIC;
  signal \ctr0_carry__0_n_2\ : STD_LOGIC;
  signal \ctr0_carry__0_n_3\ : STD_LOGIC;
  signal \ctr0_carry__1_n_0\ : STD_LOGIC;
  signal \ctr0_carry__1_n_1\ : STD_LOGIC;
  signal \ctr0_carry__1_n_2\ : STD_LOGIC;
  signal \ctr0_carry__1_n_3\ : STD_LOGIC;
  signal \ctr0_carry__2_n_2\ : STD_LOGIC;
  signal \ctr0_carry__2_n_3\ : STD_LOGIC;
  signal ctr0_carry_n_0 : STD_LOGIC;
  signal ctr0_carry_n_1 : STD_LOGIC;
  signal ctr0_carry_n_2 : STD_LOGIC;
  signal ctr0_carry_n_3 : STD_LOGIC;
  signal \ctr[0]_i_1_n_0\ : STD_LOGIC;
  signal \ctr[15]_i_1_n_0\ : STD_LOGIC;
  signal \ctr[15]_i_3_n_0\ : STD_LOGIC;
  signal \ctr[15]_i_4_n_0\ : STD_LOGIC;
  signal \ctr_reg_n_0_[0]\ : STD_LOGIC;
  signal \ctr_reg_n_0_[10]\ : STD_LOGIC;
  signal \ctr_reg_n_0_[11]\ : STD_LOGIC;
  signal \ctr_reg_n_0_[12]\ : STD_LOGIC;
  signal \ctr_reg_n_0_[13]\ : STD_LOGIC;
  signal \ctr_reg_n_0_[14]\ : STD_LOGIC;
  signal \ctr_reg_n_0_[15]\ : STD_LOGIC;
  signal \ctr_reg_n_0_[1]\ : STD_LOGIC;
  signal \ctr_reg_n_0_[2]\ : STD_LOGIC;
  signal \ctr_reg_n_0_[3]\ : STD_LOGIC;
  signal \ctr_reg_n_0_[4]\ : STD_LOGIC;
  signal \ctr_reg_n_0_[5]\ : STD_LOGIC;
  signal \ctr_reg_n_0_[6]\ : STD_LOGIC;
  signal \ctr_reg_n_0_[7]\ : STD_LOGIC;
  signal \ctr_reg_n_0_[8]\ : STD_LOGIC;
  signal \ctr_reg_n_0_[9]\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal \^rst_out\ : STD_LOGIC;
  signal rst_out_i_1_n_0 : STD_LOGIC;
  signal rst_out_i_2_n_0 : STD_LOGIC;
  signal rst_out_i_3_n_0 : STD_LOGIC;
  signal rst_out_i_4_n_0 : STD_LOGIC;
  signal rst_out_i_5_n_0 : STD_LOGIC;
  signal rst_out_i_6_n_0 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \NLW_ctr0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_ctr0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "iSTATE:01,iSTATE0:10,iSTATE1:00,iSTATE2:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "iSTATE:01,iSTATE0:10,iSTATE1:00,iSTATE2:11";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of ctr0_carry : label is 35;
  attribute ADDER_THRESHOLD of \ctr0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \ctr0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \ctr0_carry__2\ : label is 35;
  attribute SOFT_HLUTNM of \ctr[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of rst_out_i_5 : label is "soft_lutpair1";
begin
  rst_out <= \^rst_out\;
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D5B2"
    )
        port map (
      I0 => \FSM_sequential_state_reg_n_0_[0]\,
      I1 => state(1),
      I2 => trigger,
      I3 => rst_out_i_2_n_0,
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E6C4"
    )
        port map (
      I0 => \FSM_sequential_state_reg_n_0_[0]\,
      I1 => state(1),
      I2 => trigger,
      I3 => rst_out_i_2_n_0,
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => \FSM_sequential_state_reg_n_0_[0]\,
      R => '0'
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => state(1),
      R => '0'
    );
ctr0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => ctr0_carry_n_0,
      CO(2) => ctr0_carry_n_1,
      CO(1) => ctr0_carry_n_2,
      CO(0) => ctr0_carry_n_3,
      CYINIT => \ctr_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3) => \ctr_reg_n_0_[4]\,
      S(2) => \ctr_reg_n_0_[3]\,
      S(1) => \ctr_reg_n_0_[2]\,
      S(0) => \ctr_reg_n_0_[1]\
    );
\ctr0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => ctr0_carry_n_0,
      CO(3) => \ctr0_carry__0_n_0\,
      CO(2) => \ctr0_carry__0_n_1\,
      CO(1) => \ctr0_carry__0_n_2\,
      CO(0) => \ctr0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3) => \ctr_reg_n_0_[8]\,
      S(2) => \ctr_reg_n_0_[7]\,
      S(1) => \ctr_reg_n_0_[6]\,
      S(0) => \ctr_reg_n_0_[5]\
    );
\ctr0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ctr0_carry__0_n_0\,
      CO(3) => \ctr0_carry__1_n_0\,
      CO(2) => \ctr0_carry__1_n_1\,
      CO(1) => \ctr0_carry__1_n_2\,
      CO(0) => \ctr0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3) => \ctr_reg_n_0_[12]\,
      S(2) => \ctr_reg_n_0_[11]\,
      S(1) => \ctr_reg_n_0_[10]\,
      S(0) => \ctr_reg_n_0_[9]\
    );
\ctr0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \ctr0_carry__1_n_0\,
      CO(3 downto 2) => \NLW_ctr0_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \ctr0_carry__2_n_2\,
      CO(0) => \ctr0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_ctr0_carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(15 downto 13),
      S(3) => '0',
      S(2) => \ctr_reg_n_0_[15]\,
      S(1) => \ctr_reg_n_0_[14]\,
      S(0) => \ctr_reg_n_0_[13]\
    );
\ctr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \ctr_reg_n_0_[0]\,
      O => \ctr[0]_i_1_n_0\
    );
\ctr[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0445"
    )
        port map (
      I0 => \ctr[15]_i_3_n_0\,
      I1 => \ctr[15]_i_4_n_0\,
      I2 => \FSM_sequential_state_reg_n_0_[0]\,
      I3 => state(1),
      O => \ctr[15]_i_1_n_0\
    );
\ctr[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \FSM_sequential_state_reg_n_0_[0]\,
      I1 => state(1),
      O => ctr
    );
\ctr[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFFAAAAAAA2"
    )
        port map (
      I0 => \FSM_sequential_state_reg_n_0_[0]\,
      I1 => \ctr_reg_n_0_[5]\,
      I2 => \ctr_reg_n_0_[4]\,
      I3 => \ctr_reg_n_0_[7]\,
      I4 => \ctr_reg_n_0_[6]\,
      I5 => state(1),
      O => \ctr[15]_i_3_n_0\
    );
\ctr[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \ctr_reg_n_0_[9]\,
      I1 => \ctr_reg_n_0_[12]\,
      I2 => \ctr_reg_n_0_[0]\,
      I3 => \ctr_reg_n_0_[14]\,
      I4 => rst_out_i_4_n_0,
      I5 => rst_out_i_3_n_0,
      O => \ctr[15]_i_4_n_0\
    );
\ctr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => ctr,
      D => \ctr[0]_i_1_n_0\,
      Q => \ctr_reg_n_0_[0]\,
      R => \ctr[15]_i_1_n_0\
    );
\ctr_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => ctr,
      D => data0(10),
      Q => \ctr_reg_n_0_[10]\,
      R => \ctr[15]_i_1_n_0\
    );
\ctr_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => ctr,
      D => data0(11),
      Q => \ctr_reg_n_0_[11]\,
      R => \ctr[15]_i_1_n_0\
    );
\ctr_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => ctr,
      D => data0(12),
      Q => \ctr_reg_n_0_[12]\,
      R => \ctr[15]_i_1_n_0\
    );
\ctr_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => ctr,
      D => data0(13),
      Q => \ctr_reg_n_0_[13]\,
      R => \ctr[15]_i_1_n_0\
    );
\ctr_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => ctr,
      D => data0(14),
      Q => \ctr_reg_n_0_[14]\,
      R => \ctr[15]_i_1_n_0\
    );
\ctr_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => ctr,
      D => data0(15),
      Q => \ctr_reg_n_0_[15]\,
      R => \ctr[15]_i_1_n_0\
    );
\ctr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => ctr,
      D => data0(1),
      Q => \ctr_reg_n_0_[1]\,
      R => \ctr[15]_i_1_n_0\
    );
\ctr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => ctr,
      D => data0(2),
      Q => \ctr_reg_n_0_[2]\,
      R => \ctr[15]_i_1_n_0\
    );
\ctr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => ctr,
      D => data0(3),
      Q => \ctr_reg_n_0_[3]\,
      R => \ctr[15]_i_1_n_0\
    );
\ctr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => ctr,
      D => data0(4),
      Q => \ctr_reg_n_0_[4]\,
      R => \ctr[15]_i_1_n_0\
    );
\ctr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => ctr,
      D => data0(5),
      Q => \ctr_reg_n_0_[5]\,
      R => \ctr[15]_i_1_n_0\
    );
\ctr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => ctr,
      D => data0(6),
      Q => \ctr_reg_n_0_[6]\,
      R => \ctr[15]_i_1_n_0\
    );
\ctr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => ctr,
      D => data0(7),
      Q => \ctr_reg_n_0_[7]\,
      R => \ctr[15]_i_1_n_0\
    );
\ctr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => ctr,
      D => data0(8),
      Q => \ctr_reg_n_0_[8]\,
      R => \ctr[15]_i_1_n_0\
    );
\ctr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => ctr,
      D => data0(9),
      Q => \ctr_reg_n_0_[9]\,
      R => \ctr[15]_i_1_n_0\
    );
rst_out_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2E0"
    )
        port map (
      I0 => \^rst_out\,
      I1 => rst_out_i_2_n_0,
      I2 => \FSM_sequential_state_reg_n_0_[0]\,
      I3 => state(1),
      O => rst_out_i_1_n_0
    );
rst_out_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => rst_out_i_3_n_0,
      I1 => rst_out_i_4_n_0,
      I2 => rst_out_i_5_n_0,
      I3 => rst_out_i_6_n_0,
      O => rst_out_i_2_n_0
    );
rst_out_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \ctr_reg_n_0_[15]\,
      I1 => \ctr_reg_n_0_[8]\,
      I2 => \ctr_reg_n_0_[1]\,
      I3 => \ctr_reg_n_0_[3]\,
      O => rst_out_i_3_n_0
    );
rst_out_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \ctr_reg_n_0_[10]\,
      I1 => \ctr_reg_n_0_[2]\,
      I2 => \ctr_reg_n_0_[13]\,
      I3 => \ctr_reg_n_0_[11]\,
      O => rst_out_i_4_n_0
    );
rst_out_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \ctr_reg_n_0_[14]\,
      I1 => \ctr_reg_n_0_[0]\,
      I2 => \ctr_reg_n_0_[12]\,
      I3 => \ctr_reg_n_0_[9]\,
      O => rst_out_i_5_n_0
    );
rst_out_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFFFFFDFFFF"
    )
        port map (
      I0 => \ctr_reg_n_0_[5]\,
      I1 => \ctr_reg_n_0_[4]\,
      I2 => \ctr_reg_n_0_[6]\,
      I3 => \ctr_reg_n_0_[7]\,
      I4 => \FSM_sequential_state_reg_n_0_[0]\,
      I5 => state(1),
      O => rst_out_i_6_n_0
    );
rst_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rst_out_i_1_n_0,
      Q => \^rst_out\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_rst_pulse_gen_0_1 is
  port (
    clk : in STD_LOGIC;
    trigger : in STD_LOGIC;
    rst_out : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of icyradio_rst_pulse_gen_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of icyradio_rst_pulse_gen_0_1 : entity is "icyradio_rst_pulse_gen_0_1,rst_pulse_gen,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of icyradio_rst_pulse_gen_0_1 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of icyradio_rst_pulse_gen_0_1 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of icyradio_rst_pulse_gen_0_1 : entity is "rst_pulse_gen,Vivado 2021.1";
end icyradio_rst_pulse_gen_0_1;

architecture STRUCTURE of icyradio_rst_pulse_gen_0_1 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN icyradio_axi_pcie_0_0_axi_aclk_out, INSERT_VIP 0";
begin
inst: entity work.icyradio_rst_pulse_gen_0_1_rst_pulse_gen
     port map (
      clk => clk,
      rst_out => rst_out,
      trigger => trigger
    );
end STRUCTURE;
