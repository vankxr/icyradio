-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Sat Oct  1 21:20:22 2022
-- Host        : jsilva-kde running 64-bit KDE neon User - 5.25
-- Command     : write_vhdl -force -mode funcsim
--               /media/joao/SSD/Development/icyradio/firmware/icyradio.gen/sources_1/bd/icyradio/ip/icyradio_axi_i2s_adi_0_1/icyradio_axi_i2s_adi_0_1_sim_netlist.vhdl
-- Design      : icyradio_axi_i2s_adi_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_i2s_adi_0_1_axi_ctrlif is
  port (
    FSM_sequential_rd_state_reg_0 : out STD_LOGIC;
    s_axi_wdata_1_sp_1 : out STD_LOGIC;
    s_axi_wdata_0_sp_1 : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    \s_axi_wdata[1]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_awaddr[4]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    \FSM_onehot_wr_state_reg[2]_0\ : out STD_LOGIC;
    \FSM_onehot_wr_state_reg[1]_0\ : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rx_enable : in STD_LOGIC;
    \I2S_CONTROL_REG_reg[0]\ : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \I2S_RESET_REG_reg[1]\ : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \s_axi_rdata[15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    cnt_reg : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_rready : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_axi_i2s_adi_0_1_axi_ctrlif : entity is "axi_ctrlif";
end icyradio_axi_i2s_adi_0_1_axi_ctrlif;

architecture STRUCTURE of icyradio_axi_i2s_adi_0_1_axi_ctrlif is
  signal \FSM_onehot_wr_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_wr_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_wr_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_wr_state_reg[1]_0\ : STD_LOGIC;
  signal \^fsm_onehot_wr_state_reg[2]_0\ : STD_LOGIC;
  signal \FSM_onehot_wr_state_reg_n_0_[0]\ : STD_LOGIC;
  signal FSM_sequential_rd_state_i_2_n_0 : STD_LOGIC;
  signal \^fsm_sequential_rd_state_reg_0\ : STD_LOGIC;
  signal \I2S_CLK_CONTROL_REG[23]_i_2_n_0\ : STD_LOGIC;
  signal I2S_CONTROL_REG : STD_LOGIC;
  signal rd_addr : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \rd_addr[3]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal s_axi_wdata_0_sn_1 : STD_LOGIC;
  signal s_axi_wdata_1_sn_1 : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_wr_state_reg[0]\ : label is "idle:001,ack:010,resp:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wr_state_reg[1]\ : label is "idle:001,ack:010,resp:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wr_state_reg[2]\ : label is "idle:001,ack:010,resp:100,";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of FSM_sequential_rd_state_i_2 : label is "soft_lutpair24";
  attribute FSM_ENCODED_STATES of FSM_sequential_rd_state_reg : label is "idle:0,resp:1,";
  attribute SOFT_HLUTNM of \I2S_CONTROL_REG[0]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \I2S_CONTROL_REG[1]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \I2S_CONTROL_REG[1]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \PERIOD_LEN_REG[15]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of s_axi_arready_INST_0 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \s_axi_rdata[1]_INST_0_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \s_axi_rdata[21]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \s_axi_rdata[22]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \s_axi_rdata[23]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \s_axi_rdata[7]_INST_0_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \s_axi_rdata[7]_INST_0_i_2\ : label is "soft_lutpair22";
begin
  \FSM_onehot_wr_state_reg[1]_0\ <= \^fsm_onehot_wr_state_reg[1]_0\;
  \FSM_onehot_wr_state_reg[2]_0\ <= \^fsm_onehot_wr_state_reg[2]_0\;
  FSM_sequential_rd_state_reg_0 <= \^fsm_sequential_rd_state_reg_0\;
  s_axi_wdata_0_sp_1 <= s_axi_wdata_0_sn_1;
  s_axi_wdata_1_sp_1 <= s_axi_wdata_1_sn_1;
\FSM_onehot_wr_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFF07070"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => \FSM_onehot_wr_state_reg_n_0_[0]\,
      I3 => s_axi_bready,
      I4 => \^fsm_onehot_wr_state_reg[2]_0\,
      I5 => \^fsm_onehot_wr_state_reg[1]_0\,
      O => \FSM_onehot_wr_state[0]_i_1_n_0\
    );
\FSM_onehot_wr_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0F0808080"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => \FSM_onehot_wr_state_reg_n_0_[0]\,
      I3 => s_axi_bready,
      I4 => \^fsm_onehot_wr_state_reg[2]_0\,
      I5 => \^fsm_onehot_wr_state_reg[1]_0\,
      O => \FSM_onehot_wr_state[1]_i_1_n_0\
    );
\FSM_onehot_wr_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF007F0000"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => \FSM_onehot_wr_state_reg_n_0_[0]\,
      I3 => s_axi_bready,
      I4 => \^fsm_onehot_wr_state_reg[2]_0\,
      I5 => \^fsm_onehot_wr_state_reg[1]_0\,
      O => \FSM_onehot_wr_state[2]_i_1_n_0\
    );
\FSM_onehot_wr_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_wr_state[0]_i_1_n_0\,
      Q => \FSM_onehot_wr_state_reg_n_0_[0]\,
      S => SR(0)
    );
\FSM_onehot_wr_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_wr_state[1]_i_1_n_0\,
      Q => \^fsm_onehot_wr_state_reg[1]_0\,
      R => SR(0)
    );
\FSM_onehot_wr_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_wr_state[2]_i_1_n_0\,
      Q => \^fsm_onehot_wr_state_reg[2]_0\,
      R => SR(0)
    );
FSM_sequential_rd_state_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3A"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => s_axi_rready,
      I2 => \^fsm_sequential_rd_state_reg_0\,
      O => FSM_sequential_rd_state_i_2_n_0
    );
FSM_sequential_rd_state_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => FSM_sequential_rd_state_i_2_n_0,
      Q => \^fsm_sequential_rd_state_reg_0\,
      R => SR(0)
    );
\I2S_CLK_CONTROL_REG[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => s_axi_awaddr(1),
      I2 => s_axi_awaddr(3),
      I3 => s_axi_awaddr(0),
      I4 => \I2S_CLK_CONTROL_REG[23]_i_2_n_0\,
      O => \s_axi_awaddr[4]\(0)
    );
\I2S_CLK_CONTROL_REG[23]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_onehot_wr_state_reg_n_0_[0]\,
      I1 => s_axi_awvalid,
      I2 => s_axi_wvalid,
      O => \I2S_CLK_CONTROL_REG[23]_i_2_n_0\
    );
\I2S_CONTROL_REG[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => I2S_CONTROL_REG,
      I2 => \I2S_CONTROL_REG_reg[0]\,
      O => s_axi_wdata_0_sn_1
    );
\I2S_CONTROL_REG[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(1),
      I1 => I2S_CONTROL_REG,
      I2 => rx_enable,
      O => s_axi_wdata_1_sn_1
    );
\I2S_CONTROL_REG[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \I2S_CLK_CONTROL_REG[23]_i_2_n_0\,
      I1 => s_axi_awaddr(3),
      I2 => s_axi_awaddr(0),
      I3 => s_axi_awaddr(2),
      I4 => s_axi_awaddr(1),
      O => I2S_CONTROL_REG
    );
\I2S_RESET_REG[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => \I2S_CLK_CONTROL_REG[23]_i_2_n_0\,
      I1 => \I2S_RESET_REG_reg[1]\,
      I2 => s_axi_wdata(1),
      I3 => s_axi_aresetn,
      I4 => s_axi_awaddr(0),
      I5 => s_axi_awaddr(3),
      O => \s_axi_wdata[1]_0\
    );
\PERIOD_LEN_REG[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => s_axi_awaddr(1),
      I2 => s_axi_awaddr(3),
      I3 => s_axi_awaddr(0),
      I4 => \I2S_CLK_CONTROL_REG[23]_i_2_n_0\,
      O => E(0)
    );
\rd_addr[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => s_axi_arvalid,
      I2 => \^fsm_sequential_rd_state_reg_0\,
      O => \rd_addr[3]_i_1_n_0\
    );
\rd_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \rd_addr[3]_i_1_n_0\,
      D => s_axi_araddr(0),
      Q => rd_addr(0),
      R => '0'
    );
\rd_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \rd_addr[3]_i_1_n_0\,
      D => s_axi_araddr(1),
      Q => rd_addr(1),
      R => '0'
    );
\rd_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \rd_addr[3]_i_1_n_0\,
      D => s_axi_araddr(2),
      Q => rd_addr(2),
      R => '0'
    );
\rd_addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \rd_addr[3]_i_1_n_0\,
      D => s_axi_araddr(3),
      Q => rd_addr(3),
      R => '0'
    );
s_axi_arready_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^fsm_sequential_rd_state_reg_0\,
      O => s_axi_arready
    );
\s_axi_rdata[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F4FFF4"
    )
        port map (
      I0 => \s_axi_rdata[7]_INST_0_i_1_n_0\,
      I1 => \s_axi_rdata[15]\(0),
      I2 => \s_axi_rdata[0]_INST_0_i_1_n_0\,
      I3 => \I2S_CONTROL_REG_reg[0]\,
      I4 => \s_axi_rdata[1]_INST_0_i_1_n_0\,
      O => s_axi_rdata(0)
    );
\s_axi_rdata[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404040000000400"
    )
        port map (
      I0 => rd_addr(0),
      I1 => rd_addr(1),
      I2 => rd_addr(2),
      I3 => Q(0),
      I4 => rd_addr(3),
      I5 => cnt_reg(0),
      O => \s_axi_rdata[0]_INST_0_i_1_n_0\
    );
\s_axi_rdata[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => \s_axi_rdata[15]\(10),
      I1 => rd_addr(2),
      I2 => rd_addr(3),
      I3 => rd_addr(1),
      I4 => rd_addr(0),
      O => s_axi_rdata(10)
    );
\s_axi_rdata[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => \s_axi_rdata[15]\(11),
      I1 => rd_addr(2),
      I2 => rd_addr(3),
      I3 => rd_addr(1),
      I4 => rd_addr(0),
      O => s_axi_rdata(11)
    );
\s_axi_rdata[12]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => \s_axi_rdata[15]\(12),
      I1 => rd_addr(2),
      I2 => rd_addr(3),
      I3 => rd_addr(1),
      I4 => rd_addr(0),
      O => s_axi_rdata(12)
    );
\s_axi_rdata[13]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => \s_axi_rdata[15]\(13),
      I1 => rd_addr(2),
      I2 => rd_addr(3),
      I3 => rd_addr(1),
      I4 => rd_addr(0),
      O => s_axi_rdata(13)
    );
\s_axi_rdata[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => \s_axi_rdata[15]\(14),
      I1 => rd_addr(2),
      I2 => rd_addr(3),
      I3 => rd_addr(1),
      I4 => rd_addr(0),
      O => s_axi_rdata(14)
    );
\s_axi_rdata[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => \s_axi_rdata[15]\(15),
      I1 => rd_addr(2),
      I2 => rd_addr(3),
      I3 => rd_addr(1),
      I4 => rd_addr(0),
      O => s_axi_rdata(15)
    );
\s_axi_rdata[16]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => rd_addr(0),
      I1 => rd_addr(1),
      I2 => rd_addr(2),
      I3 => Q(8),
      I4 => rd_addr(3),
      O => s_axi_rdata(16)
    );
\s_axi_rdata[17]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => rd_addr(0),
      I1 => rd_addr(1),
      I2 => rd_addr(2),
      I3 => Q(9),
      I4 => rd_addr(3),
      O => s_axi_rdata(17)
    );
\s_axi_rdata[18]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => rd_addr(0),
      I1 => rd_addr(1),
      I2 => rd_addr(2),
      I3 => Q(10),
      I4 => rd_addr(3),
      O => s_axi_rdata(18)
    );
\s_axi_rdata[19]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => rd_addr(0),
      I1 => rd_addr(1),
      I2 => rd_addr(2),
      I3 => Q(11),
      I4 => rd_addr(3),
      O => s_axi_rdata(19)
    );
\s_axi_rdata[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF44F4"
    )
        port map (
      I0 => \s_axi_rdata[7]_INST_0_i_1_n_0\,
      I1 => \s_axi_rdata[15]\(1),
      I2 => rx_enable,
      I3 => \s_axi_rdata[1]_INST_0_i_1_n_0\,
      I4 => \s_axi_rdata[1]_INST_0_i_2_n_0\,
      O => s_axi_rdata(1)
    );
\s_axi_rdata[1]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => rd_addr(0),
      I1 => rd_addr(3),
      I2 => rd_addr(1),
      I3 => rd_addr(2),
      O => \s_axi_rdata[1]_INST_0_i_1_n_0\
    );
\s_axi_rdata[1]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404040000000400"
    )
        port map (
      I0 => rd_addr(0),
      I1 => rd_addr(1),
      I2 => rd_addr(2),
      I3 => Q(1),
      I4 => rd_addr(3),
      I5 => cnt_reg(1),
      O => \s_axi_rdata[1]_INST_0_i_2_n_0\
    );
\s_axi_rdata[20]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => rd_addr(0),
      I1 => rd_addr(1),
      I2 => rd_addr(2),
      I3 => Q(12),
      I4 => rd_addr(3),
      O => s_axi_rdata(20)
    );
\s_axi_rdata[21]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => rd_addr(0),
      I1 => rd_addr(1),
      I2 => rd_addr(2),
      I3 => Q(13),
      I4 => rd_addr(3),
      O => s_axi_rdata(21)
    );
\s_axi_rdata[22]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => rd_addr(0),
      I1 => rd_addr(1),
      I2 => rd_addr(2),
      I3 => Q(14),
      I4 => rd_addr(3),
      O => s_axi_rdata(22)
    );
\s_axi_rdata[23]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => rd_addr(0),
      I1 => rd_addr(1),
      I2 => rd_addr(2),
      I3 => Q(15),
      I4 => rd_addr(3),
      O => s_axi_rdata(23)
    );
\s_axi_rdata[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4FFF44444444444"
    )
        port map (
      I0 => \s_axi_rdata[7]_INST_0_i_1_n_0\,
      I1 => \s_axi_rdata[15]\(2),
      I2 => cnt_reg(2),
      I3 => rd_addr(3),
      I4 => Q(2),
      I5 => \s_axi_rdata[7]_INST_0_i_2_n_0\,
      O => s_axi_rdata(2)
    );
\s_axi_rdata[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4FFF44444444444"
    )
        port map (
      I0 => \s_axi_rdata[7]_INST_0_i_1_n_0\,
      I1 => \s_axi_rdata[15]\(3),
      I2 => cnt_reg(3),
      I3 => rd_addr(3),
      I4 => Q(3),
      I5 => \s_axi_rdata[7]_INST_0_i_2_n_0\,
      O => s_axi_rdata(3)
    );
\s_axi_rdata[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4FFF44444444444"
    )
        port map (
      I0 => \s_axi_rdata[7]_INST_0_i_1_n_0\,
      I1 => \s_axi_rdata[15]\(4),
      I2 => cnt_reg(4),
      I3 => rd_addr(3),
      I4 => Q(4),
      I5 => \s_axi_rdata[7]_INST_0_i_2_n_0\,
      O => s_axi_rdata(4)
    );
\s_axi_rdata[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4FFF44444444444"
    )
        port map (
      I0 => \s_axi_rdata[7]_INST_0_i_1_n_0\,
      I1 => \s_axi_rdata[15]\(5),
      I2 => cnt_reg(5),
      I3 => rd_addr(3),
      I4 => Q(5),
      I5 => \s_axi_rdata[7]_INST_0_i_2_n_0\,
      O => s_axi_rdata(5)
    );
\s_axi_rdata[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4FFF44444444444"
    )
        port map (
      I0 => \s_axi_rdata[7]_INST_0_i_1_n_0\,
      I1 => \s_axi_rdata[15]\(6),
      I2 => cnt_reg(6),
      I3 => rd_addr(3),
      I4 => Q(6),
      I5 => \s_axi_rdata[7]_INST_0_i_2_n_0\,
      O => s_axi_rdata(6)
    );
\s_axi_rdata[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4FFF44444444444"
    )
        port map (
      I0 => \s_axi_rdata[7]_INST_0_i_1_n_0\,
      I1 => \s_axi_rdata[15]\(7),
      I2 => cnt_reg(7),
      I3 => rd_addr(3),
      I4 => Q(7),
      I5 => \s_axi_rdata[7]_INST_0_i_2_n_0\,
      O => s_axi_rdata(7)
    );
\s_axi_rdata[7]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBFF"
    )
        port map (
      I0 => rd_addr(0),
      I1 => rd_addr(1),
      I2 => rd_addr(3),
      I3 => rd_addr(2),
      O => \s_axi_rdata[7]_INST_0_i_1_n_0\
    );
\s_axi_rdata[7]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => rd_addr(2),
      I1 => rd_addr(1),
      I2 => rd_addr(0),
      O => \s_axi_rdata[7]_INST_0_i_2_n_0\
    );
\s_axi_rdata[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => \s_axi_rdata[15]\(8),
      I1 => rd_addr(2),
      I2 => rd_addr(3),
      I3 => rd_addr(1),
      I4 => rd_addr(0),
      O => s_axi_rdata(8)
    );
\s_axi_rdata[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => \s_axi_rdata[15]\(9),
      I1 => rd_addr(2),
      I2 => rd_addr(3),
      I3 => rd_addr(1),
      I4 => rd_addr(0),
      O => s_axi_rdata(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_i2s_adi_0_1_dma_fifo is
  port (
    not_empty_reg_0 : out STD_LOGIC;
    \I2S_RESET_REG_reg[1]\ : out STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    out_data : out STD_LOGIC_VECTOR ( 22 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    tx_fifo_reset : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    rd_addr0 : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    channel_sync_int_d1 : in STD_LOGIC;
    enable_int : in STD_LOGIC;
    drain_dma : in STD_LOGIC;
    channel_sync_int : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_axi_i2s_adi_0_1_dma_fifo : entity is "dma_fifo";
end icyradio_axi_i2s_adi_0_1_dma_fifo;

architecture STRUCTURE of icyradio_axi_i2s_adi_0_1_dma_fifo is
  signal \^i2s_reset_reg_reg[1]\ : STD_LOGIC;
  signal data_fifo_reg_0_7_0_5_n_1 : STD_LOGIC;
  signal \fifo_ctrl.free_cnt[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \fifo_ctrl.free_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \fifo_ctrl.free_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \fifo_ctrl.free_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \fifo_ctrl.free_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal free_cnt : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal in_ack : STD_LOGIC;
  signal not_empty0 : STD_LOGIC;
  signal \^not_empty_reg_0\ : STD_LOGIC;
  signal not_full0 : STD_LOGIC;
  signal rd_addr : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \rd_addr[0]_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr[1]_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr[2]_i_1_n_0\ : STD_LOGIC;
  signal wr_addr : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal wr_addr0 : STD_LOGIC;
  signal \wr_addr[0]_i_1_n_0\ : STD_LOGIC;
  signal \wr_addr[1]_i_1_n_0\ : STD_LOGIC;
  signal \wr_addr[2]_i_1_n_0\ : STD_LOGIC;
  signal NLW_data_fifo_reg_0_7_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_data_fifo_reg_0_7_12_17_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_data_fifo_reg_0_7_18_23_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_data_fifo_reg_0_7_6_11_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of data_fifo_reg_0_7_0_5 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of data_fifo_reg_0_7_0_5 : label is 192;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of data_fifo_reg_0_7_0_5 : label is "streaming_dma_tx_gen.tx_fifo/fifo/data_fifo";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of data_fifo_reg_0_7_0_5 : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of data_fifo_reg_0_7_0_5 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of data_fifo_reg_0_7_0_5 : label is 7;
  attribute ram_offset : integer;
  attribute ram_offset of data_fifo_reg_0_7_0_5 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of data_fifo_reg_0_7_0_5 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of data_fifo_reg_0_7_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of data_fifo_reg_0_7_12_17 : label is "";
  attribute RTL_RAM_BITS of data_fifo_reg_0_7_12_17 : label is 192;
  attribute RTL_RAM_NAME of data_fifo_reg_0_7_12_17 : label is "streaming_dma_tx_gen.tx_fifo/fifo/data_fifo";
  attribute RTL_RAM_TYPE of data_fifo_reg_0_7_12_17 : label is "RAM_SDP";
  attribute ram_addr_begin of data_fifo_reg_0_7_12_17 : label is 0;
  attribute ram_addr_end of data_fifo_reg_0_7_12_17 : label is 7;
  attribute ram_offset of data_fifo_reg_0_7_12_17 : label is 0;
  attribute ram_slice_begin of data_fifo_reg_0_7_12_17 : label is 12;
  attribute ram_slice_end of data_fifo_reg_0_7_12_17 : label is 17;
  attribute METHODOLOGY_DRC_VIOS of data_fifo_reg_0_7_18_23 : label is "";
  attribute RTL_RAM_BITS of data_fifo_reg_0_7_18_23 : label is 192;
  attribute RTL_RAM_NAME of data_fifo_reg_0_7_18_23 : label is "streaming_dma_tx_gen.tx_fifo/fifo/data_fifo";
  attribute RTL_RAM_TYPE of data_fifo_reg_0_7_18_23 : label is "RAM_SDP";
  attribute ram_addr_begin of data_fifo_reg_0_7_18_23 : label is 0;
  attribute ram_addr_end of data_fifo_reg_0_7_18_23 : label is 7;
  attribute ram_offset of data_fifo_reg_0_7_18_23 : label is 0;
  attribute ram_slice_begin of data_fifo_reg_0_7_18_23 : label is 18;
  attribute ram_slice_end of data_fifo_reg_0_7_18_23 : label is 23;
  attribute METHODOLOGY_DRC_VIOS of data_fifo_reg_0_7_6_11 : label is "";
  attribute RTL_RAM_BITS of data_fifo_reg_0_7_6_11 : label is 192;
  attribute RTL_RAM_NAME of data_fifo_reg_0_7_6_11 : label is "streaming_dma_tx_gen.tx_fifo/fifo/data_fifo";
  attribute RTL_RAM_TYPE of data_fifo_reg_0_7_6_11 : label is "RAM_SDP";
  attribute ram_addr_begin of data_fifo_reg_0_7_6_11 : label is 0;
  attribute ram_addr_end of data_fifo_reg_0_7_6_11 : label is 7;
  attribute ram_offset of data_fifo_reg_0_7_6_11 : label is 0;
  attribute ram_slice_begin of data_fifo_reg_0_7_6_11 : label is 6;
  attribute ram_slice_end of data_fifo_reg_0_7_6_11 : label is 11;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \fifo_ctrl.free_cnt[1]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \fifo_ctrl.free_cnt[3]_i_2\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \rd_addr[0]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \rd_addr[1]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of s_axis_tready_INST_0 : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \wr_addr[0]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \wr_addr[1]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \wr_addr[2]_i_1\ : label is "soft_lutpair40";
begin
  \I2S_RESET_REG_reg[1]\ <= \^i2s_reset_reg_reg[1]\;
  not_empty_reg_0 <= \^not_empty_reg_0\;
data_fifo_reg_0_7_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 3) => B"00",
      ADDRA(2 downto 0) => rd_addr(2 downto 0),
      ADDRB(4 downto 3) => B"00",
      ADDRB(2 downto 0) => rd_addr(2 downto 0),
      ADDRC(4 downto 3) => B"00",
      ADDRC(2 downto 0) => rd_addr(2 downto 0),
      ADDRD(4 downto 3) => B"00",
      ADDRD(2 downto 0) => wr_addr(2 downto 0),
      DIA(1 downto 0) => s_axis_tdata(1 downto 0),
      DIB(1 downto 0) => s_axis_tdata(3 downto 2),
      DIC(1 downto 0) => s_axis_tdata(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1) => out_data(0),
      DOA(0) => data_fifo_reg_0_7_0_5_n_1,
      DOB(1 downto 0) => out_data(2 downto 1),
      DOC(1 downto 0) => out_data(4 downto 3),
      DOD(1 downto 0) => NLW_data_fifo_reg_0_7_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_axi_aclk,
      WE => in_ack
    );
data_fifo_reg_0_7_12_17: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 3) => B"00",
      ADDRA(2 downto 0) => rd_addr(2 downto 0),
      ADDRB(4 downto 3) => B"00",
      ADDRB(2 downto 0) => rd_addr(2 downto 0),
      ADDRC(4 downto 3) => B"00",
      ADDRC(2 downto 0) => rd_addr(2 downto 0),
      ADDRD(4 downto 3) => B"00",
      ADDRD(2 downto 0) => wr_addr(2 downto 0),
      DIA(1 downto 0) => s_axis_tdata(13 downto 12),
      DIB(1 downto 0) => s_axis_tdata(15 downto 14),
      DIC(1 downto 0) => s_axis_tdata(17 downto 16),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => out_data(12 downto 11),
      DOB(1 downto 0) => out_data(14 downto 13),
      DOC(1 downto 0) => out_data(16 downto 15),
      DOD(1 downto 0) => NLW_data_fifo_reg_0_7_12_17_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_axi_aclk,
      WE => in_ack
    );
data_fifo_reg_0_7_18_23: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 3) => B"00",
      ADDRA(2 downto 0) => rd_addr(2 downto 0),
      ADDRB(4 downto 3) => B"00",
      ADDRB(2 downto 0) => rd_addr(2 downto 0),
      ADDRC(4 downto 3) => B"00",
      ADDRC(2 downto 0) => rd_addr(2 downto 0),
      ADDRD(4 downto 3) => B"00",
      ADDRD(2 downto 0) => wr_addr(2 downto 0),
      DIA(1 downto 0) => s_axis_tdata(19 downto 18),
      DIB(1 downto 0) => s_axis_tdata(21 downto 20),
      DIC(1 downto 0) => s_axis_tdata(23 downto 22),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => out_data(18 downto 17),
      DOB(1 downto 0) => out_data(20 downto 19),
      DOC(1 downto 0) => out_data(22 downto 21),
      DOD(1 downto 0) => NLW_data_fifo_reg_0_7_18_23_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_axi_aclk,
      WE => in_ack
    );
data_fifo_reg_0_7_6_11: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 3) => B"00",
      ADDRA(2 downto 0) => rd_addr(2 downto 0),
      ADDRB(4 downto 3) => B"00",
      ADDRB(2 downto 0) => rd_addr(2 downto 0),
      ADDRC(4 downto 3) => B"00",
      ADDRC(2 downto 0) => rd_addr(2 downto 0),
      ADDRD(4 downto 3) => B"00",
      ADDRD(2 downto 0) => wr_addr(2 downto 0),
      DIA(1 downto 0) => s_axis_tdata(7 downto 6),
      DIB(1 downto 0) => s_axis_tdata(9 downto 8),
      DIC(1 downto 0) => s_axis_tdata(11 downto 10),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => out_data(6 downto 5),
      DOB(1 downto 0) => out_data(8 downto 7),
      DOC(1 downto 0) => out_data(10 downto 9),
      DOD(1 downto 0) => NLW_data_fifo_reg_0_7_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_axi_aclk,
      WE => in_ack
    );
\fifo_ctrl.free_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"95556AAA6AAA6AAA"
    )
        port map (
      I0 => \fifo_ctrl.free_cnt_reg_n_0_[0]\,
      I1 => channel_sync_int_d1,
      I2 => enable_int,
      I3 => \^not_empty_reg_0\,
      I4 => in_ack,
      I5 => s_axis_tvalid,
      O => free_cnt(0)
    );
\fifo_ctrl.free_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6669AAA"
    )
        port map (
      I0 => \fifo_ctrl.free_cnt_reg_n_0_[1]\,
      I1 => \fifo_ctrl.free_cnt_reg_n_0_[0]\,
      I2 => in_ack,
      I3 => s_axis_tvalid,
      I4 => rd_addr0,
      O => free_cnt(1)
    );
\fifo_ctrl.free_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D5FF2A00FFBF0040"
    )
        port map (
      I0 => \fifo_ctrl.free_cnt_reg_n_0_[0]\,
      I1 => in_ack,
      I2 => s_axis_tvalid,
      I3 => rd_addr0,
      I4 => \fifo_ctrl.free_cnt_reg_n_0_[2]\,
      I5 => \fifo_ctrl.free_cnt_reg_n_0_[1]\,
      O => free_cnt(2)
    );
\fifo_ctrl.free_cnt[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA6AAAAAAAAAA9AA"
    )
        port map (
      I0 => \fifo_ctrl.free_cnt_reg_n_0_[3]\,
      I1 => \fifo_ctrl.free_cnt_reg_n_0_[2]\,
      I2 => \fifo_ctrl.free_cnt_reg_n_0_[0]\,
      I3 => wr_addr0,
      I4 => rd_addr0,
      I5 => \fifo_ctrl.free_cnt_reg_n_0_[1]\,
      O => \fifo_ctrl.free_cnt[3]_i_1__0_n_0\
    );
\fifo_ctrl.free_cnt[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => in_ack,
      I1 => s_axis_tvalid,
      O => wr_addr0
    );
\fifo_ctrl.free_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => free_cnt(0),
      Q => \fifo_ctrl.free_cnt_reg_n_0_[0]\,
      R => \^i2s_reset_reg_reg[1]\
    );
\fifo_ctrl.free_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => free_cnt(1),
      Q => \fifo_ctrl.free_cnt_reg_n_0_[1]\,
      R => \^i2s_reset_reg_reg[1]\
    );
\fifo_ctrl.free_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => free_cnt(2),
      Q => \fifo_ctrl.free_cnt_reg_n_0_[2]\,
      R => \^i2s_reset_reg_reg[1]\
    );
\fifo_ctrl.free_cnt_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \fifo_ctrl.free_cnt[3]_i_1__0_n_0\,
      Q => \fifo_ctrl.free_cnt_reg_n_0_[3]\,
      S => \^i2s_reset_reg_reg[1]\
    );
\gen[0].data_int[0][8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data_fifo_reg_0_7_0_5_n_1,
      I1 => channel_sync_int,
      O => D(0)
    );
not_empty_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => tx_fifo_reset,
      I1 => s_axi_aresetn,
      O => \^i2s_reset_reg_reg[1]\
    );
\not_empty_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFBEF7FFFFFF"
    )
        port map (
      I0 => \fifo_ctrl.free_cnt_reg_n_0_[1]\,
      I1 => rd_addr0,
      I2 => wr_addr0,
      I3 => \fifo_ctrl.free_cnt_reg_n_0_[0]\,
      I4 => \fifo_ctrl.free_cnt_reg_n_0_[2]\,
      I5 => \fifo_ctrl.free_cnt_reg_n_0_[3]\,
      O => not_empty0
    );
not_empty_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => not_empty0,
      Q => \^not_empty_reg_0\,
      R => \^i2s_reset_reg_reg[1]\
    );
not_full_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFFFFEFEFFE"
    )
        port map (
      I0 => \fifo_ctrl.free_cnt_reg_n_0_[3]\,
      I1 => \fifo_ctrl.free_cnt_reg_n_0_[1]\,
      I2 => wr_addr0,
      I3 => rd_addr0,
      I4 => \fifo_ctrl.free_cnt_reg_n_0_[0]\,
      I5 => \fifo_ctrl.free_cnt_reg_n_0_[2]\,
      O => not_full0
    );
not_full_reg: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => not_full0,
      Q => in_ack,
      S => \^i2s_reset_reg_reg[1]\
    );
\rd_addr[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^not_empty_reg_0\,
      I1 => enable_int,
      I2 => channel_sync_int_d1,
      I3 => rd_addr(0),
      O => \rd_addr[0]_i_1_n_0\
    );
\rd_addr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => rd_addr(0),
      I1 => channel_sync_int_d1,
      I2 => enable_int,
      I3 => \^not_empty_reg_0\,
      I4 => rd_addr(1),
      O => \rd_addr[1]_i_1_n_0\
    );
\rd_addr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => rd_addr(0),
      I1 => rd_addr(1),
      I2 => channel_sync_int_d1,
      I3 => enable_int,
      I4 => \^not_empty_reg_0\,
      I5 => rd_addr(2),
      O => \rd_addr[2]_i_1_n_0\
    );
\rd_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \rd_addr[0]_i_1_n_0\,
      Q => rd_addr(0),
      R => \^i2s_reset_reg_reg[1]\
    );
\rd_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \rd_addr[1]_i_1_n_0\,
      Q => rd_addr(1),
      R => \^i2s_reset_reg_reg[1]\
    );
\rd_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \rd_addr[2]_i_1_n_0\,
      Q => rd_addr(2),
      R => \^i2s_reset_reg_reg[1]\
    );
s_axis_tready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => in_ack,
      I1 => drain_dma,
      O => s_axis_tready
    );
\wr_addr[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => in_ack,
      I2 => wr_addr(0),
      O => \wr_addr[0]_i_1_n_0\
    );
\wr_addr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => wr_addr(0),
      I1 => in_ack,
      I2 => s_axis_tvalid,
      I3 => wr_addr(1),
      O => \wr_addr[1]_i_1_n_0\
    );
\wr_addr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => wr_addr(0),
      I1 => wr_addr(1),
      I2 => in_ack,
      I3 => s_axis_tvalid,
      I4 => wr_addr(2),
      O => \wr_addr[2]_i_1_n_0\
    );
\wr_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \wr_addr[0]_i_1_n_0\,
      Q => wr_addr(0),
      R => \^i2s_reset_reg_reg[1]\
    );
\wr_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \wr_addr[1]_i_1_n_0\,
      Q => wr_addr(1),
      R => \^i2s_reset_reg_reg[1]\
    );
\wr_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \wr_addr[2]_i_1_n_0\,
      Q => wr_addr(2),
      R => \^i2s_reset_reg_reg[1]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_i2s_adi_0_1_dma_fifo_0 is
  port (
    not_empty_reg_0 : out STD_LOGIC;
    not_full : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    rx_stb : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    \gen[0].data_latched_reg[0]\ : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_axi_i2s_adi_0_1_dma_fifo_0 : entity is "dma_fifo";
end icyradio_axi_i2s_adi_0_1_dma_fifo_0;

architecture STRUCTURE of icyradio_axi_i2s_adi_0_1_dma_fifo_0 is
  signal \fifo_ctrl.free_cnt[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \fifo_ctrl.free_cnt[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \fifo_ctrl.free_cnt[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \fifo_ctrl.free_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_ctrl.free_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \fifo_ctrl.free_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \fifo_ctrl.free_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \fifo_ctrl.free_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal not_empty_i_2_n_0 : STD_LOGIC;
  signal \^not_empty_reg_0\ : STD_LOGIC;
  signal \^not_full\ : STD_LOGIC;
  signal \not_full_i_1__0_n_0\ : STD_LOGIC;
  signal rd_addr : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal rd_addr0 : STD_LOGIC;
  signal \rd_addr[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \rd_addr[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \rd_addr[2]_i_1__0_n_0\ : STD_LOGIC;
  signal wr_addr : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal wr_addr0 : STD_LOGIC;
  signal \wr_addr[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \wr_addr[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \wr_addr[2]_i_1__0_n_0\ : STD_LOGIC;
  signal NLW_data_fifo_reg_0_7_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_data_fifo_reg_0_7_12_17_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_data_fifo_reg_0_7_18_23_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_data_fifo_reg_0_7_6_11_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of data_fifo_reg_0_7_0_5 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of data_fifo_reg_0_7_0_5 : label is 192;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of data_fifo_reg_0_7_0_5 : label is "streaming_dma_rx_gen.rx_fifo/fifo/data_fifo";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of data_fifo_reg_0_7_0_5 : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of data_fifo_reg_0_7_0_5 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of data_fifo_reg_0_7_0_5 : label is 7;
  attribute ram_offset : integer;
  attribute ram_offset of data_fifo_reg_0_7_0_5 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of data_fifo_reg_0_7_0_5 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of data_fifo_reg_0_7_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of data_fifo_reg_0_7_12_17 : label is "";
  attribute RTL_RAM_BITS of data_fifo_reg_0_7_12_17 : label is 192;
  attribute RTL_RAM_NAME of data_fifo_reg_0_7_12_17 : label is "streaming_dma_rx_gen.rx_fifo/fifo/data_fifo";
  attribute RTL_RAM_TYPE of data_fifo_reg_0_7_12_17 : label is "RAM_SDP";
  attribute ram_addr_begin of data_fifo_reg_0_7_12_17 : label is 0;
  attribute ram_addr_end of data_fifo_reg_0_7_12_17 : label is 7;
  attribute ram_offset of data_fifo_reg_0_7_12_17 : label is 0;
  attribute ram_slice_begin of data_fifo_reg_0_7_12_17 : label is 12;
  attribute ram_slice_end of data_fifo_reg_0_7_12_17 : label is 17;
  attribute METHODOLOGY_DRC_VIOS of data_fifo_reg_0_7_18_23 : label is "";
  attribute RTL_RAM_BITS of data_fifo_reg_0_7_18_23 : label is 192;
  attribute RTL_RAM_NAME of data_fifo_reg_0_7_18_23 : label is "streaming_dma_rx_gen.rx_fifo/fifo/data_fifo";
  attribute RTL_RAM_TYPE of data_fifo_reg_0_7_18_23 : label is "RAM_SDP";
  attribute ram_addr_begin of data_fifo_reg_0_7_18_23 : label is 0;
  attribute ram_addr_end of data_fifo_reg_0_7_18_23 : label is 7;
  attribute ram_offset of data_fifo_reg_0_7_18_23 : label is 0;
  attribute ram_slice_begin of data_fifo_reg_0_7_18_23 : label is 18;
  attribute ram_slice_end of data_fifo_reg_0_7_18_23 : label is 23;
  attribute METHODOLOGY_DRC_VIOS of data_fifo_reg_0_7_6_11 : label is "";
  attribute RTL_RAM_BITS of data_fifo_reg_0_7_6_11 : label is 192;
  attribute RTL_RAM_NAME of data_fifo_reg_0_7_6_11 : label is "streaming_dma_rx_gen.rx_fifo/fifo/data_fifo";
  attribute RTL_RAM_TYPE of data_fifo_reg_0_7_6_11 : label is "RAM_SDP";
  attribute ram_addr_begin of data_fifo_reg_0_7_6_11 : label is 0;
  attribute ram_addr_end of data_fifo_reg_0_7_6_11 : label is 7;
  attribute ram_offset of data_fifo_reg_0_7_6_11 : label is 0;
  attribute ram_slice_begin of data_fifo_reg_0_7_6_11 : label is 6;
  attribute ram_slice_end of data_fifo_reg_0_7_6_11 : label is 11;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \fifo_ctrl.free_cnt[0]_i_1__0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of not_empty_i_3 : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of not_empty_i_4 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \period_count[15]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \rd_addr[1]_i_1__0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \rd_addr[2]_i_1__0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \wr_addr[1]_i_1__0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \wr_addr[2]_i_1__0\ : label is "soft_lutpair27";
begin
  not_empty_reg_0 <= \^not_empty_reg_0\;
  not_full <= \^not_full\;
data_fifo_reg_0_7_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 3) => B"00",
      ADDRA(2 downto 0) => rd_addr(2 downto 0),
      ADDRB(4 downto 3) => B"00",
      ADDRB(2 downto 0) => rd_addr(2 downto 0),
      ADDRC(4 downto 3) => B"00",
      ADDRC(2 downto 0) => rd_addr(2 downto 0),
      ADDRD(4 downto 3) => B"00",
      ADDRD(2 downto 0) => wr_addr(2 downto 0),
      DIA(1 downto 0) => \gen[0].data_latched_reg[0]\(1 downto 0),
      DIB(1 downto 0) => \gen[0].data_latched_reg[0]\(3 downto 2),
      DIC(1 downto 0) => \gen[0].data_latched_reg[0]\(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => m_axis_tdata(1 downto 0),
      DOB(1 downto 0) => m_axis_tdata(3 downto 2),
      DOC(1 downto 0) => m_axis_tdata(5 downto 4),
      DOD(1 downto 0) => NLW_data_fifo_reg_0_7_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_axi_aclk,
      WE => \^not_full\
    );
data_fifo_reg_0_7_12_17: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 3) => B"00",
      ADDRA(2 downto 0) => rd_addr(2 downto 0),
      ADDRB(4 downto 3) => B"00",
      ADDRB(2 downto 0) => rd_addr(2 downto 0),
      ADDRC(4 downto 3) => B"00",
      ADDRC(2 downto 0) => rd_addr(2 downto 0),
      ADDRD(4 downto 3) => B"00",
      ADDRD(2 downto 0) => wr_addr(2 downto 0),
      DIA(1 downto 0) => \gen[0].data_latched_reg[0]\(13 downto 12),
      DIB(1 downto 0) => \gen[0].data_latched_reg[0]\(15 downto 14),
      DIC(1 downto 0) => \gen[0].data_latched_reg[0]\(17 downto 16),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => m_axis_tdata(13 downto 12),
      DOB(1 downto 0) => m_axis_tdata(15 downto 14),
      DOC(1 downto 0) => m_axis_tdata(17 downto 16),
      DOD(1 downto 0) => NLW_data_fifo_reg_0_7_12_17_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_axi_aclk,
      WE => \^not_full\
    );
data_fifo_reg_0_7_18_23: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 3) => B"00",
      ADDRA(2 downto 0) => rd_addr(2 downto 0),
      ADDRB(4 downto 3) => B"00",
      ADDRB(2 downto 0) => rd_addr(2 downto 0),
      ADDRC(4 downto 3) => B"00",
      ADDRC(2 downto 0) => rd_addr(2 downto 0),
      ADDRD(4 downto 3) => B"00",
      ADDRD(2 downto 0) => wr_addr(2 downto 0),
      DIA(1 downto 0) => \gen[0].data_latched_reg[0]\(19 downto 18),
      DIB(1 downto 0) => \gen[0].data_latched_reg[0]\(21 downto 20),
      DIC(1 downto 0) => \gen[0].data_latched_reg[0]\(23 downto 22),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => m_axis_tdata(19 downto 18),
      DOB(1 downto 0) => m_axis_tdata(21 downto 20),
      DOC(1 downto 0) => m_axis_tdata(23 downto 22),
      DOD(1 downto 0) => NLW_data_fifo_reg_0_7_18_23_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_axi_aclk,
      WE => \^not_full\
    );
data_fifo_reg_0_7_6_11: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 3) => B"00",
      ADDRA(2 downto 0) => rd_addr(2 downto 0),
      ADDRB(4 downto 3) => B"00",
      ADDRB(2 downto 0) => rd_addr(2 downto 0),
      ADDRC(4 downto 3) => B"00",
      ADDRC(2 downto 0) => rd_addr(2 downto 0),
      ADDRD(4 downto 3) => B"00",
      ADDRD(2 downto 0) => wr_addr(2 downto 0),
      DIA(1 downto 0) => \gen[0].data_latched_reg[0]\(7 downto 6),
      DIB(1 downto 0) => \gen[0].data_latched_reg[0]\(9 downto 8),
      DIC(1 downto 0) => \gen[0].data_latched_reg[0]\(11 downto 10),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => m_axis_tdata(7 downto 6),
      DOB(1 downto 0) => m_axis_tdata(9 downto 8),
      DOC(1 downto 0) => m_axis_tdata(11 downto 10),
      DOD(1 downto 0) => NLW_data_fifo_reg_0_7_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_axi_aclk,
      WE => \^not_full\
    );
\fifo_ctrl.free_cnt[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"956A6A6A"
    )
        port map (
      I0 => \fifo_ctrl.free_cnt_reg_n_0_[0]\,
      I1 => rx_stb,
      I2 => \^not_full\,
      I3 => m_axis_tready,
      I4 => \^not_empty_reg_0\,
      O => \fifo_ctrl.free_cnt[0]_i_1__0_n_0\
    );
\fifo_ctrl.free_cnt[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D5BFBFBF2A404040"
    )
        port map (
      I0 => \fifo_ctrl.free_cnt_reg_n_0_[0]\,
      I1 => rx_stb,
      I2 => \^not_full\,
      I3 => m_axis_tready,
      I4 => \^not_empty_reg_0\,
      I5 => \fifo_ctrl.free_cnt_reg_n_0_[1]\,
      O => \fifo_ctrl.free_cnt[1]_i_1__0_n_0\
    );
\fifo_ctrl.free_cnt[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFF4000FFD5002A"
    )
        port map (
      I0 => wr_addr0,
      I1 => \^not_empty_reg_0\,
      I2 => m_axis_tready,
      I3 => \fifo_ctrl.free_cnt_reg_n_0_[0]\,
      I4 => \fifo_ctrl.free_cnt_reg_n_0_[2]\,
      I5 => \fifo_ctrl.free_cnt_reg_n_0_[1]\,
      O => \fifo_ctrl.free_cnt[2]_i_1__0_n_0\
    );
\fifo_ctrl.free_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9AAAAAAAAAAAAAA6"
    )
        port map (
      I0 => \fifo_ctrl.free_cnt_reg_n_0_[3]\,
      I1 => wr_addr0,
      I2 => rd_addr0,
      I3 => \fifo_ctrl.free_cnt_reg_n_0_[0]\,
      I4 => \fifo_ctrl.free_cnt_reg_n_0_[2]\,
      I5 => \fifo_ctrl.free_cnt_reg_n_0_[1]\,
      O => \fifo_ctrl.free_cnt[3]_i_1_n_0\
    );
\fifo_ctrl.free_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \fifo_ctrl.free_cnt[0]_i_1__0_n_0\,
      Q => \fifo_ctrl.free_cnt_reg_n_0_[0]\,
      R => SR(0)
    );
\fifo_ctrl.free_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \fifo_ctrl.free_cnt[1]_i_1__0_n_0\,
      Q => \fifo_ctrl.free_cnt_reg_n_0_[1]\,
      R => SR(0)
    );
\fifo_ctrl.free_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \fifo_ctrl.free_cnt[2]_i_1__0_n_0\,
      Q => \fifo_ctrl.free_cnt_reg_n_0_[2]\,
      R => SR(0)
    );
\fifo_ctrl.free_cnt_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \fifo_ctrl.free_cnt[3]_i_1_n_0\,
      Q => \fifo_ctrl.free_cnt_reg_n_0_[3]\,
      S => SR(0)
    );
not_empty_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEFFFFEFFFF7FFF"
    )
        port map (
      I0 => \fifo_ctrl.free_cnt_reg_n_0_[1]\,
      I1 => \fifo_ctrl.free_cnt_reg_n_0_[2]\,
      I2 => \fifo_ctrl.free_cnt_reg_n_0_[0]\,
      I3 => rd_addr0,
      I4 => wr_addr0,
      I5 => \fifo_ctrl.free_cnt_reg_n_0_[3]\,
      O => not_empty_i_2_n_0
    );
not_empty_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^not_empty_reg_0\,
      I1 => m_axis_tready,
      O => rd_addr0
    );
not_empty_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^not_full\,
      I1 => rx_stb,
      O => wr_addr0
    );
not_empty_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => not_empty_i_2_n_0,
      Q => \^not_empty_reg_0\,
      R => SR(0)
    );
\not_full_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7FFFFFFEFFEFFE"
    )
        port map (
      I0 => \fifo_ctrl.free_cnt_reg_n_0_[3]\,
      I1 => \fifo_ctrl.free_cnt_reg_n_0_[1]\,
      I2 => rd_addr0,
      I3 => wr_addr0,
      I4 => \fifo_ctrl.free_cnt_reg_n_0_[0]\,
      I5 => \fifo_ctrl.free_cnt_reg_n_0_[2]\,
      O => \not_full_i_1__0_n_0\
    );
not_full_reg: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \not_full_i_1__0_n_0\,
      Q => \^not_full\,
      S => SR(0)
    );
\period_count[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => m_axis_tready,
      I1 => \^not_empty_reg_0\,
      I2 => s_axi_aresetn,
      O => E(0)
    );
\rd_addr[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => m_axis_tready,
      I1 => \^not_empty_reg_0\,
      I2 => rd_addr(0),
      O => \rd_addr[0]_i_1__0_n_0\
    );
\rd_addr[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => rd_addr(0),
      I1 => \^not_empty_reg_0\,
      I2 => m_axis_tready,
      I3 => rd_addr(1),
      O => \rd_addr[1]_i_1__0_n_0\
    );
\rd_addr[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => rd_addr(0),
      I1 => rd_addr(1),
      I2 => \^not_empty_reg_0\,
      I3 => m_axis_tready,
      I4 => rd_addr(2),
      O => \rd_addr[2]_i_1__0_n_0\
    );
\rd_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \rd_addr[0]_i_1__0_n_0\,
      Q => rd_addr(0),
      R => SR(0)
    );
\rd_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \rd_addr[1]_i_1__0_n_0\,
      Q => rd_addr(1),
      R => SR(0)
    );
\rd_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \rd_addr[2]_i_1__0_n_0\,
      Q => rd_addr(2),
      R => SR(0)
    );
\wr_addr[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => rx_stb,
      I1 => \^not_full\,
      I2 => wr_addr(0),
      O => \wr_addr[0]_i_1__0_n_0\
    );
\wr_addr[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => wr_addr(0),
      I1 => \^not_full\,
      I2 => rx_stb,
      I3 => wr_addr(1),
      O => \wr_addr[1]_i_1__0_n_0\
    );
\wr_addr[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => wr_addr(0),
      I1 => wr_addr(1),
      I2 => \^not_full\,
      I3 => rx_stb,
      I4 => wr_addr(2),
      O => \wr_addr[2]_i_1__0_n_0\
    );
\wr_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \wr_addr[0]_i_1__0_n_0\,
      Q => wr_addr(0),
      R => SR(0)
    );
\wr_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \wr_addr[1]_i_1__0_n_0\,
      Q => wr_addr(1),
      R => SR(0)
    );
\wr_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \wr_addr[2]_i_1__0_n_0\,
      Q => wr_addr(2),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_i2s_adi_0_1_fifo_synchronizer is
  port (
    \out_data_reg[4]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    data_clk_i : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    cdc_sync_stage3_tick : in STD_LOGIC;
    cdc_sync_stage2_tick : in STD_LOGIC;
    \wr_addr_reg[1]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    tx_tick : in STD_LOGIC;
    in_data : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_axi_i2s_adi_0_1_fifo_synchronizer : entity is "fifo_synchronizer";
end icyradio_axi_i2s_adi_0_1_fifo_synchronizer;

architecture STRUCTURE of icyradio_axi_i2s_adi_0_1_fifo_synchronizer is
  signal cdc_sync_stage0_tick : STD_LOGIC;
  signal \cdc_sync_stage0_tick_i_1__1_n_0\ : STD_LOGIC;
  signal cdc_sync_stage1_tick : STD_LOGIC;
  signal cdc_sync_stage2_tick_0 : STD_LOGIC;
  signal cdc_sync_stage3_tick_1 : STD_LOGIC;
  signal out_data0 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \out_data[4]_i_1_n_0\ : STD_LOGIC;
  signal rd_addr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \rd_addr[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \rd_addr[1]_i_1__1_n_0\ : STD_LOGIC;
  signal wr_addr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \wr_addr[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \wr_addr[1]_i_1__1_n_0\ : STD_LOGIC;
  signal NLW_fifo_reg_0_3_0_4_DOC_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_fifo_reg_0_3_0_4_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of cdc_sync_stage1_tick_reg : label is std.standard.true;
  attribute ASYNC_REG of cdc_sync_stage2_tick_reg : label is std.standard.true;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of fifo_reg_0_3_0_4 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of fifo_reg_0_3_0_4 : label is 20;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of fifo_reg_0_3_0_4 : label is "ctrl/tx_sync/fifo";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of fifo_reg_0_3_0_4 : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of fifo_reg_0_3_0_4 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of fifo_reg_0_3_0_4 : label is 3;
  attribute ram_offset : integer;
  attribute ram_offset of fifo_reg_0_3_0_4 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of fifo_reg_0_3_0_4 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of fifo_reg_0_3_0_4 : label is 4;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \rd_addr[0]_i_1__1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \rd_addr[1]_i_1__1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \wr_addr[0]_i_1__1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \wr_addr[1]_i_1__1\ : label is "soft_lutpair17";
begin
\cdc_sync_stage0_tick_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => cdc_sync_stage3_tick,
      I1 => cdc_sync_stage2_tick,
      I2 => cdc_sync_stage0_tick,
      O => \cdc_sync_stage0_tick_i_1__1_n_0\
    );
cdc_sync_stage0_tick_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \cdc_sync_stage0_tick_i_1__1_n_0\,
      Q => cdc_sync_stage0_tick,
      R => '0'
    );
cdc_sync_stage1_tick_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => cdc_sync_stage0_tick,
      Q => cdc_sync_stage1_tick,
      R => '0'
    );
cdc_sync_stage2_tick_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => cdc_sync_stage1_tick,
      Q => cdc_sync_stage2_tick_0,
      R => '0'
    );
cdc_sync_stage3_tick_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => cdc_sync_stage2_tick_0,
      Q => cdc_sync_stage3_tick_1,
      R => '0'
    );
fifo_reg_0_3_0_4: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 2) => B"000",
      ADDRA(1 downto 0) => rd_addr(1 downto 0),
      ADDRB(4 downto 2) => B"000",
      ADDRB(1 downto 0) => rd_addr(1 downto 0),
      ADDRC(4 downto 2) => B"000",
      ADDRC(1 downto 0) => rd_addr(1 downto 0),
      ADDRD(4 downto 2) => B"000",
      ADDRD(1 downto 0) => wr_addr(1 downto 0),
      DIA(1 downto 0) => in_data(1 downto 0),
      DIB(1 downto 0) => in_data(3 downto 2),
      DIC(1) => '0',
      DIC(0) => in_data(4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => out_data0(1 downto 0),
      DOB(1 downto 0) => out_data0(3 downto 2),
      DOC(1) => NLW_fifo_reg_0_3_0_4_DOC_UNCONNECTED(1),
      DOC(0) => out_data0(4),
      DOD(1 downto 0) => NLW_fifo_reg_0_3_0_4_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_axi_aclk,
      WE => tx_tick
    );
\out_data[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => cdc_sync_stage3_tick_1,
      I1 => cdc_sync_stage2_tick_0,
      O => \out_data[4]_i_1_n_0\
    );
\out_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \out_data[4]_i_1_n_0\,
      D => out_data0(0),
      Q => \out_data_reg[4]_0\(0),
      R => '0'
    );
\out_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \out_data[4]_i_1_n_0\,
      D => out_data0(1),
      Q => \out_data_reg[4]_0\(1),
      R => '0'
    );
\out_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \out_data[4]_i_1_n_0\,
      D => out_data0(2),
      Q => \out_data_reg[4]_0\(2),
      R => '0'
    );
\out_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \out_data[4]_i_1_n_0\,
      D => out_data0(3),
      Q => \out_data_reg[4]_0\(3),
      R => '0'
    );
\out_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => \out_data[4]_i_1_n_0\,
      D => out_data0(4),
      Q => \out_data_reg[4]_0\(4),
      R => '0'
    );
\rd_addr[0]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => cdc_sync_stage2_tick_0,
      I1 => cdc_sync_stage3_tick_1,
      I2 => rd_addr(0),
      O => \rd_addr[0]_i_1__1_n_0\
    );
\rd_addr[1]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D728"
    )
        port map (
      I0 => rd_addr(0),
      I1 => cdc_sync_stage3_tick_1,
      I2 => cdc_sync_stage2_tick_0,
      I3 => rd_addr(1),
      O => \rd_addr[1]_i_1__1_n_0\
    );
\rd_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => \rd_addr[0]_i_1__1_n_0\,
      Q => rd_addr(0),
      R => Q(0)
    );
\rd_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => \rd_addr[1]_i_1__1_n_0\,
      Q => rd_addr(1),
      R => Q(0)
    );
\wr_addr[0]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => cdc_sync_stage3_tick,
      I1 => cdc_sync_stage2_tick,
      I2 => wr_addr(0),
      O => \wr_addr[0]_i_1__1_n_0\
    );
\wr_addr[1]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D728"
    )
        port map (
      I0 => wr_addr(0),
      I1 => cdc_sync_stage2_tick,
      I2 => cdc_sync_stage3_tick,
      I3 => wr_addr(1),
      O => \wr_addr[1]_i_1__1_n_0\
    );
\wr_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \wr_addr[0]_i_1__1_n_0\,
      Q => wr_addr(0),
      R => \wr_addr_reg[1]_0\
    );
\wr_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \wr_addr[1]_i_1__1_n_0\,
      Q => wr_addr(1),
      R => \wr_addr_reg[1]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \icyradio_axi_i2s_adi_0_1_fifo_synchronizer__xdcDup__1\ is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    data_clk_i : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    bclk_d1 : in STD_LOGIC;
    \wr_addr_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \rd_addr_reg[1]_0\ : in STD_LOGIC;
    \out_data_reg[1]_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \icyradio_axi_i2s_adi_0_1_fifo_synchronizer__xdcDup__1\ : entity is "fifo_synchronizer";
end \icyradio_axi_i2s_adi_0_1_fifo_synchronizer__xdcDup__1\;

architecture STRUCTURE of \icyradio_axi_i2s_adi_0_1_fifo_synchronizer__xdcDup__1\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal cdc_sync_stage0_tick_i_1_n_0 : STD_LOGIC;
  signal cdc_sync_stage0_tick_reg_n_0 : STD_LOGIC;
  signal cdc_sync_stage1_tick_reg_n_0 : STD_LOGIC;
  signal cdc_sync_stage2_tick : STD_LOGIC;
  signal cdc_sync_stage3_tick : STD_LOGIC;
  signal fifo_reg_0_3_0_4_n_2 : STD_LOGIC;
  signal \out_data0__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \out_data[4]_i_1__0_n_0\ : STD_LOGIC;
  signal rd_addr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \rd_addr[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \rd_addr[1]_i_1__2_n_0\ : STD_LOGIC;
  signal wr_addr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \wr_addr[0]_i_1_n_0\ : STD_LOGIC;
  signal \wr_addr[1]_i_1_n_0\ : STD_LOGIC;
  signal NLW_fifo_reg_0_3_0_4_DOC_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_fifo_reg_0_3_0_4_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of cdc_sync_stage1_tick_reg : label is std.standard.true;
  attribute ASYNC_REG of cdc_sync_stage2_tick_reg : label is std.standard.true;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of fifo_reg_0_3_0_4 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of fifo_reg_0_3_0_4 : label is 20;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of fifo_reg_0_3_0_4 : label is "ctrl/rx_gen.rx_sync/fifo";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of fifo_reg_0_3_0_4 : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of fifo_reg_0_3_0_4 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of fifo_reg_0_3_0_4 : label is 3;
  attribute ram_offset : integer;
  attribute ram_offset of fifo_reg_0_3_0_4 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of fifo_reg_0_3_0_4 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of fifo_reg_0_3_0_4 : label is 4;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \rd_addr[0]_i_1__2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \rd_addr[1]_i_1__2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \wr_addr[0]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \wr_addr[1]_i_1\ : label is "soft_lutpair16";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
cdc_sync_stage0_tick_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cdc_sync_stage0_tick_reg_n_0,
      O => cdc_sync_stage0_tick_i_1_n_0
    );
cdc_sync_stage0_tick_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => cdc_sync_stage0_tick_i_1_n_0,
      Q => cdc_sync_stage0_tick_reg_n_0,
      R => '0'
    );
cdc_sync_stage1_tick_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => cdc_sync_stage0_tick_reg_n_0,
      Q => cdc_sync_stage1_tick_reg_n_0,
      R => '0'
    );
cdc_sync_stage2_tick_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => cdc_sync_stage1_tick_reg_n_0,
      Q => cdc_sync_stage2_tick,
      R => '0'
    );
cdc_sync_stage3_tick_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => cdc_sync_stage2_tick,
      Q => cdc_sync_stage3_tick,
      R => '0'
    );
fifo_reg_0_3_0_4: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 2) => B"000",
      ADDRA(1 downto 0) => rd_addr(1 downto 0),
      ADDRB(4 downto 2) => B"000",
      ADDRB(1 downto 0) => rd_addr(1 downto 0),
      ADDRC(4 downto 2) => B"000",
      ADDRC(1 downto 0) => rd_addr(1 downto 0),
      ADDRD(4 downto 2) => B"000",
      ADDRD(1 downto 0) => wr_addr(1 downto 0),
      DIA(1 downto 0) => \out_data_reg[1]_0\(1 downto 0),
      DIB(1 downto 0) => \out_data_reg[1]_0\(3 downto 2),
      DIC(1) => '0',
      DIC(0) => \out_data_reg[1]_0\(4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => \out_data0__0\(1 downto 0),
      DOB(1) => fifo_reg_0_3_0_4_n_2,
      DOB(0) => \out_data0__0\(2),
      DOC(1) => NLW_fifo_reg_0_3_0_4_DOC_UNCONNECTED(1),
      DOC(0) => \out_data0__0\(4),
      DOD(1 downto 0) => NLW_fifo_reg_0_3_0_4_DOD_UNCONNECTED(1 downto 0),
      WCLK => data_clk_i,
      WE => '1'
    );
\gen[0].data_int[0][31]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(2),
      I1 => bclk_d1,
      O => E(0)
    );
\out_data[4]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => cdc_sync_stage3_tick,
      I1 => cdc_sync_stage2_tick,
      O => \out_data[4]_i_1__0_n_0\
    );
\out_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \out_data[4]_i_1__0_n_0\,
      D => \out_data0__0\(0),
      Q => \^q\(0),
      R => '0'
    );
\out_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \out_data[4]_i_1__0_n_0\,
      D => \out_data0__0\(1),
      Q => \^q\(1),
      R => '0'
    );
\out_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \out_data[4]_i_1__0_n_0\,
      D => \out_data0__0\(2),
      Q => \^q\(2),
      R => '0'
    );
\out_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \out_data[4]_i_1__0_n_0\,
      D => \out_data0__0\(4),
      Q => \^q\(3),
      R => '0'
    );
\rd_addr[0]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => cdc_sync_stage2_tick,
      I1 => cdc_sync_stage3_tick,
      I2 => rd_addr(0),
      O => \rd_addr[0]_i_1__2_n_0\
    );
\rd_addr[1]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D728"
    )
        port map (
      I0 => rd_addr(0),
      I1 => cdc_sync_stage3_tick,
      I2 => cdc_sync_stage2_tick,
      I3 => rd_addr(1),
      O => \rd_addr[1]_i_1__2_n_0\
    );
\rd_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \rd_addr[0]_i_1__2_n_0\,
      Q => rd_addr(0),
      R => \rd_addr_reg[1]_0\
    );
\rd_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \rd_addr[1]_i_1__2_n_0\,
      Q => rd_addr(1),
      R => \rd_addr_reg[1]_0\
    );
\wr_addr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wr_addr(0),
      O => \wr_addr[0]_i_1_n_0\
    );
\wr_addr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => wr_addr(0),
      I1 => wr_addr(1),
      O => \wr_addr[1]_i_1_n_0\
    );
\wr_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => \wr_addr[0]_i_1_n_0\,
      Q => wr_addr(0),
      R => \wr_addr_reg[1]_0\(0)
    );
\wr_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => \wr_addr[1]_i_1_n_0\,
      Q => wr_addr(1),
      R => \wr_addr_reg[1]_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_i2s_adi_0_1_i2s_clkgen is
  port (
    tx_bclk : out STD_LOGIC;
    tx_lrclk : out STD_LOGIC;
    tx_tick : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 22 downto 0 );
    \lrclk_count_reg[5]_0\ : out STD_LOGIC;
    enable_int_reg : out STD_LOGIC;
    in_data : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    rx_enable : in STD_LOGIC;
    \bclk_count_reg[0]_0\ : in STD_LOGIC;
    cdc_sync_stage3_tick : in STD_LOGIC;
    cdc_sync_stage2_tick : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    out_data : in STD_LOGIC_VECTOR ( 22 downto 0 );
    \gen[0].data_int_reg[0][31]\ : in STD_LOGIC_VECTOR ( 22 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    enable_int_reg_0 : in STD_LOGIC;
    tx_stb : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_axi_i2s_adi_0_1_i2s_clkgen : entity is "i2s_clkgen";
end icyradio_axi_i2s_adi_0_1_i2s_clkgen;

architecture STRUCTURE of icyradio_axi_i2s_adi_0_1_i2s_clkgen is
  signal bclk_count : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \bclk_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \bclk_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \bclk_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \bclk_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \bclk_count[3]_i_2_n_0\ : STD_LOGIC;
  signal \bclk_count[4]_i_1_n_0\ : STD_LOGIC;
  signal \bclk_count[4]_i_2_n_0\ : STD_LOGIC;
  signal \bclk_count[5]_i_1_n_0\ : STD_LOGIC;
  signal \bclk_count[5]_i_2_n_0\ : STD_LOGIC;
  signal \bclk_count[6]_i_1_n_0\ : STD_LOGIC;
  signal \bclk_count[7]_i_1_n_0\ : STD_LOGIC;
  signal \bclk_count[7]_i_2_n_0\ : STD_LOGIC;
  signal \bclk_count[7]_i_3_n_0\ : STD_LOGIC;
  signal bclk_int_i_1_n_0 : STD_LOGIC;
  signal fifo_reg_0_3_0_4_i_5_n_0 : STD_LOGIC;
  signal lrclk_count : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \lrclk_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \lrclk_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \lrclk_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \lrclk_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \lrclk_count[3]_i_2_n_0\ : STD_LOGIC;
  signal \lrclk_count[4]_i_1_n_0\ : STD_LOGIC;
  signal \lrclk_count[4]_i_2_n_0\ : STD_LOGIC;
  signal \lrclk_count[5]_i_1_n_0\ : STD_LOGIC;
  signal \lrclk_count[5]_i_2_n_0\ : STD_LOGIC;
  signal \lrclk_count[6]_i_1_n_0\ : STD_LOGIC;
  signal \lrclk_count[7]_i_10_n_0\ : STD_LOGIC;
  signal \lrclk_count[7]_i_1_n_0\ : STD_LOGIC;
  signal \lrclk_count[7]_i_2_n_0\ : STD_LOGIC;
  signal \lrclk_count[7]_i_4_n_0\ : STD_LOGIC;
  signal \lrclk_count[7]_i_5_n_0\ : STD_LOGIC;
  signal \lrclk_count[7]_i_6_n_0\ : STD_LOGIC;
  signal \lrclk_count[7]_i_7_n_0\ : STD_LOGIC;
  signal \lrclk_count[7]_i_8_n_0\ : STD_LOGIC;
  signal \lrclk_count[7]_i_9_n_0\ : STD_LOGIC;
  signal \^lrclk_count_reg[5]_0\ : STD_LOGIC;
  signal lrclk_int_i_1_n_0 : STD_LOGIC;
  signal reset_int : STD_LOGIC;
  signal \^tx_bclk\ : STD_LOGIC;
  signal \^tx_lrclk\ : STD_LOGIC;
  signal \^tx_tick\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bclk_count[4]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \bclk_count[5]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of fifo_reg_0_3_0_4_i_5 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \gen[0].data_int[0][10]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \gen[0].data_int[0][11]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \gen[0].data_int[0][12]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \gen[0].data_int[0][13]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \gen[0].data_int[0][14]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \gen[0].data_int[0][15]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \gen[0].data_int[0][16]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \gen[0].data_int[0][17]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \gen[0].data_int[0][18]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \gen[0].data_int[0][19]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \gen[0].data_int[0][20]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \gen[0].data_int[0][21]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \gen[0].data_int[0][22]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \gen[0].data_int[0][23]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \gen[0].data_int[0][24]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \gen[0].data_int[0][25]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \gen[0].data_int[0][26]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \gen[0].data_int[0][27]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \gen[0].data_int[0][28]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \gen[0].data_int[0][29]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \gen[0].data_int[0][30]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \gen[0].data_int[0][31]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \lrclk_count[3]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \lrclk_count[4]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \lrclk_count[5]_i_2\ : label is "soft_lutpair0";
begin
  \lrclk_count_reg[5]_0\ <= \^lrclk_count_reg[5]_0\;
  tx_bclk <= \^tx_bclk\;
  tx_lrclk <= \^tx_lrclk\;
  tx_tick <= \^tx_tick\;
\bclk_count[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02AA02AAFEAA02AA"
    )
        port map (
      I0 => Q(0),
      I1 => \bclk_count_reg[0]_0\,
      I2 => rx_enable,
      I3 => s_axi_aresetn,
      I4 => \lrclk_count[7]_i_4_n_0\,
      I5 => bclk_count(0),
      O => \bclk_count[0]_i_1_n_0\
    );
\bclk_count[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B8B888"
    )
        port map (
      I0 => Q(1),
      I1 => reset_int,
      I2 => \lrclk_count[7]_i_4_n_0\,
      I3 => bclk_count(1),
      I4 => bclk_count(0),
      O => \bclk_count[1]_i_1_n_0\
    );
\bclk_count[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8B8B8B8888888"
    )
        port map (
      I0 => Q(2),
      I1 => reset_int,
      I2 => \lrclk_count[7]_i_4_n_0\,
      I3 => bclk_count(0),
      I4 => bclk_count(1),
      I5 => bclk_count(2),
      O => \bclk_count[2]_i_1_n_0\
    );
\bclk_count[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B88888B8"
    )
        port map (
      I0 => Q(3),
      I1 => reset_int,
      I2 => \lrclk_count[7]_i_4_n_0\,
      I3 => \bclk_count[3]_i_2_n_0\,
      I4 => bclk_count(3),
      O => \bclk_count[3]_i_1_n_0\
    );
\bclk_count[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => bclk_count(1),
      I1 => bclk_count(0),
      I2 => bclk_count(2),
      O => \bclk_count[3]_i_2_n_0\
    );
\bclk_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B88888B8"
    )
        port map (
      I0 => Q(4),
      I1 => reset_int,
      I2 => \lrclk_count[7]_i_4_n_0\,
      I3 => \bclk_count[4]_i_2_n_0\,
      I4 => bclk_count(4),
      O => \bclk_count[4]_i_1_n_0\
    );
\bclk_count[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => bclk_count(2),
      I1 => bclk_count(0),
      I2 => bclk_count(1),
      I3 => bclk_count(3),
      O => \bclk_count[4]_i_2_n_0\
    );
\bclk_count[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B88888B8"
    )
        port map (
      I0 => Q(5),
      I1 => reset_int,
      I2 => \lrclk_count[7]_i_4_n_0\,
      I3 => \bclk_count[5]_i_2_n_0\,
      I4 => bclk_count(5),
      O => \bclk_count[5]_i_1_n_0\
    );
\bclk_count[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => bclk_count(3),
      I1 => bclk_count(1),
      I2 => bclk_count(0),
      I3 => bclk_count(2),
      I4 => bclk_count(4),
      O => \bclk_count[5]_i_2_n_0\
    );
\bclk_count[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA3C00"
    )
        port map (
      I0 => Q(6),
      I1 => bclk_count(6),
      I2 => \bclk_count[7]_i_3_n_0\,
      I3 => \lrclk_count[7]_i_4_n_0\,
      I4 => reset_int,
      O => \bclk_count[6]_i_1_n_0\
    );
\bclk_count[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"57FFFF57"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => rx_enable,
      I2 => \bclk_count_reg[0]_0\,
      I3 => cdc_sync_stage3_tick,
      I4 => cdc_sync_stage2_tick,
      O => \bclk_count[7]_i_1_n_0\
    );
\bclk_count[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA3CCC0000"
    )
        port map (
      I0 => Q(7),
      I1 => bclk_count(7),
      I2 => \bclk_count[7]_i_3_n_0\,
      I3 => bclk_count(6),
      I4 => \lrclk_count[7]_i_4_n_0\,
      I5 => reset_int,
      O => \bclk_count[7]_i_2_n_0\
    );
\bclk_count[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => bclk_count(5),
      I1 => bclk_count(4),
      I2 => bclk_count(2),
      I3 => bclk_count(0),
      I4 => bclk_count(1),
      I5 => bclk_count(3),
      O => \bclk_count[7]_i_3_n_0\
    );
\bclk_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bclk_count[7]_i_1_n_0\,
      D => \bclk_count[0]_i_1_n_0\,
      Q => bclk_count(0),
      R => '0'
    );
\bclk_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bclk_count[7]_i_1_n_0\,
      D => \bclk_count[1]_i_1_n_0\,
      Q => bclk_count(1),
      R => '0'
    );
\bclk_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bclk_count[7]_i_1_n_0\,
      D => \bclk_count[2]_i_1_n_0\,
      Q => bclk_count(2),
      R => '0'
    );
\bclk_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bclk_count[7]_i_1_n_0\,
      D => \bclk_count[3]_i_1_n_0\,
      Q => bclk_count(3),
      R => '0'
    );
\bclk_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bclk_count[7]_i_1_n_0\,
      D => \bclk_count[4]_i_1_n_0\,
      Q => bclk_count(4),
      R => '0'
    );
\bclk_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bclk_count[7]_i_1_n_0\,
      D => \bclk_count[5]_i_1_n_0\,
      Q => bclk_count(5),
      R => '0'
    );
\bclk_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bclk_count[7]_i_1_n_0\,
      D => \bclk_count[6]_i_1_n_0\,
      Q => bclk_count(6),
      R => '0'
    );
\bclk_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bclk_count[7]_i_1_n_0\,
      D => \bclk_count[7]_i_2_n_0\,
      Q => bclk_count(7),
      R => '0'
    );
bclk_int_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFAA96"
    )
        port map (
      I0 => \^tx_bclk\,
      I1 => cdc_sync_stage3_tick,
      I2 => cdc_sync_stage2_tick,
      I3 => \lrclk_count[7]_i_4_n_0\,
      I4 => reset_int,
      O => bclk_int_i_1_n_0
    );
bclk_int_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => bclk_int_i_1_n_0,
      Q => \^tx_bclk\,
      R => '0'
    );
channel_sync_int_d1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => E(0),
      I1 => fifo_reg_0_3_0_4_i_5_n_0,
      I2 => lrclk_count(5),
      I3 => lrclk_count(2),
      I4 => lrclk_count(4),
      I5 => lrclk_count(3),
      O => \^lrclk_count_reg[5]_0\
    );
enable_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAA000000000000"
    )
        port map (
      I0 => enable_int_reg_0,
      I1 => \^lrclk_count_reg[5]_0\,
      I2 => \^tx_lrclk\,
      I3 => tx_stb,
      I4 => \bclk_count_reg[0]_0\,
      I5 => s_axi_aresetn,
      O => enable_int_reg
    );
fifo_reg_0_3_0_4_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => cdc_sync_stage2_tick,
      I1 => cdc_sync_stage3_tick,
      O => \^tx_tick\
    );
fifo_reg_0_3_0_4_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => lrclk_count(3),
      I1 => lrclk_count(4),
      I2 => lrclk_count(2),
      I3 => lrclk_count(5),
      I4 => fifo_reg_0_3_0_4_i_5_n_0,
      I5 => \^tx_lrclk\,
      O => in_data(1)
    );
fifo_reg_0_3_0_4_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => lrclk_count(3),
      I1 => lrclk_count(4),
      I2 => lrclk_count(2),
      I3 => lrclk_count(5),
      I4 => fifo_reg_0_3_0_4_i_5_n_0,
      O => in_data(0)
    );
fifo_reg_0_3_0_4_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => lrclk_count(0),
      I1 => lrclk_count(1),
      I2 => lrclk_count(6),
      I3 => lrclk_count(7),
      O => fifo_reg_0_3_0_4_i_5_n_0
    );
\gen[0].data_int[0][10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => out_data(1),
      I1 => \^lrclk_count_reg[5]_0\,
      I2 => \gen[0].data_int_reg[0][31]\(1),
      O => D(1)
    );
\gen[0].data_int[0][11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => out_data(2),
      I1 => \^lrclk_count_reg[5]_0\,
      I2 => \gen[0].data_int_reg[0][31]\(2),
      O => D(2)
    );
\gen[0].data_int[0][12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => out_data(3),
      I1 => \^lrclk_count_reg[5]_0\,
      I2 => \gen[0].data_int_reg[0][31]\(3),
      O => D(3)
    );
\gen[0].data_int[0][13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => out_data(4),
      I1 => \^lrclk_count_reg[5]_0\,
      I2 => \gen[0].data_int_reg[0][31]\(4),
      O => D(4)
    );
\gen[0].data_int[0][14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => out_data(5),
      I1 => \^lrclk_count_reg[5]_0\,
      I2 => \gen[0].data_int_reg[0][31]\(5),
      O => D(5)
    );
\gen[0].data_int[0][15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => out_data(6),
      I1 => \^lrclk_count_reg[5]_0\,
      I2 => \gen[0].data_int_reg[0][31]\(6),
      O => D(6)
    );
\gen[0].data_int[0][16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => out_data(7),
      I1 => \^lrclk_count_reg[5]_0\,
      I2 => \gen[0].data_int_reg[0][31]\(7),
      O => D(7)
    );
\gen[0].data_int[0][17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => out_data(8),
      I1 => \^lrclk_count_reg[5]_0\,
      I2 => \gen[0].data_int_reg[0][31]\(8),
      O => D(8)
    );
\gen[0].data_int[0][18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => out_data(9),
      I1 => \^lrclk_count_reg[5]_0\,
      I2 => \gen[0].data_int_reg[0][31]\(9),
      O => D(9)
    );
\gen[0].data_int[0][19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => out_data(10),
      I1 => \^lrclk_count_reg[5]_0\,
      I2 => \gen[0].data_int_reg[0][31]\(10),
      O => D(10)
    );
\gen[0].data_int[0][20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => out_data(11),
      I1 => \^lrclk_count_reg[5]_0\,
      I2 => \gen[0].data_int_reg[0][31]\(11),
      O => D(11)
    );
\gen[0].data_int[0][21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => out_data(12),
      I1 => \^lrclk_count_reg[5]_0\,
      I2 => \gen[0].data_int_reg[0][31]\(12),
      O => D(12)
    );
\gen[0].data_int[0][22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => out_data(13),
      I1 => \^lrclk_count_reg[5]_0\,
      I2 => \gen[0].data_int_reg[0][31]\(13),
      O => D(13)
    );
\gen[0].data_int[0][23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => out_data(14),
      I1 => \^lrclk_count_reg[5]_0\,
      I2 => \gen[0].data_int_reg[0][31]\(14),
      O => D(14)
    );
\gen[0].data_int[0][24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => out_data(15),
      I1 => \^lrclk_count_reg[5]_0\,
      I2 => \gen[0].data_int_reg[0][31]\(15),
      O => D(15)
    );
\gen[0].data_int[0][25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => out_data(16),
      I1 => \^lrclk_count_reg[5]_0\,
      I2 => \gen[0].data_int_reg[0][31]\(16),
      O => D(16)
    );
\gen[0].data_int[0][26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => out_data(17),
      I1 => \^lrclk_count_reg[5]_0\,
      I2 => \gen[0].data_int_reg[0][31]\(17),
      O => D(17)
    );
\gen[0].data_int[0][27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => out_data(18),
      I1 => \^lrclk_count_reg[5]_0\,
      I2 => \gen[0].data_int_reg[0][31]\(18),
      O => D(18)
    );
\gen[0].data_int[0][28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => out_data(19),
      I1 => \^lrclk_count_reg[5]_0\,
      I2 => \gen[0].data_int_reg[0][31]\(19),
      O => D(19)
    );
\gen[0].data_int[0][29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => out_data(20),
      I1 => \^lrclk_count_reg[5]_0\,
      I2 => \gen[0].data_int_reg[0][31]\(20),
      O => D(20)
    );
\gen[0].data_int[0][30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => out_data(21),
      I1 => \^lrclk_count_reg[5]_0\,
      I2 => \gen[0].data_int_reg[0][31]\(21),
      O => D(21)
    );
\gen[0].data_int[0][31]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => out_data(22),
      I1 => \^lrclk_count_reg[5]_0\,
      I2 => \gen[0].data_int_reg[0][31]\(22),
      O => D(22)
    );
\gen[0].data_int[0][9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => out_data(0),
      I1 => \^lrclk_count_reg[5]_0\,
      I2 => \gen[0].data_int_reg[0][31]\(0),
      O => D(0)
    );
\lrclk_count[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02AA02AAFEAA02AA"
    )
        port map (
      I0 => Q(8),
      I1 => \bclk_count_reg[0]_0\,
      I2 => rx_enable,
      I3 => s_axi_aresetn,
      I4 => \lrclk_count[7]_i_5_n_0\,
      I5 => lrclk_count(0),
      O => \lrclk_count[0]_i_1_n_0\
    );
\lrclk_count[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B8B888"
    )
        port map (
      I0 => Q(9),
      I1 => reset_int,
      I2 => \lrclk_count[7]_i_5_n_0\,
      I3 => lrclk_count(1),
      I4 => lrclk_count(0),
      O => \lrclk_count[1]_i_1_n_0\
    );
\lrclk_count[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8B8B8B8888888"
    )
        port map (
      I0 => Q(10),
      I1 => reset_int,
      I2 => \lrclk_count[7]_i_5_n_0\,
      I3 => lrclk_count(0),
      I4 => lrclk_count(1),
      I5 => lrclk_count(2),
      O => \lrclk_count[2]_i_1_n_0\
    );
\lrclk_count[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B88888B8"
    )
        port map (
      I0 => Q(11),
      I1 => reset_int,
      I2 => \lrclk_count[7]_i_5_n_0\,
      I3 => \lrclk_count[3]_i_2_n_0\,
      I4 => lrclk_count(3),
      O => \lrclk_count[3]_i_1_n_0\
    );
\lrclk_count[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => lrclk_count(1),
      I1 => lrclk_count(0),
      I2 => lrclk_count(2),
      O => \lrclk_count[3]_i_2_n_0\
    );
\lrclk_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B88888B8"
    )
        port map (
      I0 => Q(12),
      I1 => reset_int,
      I2 => \lrclk_count[7]_i_5_n_0\,
      I3 => \lrclk_count[4]_i_2_n_0\,
      I4 => lrclk_count(4),
      O => \lrclk_count[4]_i_1_n_0\
    );
\lrclk_count[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => lrclk_count(2),
      I1 => lrclk_count(0),
      I2 => lrclk_count(1),
      I3 => lrclk_count(3),
      O => \lrclk_count[4]_i_2_n_0\
    );
\lrclk_count[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B88888B8"
    )
        port map (
      I0 => Q(13),
      I1 => reset_int,
      I2 => \lrclk_count[7]_i_5_n_0\,
      I3 => \lrclk_count[5]_i_2_n_0\,
      I4 => lrclk_count(5),
      O => \lrclk_count[5]_i_1_n_0\
    );
\lrclk_count[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => lrclk_count(3),
      I1 => lrclk_count(1),
      I2 => lrclk_count(0),
      I3 => lrclk_count(2),
      I4 => lrclk_count(4),
      O => \lrclk_count[5]_i_2_n_0\
    );
\lrclk_count[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B8B888"
    )
        port map (
      I0 => Q(14),
      I1 => reset_int,
      I2 => \lrclk_count[7]_i_5_n_0\,
      I3 => \lrclk_count[7]_i_6_n_0\,
      I4 => lrclk_count(6),
      O => \lrclk_count[6]_i_1_n_0\
    );
\lrclk_count[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABEAAAA"
    )
        port map (
      I0 => reset_int,
      I1 => cdc_sync_stage3_tick,
      I2 => cdc_sync_stage2_tick,
      I3 => \lrclk_count[7]_i_4_n_0\,
      I4 => \^tx_bclk\,
      O => \lrclk_count[7]_i_1_n_0\
    );
\lrclk_count[7]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => Q(11),
      I1 => lrclk_count(3),
      I2 => lrclk_count(4),
      I3 => Q(12),
      I4 => lrclk_count(5),
      I5 => Q(13),
      O => \lrclk_count[7]_i_10_n_0\
    );
\lrclk_count[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8B8B8B8888888"
    )
        port map (
      I0 => Q(15),
      I1 => reset_int,
      I2 => \lrclk_count[7]_i_5_n_0\,
      I3 => \lrclk_count[7]_i_6_n_0\,
      I4 => lrclk_count(6),
      I5 => lrclk_count(7),
      O => \lrclk_count[7]_i_2_n_0\
    );
\lrclk_count[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => \bclk_count_reg[0]_0\,
      I1 => rx_enable,
      I2 => s_axi_aresetn,
      O => reset_int
    );
\lrclk_count[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF6FF6"
    )
        port map (
      I0 => bclk_count(7),
      I1 => Q(7),
      I2 => bclk_count(6),
      I3 => Q(6),
      I4 => \lrclk_count[7]_i_7_n_0\,
      I5 => \lrclk_count[7]_i_8_n_0\,
      O => \lrclk_count[7]_i_4_n_0\
    );
\lrclk_count[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF6FF6"
    )
        port map (
      I0 => lrclk_count(7),
      I1 => Q(15),
      I2 => lrclk_count(6),
      I3 => Q(14),
      I4 => \lrclk_count[7]_i_9_n_0\,
      I5 => \lrclk_count[7]_i_10_n_0\,
      O => \lrclk_count[7]_i_5_n_0\
    );
\lrclk_count[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => lrclk_count(5),
      I1 => lrclk_count(4),
      I2 => lrclk_count(2),
      I3 => lrclk_count(0),
      I4 => lrclk_count(1),
      I5 => lrclk_count(3),
      O => \lrclk_count[7]_i_6_n_0\
    );
\lrclk_count[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => Q(0),
      I1 => bclk_count(0),
      I2 => bclk_count(1),
      I3 => Q(1),
      I4 => bclk_count(2),
      I5 => Q(2),
      O => \lrclk_count[7]_i_7_n_0\
    );
\lrclk_count[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => Q(3),
      I1 => bclk_count(3),
      I2 => bclk_count(5),
      I3 => Q(5),
      I4 => bclk_count(4),
      I5 => Q(4),
      O => \lrclk_count[7]_i_8_n_0\
    );
\lrclk_count[7]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => Q(8),
      I1 => lrclk_count(0),
      I2 => lrclk_count(2),
      I3 => Q(10),
      I4 => lrclk_count(1),
      I5 => Q(9),
      O => \lrclk_count[7]_i_9_n_0\
    );
\lrclk_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \lrclk_count[7]_i_1_n_0\,
      D => \lrclk_count[0]_i_1_n_0\,
      Q => lrclk_count(0),
      R => '0'
    );
\lrclk_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \lrclk_count[7]_i_1_n_0\,
      D => \lrclk_count[1]_i_1_n_0\,
      Q => lrclk_count(1),
      R => '0'
    );
\lrclk_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \lrclk_count[7]_i_1_n_0\,
      D => \lrclk_count[2]_i_1_n_0\,
      Q => lrclk_count(2),
      R => '0'
    );
\lrclk_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \lrclk_count[7]_i_1_n_0\,
      D => \lrclk_count[3]_i_1_n_0\,
      Q => lrclk_count(3),
      R => '0'
    );
\lrclk_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \lrclk_count[7]_i_1_n_0\,
      D => \lrclk_count[4]_i_1_n_0\,
      Q => lrclk_count(4),
      R => '0'
    );
\lrclk_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \lrclk_count[7]_i_1_n_0\,
      D => \lrclk_count[5]_i_1_n_0\,
      Q => lrclk_count(5),
      R => '0'
    );
\lrclk_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \lrclk_count[7]_i_1_n_0\,
      D => \lrclk_count[6]_i_1_n_0\,
      Q => lrclk_count(6),
      R => '0'
    );
\lrclk_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \lrclk_count[7]_i_1_n_0\,
      D => \lrclk_count[7]_i_2_n_0\,
      Q => lrclk_count(7),
      R => '0'
    );
lrclk_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAAA6AA"
    )
        port map (
      I0 => \^tx_lrclk\,
      I1 => \^tx_tick\,
      I2 => \lrclk_count[7]_i_4_n_0\,
      I3 => \^tx_bclk\,
      I4 => \lrclk_count[7]_i_5_n_0\,
      I5 => reset_int,
      O => lrclk_int_i_1_n_0
    );
lrclk_int_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => lrclk_int_i_1_n_0,
      Q => \^tx_lrclk\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_i2s_adi_0_1_i2s_rx is
  port (
    bclk_d1 : out STD_LOGIC;
    sequencer_state_reg_0 : out STD_LOGIC;
    \gen[0].data_latched_reg[0][23]_0\ : out STD_LOGIC_VECTOR ( 23 downto 0 );
    bclk_d1_reg_0 : in STD_LOGIC;
    out_data : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    rx_enable : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    rx_ack : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_axi_i2s_adi_0_1_i2s_rx : entity is "i2s_rx";
end icyradio_axi_i2s_adi_0_1_i2s_rx;

architecture STRUCTURE of icyradio_axi_i2s_adi_0_1_i2s_rx is
  signal \^bclk_d1\ : STD_LOGIC;
  signal enable_int : STD_LOGIC;
  signal \enable_int_i_1__0_n_0\ : STD_LOGIC;
  signal \gen[0].data_int_reg_n_0_[0][0]\ : STD_LOGIC;
  signal \gen[0].data_int_reg_n_0_[0][10]\ : STD_LOGIC;
  signal \gen[0].data_int_reg_n_0_[0][11]\ : STD_LOGIC;
  signal \gen[0].data_int_reg_n_0_[0][12]\ : STD_LOGIC;
  signal \gen[0].data_int_reg_n_0_[0][13]\ : STD_LOGIC;
  signal \gen[0].data_int_reg_n_0_[0][14]\ : STD_LOGIC;
  signal \gen[0].data_int_reg_n_0_[0][15]\ : STD_LOGIC;
  signal \gen[0].data_int_reg_n_0_[0][16]\ : STD_LOGIC;
  signal \gen[0].data_int_reg_n_0_[0][17]\ : STD_LOGIC;
  signal \gen[0].data_int_reg_n_0_[0][18]\ : STD_LOGIC;
  signal \gen[0].data_int_reg_n_0_[0][19]\ : STD_LOGIC;
  signal \gen[0].data_int_reg_n_0_[0][1]\ : STD_LOGIC;
  signal \gen[0].data_int_reg_n_0_[0][20]\ : STD_LOGIC;
  signal \gen[0].data_int_reg_n_0_[0][21]\ : STD_LOGIC;
  signal \gen[0].data_int_reg_n_0_[0][22]\ : STD_LOGIC;
  signal \gen[0].data_int_reg_n_0_[0][23]\ : STD_LOGIC;
  signal \gen[0].data_int_reg_n_0_[0][24]\ : STD_LOGIC;
  signal \gen[0].data_int_reg_n_0_[0][25]\ : STD_LOGIC;
  signal \gen[0].data_int_reg_n_0_[0][26]\ : STD_LOGIC;
  signal \gen[0].data_int_reg_n_0_[0][27]\ : STD_LOGIC;
  signal \gen[0].data_int_reg_n_0_[0][28]\ : STD_LOGIC;
  signal \gen[0].data_int_reg_n_0_[0][29]\ : STD_LOGIC;
  signal \gen[0].data_int_reg_n_0_[0][2]\ : STD_LOGIC;
  signal \gen[0].data_int_reg_n_0_[0][30]\ : STD_LOGIC;
  signal \gen[0].data_int_reg_n_0_[0][31]\ : STD_LOGIC;
  signal \gen[0].data_int_reg_n_0_[0][3]\ : STD_LOGIC;
  signal \gen[0].data_int_reg_n_0_[0][4]\ : STD_LOGIC;
  signal \gen[0].data_int_reg_n_0_[0][5]\ : STD_LOGIC;
  signal \gen[0].data_int_reg_n_0_[0][6]\ : STD_LOGIC;
  signal \gen[0].data_int_reg_n_0_[0][7]\ : STD_LOGIC;
  signal \gen[0].data_int_reg_n_0_[0][8]\ : STD_LOGIC;
  signal \gen[0].data_int_reg_n_0_[0][9]\ : STD_LOGIC;
  signal \gen[0].data_latched[0][23]_i_1_n_0\ : STD_LOGIC;
  signal ovf_frame_cnt : STD_LOGIC;
  signal \ovf_frame_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \ovf_frame_cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal sequencer_state0 : STD_LOGIC;
  signal sequencer_state_i_1_n_0 : STD_LOGIC;
  signal \^sequencer_state_reg_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ovf_frame_cnt[0]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of sequencer_state_i_2 : label is "soft_lutpair14";
begin
  bclk_d1 <= \^bclk_d1\;
  sequencer_state_reg_0 <= \^sequencer_state_reg_0\;
bclk_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => out_data(2),
      Q => \^bclk_d1\,
      R => bclk_d1_reg_0
    );
\enable_int_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAA000000000000"
    )
        port map (
      I0 => enable_int,
      I1 => out_data(1),
      I2 => \^bclk_d1\,
      I3 => out_data(2),
      I4 => s_axi_aresetn,
      I5 => rx_enable,
      O => \enable_int_i_1__0_n_0\
    );
enable_int_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \enable_int_i_1__0_n_0\,
      Q => enable_int,
      R => '0'
    );
\gen[0].data_int[0][31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => rx_enable,
      I1 => s_axi_aresetn,
      O => p_1_in
    );
\gen[0].data_int_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => out_data(3),
      Q => \gen[0].data_int_reg_n_0_[0][0]\,
      R => p_1_in
    );
\gen[0].data_int_reg[0][10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \gen[0].data_int_reg_n_0_[0][9]\,
      Q => \gen[0].data_int_reg_n_0_[0][10]\,
      R => p_1_in
    );
\gen[0].data_int_reg[0][11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \gen[0].data_int_reg_n_0_[0][10]\,
      Q => \gen[0].data_int_reg_n_0_[0][11]\,
      R => p_1_in
    );
\gen[0].data_int_reg[0][12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \gen[0].data_int_reg_n_0_[0][11]\,
      Q => \gen[0].data_int_reg_n_0_[0][12]\,
      R => p_1_in
    );
\gen[0].data_int_reg[0][13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \gen[0].data_int_reg_n_0_[0][12]\,
      Q => \gen[0].data_int_reg_n_0_[0][13]\,
      R => p_1_in
    );
\gen[0].data_int_reg[0][14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \gen[0].data_int_reg_n_0_[0][13]\,
      Q => \gen[0].data_int_reg_n_0_[0][14]\,
      R => p_1_in
    );
\gen[0].data_int_reg[0][15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \gen[0].data_int_reg_n_0_[0][14]\,
      Q => \gen[0].data_int_reg_n_0_[0][15]\,
      R => p_1_in
    );
\gen[0].data_int_reg[0][16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \gen[0].data_int_reg_n_0_[0][15]\,
      Q => \gen[0].data_int_reg_n_0_[0][16]\,
      R => p_1_in
    );
\gen[0].data_int_reg[0][17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \gen[0].data_int_reg_n_0_[0][16]\,
      Q => \gen[0].data_int_reg_n_0_[0][17]\,
      R => p_1_in
    );
\gen[0].data_int_reg[0][18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \gen[0].data_int_reg_n_0_[0][17]\,
      Q => \gen[0].data_int_reg_n_0_[0][18]\,
      R => p_1_in
    );
\gen[0].data_int_reg[0][19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \gen[0].data_int_reg_n_0_[0][18]\,
      Q => \gen[0].data_int_reg_n_0_[0][19]\,
      R => p_1_in
    );
\gen[0].data_int_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \gen[0].data_int_reg_n_0_[0][0]\,
      Q => \gen[0].data_int_reg_n_0_[0][1]\,
      R => p_1_in
    );
\gen[0].data_int_reg[0][20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \gen[0].data_int_reg_n_0_[0][19]\,
      Q => \gen[0].data_int_reg_n_0_[0][20]\,
      R => p_1_in
    );
\gen[0].data_int_reg[0][21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \gen[0].data_int_reg_n_0_[0][20]\,
      Q => \gen[0].data_int_reg_n_0_[0][21]\,
      R => p_1_in
    );
\gen[0].data_int_reg[0][22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \gen[0].data_int_reg_n_0_[0][21]\,
      Q => \gen[0].data_int_reg_n_0_[0][22]\,
      R => p_1_in
    );
\gen[0].data_int_reg[0][23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \gen[0].data_int_reg_n_0_[0][22]\,
      Q => \gen[0].data_int_reg_n_0_[0][23]\,
      R => p_1_in
    );
\gen[0].data_int_reg[0][24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \gen[0].data_int_reg_n_0_[0][23]\,
      Q => \gen[0].data_int_reg_n_0_[0][24]\,
      R => p_1_in
    );
\gen[0].data_int_reg[0][25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \gen[0].data_int_reg_n_0_[0][24]\,
      Q => \gen[0].data_int_reg_n_0_[0][25]\,
      R => p_1_in
    );
\gen[0].data_int_reg[0][26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \gen[0].data_int_reg_n_0_[0][25]\,
      Q => \gen[0].data_int_reg_n_0_[0][26]\,
      R => p_1_in
    );
\gen[0].data_int_reg[0][27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \gen[0].data_int_reg_n_0_[0][26]\,
      Q => \gen[0].data_int_reg_n_0_[0][27]\,
      R => p_1_in
    );
\gen[0].data_int_reg[0][28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \gen[0].data_int_reg_n_0_[0][27]\,
      Q => \gen[0].data_int_reg_n_0_[0][28]\,
      R => p_1_in
    );
\gen[0].data_int_reg[0][29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \gen[0].data_int_reg_n_0_[0][28]\,
      Q => \gen[0].data_int_reg_n_0_[0][29]\,
      R => p_1_in
    );
\gen[0].data_int_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \gen[0].data_int_reg_n_0_[0][1]\,
      Q => \gen[0].data_int_reg_n_0_[0][2]\,
      R => p_1_in
    );
\gen[0].data_int_reg[0][30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \gen[0].data_int_reg_n_0_[0][29]\,
      Q => \gen[0].data_int_reg_n_0_[0][30]\,
      R => p_1_in
    );
\gen[0].data_int_reg[0][31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \gen[0].data_int_reg_n_0_[0][30]\,
      Q => \gen[0].data_int_reg_n_0_[0][31]\,
      R => p_1_in
    );
\gen[0].data_int_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \gen[0].data_int_reg_n_0_[0][2]\,
      Q => \gen[0].data_int_reg_n_0_[0][3]\,
      R => p_1_in
    );
\gen[0].data_int_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \gen[0].data_int_reg_n_0_[0][3]\,
      Q => \gen[0].data_int_reg_n_0_[0][4]\,
      R => p_1_in
    );
\gen[0].data_int_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \gen[0].data_int_reg_n_0_[0][4]\,
      Q => \gen[0].data_int_reg_n_0_[0][5]\,
      R => p_1_in
    );
\gen[0].data_int_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \gen[0].data_int_reg_n_0_[0][5]\,
      Q => \gen[0].data_int_reg_n_0_[0][6]\,
      R => p_1_in
    );
\gen[0].data_int_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \gen[0].data_int_reg_n_0_[0][6]\,
      Q => \gen[0].data_int_reg_n_0_[0][7]\,
      R => p_1_in
    );
\gen[0].data_int_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \gen[0].data_int_reg_n_0_[0][7]\,
      Q => \gen[0].data_int_reg_n_0_[0][8]\,
      R => p_1_in
    );
\gen[0].data_int_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \gen[0].data_int_reg_n_0_[0][8]\,
      Q => \gen[0].data_int_reg_n_0_[0][9]\,
      R => p_1_in
    );
\gen[0].data_latched[0][23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000000000000"
    )
        port map (
      I0 => \^sequencer_state_reg_0\,
      I1 => out_data(0),
      I2 => \^bclk_d1\,
      I3 => out_data(2),
      I4 => rx_enable,
      I5 => s_axi_aresetn,
      O => \gen[0].data_latched[0][23]_i_1_n_0\
    );
\gen[0].data_latched_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \gen[0].data_latched[0][23]_i_1_n_0\,
      D => \gen[0].data_int_reg_n_0_[0][8]\,
      Q => \gen[0].data_latched_reg[0][23]_0\(0),
      R => '0'
    );
\gen[0].data_latched_reg[0][10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \gen[0].data_latched[0][23]_i_1_n_0\,
      D => \gen[0].data_int_reg_n_0_[0][18]\,
      Q => \gen[0].data_latched_reg[0][23]_0\(10),
      R => '0'
    );
\gen[0].data_latched_reg[0][11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \gen[0].data_latched[0][23]_i_1_n_0\,
      D => \gen[0].data_int_reg_n_0_[0][19]\,
      Q => \gen[0].data_latched_reg[0][23]_0\(11),
      R => '0'
    );
\gen[0].data_latched_reg[0][12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \gen[0].data_latched[0][23]_i_1_n_0\,
      D => \gen[0].data_int_reg_n_0_[0][20]\,
      Q => \gen[0].data_latched_reg[0][23]_0\(12),
      R => '0'
    );
\gen[0].data_latched_reg[0][13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \gen[0].data_latched[0][23]_i_1_n_0\,
      D => \gen[0].data_int_reg_n_0_[0][21]\,
      Q => \gen[0].data_latched_reg[0][23]_0\(13),
      R => '0'
    );
\gen[0].data_latched_reg[0][14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \gen[0].data_latched[0][23]_i_1_n_0\,
      D => \gen[0].data_int_reg_n_0_[0][22]\,
      Q => \gen[0].data_latched_reg[0][23]_0\(14),
      R => '0'
    );
\gen[0].data_latched_reg[0][15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \gen[0].data_latched[0][23]_i_1_n_0\,
      D => \gen[0].data_int_reg_n_0_[0][23]\,
      Q => \gen[0].data_latched_reg[0][23]_0\(15),
      R => '0'
    );
\gen[0].data_latched_reg[0][16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \gen[0].data_latched[0][23]_i_1_n_0\,
      D => \gen[0].data_int_reg_n_0_[0][24]\,
      Q => \gen[0].data_latched_reg[0][23]_0\(16),
      R => '0'
    );
\gen[0].data_latched_reg[0][17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \gen[0].data_latched[0][23]_i_1_n_0\,
      D => \gen[0].data_int_reg_n_0_[0][25]\,
      Q => \gen[0].data_latched_reg[0][23]_0\(17),
      R => '0'
    );
\gen[0].data_latched_reg[0][18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \gen[0].data_latched[0][23]_i_1_n_0\,
      D => \gen[0].data_int_reg_n_0_[0][26]\,
      Q => \gen[0].data_latched_reg[0][23]_0\(18),
      R => '0'
    );
\gen[0].data_latched_reg[0][19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \gen[0].data_latched[0][23]_i_1_n_0\,
      D => \gen[0].data_int_reg_n_0_[0][27]\,
      Q => \gen[0].data_latched_reg[0][23]_0\(19),
      R => '0'
    );
\gen[0].data_latched_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \gen[0].data_latched[0][23]_i_1_n_0\,
      D => \gen[0].data_int_reg_n_0_[0][9]\,
      Q => \gen[0].data_latched_reg[0][23]_0\(1),
      R => '0'
    );
\gen[0].data_latched_reg[0][20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \gen[0].data_latched[0][23]_i_1_n_0\,
      D => \gen[0].data_int_reg_n_0_[0][28]\,
      Q => \gen[0].data_latched_reg[0][23]_0\(20),
      R => '0'
    );
\gen[0].data_latched_reg[0][21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \gen[0].data_latched[0][23]_i_1_n_0\,
      D => \gen[0].data_int_reg_n_0_[0][29]\,
      Q => \gen[0].data_latched_reg[0][23]_0\(21),
      R => '0'
    );
\gen[0].data_latched_reg[0][22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \gen[0].data_latched[0][23]_i_1_n_0\,
      D => \gen[0].data_int_reg_n_0_[0][30]\,
      Q => \gen[0].data_latched_reg[0][23]_0\(22),
      R => '0'
    );
\gen[0].data_latched_reg[0][23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \gen[0].data_latched[0][23]_i_1_n_0\,
      D => \gen[0].data_int_reg_n_0_[0][31]\,
      Q => \gen[0].data_latched_reg[0][23]_0\(23),
      R => '0'
    );
\gen[0].data_latched_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \gen[0].data_latched[0][23]_i_1_n_0\,
      D => \gen[0].data_int_reg_n_0_[0][10]\,
      Q => \gen[0].data_latched_reg[0][23]_0\(2),
      R => '0'
    );
\gen[0].data_latched_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \gen[0].data_latched[0][23]_i_1_n_0\,
      D => \gen[0].data_int_reg_n_0_[0][11]\,
      Q => \gen[0].data_latched_reg[0][23]_0\(3),
      R => '0'
    );
\gen[0].data_latched_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \gen[0].data_latched[0][23]_i_1_n_0\,
      D => \gen[0].data_int_reg_n_0_[0][12]\,
      Q => \gen[0].data_latched_reg[0][23]_0\(4),
      R => '0'
    );
\gen[0].data_latched_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \gen[0].data_latched[0][23]_i_1_n_0\,
      D => \gen[0].data_int_reg_n_0_[0][13]\,
      Q => \gen[0].data_latched_reg[0][23]_0\(5),
      R => '0'
    );
\gen[0].data_latched_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \gen[0].data_latched[0][23]_i_1_n_0\,
      D => \gen[0].data_int_reg_n_0_[0][14]\,
      Q => \gen[0].data_latched_reg[0][23]_0\(6),
      R => '0'
    );
\gen[0].data_latched_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \gen[0].data_latched[0][23]_i_1_n_0\,
      D => \gen[0].data_int_reg_n_0_[0][15]\,
      Q => \gen[0].data_latched_reg[0][23]_0\(7),
      R => '0'
    );
\gen[0].data_latched_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \gen[0].data_latched[0][23]_i_1_n_0\,
      D => \gen[0].data_int_reg_n_0_[0][16]\,
      Q => \gen[0].data_latched_reg[0][23]_0\(8),
      R => '0'
    );
\gen[0].data_latched_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \gen[0].data_latched[0][23]_i_1_n_0\,
      D => \gen[0].data_int_reg_n_0_[0][17]\,
      Q => \gen[0].data_latched_reg[0][23]_0\(9),
      R => '0'
    );
\ovf_frame_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2CCC000000000000"
    )
        port map (
      I0 => \^sequencer_state_reg_0\,
      I1 => ovf_frame_cnt,
      I2 => out_data(0),
      I3 => E(0),
      I4 => \ovf_frame_cnt[0]_i_2_n_0\,
      I5 => enable_int,
      O => \ovf_frame_cnt[0]_i_1_n_0\
    );
\ovf_frame_cnt[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => rx_enable,
      O => \ovf_frame_cnt[0]_i_2_n_0\
    );
\ovf_frame_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ovf_frame_cnt[0]_i_1_n_0\,
      Q => ovf_frame_cnt,
      R => '0'
    );
sequencer_state_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000040AAEA"
    )
        port map (
      I0 => \^sequencer_state_reg_0\,
      I1 => out_data(0),
      I2 => E(0),
      I3 => ovf_frame_cnt,
      I4 => rx_ack,
      I5 => sequencer_state0,
      O => sequencer_state_i_1_n_0
    );
sequencer_state_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => enable_int,
      I1 => rx_enable,
      I2 => s_axi_aresetn,
      O => sequencer_state0
    );
sequencer_state_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => sequencer_state_i_1_n_0,
      Q => \^sequencer_state_reg_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_i2s_adi_0_1_i2s_tx is
  port (
    s_axi_aresetn_0 : out STD_LOGIC;
    channel_sync_int_d1 : out STD_LOGIC;
    enable_int_reg_0 : out STD_LOGIC;
    rd_addr0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen[0].data_int_reg[0][31]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 22 downto 0 );
    in_data : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    channel_sync_int : in STD_LOGIC;
    enable_int_reg_1 : in STD_LOGIC;
    tx_stb : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    \gen[0].data_int_reg[0][8]_0\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_axi_i2s_adi_0_1_i2s_tx : entity is "i2s_tx";
end icyradio_axi_i2s_adi_0_1_i2s_tx;

architecture STRUCTURE of icyradio_axi_i2s_adi_0_1_i2s_tx is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal bclk_d1 : STD_LOGIC;
  signal \^channel_sync_int_d1\ : STD_LOGIC;
  signal \^enable_int_reg_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal reset_int : STD_LOGIC;
  signal \^s_axi_aresetn_0\ : STD_LOGIC;
begin
  E(0) <= \^e\(0);
  channel_sync_int_d1 <= \^channel_sync_int_d1\;
  enable_int_reg_0 <= \^enable_int_reg_0\;
  s_axi_aresetn_0 <= \^s_axi_aresetn_0\;
FSM_sequential_rd_state_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => \^s_axi_aresetn_0\
    );
bclk_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => in_data(0),
      Q => bclk_d1,
      R => \^s_axi_aresetn_0\
    );
channel_sync_int_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => channel_sync_int,
      Q => \^channel_sync_int_d1\,
      R => \^s_axi_aresetn_0\
    );
enable_int_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => enable_int_reg_1,
      Q => \^enable_int_reg_0\,
      R => '0'
    );
\fifo_ctrl.free_cnt[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^channel_sync_int_d1\,
      I1 => \^enable_int_reg_0\,
      I2 => tx_stb,
      O => rd_addr0
    );
fifo_reg_0_3_0_4_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in,
      I1 => \^enable_int_reg_0\,
      O => \gen[0].data_int_reg[0][31]_0\(0)
    );
\gen[0].data_int[0][31]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => \gen[0].data_int_reg[0][8]_0\,
      O => reset_int
    );
\gen[0].data_int[0][31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bclk_d1,
      I1 => in_data(0),
      O => \^e\(0)
    );
\gen[0].data_int_reg[0][10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => D(2),
      Q => Q(2),
      R => reset_int
    );
\gen[0].data_int_reg[0][11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => D(3),
      Q => Q(3),
      R => reset_int
    );
\gen[0].data_int_reg[0][12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => D(4),
      Q => Q(4),
      R => reset_int
    );
\gen[0].data_int_reg[0][13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => D(5),
      Q => Q(5),
      R => reset_int
    );
\gen[0].data_int_reg[0][14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => D(6),
      Q => Q(6),
      R => reset_int
    );
\gen[0].data_int_reg[0][15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => D(7),
      Q => Q(7),
      R => reset_int
    );
\gen[0].data_int_reg[0][16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => D(8),
      Q => Q(8),
      R => reset_int
    );
\gen[0].data_int_reg[0][17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => D(9),
      Q => Q(9),
      R => reset_int
    );
\gen[0].data_int_reg[0][18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => D(10),
      Q => Q(10),
      R => reset_int
    );
\gen[0].data_int_reg[0][19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => D(11),
      Q => Q(11),
      R => reset_int
    );
\gen[0].data_int_reg[0][20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => D(12),
      Q => Q(12),
      R => reset_int
    );
\gen[0].data_int_reg[0][21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => D(13),
      Q => Q(13),
      R => reset_int
    );
\gen[0].data_int_reg[0][22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => D(14),
      Q => Q(14),
      R => reset_int
    );
\gen[0].data_int_reg[0][23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => D(15),
      Q => Q(15),
      R => reset_int
    );
\gen[0].data_int_reg[0][24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => D(16),
      Q => Q(16),
      R => reset_int
    );
\gen[0].data_int_reg[0][25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => D(17),
      Q => Q(17),
      R => reset_int
    );
\gen[0].data_int_reg[0][26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => D(18),
      Q => Q(18),
      R => reset_int
    );
\gen[0].data_int_reg[0][27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => D(19),
      Q => Q(19),
      R => reset_int
    );
\gen[0].data_int_reg[0][28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => D(20),
      Q => Q(20),
      R => reset_int
    );
\gen[0].data_int_reg[0][29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => D(21),
      Q => Q(21),
      R => reset_int
    );
\gen[0].data_int_reg[0][30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => D(22),
      Q => Q(22),
      R => reset_int
    );
\gen[0].data_int_reg[0][31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => D(23),
      Q => p_0_in,
      R => reset_int
    );
\gen[0].data_int_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => D(0),
      Q => Q(0),
      R => reset_int
    );
\gen[0].data_int_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^e\(0),
      D => D(1),
      Q => Q(1),
      R => reset_int
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_i2s_adi_0_1_axi_streaming_dma_rx_fifo is
  port (
    not_empty_reg : out STD_LOGIC;
    rx_ack : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    rx_stb : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    \gen[0].data_latched_reg[0]\ : in STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_axi_i2s_adi_0_1_axi_streaming_dma_rx_fifo : entity is "axi_streaming_dma_rx_fifo";
end icyradio_axi_i2s_adi_0_1_axi_streaming_dma_rx_fifo;

architecture STRUCTURE of icyradio_axi_i2s_adi_0_1_axi_streaming_dma_rx_fifo is
  signal data1 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal fifo_n_2 : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal m_axis_tlast_INST_0_i_1_n_0 : STD_LOGIC;
  signal m_axis_tlast_INST_0_i_2_n_0 : STD_LOGIC;
  signal m_axis_tlast_INST_0_i_3_n_0 : STD_LOGIC;
  signal m_axis_tlast_INST_0_i_4_n_0 : STD_LOGIC;
  signal period_count : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \period_count0_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \period_count0_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \period_count0_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \period_count0_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \period_count0_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \period_count0_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \period_count0_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \period_count0_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \period_count0_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \period_count0_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \period_count0_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \period_count0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \period_count0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \period_count0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \period_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \period_count[10]_i_1_n_0\ : STD_LOGIC;
  signal \period_count[11]_i_1_n_0\ : STD_LOGIC;
  signal \period_count[12]_i_1_n_0\ : STD_LOGIC;
  signal \period_count[13]_i_1_n_0\ : STD_LOGIC;
  signal \period_count[14]_i_1_n_0\ : STD_LOGIC;
  signal \period_count[15]_i_2_n_0\ : STD_LOGIC;
  signal \period_count[15]_i_3_n_0\ : STD_LOGIC;
  signal \period_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \period_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \period_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \period_count[4]_i_1_n_0\ : STD_LOGIC;
  signal \period_count[5]_i_1_n_0\ : STD_LOGIC;
  signal \period_count[6]_i_1_n_0\ : STD_LOGIC;
  signal \period_count[7]_i_1_n_0\ : STD_LOGIC;
  signal \period_count[8]_i_1_n_0\ : STD_LOGIC;
  signal \period_count[9]_i_1_n_0\ : STD_LOGIC;
  signal \NLW_period_count0_inferred__0/i__carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_period_count0_inferred__0/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of m_axis_tlast_INST_0 : label is "soft_lutpair29";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \period_count0_inferred__0/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \period_count0_inferred__0/i__carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \period_count0_inferred__0/i__carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \period_count0_inferred__0/i__carry__2\ : label is 35;
  attribute SOFT_HLUTNM of \period_count[0]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \period_count[10]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \period_count[11]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \period_count[12]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \period_count[13]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \period_count[14]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \period_count[15]_i_2\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \period_count[15]_i_3\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \period_count[1]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \period_count[2]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \period_count[3]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \period_count[4]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \period_count[5]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \period_count[6]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \period_count[7]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \period_count[8]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \period_count[9]_i_1\ : label is "soft_lutpair33";
begin
fifo: entity work.icyradio_axi_i2s_adi_0_1_dma_fifo_0
     port map (
      E(0) => fifo_n_2,
      SR(0) => SR(0),
      \gen[0].data_latched_reg[0]\(23 downto 0) => \gen[0].data_latched_reg[0]\(23 downto 0),
      m_axis_tdata(23 downto 0) => m_axis_tdata(23 downto 0),
      m_axis_tready => m_axis_tready,
      not_empty_reg_0 => not_empty_reg,
      not_full => rx_ack,
      rx_stb => rx_stb,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_count(8),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_count(7),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_count(6),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_count(5),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_count(12),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_count(11),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_count(10),
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_count(9),
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_count(15),
      O => \i__carry__2_i_1_n_0\
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_count(14),
      O => \i__carry__2_i_2_n_0\
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_count(13),
      O => \i__carry__2_i_3_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_count(4),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_count(3),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_count(2),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_count(1),
      O => \i__carry_i_4_n_0\
    );
m_axis_tlast_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => m_axis_tlast_INST_0_i_1_n_0,
      I1 => m_axis_tlast_INST_0_i_2_n_0,
      I2 => m_axis_tlast_INST_0_i_3_n_0,
      I3 => m_axis_tlast_INST_0_i_4_n_0,
      O => m_axis_tlast
    );
m_axis_tlast_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => period_count(2),
      I1 => period_count(8),
      I2 => period_count(7),
      I3 => period_count(14),
      O => m_axis_tlast_INST_0_i_1_n_0
    );
m_axis_tlast_INST_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => period_count(15),
      I1 => period_count(10),
      I2 => period_count(13),
      I3 => period_count(5),
      O => m_axis_tlast_INST_0_i_2_n_0
    );
m_axis_tlast_INST_0_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => period_count(6),
      I1 => period_count(12),
      I2 => period_count(3),
      I3 => period_count(9),
      O => m_axis_tlast_INST_0_i_3_n_0
    );
m_axis_tlast_INST_0_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => period_count(1),
      I1 => period_count(0),
      I2 => period_count(4),
      I3 => period_count(11),
      O => m_axis_tlast_INST_0_i_4_n_0
    );
\period_count0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \period_count0_inferred__0/i__carry_n_0\,
      CO(2) => \period_count0_inferred__0/i__carry_n_1\,
      CO(1) => \period_count0_inferred__0/i__carry_n_2\,
      CO(0) => \period_count0_inferred__0/i__carry_n_3\,
      CYINIT => period_count(0),
      DI(3 downto 0) => period_count(4 downto 1),
      O(3 downto 0) => data1(4 downto 1),
      S(3) => \i__carry_i_1_n_0\,
      S(2) => \i__carry_i_2_n_0\,
      S(1) => \i__carry_i_3_n_0\,
      S(0) => \i__carry_i_4_n_0\
    );
\period_count0_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \period_count0_inferred__0/i__carry_n_0\,
      CO(3) => \period_count0_inferred__0/i__carry__0_n_0\,
      CO(2) => \period_count0_inferred__0/i__carry__0_n_1\,
      CO(1) => \period_count0_inferred__0/i__carry__0_n_2\,
      CO(0) => \period_count0_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => period_count(8 downto 5),
      O(3 downto 0) => data1(8 downto 5),
      S(3) => \i__carry__0_i_1_n_0\,
      S(2) => \i__carry__0_i_2_n_0\,
      S(1) => \i__carry__0_i_3_n_0\,
      S(0) => \i__carry__0_i_4_n_0\
    );
\period_count0_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \period_count0_inferred__0/i__carry__0_n_0\,
      CO(3) => \period_count0_inferred__0/i__carry__1_n_0\,
      CO(2) => \period_count0_inferred__0/i__carry__1_n_1\,
      CO(1) => \period_count0_inferred__0/i__carry__1_n_2\,
      CO(0) => \period_count0_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => period_count(12 downto 9),
      O(3 downto 0) => data1(12 downto 9),
      S(3) => \i__carry__1_i_1_n_0\,
      S(2) => \i__carry__1_i_2_n_0\,
      S(1) => \i__carry__1_i_3_n_0\,
      S(0) => \i__carry__1_i_4_n_0\
    );
\period_count0_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \period_count0_inferred__0/i__carry__1_n_0\,
      CO(3 downto 2) => \NLW_period_count0_inferred__0/i__carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \period_count0_inferred__0/i__carry__2_n_2\,
      CO(0) => \period_count0_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => period_count(14 downto 13),
      O(3) => \NLW_period_count0_inferred__0/i__carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => data1(15 downto 13),
      S(3) => '0',
      S(2) => \i__carry__2_i_1_n_0\,
      S(1) => \i__carry__2_i_2_n_0\,
      S(0) => \i__carry__2_i_3_n_0\
    );
\period_count[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => Q(0),
      I1 => \period_count[15]_i_3_n_0\,
      I2 => period_count(0),
      O => \period_count[0]_i_1_n_0\
    );
\period_count[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(10),
      I1 => \period_count[15]_i_3_n_0\,
      I2 => data1(10),
      O => \period_count[10]_i_1_n_0\
    );
\period_count[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(11),
      I1 => \period_count[15]_i_3_n_0\,
      I2 => data1(11),
      O => \period_count[11]_i_1_n_0\
    );
\period_count[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(12),
      I1 => \period_count[15]_i_3_n_0\,
      I2 => data1(12),
      O => \period_count[12]_i_1_n_0\
    );
\period_count[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(13),
      I1 => \period_count[15]_i_3_n_0\,
      I2 => data1(13),
      O => \period_count[13]_i_1_n_0\
    );
\period_count[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(14),
      I1 => \period_count[15]_i_3_n_0\,
      I2 => data1(14),
      O => \period_count[14]_i_1_n_0\
    );
\period_count[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(15),
      I1 => \period_count[15]_i_3_n_0\,
      I2 => data1(15),
      O => \period_count[15]_i_2_n_0\
    );
\period_count[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0010FFFF"
    )
        port map (
      I0 => m_axis_tlast_INST_0_i_4_n_0,
      I1 => m_axis_tlast_INST_0_i_3_n_0,
      I2 => m_axis_tlast_INST_0_i_2_n_0,
      I3 => m_axis_tlast_INST_0_i_1_n_0,
      I4 => s_axi_aresetn,
      O => \period_count[15]_i_3_n_0\
    );
\period_count[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(1),
      I1 => \period_count[15]_i_3_n_0\,
      I2 => data1(1),
      O => \period_count[1]_i_1_n_0\
    );
\period_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(2),
      I1 => \period_count[15]_i_3_n_0\,
      I2 => data1(2),
      O => \period_count[2]_i_1_n_0\
    );
\period_count[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(3),
      I1 => \period_count[15]_i_3_n_0\,
      I2 => data1(3),
      O => \period_count[3]_i_1_n_0\
    );
\period_count[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(4),
      I1 => \period_count[15]_i_3_n_0\,
      I2 => data1(4),
      O => \period_count[4]_i_1_n_0\
    );
\period_count[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(5),
      I1 => \period_count[15]_i_3_n_0\,
      I2 => data1(5),
      O => \period_count[5]_i_1_n_0\
    );
\period_count[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(6),
      I1 => \period_count[15]_i_3_n_0\,
      I2 => data1(6),
      O => \period_count[6]_i_1_n_0\
    );
\period_count[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(7),
      I1 => \period_count[15]_i_3_n_0\,
      I2 => data1(7),
      O => \period_count[7]_i_1_n_0\
    );
\period_count[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(8),
      I1 => \period_count[15]_i_3_n_0\,
      I2 => data1(8),
      O => \period_count[8]_i_1_n_0\
    );
\period_count[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(9),
      I1 => \period_count[15]_i_3_n_0\,
      I2 => data1(9),
      O => \period_count[9]_i_1_n_0\
    );
\period_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => fifo_n_2,
      D => \period_count[0]_i_1_n_0\,
      Q => period_count(0),
      R => '0'
    );
\period_count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => fifo_n_2,
      D => \period_count[10]_i_1_n_0\,
      Q => period_count(10),
      R => '0'
    );
\period_count_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => fifo_n_2,
      D => \period_count[11]_i_1_n_0\,
      Q => period_count(11),
      R => '0'
    );
\period_count_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => fifo_n_2,
      D => \period_count[12]_i_1_n_0\,
      Q => period_count(12),
      R => '0'
    );
\period_count_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => fifo_n_2,
      D => \period_count[13]_i_1_n_0\,
      Q => period_count(13),
      R => '0'
    );
\period_count_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => fifo_n_2,
      D => \period_count[14]_i_1_n_0\,
      Q => period_count(14),
      R => '0'
    );
\period_count_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => fifo_n_2,
      D => \period_count[15]_i_2_n_0\,
      Q => period_count(15),
      R => '0'
    );
\period_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => fifo_n_2,
      D => \period_count[1]_i_1_n_0\,
      Q => period_count(1),
      R => '0'
    );
\period_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => fifo_n_2,
      D => \period_count[2]_i_1_n_0\,
      Q => period_count(2),
      R => '0'
    );
\period_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => fifo_n_2,
      D => \period_count[3]_i_1_n_0\,
      Q => period_count(3),
      R => '0'
    );
\period_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => fifo_n_2,
      D => \period_count[4]_i_1_n_0\,
      Q => period_count(4),
      R => '0'
    );
\period_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => fifo_n_2,
      D => \period_count[5]_i_1_n_0\,
      Q => period_count(5),
      R => '0'
    );
\period_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => fifo_n_2,
      D => \period_count[6]_i_1_n_0\,
      Q => period_count(6),
      R => '0'
    );
\period_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => fifo_n_2,
      D => \period_count[7]_i_1_n_0\,
      Q => period_count(7),
      R => '0'
    );
\period_count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => fifo_n_2,
      D => \period_count[8]_i_1_n_0\,
      Q => period_count(8),
      R => '0'
    );
\period_count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => fifo_n_2,
      D => \period_count[9]_i_1_n_0\,
      Q => period_count(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_i2s_adi_0_1_axi_streaming_dma_tx_fifo is
  port (
    tx_stb : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tready : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    out_data : out STD_LOGIC_VECTOR ( 22 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    tx_fifo_reset : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    rd_addr0 : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    channel_sync_int_d1 : in STD_LOGIC;
    enable_int : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    \drain_process.enable_d1_reg_0\ : in STD_LOGIC;
    channel_sync_int : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_axi_i2s_adi_0_1_axi_streaming_dma_tx_fifo : entity is "axi_streaming_dma_tx_fifo";
end icyradio_axi_i2s_adi_0_1_axi_streaming_dma_tx_fifo;

architecture STRUCTURE of icyradio_axi_i2s_adi_0_1_axi_streaming_dma_tx_fifo is
  signal drain_dma : STD_LOGIC;
  signal drain_dma_i_1_n_0 : STD_LOGIC;
  signal \drain_process.enable_d1_i_1_n_0\ : STD_LOGIC;
  signal enable_d1 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of drain_dma_i_1 : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \drain_process.enable_d1_i_1\ : label is "soft_lutpair42";
begin
drain_dma_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22020200"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => s_axis_tlast,
      I2 => \drain_process.enable_d1_reg_0\,
      I3 => enable_d1,
      I4 => drain_dma,
      O => drain_dma_i_1_n_0
    );
drain_dma_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => '1',
      D => drain_dma_i_1_n_0,
      Q => drain_dma,
      R => '0'
    );
\drain_process.enable_d1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \drain_process.enable_d1_reg_0\,
      I1 => s_axi_aresetn,
      I2 => enable_d1,
      O => \drain_process.enable_d1_i_1_n_0\
    );
\drain_process.enable_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => '1',
      D => \drain_process.enable_d1_i_1_n_0\,
      Q => enable_d1,
      R => '0'
    );
fifo: entity work.icyradio_axi_i2s_adi_0_1_dma_fifo
     port map (
      D(0) => D(0),
      \I2S_RESET_REG_reg[1]\ => SR(0),
      channel_sync_int => channel_sync_int,
      channel_sync_int_d1 => channel_sync_int_d1,
      drain_dma => drain_dma,
      enable_int => enable_int,
      not_empty_reg_0 => tx_stb,
      out_data(22 downto 0) => out_data(22 downto 0),
      rd_addr0 => rd_addr0,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axis_tdata(23 downto 0) => s_axis_tdata(23 downto 0),
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid,
      tx_fifo_reset => tx_fifo_reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_i2s_adi_0_1_i2s_controller is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    channel_sync_int_d1 : out STD_LOGIC;
    channel_sync_int : out STD_LOGIC;
    bclk_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    lrclk_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    sdata_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    enable_int : out STD_LOGIC;
    rx_stb : out STD_LOGIC;
    rd_addr0 : out STD_LOGIC;
    \gen[0].data_latched_reg[0][23]\ : out STD_LOGIC_VECTOR ( 23 downto 0 );
    data_clk_i : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    tx_stb : in STD_LOGIC;
    rx_enable : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    \gen[0].data_int_reg[0][8]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    out_data : in STD_LOGIC_VECTOR ( 22 downto 0 );
    rx_ack : in STD_LOGIC;
    sdata_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_axi_i2s_adi_0_1_i2s_controller : entity is "i2s_controller";
end icyradio_axi_i2s_adi_0_1_i2s_controller;

architecture STRUCTURE of icyradio_axi_i2s_adi_0_1_i2s_controller is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal bclk_d1 : STD_LOGIC;
  signal \cdc_sync_stage0_tick_i_1__0_n_0\ : STD_LOGIC;
  signal cdc_sync_stage0_tick_reg_n_0 : STD_LOGIC;
  signal cdc_sync_stage1_tick_reg_n_0 : STD_LOGIC;
  signal cdc_sync_stage2_tick : STD_LOGIC;
  signal cdc_sync_stage3_tick : STD_LOGIC;
  signal \^channel_sync_int\ : STD_LOGIC;
  signal clkgen_n_10 : STD_LOGIC;
  signal clkgen_n_11 : STD_LOGIC;
  signal clkgen_n_12 : STD_LOGIC;
  signal clkgen_n_13 : STD_LOGIC;
  signal clkgen_n_14 : STD_LOGIC;
  signal clkgen_n_15 : STD_LOGIC;
  signal clkgen_n_16 : STD_LOGIC;
  signal clkgen_n_17 : STD_LOGIC;
  signal clkgen_n_18 : STD_LOGIC;
  signal clkgen_n_19 : STD_LOGIC;
  signal clkgen_n_20 : STD_LOGIC;
  signal clkgen_n_21 : STD_LOGIC;
  signal clkgen_n_22 : STD_LOGIC;
  signal clkgen_n_23 : STD_LOGIC;
  signal clkgen_n_24 : STD_LOGIC;
  signal clkgen_n_25 : STD_LOGIC;
  signal clkgen_n_27 : STD_LOGIC;
  signal clkgen_n_3 : STD_LOGIC;
  signal clkgen_n_4 : STD_LOGIC;
  signal clkgen_n_5 : STD_LOGIC;
  signal clkgen_n_6 : STD_LOGIC;
  signal clkgen_n_7 : STD_LOGIC;
  signal clkgen_n_8 : STD_LOGIC;
  signal clkgen_n_9 : STD_LOGIC;
  signal data_reset_vec : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal data_resetn : STD_LOGIC;
  signal \^enable_int\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_3_in : STD_LOGIC;
  signal p_5_in : STD_LOGIC;
  signal \rx_gen.rx_sync_n_1\ : STD_LOGIC;
  signal rx_sync_fifo_in : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal rx_sync_fifo_out : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal tx_bclk : STD_LOGIC;
  signal tx_channel_sync : STD_LOGIC;
  signal tx_frame_sync : STD_LOGIC;
  signal \tx_gen.tx_n_10\ : STD_LOGIC;
  signal \tx_gen.tx_n_11\ : STD_LOGIC;
  signal \tx_gen.tx_n_12\ : STD_LOGIC;
  signal \tx_gen.tx_n_13\ : STD_LOGIC;
  signal \tx_gen.tx_n_14\ : STD_LOGIC;
  signal \tx_gen.tx_n_15\ : STD_LOGIC;
  signal \tx_gen.tx_n_16\ : STD_LOGIC;
  signal \tx_gen.tx_n_17\ : STD_LOGIC;
  signal \tx_gen.tx_n_18\ : STD_LOGIC;
  signal \tx_gen.tx_n_19\ : STD_LOGIC;
  signal \tx_gen.tx_n_20\ : STD_LOGIC;
  signal \tx_gen.tx_n_21\ : STD_LOGIC;
  signal \tx_gen.tx_n_22\ : STD_LOGIC;
  signal \tx_gen.tx_n_23\ : STD_LOGIC;
  signal \tx_gen.tx_n_24\ : STD_LOGIC;
  signal \tx_gen.tx_n_25\ : STD_LOGIC;
  signal \tx_gen.tx_n_26\ : STD_LOGIC;
  signal \tx_gen.tx_n_27\ : STD_LOGIC;
  signal \tx_gen.tx_n_28\ : STD_LOGIC;
  signal \tx_gen.tx_n_6\ : STD_LOGIC;
  signal \tx_gen.tx_n_7\ : STD_LOGIC;
  signal \tx_gen.tx_n_8\ : STD_LOGIC;
  signal \tx_gen.tx_n_9\ : STD_LOGIC;
  signal tx_lrclk : STD_LOGIC;
  signal tx_sdata : STD_LOGIC;
  signal tx_sync_n_0 : STD_LOGIC;
  signal tx_sync_n_1 : STD_LOGIC;
  signal tx_sync_n_3 : STD_LOGIC;
  signal tx_sync_n_4 : STD_LOGIC;
  signal tx_tick : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of cdc_sync_stage1_tick_reg : label is std.standard.true;
  attribute ASYNC_REG of cdc_sync_stage2_tick_reg : label is std.standard.true;
begin
  SR(0) <= \^sr\(0);
  channel_sync_int <= \^channel_sync_int\;
  enable_int <= \^enable_int\;
\bclk_o_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => data_clk_i,
      CE => '1',
      D => p_1_in,
      Q => bclk_o(0),
      S => data_reset_vec(2)
    );
\cdc_sync_stage0_tick_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cdc_sync_stage0_tick_reg_n_0,
      O => \cdc_sync_stage0_tick_i_1__0_n_0\
    );
cdc_sync_stage0_tick_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => \cdc_sync_stage0_tick_i_1__0_n_0\,
      Q => cdc_sync_stage0_tick_reg_n_0,
      R => '0'
    );
cdc_sync_stage1_tick_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => cdc_sync_stage0_tick_reg_n_0,
      Q => cdc_sync_stage1_tick_reg_n_0,
      R => '0'
    );
cdc_sync_stage2_tick_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => cdc_sync_stage1_tick_reg_n_0,
      Q => cdc_sync_stage2_tick,
      R => '0'
    );
cdc_sync_stage3_tick_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => cdc_sync_stage2_tick,
      Q => cdc_sync_stage3_tick,
      R => '0'
    );
clkgen: entity work.icyradio_axi_i2s_adi_0_1_i2s_clkgen
     port map (
      D(22) => clkgen_n_3,
      D(21) => clkgen_n_4,
      D(20) => clkgen_n_5,
      D(19) => clkgen_n_6,
      D(18) => clkgen_n_7,
      D(17) => clkgen_n_8,
      D(16) => clkgen_n_9,
      D(15) => clkgen_n_10,
      D(14) => clkgen_n_11,
      D(13) => clkgen_n_12,
      D(12) => clkgen_n_13,
      D(11) => clkgen_n_14,
      D(10) => clkgen_n_15,
      D(9) => clkgen_n_16,
      D(8) => clkgen_n_17,
      D(7) => clkgen_n_18,
      D(6) => clkgen_n_19,
      D(5) => clkgen_n_20,
      D(4) => clkgen_n_21,
      D(3) => clkgen_n_22,
      D(2) => clkgen_n_23,
      D(1) => clkgen_n_24,
      D(0) => clkgen_n_25,
      E(0) => p_3_in,
      Q(15 downto 0) => Q(15 downto 0),
      \bclk_count_reg[0]_0\ => \gen[0].data_int_reg[0][8]\,
      cdc_sync_stage2_tick => cdc_sync_stage2_tick,
      cdc_sync_stage3_tick => cdc_sync_stage3_tick,
      enable_int_reg => clkgen_n_27,
      enable_int_reg_0 => \^enable_int\,
      \gen[0].data_int_reg[0][31]\(22) => \tx_gen.tx_n_6\,
      \gen[0].data_int_reg[0][31]\(21) => \tx_gen.tx_n_7\,
      \gen[0].data_int_reg[0][31]\(20) => \tx_gen.tx_n_8\,
      \gen[0].data_int_reg[0][31]\(19) => \tx_gen.tx_n_9\,
      \gen[0].data_int_reg[0][31]\(18) => \tx_gen.tx_n_10\,
      \gen[0].data_int_reg[0][31]\(17) => \tx_gen.tx_n_11\,
      \gen[0].data_int_reg[0][31]\(16) => \tx_gen.tx_n_12\,
      \gen[0].data_int_reg[0][31]\(15) => \tx_gen.tx_n_13\,
      \gen[0].data_int_reg[0][31]\(14) => \tx_gen.tx_n_14\,
      \gen[0].data_int_reg[0][31]\(13) => \tx_gen.tx_n_15\,
      \gen[0].data_int_reg[0][31]\(12) => \tx_gen.tx_n_16\,
      \gen[0].data_int_reg[0][31]\(11) => \tx_gen.tx_n_17\,
      \gen[0].data_int_reg[0][31]\(10) => \tx_gen.tx_n_18\,
      \gen[0].data_int_reg[0][31]\(9) => \tx_gen.tx_n_19\,
      \gen[0].data_int_reg[0][31]\(8) => \tx_gen.tx_n_20\,
      \gen[0].data_int_reg[0][31]\(7) => \tx_gen.tx_n_21\,
      \gen[0].data_int_reg[0][31]\(6) => \tx_gen.tx_n_22\,
      \gen[0].data_int_reg[0][31]\(5) => \tx_gen.tx_n_23\,
      \gen[0].data_int_reg[0][31]\(4) => \tx_gen.tx_n_24\,
      \gen[0].data_int_reg[0][31]\(3) => \tx_gen.tx_n_25\,
      \gen[0].data_int_reg[0][31]\(2) => \tx_gen.tx_n_26\,
      \gen[0].data_int_reg[0][31]\(1) => \tx_gen.tx_n_27\,
      \gen[0].data_int_reg[0][31]\(0) => \tx_gen.tx_n_28\,
      in_data(1) => tx_frame_sync,
      in_data(0) => tx_channel_sync,
      \lrclk_count_reg[5]_0\ => \^channel_sync_int\,
      out_data(22 downto 0) => out_data(22 downto 0),
      rx_enable => rx_enable,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      tx_bclk => tx_bclk,
      tx_lrclk => tx_lrclk,
      tx_stb => tx_stb,
      tx_tick => tx_tick
    );
\data_reset_vec_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => data_clk_i,
      CE => '1',
      D => '0',
      PRE => \^sr\(0),
      Q => data_reset_vec(0)
    );
\data_reset_vec_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => data_clk_i,
      CE => '1',
      D => data_reset_vec(0),
      PRE => \^sr\(0),
      Q => data_reset_vec(1)
    );
\data_reset_vec_reg[2]\: unisim.vcomponents.FDPE
     port map (
      C => data_clk_i,
      CE => '1',
      D => data_reset_vec(1),
      PRE => \^sr\(0),
      Q => data_reset_vec(2)
    );
\lrclk_o_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => data_clk_i,
      CE => '1',
      D => tx_sync_n_1,
      Q => lrclk_o(0),
      S => data_reset_vec(2)
    );
\rx_gen.rx\: entity work.icyradio_axi_i2s_adi_0_1_i2s_rx
     port map (
      E(0) => p_5_in,
      bclk_d1 => bclk_d1,
      bclk_d1_reg_0 => \^sr\(0),
      \gen[0].data_latched_reg[0][23]_0\(23 downto 0) => \gen[0].data_latched_reg[0][23]\(23 downto 0),
      out_data(3) => \rx_gen.rx_sync_n_1\,
      out_data(2 downto 0) => rx_sync_fifo_out(2 downto 0),
      rx_ack => rx_ack,
      rx_enable => rx_enable,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      sequencer_state_reg_0 => rx_stb
    );
\rx_gen.rx_sync\: entity work.\icyradio_axi_i2s_adi_0_1_fifo_synchronizer__xdcDup__1\
     port map (
      E(0) => p_5_in,
      Q(3) => \rx_gen.rx_sync_n_1\,
      Q(2 downto 0) => rx_sync_fifo_out(2 downto 0),
      bclk_d1 => bclk_d1,
      data_clk_i => data_clk_i,
      \out_data_reg[1]_0\(4 downto 0) => rx_sync_fifo_in(4 downto 0),
      \rd_addr_reg[1]_0\ => \^sr\(0),
      s_axi_aclk => s_axi_aclk,
      \wr_addr_reg[1]_0\(0) => data_reset_vec(2)
    );
\rx_sync_fifo_in[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_reset_vec(2),
      O => data_resetn
    );
\rx_sync_fifo_in_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_resetn,
      D => tx_sync_n_4,
      Q => rx_sync_fifo_in(0),
      R => '0'
    );
\rx_sync_fifo_in_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_resetn,
      D => tx_sync_n_3,
      Q => rx_sync_fifo_in(1),
      R => '0'
    );
\rx_sync_fifo_in_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_resetn,
      D => p_1_in,
      Q => rx_sync_fifo_in(2),
      R => '0'
    );
\rx_sync_fifo_in_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_resetn,
      D => tx_sync_n_1,
      Q => rx_sync_fifo_in(3),
      R => '0'
    );
\rx_sync_fifo_in_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => data_resetn,
      D => sdata_i(0),
      Q => rx_sync_fifo_in(4),
      R => '0'
    );
\sdata_o_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk_i,
      CE => '1',
      D => tx_sync_n_0,
      Q => sdata_o(0),
      R => data_reset_vec(2)
    );
\tx_gen.tx\: entity work.icyradio_axi_i2s_adi_0_1_i2s_tx
     port map (
      D(23) => clkgen_n_3,
      D(22) => clkgen_n_4,
      D(21) => clkgen_n_5,
      D(20) => clkgen_n_6,
      D(19) => clkgen_n_7,
      D(18) => clkgen_n_8,
      D(17) => clkgen_n_9,
      D(16) => clkgen_n_10,
      D(15) => clkgen_n_11,
      D(14) => clkgen_n_12,
      D(13) => clkgen_n_13,
      D(12) => clkgen_n_14,
      D(11) => clkgen_n_15,
      D(10) => clkgen_n_16,
      D(9) => clkgen_n_17,
      D(8) => clkgen_n_18,
      D(7) => clkgen_n_19,
      D(6) => clkgen_n_20,
      D(5) => clkgen_n_21,
      D(4) => clkgen_n_22,
      D(3) => clkgen_n_23,
      D(2) => clkgen_n_24,
      D(1) => clkgen_n_25,
      D(0) => D(0),
      E(0) => p_3_in,
      Q(22) => \tx_gen.tx_n_6\,
      Q(21) => \tx_gen.tx_n_7\,
      Q(20) => \tx_gen.tx_n_8\,
      Q(19) => \tx_gen.tx_n_9\,
      Q(18) => \tx_gen.tx_n_10\,
      Q(17) => \tx_gen.tx_n_11\,
      Q(16) => \tx_gen.tx_n_12\,
      Q(15) => \tx_gen.tx_n_13\,
      Q(14) => \tx_gen.tx_n_14\,
      Q(13) => \tx_gen.tx_n_15\,
      Q(12) => \tx_gen.tx_n_16\,
      Q(11) => \tx_gen.tx_n_17\,
      Q(10) => \tx_gen.tx_n_18\,
      Q(9) => \tx_gen.tx_n_19\,
      Q(8) => \tx_gen.tx_n_20\,
      Q(7) => \tx_gen.tx_n_21\,
      Q(6) => \tx_gen.tx_n_22\,
      Q(5) => \tx_gen.tx_n_23\,
      Q(4) => \tx_gen.tx_n_24\,
      Q(3) => \tx_gen.tx_n_25\,
      Q(2) => \tx_gen.tx_n_26\,
      Q(1) => \tx_gen.tx_n_27\,
      Q(0) => \tx_gen.tx_n_28\,
      channel_sync_int => \^channel_sync_int\,
      channel_sync_int_d1 => channel_sync_int_d1,
      enable_int_reg_0 => \^enable_int\,
      enable_int_reg_1 => clkgen_n_27,
      \gen[0].data_int_reg[0][31]_0\(0) => tx_sdata,
      \gen[0].data_int_reg[0][8]_0\ => \gen[0].data_int_reg[0][8]\,
      in_data(0) => tx_bclk,
      rd_addr0 => rd_addr0,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_aresetn_0 => \^sr\(0),
      tx_stb => tx_stb
    );
tx_sync: entity work.icyradio_axi_i2s_adi_0_1_fifo_synchronizer
     port map (
      Q(0) => data_reset_vec(2),
      cdc_sync_stage2_tick => cdc_sync_stage2_tick,
      cdc_sync_stage3_tick => cdc_sync_stage3_tick,
      data_clk_i => data_clk_i,
      in_data(4) => tx_sdata,
      in_data(3) => tx_lrclk,
      in_data(2) => tx_bclk,
      in_data(1) => tx_frame_sync,
      in_data(0) => tx_channel_sync,
      \out_data_reg[4]_0\(4) => tx_sync_n_0,
      \out_data_reg[4]_0\(3) => tx_sync_n_1,
      \out_data_reg[4]_0\(2) => p_1_in,
      \out_data_reg[4]_0\(1) => tx_sync_n_3,
      \out_data_reg[4]_0\(0) => tx_sync_n_4,
      s_axi_aclk => s_axi_aclk,
      tx_tick => tx_tick,
      \wr_addr_reg[1]_0\ => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_i2s_adi_0_1_axi_i2s_adi is
  port (
    data_clk_i : in STD_LOGIC;
    bclk_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    lrclk_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    sdata_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    sdata_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_aclk : in STD_LOGIC;
    s_axis_aresetn : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    m_axis_aclk : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    dma_req_tx_aclk : in STD_LOGIC;
    dma_req_tx_rstn : in STD_LOGIC;
    dma_req_tx_davalid : in STD_LOGIC;
    dma_req_tx_datype : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dma_req_tx_daready : out STD_LOGIC;
    dma_req_tx_drvalid : out STD_LOGIC;
    dma_req_tx_drtype : out STD_LOGIC_VECTOR ( 1 downto 0 );
    dma_req_tx_drlast : out STD_LOGIC;
    dma_req_tx_drready : in STD_LOGIC;
    dma_req_rx_aclk : in STD_LOGIC;
    dma_req_rx_rstn : in STD_LOGIC;
    dma_req_rx_davalid : in STD_LOGIC;
    dma_req_rx_datype : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dma_req_rx_daready : out STD_LOGIC;
    dma_req_rx_drvalid : out STD_LOGIC;
    dma_req_rx_drtype : out STD_LOGIC_VECTOR ( 1 downto 0 );
    dma_req_rx_drlast : out STD_LOGIC;
    dma_req_rx_drready : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute BCLK_POL : integer;
  attribute BCLK_POL of icyradio_axi_i2s_adi_0_1_axi_i2s_adi : entity is 0;
  attribute DEVICE_FAMILY : string;
  attribute DEVICE_FAMILY of icyradio_axi_i2s_adi_0_1_axi_i2s_adi : entity is "virtex6";
  attribute DMA_TYPE : integer;
  attribute DMA_TYPE of icyradio_axi_i2s_adi_0_1_axi_i2s_adi : entity is 0;
  attribute HAS_RX : integer;
  attribute HAS_RX of icyradio_axi_i2s_adi_0_1_axi_i2s_adi : entity is 1;
  attribute HAS_TX : integer;
  attribute HAS_TX of icyradio_axi_i2s_adi_0_1_axi_i2s_adi : entity is 1;
  attribute LRCLK_POL : integer;
  attribute LRCLK_POL of icyradio_axi_i2s_adi_0_1_axi_i2s_adi : entity is 0;
  attribute NUM_OF_CHANNEL : integer;
  attribute NUM_OF_CHANNEL of icyradio_axi_i2s_adi_0_1_axi_i2s_adi : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icyradio_axi_i2s_adi_0_1_axi_i2s_adi : entity is "axi_i2s_adi";
  attribute SLOT_WIDTH : integer;
  attribute SLOT_WIDTH of icyradio_axi_i2s_adi_0_1_axi_i2s_adi : entity is 24;
  attribute S_AXI_ADDRESS_WIDTH : integer;
  attribute S_AXI_ADDRESS_WIDTH of icyradio_axi_i2s_adi_0_1_axi_i2s_adi : entity is 32;
  attribute S_AXI_DATA_WIDTH : integer;
  attribute S_AXI_DATA_WIDTH of icyradio_axi_i2s_adi_0_1_axi_i2s_adi : entity is 32;
end icyradio_axi_i2s_adi_0_1_axi_i2s_adi;

architecture STRUCTURE of icyradio_axi_i2s_adi_0_1_axi_i2s_adi is
  signal \<const0>\ : STD_LOGIC;
  signal I2S_CLK_CONTROL_REG : STD_LOGIC;
  signal \I2S_CLK_CONTROL_REG__0\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \I2S_CONTROL_REG_reg_n_0_[0]\ : STD_LOGIC;
  signal \I2S_RESET_REG[1]_i_2_n_0\ : STD_LOGIC;
  signal PERIOD_LEN_REG : STD_LOGIC;
  signal \PERIOD_LEN_REG_reg_n_0_[0]\ : STD_LOGIC;
  signal \PERIOD_LEN_REG_reg_n_0_[10]\ : STD_LOGIC;
  signal \PERIOD_LEN_REG_reg_n_0_[11]\ : STD_LOGIC;
  signal \PERIOD_LEN_REG_reg_n_0_[12]\ : STD_LOGIC;
  signal \PERIOD_LEN_REG_reg_n_0_[13]\ : STD_LOGIC;
  signal \PERIOD_LEN_REG_reg_n_0_[14]\ : STD_LOGIC;
  signal \PERIOD_LEN_REG_reg_n_0_[15]\ : STD_LOGIC;
  signal \PERIOD_LEN_REG_reg_n_0_[1]\ : STD_LOGIC;
  signal \PERIOD_LEN_REG_reg_n_0_[2]\ : STD_LOGIC;
  signal \PERIOD_LEN_REG_reg_n_0_[3]\ : STD_LOGIC;
  signal \PERIOD_LEN_REG_reg_n_0_[4]\ : STD_LOGIC;
  signal \PERIOD_LEN_REG_reg_n_0_[5]\ : STD_LOGIC;
  signal \PERIOD_LEN_REG_reg_n_0_[6]\ : STD_LOGIC;
  signal \PERIOD_LEN_REG_reg_n_0_[7]\ : STD_LOGIC;
  signal \PERIOD_LEN_REG_reg_n_0_[8]\ : STD_LOGIC;
  signal \PERIOD_LEN_REG_reg_n_0_[9]\ : STD_LOGIC;
  signal \cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal cnt_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \cnt_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal ctrl_n_0 : STD_LOGIC;
  signal ctrlif_n_1 : STD_LOGIC;
  signal ctrlif_n_2 : STD_LOGIC;
  signal ctrlif_n_4 : STD_LOGIC;
  signal \fifo/rd_addr0\ : STD_LOGIC;
  signal \gen[0].data_latched_reg[0]\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \^m_axis_tdata\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal rx_ack : STD_LOGIC;
  signal rx_enable : STD_LOGIC;
  signal rx_stb : STD_LOGIC;
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \^s_axi_wready\ : STD_LOGIC;
  signal \streaming_dma_tx_gen.tx_fifo_n_1\ : STD_LOGIC;
  signal \streaming_dma_tx_gen.tx_fifo_n_10\ : STD_LOGIC;
  signal \streaming_dma_tx_gen.tx_fifo_n_11\ : STD_LOGIC;
  signal \streaming_dma_tx_gen.tx_fifo_n_12\ : STD_LOGIC;
  signal \streaming_dma_tx_gen.tx_fifo_n_13\ : STD_LOGIC;
  signal \streaming_dma_tx_gen.tx_fifo_n_14\ : STD_LOGIC;
  signal \streaming_dma_tx_gen.tx_fifo_n_15\ : STD_LOGIC;
  signal \streaming_dma_tx_gen.tx_fifo_n_16\ : STD_LOGIC;
  signal \streaming_dma_tx_gen.tx_fifo_n_17\ : STD_LOGIC;
  signal \streaming_dma_tx_gen.tx_fifo_n_18\ : STD_LOGIC;
  signal \streaming_dma_tx_gen.tx_fifo_n_19\ : STD_LOGIC;
  signal \streaming_dma_tx_gen.tx_fifo_n_20\ : STD_LOGIC;
  signal \streaming_dma_tx_gen.tx_fifo_n_21\ : STD_LOGIC;
  signal \streaming_dma_tx_gen.tx_fifo_n_22\ : STD_LOGIC;
  signal \streaming_dma_tx_gen.tx_fifo_n_23\ : STD_LOGIC;
  signal \streaming_dma_tx_gen.tx_fifo_n_24\ : STD_LOGIC;
  signal \streaming_dma_tx_gen.tx_fifo_n_25\ : STD_LOGIC;
  signal \streaming_dma_tx_gen.tx_fifo_n_26\ : STD_LOGIC;
  signal \streaming_dma_tx_gen.tx_fifo_n_3\ : STD_LOGIC;
  signal \streaming_dma_tx_gen.tx_fifo_n_4\ : STD_LOGIC;
  signal \streaming_dma_tx_gen.tx_fifo_n_5\ : STD_LOGIC;
  signal \streaming_dma_tx_gen.tx_fifo_n_6\ : STD_LOGIC;
  signal \streaming_dma_tx_gen.tx_fifo_n_7\ : STD_LOGIC;
  signal \streaming_dma_tx_gen.tx_fifo_n_8\ : STD_LOGIC;
  signal \streaming_dma_tx_gen.tx_fifo_n_9\ : STD_LOGIC;
  signal tx_fifo_reset : STD_LOGIC;
  signal \tx_gen.tx/channel_sync_int\ : STD_LOGIC;
  signal \tx_gen.tx/channel_sync_int_d1\ : STD_LOGIC;
  signal \tx_gen.tx/enable_int\ : STD_LOGIC;
  signal tx_stb : STD_LOGIC;
  signal \NLW_cnt_reg[4]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  dma_req_rx_daready <= \<const0>\;
  dma_req_rx_drlast <= \<const0>\;
  dma_req_rx_drtype(1) <= \<const0>\;
  dma_req_rx_drtype(0) <= \<const0>\;
  dma_req_rx_drvalid <= \<const0>\;
  dma_req_tx_daready <= \<const0>\;
  dma_req_tx_drlast <= \<const0>\;
  dma_req_tx_drtype(1) <= \<const0>\;
  dma_req_tx_drtype(0) <= \<const0>\;
  dma_req_tx_drvalid <= \<const0>\;
  m_axis_tdata(31 downto 8) <= \^m_axis_tdata\(31 downto 8);
  m_axis_tdata(7) <= \<const0>\;
  m_axis_tdata(6) <= \<const0>\;
  m_axis_tdata(5) <= \<const0>\;
  m_axis_tdata(4) <= \<const0>\;
  m_axis_tdata(3) <= \<const0>\;
  m_axis_tdata(2) <= \<const0>\;
  m_axis_tdata(1) <= \<const0>\;
  m_axis_tdata(0) <= \<const0>\;
  m_axis_tkeep(3) <= \<const0>\;
  m_axis_tkeep(2) <= \<const0>\;
  m_axis_tkeep(1) <= \<const0>\;
  m_axis_tkeep(0) <= \<const0>\;
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
  s_axi_rdata(23 downto 0) <= \^s_axi_rdata\(23 downto 0);
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_wready <= \^s_axi_wready\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\I2S_CLK_CONTROL_REG_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => I2S_CLK_CONTROL_REG,
      D => s_axi_wdata(0),
      Q => \I2S_CLK_CONTROL_REG__0\(0),
      R => ctrl_n_0
    );
\I2S_CLK_CONTROL_REG_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => I2S_CLK_CONTROL_REG,
      D => s_axi_wdata(16),
      Q => \I2S_CLK_CONTROL_REG__0\(16),
      R => ctrl_n_0
    );
\I2S_CLK_CONTROL_REG_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => I2S_CLK_CONTROL_REG,
      D => s_axi_wdata(17),
      Q => \I2S_CLK_CONTROL_REG__0\(17),
      R => ctrl_n_0
    );
\I2S_CLK_CONTROL_REG_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => I2S_CLK_CONTROL_REG,
      D => s_axi_wdata(18),
      Q => \I2S_CLK_CONTROL_REG__0\(18),
      R => ctrl_n_0
    );
\I2S_CLK_CONTROL_REG_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => I2S_CLK_CONTROL_REG,
      D => s_axi_wdata(19),
      Q => \I2S_CLK_CONTROL_REG__0\(19),
      R => ctrl_n_0
    );
\I2S_CLK_CONTROL_REG_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => I2S_CLK_CONTROL_REG,
      D => s_axi_wdata(1),
      Q => \I2S_CLK_CONTROL_REG__0\(1),
      R => ctrl_n_0
    );
\I2S_CLK_CONTROL_REG_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => I2S_CLK_CONTROL_REG,
      D => s_axi_wdata(20),
      Q => \I2S_CLK_CONTROL_REG__0\(20),
      R => ctrl_n_0
    );
\I2S_CLK_CONTROL_REG_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => I2S_CLK_CONTROL_REG,
      D => s_axi_wdata(21),
      Q => \I2S_CLK_CONTROL_REG__0\(21),
      R => ctrl_n_0
    );
\I2S_CLK_CONTROL_REG_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => I2S_CLK_CONTROL_REG,
      D => s_axi_wdata(22),
      Q => \I2S_CLK_CONTROL_REG__0\(22),
      R => ctrl_n_0
    );
\I2S_CLK_CONTROL_REG_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => I2S_CLK_CONTROL_REG,
      D => s_axi_wdata(23),
      Q => \I2S_CLK_CONTROL_REG__0\(23),
      R => ctrl_n_0
    );
\I2S_CLK_CONTROL_REG_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => I2S_CLK_CONTROL_REG,
      D => s_axi_wdata(2),
      Q => \I2S_CLK_CONTROL_REG__0\(2),
      R => ctrl_n_0
    );
\I2S_CLK_CONTROL_REG_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => I2S_CLK_CONTROL_REG,
      D => s_axi_wdata(3),
      Q => \I2S_CLK_CONTROL_REG__0\(3),
      R => ctrl_n_0
    );
\I2S_CLK_CONTROL_REG_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => I2S_CLK_CONTROL_REG,
      D => s_axi_wdata(4),
      Q => \I2S_CLK_CONTROL_REG__0\(4),
      R => ctrl_n_0
    );
\I2S_CLK_CONTROL_REG_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => I2S_CLK_CONTROL_REG,
      D => s_axi_wdata(5),
      Q => \I2S_CLK_CONTROL_REG__0\(5),
      R => ctrl_n_0
    );
\I2S_CLK_CONTROL_REG_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => I2S_CLK_CONTROL_REG,
      D => s_axi_wdata(6),
      Q => \I2S_CLK_CONTROL_REG__0\(6),
      R => ctrl_n_0
    );
\I2S_CLK_CONTROL_REG_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => I2S_CLK_CONTROL_REG,
      D => s_axi_wdata(7),
      Q => \I2S_CLK_CONTROL_REG__0\(7),
      R => ctrl_n_0
    );
\I2S_CONTROL_REG_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ctrlif_n_2,
      Q => \I2S_CONTROL_REG_reg_n_0_[0]\,
      R => ctrl_n_0
    );
\I2S_CONTROL_REG_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ctrlif_n_1,
      Q => rx_enable,
      R => ctrl_n_0
    );
\I2S_RESET_REG[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_axi_awaddr(4),
      I1 => s_axi_awaddr(3),
      O => \I2S_RESET_REG[1]_i_2_n_0\
    );
\I2S_RESET_REG_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ctrlif_n_4,
      Q => tx_fifo_reset,
      R => '0'
    );
\PERIOD_LEN_REG_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => PERIOD_LEN_REG,
      D => s_axi_wdata(0),
      Q => \PERIOD_LEN_REG_reg_n_0_[0]\,
      R => ctrl_n_0
    );
\PERIOD_LEN_REG_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => PERIOD_LEN_REG,
      D => s_axi_wdata(10),
      Q => \PERIOD_LEN_REG_reg_n_0_[10]\,
      R => ctrl_n_0
    );
\PERIOD_LEN_REG_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => PERIOD_LEN_REG,
      D => s_axi_wdata(11),
      Q => \PERIOD_LEN_REG_reg_n_0_[11]\,
      R => ctrl_n_0
    );
\PERIOD_LEN_REG_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => PERIOD_LEN_REG,
      D => s_axi_wdata(12),
      Q => \PERIOD_LEN_REG_reg_n_0_[12]\,
      R => ctrl_n_0
    );
\PERIOD_LEN_REG_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => PERIOD_LEN_REG,
      D => s_axi_wdata(13),
      Q => \PERIOD_LEN_REG_reg_n_0_[13]\,
      R => ctrl_n_0
    );
\PERIOD_LEN_REG_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => PERIOD_LEN_REG,
      D => s_axi_wdata(14),
      Q => \PERIOD_LEN_REG_reg_n_0_[14]\,
      R => ctrl_n_0
    );
\PERIOD_LEN_REG_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => PERIOD_LEN_REG,
      D => s_axi_wdata(15),
      Q => \PERIOD_LEN_REG_reg_n_0_[15]\,
      R => ctrl_n_0
    );
\PERIOD_LEN_REG_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => PERIOD_LEN_REG,
      D => s_axi_wdata(1),
      Q => \PERIOD_LEN_REG_reg_n_0_[1]\,
      R => ctrl_n_0
    );
\PERIOD_LEN_REG_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => PERIOD_LEN_REG,
      D => s_axi_wdata(2),
      Q => \PERIOD_LEN_REG_reg_n_0_[2]\,
      R => ctrl_n_0
    );
\PERIOD_LEN_REG_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => PERIOD_LEN_REG,
      D => s_axi_wdata(3),
      Q => \PERIOD_LEN_REG_reg_n_0_[3]\,
      R => ctrl_n_0
    );
\PERIOD_LEN_REG_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => PERIOD_LEN_REG,
      D => s_axi_wdata(4),
      Q => \PERIOD_LEN_REG_reg_n_0_[4]\,
      R => ctrl_n_0
    );
\PERIOD_LEN_REG_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => PERIOD_LEN_REG,
      D => s_axi_wdata(5),
      Q => \PERIOD_LEN_REG_reg_n_0_[5]\,
      R => ctrl_n_0
    );
\PERIOD_LEN_REG_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => PERIOD_LEN_REG,
      D => s_axi_wdata(6),
      Q => \PERIOD_LEN_REG_reg_n_0_[6]\,
      R => ctrl_n_0
    );
\PERIOD_LEN_REG_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => PERIOD_LEN_REG,
      D => s_axi_wdata(7),
      Q => \PERIOD_LEN_REG_reg_n_0_[7]\,
      R => ctrl_n_0
    );
\PERIOD_LEN_REG_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => PERIOD_LEN_REG,
      D => s_axi_wdata(8),
      Q => \PERIOD_LEN_REG_reg_n_0_[8]\,
      R => ctrl_n_0
    );
\PERIOD_LEN_REG_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => PERIOD_LEN_REG,
      D => s_axi_wdata(9),
      Q => \PERIOD_LEN_REG_reg_n_0_[9]\,
      R => ctrl_n_0
    );
\cnt[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(0),
      O => \cnt[0]_i_2_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \cnt_reg[0]_i_1_n_7\,
      Q => cnt_reg(0),
      R => ctrl_n_0
    );
\cnt_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cnt_reg[0]_i_1_n_0\,
      CO(2) => \cnt_reg[0]_i_1_n_1\,
      CO(1) => \cnt_reg[0]_i_1_n_2\,
      CO(0) => \cnt_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \cnt_reg[0]_i_1_n_4\,
      O(2) => \cnt_reg[0]_i_1_n_5\,
      O(1) => \cnt_reg[0]_i_1_n_6\,
      O(0) => \cnt_reg[0]_i_1_n_7\,
      S(3 downto 1) => cnt_reg(3 downto 1),
      S(0) => \cnt[0]_i_2_n_0\
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \cnt_reg[0]_i_1_n_6\,
      Q => cnt_reg(1),
      R => ctrl_n_0
    );
\cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \cnt_reg[0]_i_1_n_5\,
      Q => cnt_reg(2),
      R => ctrl_n_0
    );
\cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \cnt_reg[0]_i_1_n_4\,
      Q => cnt_reg(3),
      R => ctrl_n_0
    );
\cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \cnt_reg[4]_i_1_n_7\,
      Q => cnt_reg(4),
      R => ctrl_n_0
    );
\cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[0]_i_1_n_0\,
      CO(3) => \NLW_cnt_reg[4]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \cnt_reg[4]_i_1_n_1\,
      CO(1) => \cnt_reg[4]_i_1_n_2\,
      CO(0) => \cnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[4]_i_1_n_4\,
      O(2) => \cnt_reg[4]_i_1_n_5\,
      O(1) => \cnt_reg[4]_i_1_n_6\,
      O(0) => \cnt_reg[4]_i_1_n_7\,
      S(3 downto 0) => cnt_reg(7 downto 4)
    );
\cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \cnt_reg[4]_i_1_n_6\,
      Q => cnt_reg(5),
      R => ctrl_n_0
    );
\cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \cnt_reg[4]_i_1_n_5\,
      Q => cnt_reg(6),
      R => ctrl_n_0
    );
\cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \cnt_reg[4]_i_1_n_4\,
      Q => cnt_reg(7),
      R => ctrl_n_0
    );
ctrl: entity work.icyradio_axi_i2s_adi_0_1_i2s_controller
     port map (
      D(0) => \streaming_dma_tx_gen.tx_fifo_n_3\,
      Q(15 downto 8) => \I2S_CLK_CONTROL_REG__0\(23 downto 16),
      Q(7 downto 0) => \I2S_CLK_CONTROL_REG__0\(7 downto 0),
      SR(0) => ctrl_n_0,
      bclk_o(0) => bclk_o(0),
      channel_sync_int => \tx_gen.tx/channel_sync_int\,
      channel_sync_int_d1 => \tx_gen.tx/channel_sync_int_d1\,
      data_clk_i => data_clk_i,
      enable_int => \tx_gen.tx/enable_int\,
      \gen[0].data_int_reg[0][8]\ => \I2S_CONTROL_REG_reg_n_0_[0]\,
      \gen[0].data_latched_reg[0][23]\(23 downto 0) => \gen[0].data_latched_reg[0]\(23 downto 0),
      lrclk_o(0) => lrclk_o(0),
      out_data(22) => \streaming_dma_tx_gen.tx_fifo_n_4\,
      out_data(21) => \streaming_dma_tx_gen.tx_fifo_n_5\,
      out_data(20) => \streaming_dma_tx_gen.tx_fifo_n_6\,
      out_data(19) => \streaming_dma_tx_gen.tx_fifo_n_7\,
      out_data(18) => \streaming_dma_tx_gen.tx_fifo_n_8\,
      out_data(17) => \streaming_dma_tx_gen.tx_fifo_n_9\,
      out_data(16) => \streaming_dma_tx_gen.tx_fifo_n_10\,
      out_data(15) => \streaming_dma_tx_gen.tx_fifo_n_11\,
      out_data(14) => \streaming_dma_tx_gen.tx_fifo_n_12\,
      out_data(13) => \streaming_dma_tx_gen.tx_fifo_n_13\,
      out_data(12) => \streaming_dma_tx_gen.tx_fifo_n_14\,
      out_data(11) => \streaming_dma_tx_gen.tx_fifo_n_15\,
      out_data(10) => \streaming_dma_tx_gen.tx_fifo_n_16\,
      out_data(9) => \streaming_dma_tx_gen.tx_fifo_n_17\,
      out_data(8) => \streaming_dma_tx_gen.tx_fifo_n_18\,
      out_data(7) => \streaming_dma_tx_gen.tx_fifo_n_19\,
      out_data(6) => \streaming_dma_tx_gen.tx_fifo_n_20\,
      out_data(5) => \streaming_dma_tx_gen.tx_fifo_n_21\,
      out_data(4) => \streaming_dma_tx_gen.tx_fifo_n_22\,
      out_data(3) => \streaming_dma_tx_gen.tx_fifo_n_23\,
      out_data(2) => \streaming_dma_tx_gen.tx_fifo_n_24\,
      out_data(1) => \streaming_dma_tx_gen.tx_fifo_n_25\,
      out_data(0) => \streaming_dma_tx_gen.tx_fifo_n_26\,
      rd_addr0 => \fifo/rd_addr0\,
      rx_ack => rx_ack,
      rx_enable => rx_enable,
      rx_stb => rx_stb,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      sdata_i(0) => sdata_i(0),
      sdata_o(0) => sdata_o(0),
      tx_stb => tx_stb
    );
ctrlif: entity work.icyradio_axi_i2s_adi_0_1_axi_ctrlif
     port map (
      E(0) => PERIOD_LEN_REG,
      \FSM_onehot_wr_state_reg[1]_0\ => \^s_axi_wready\,
      \FSM_onehot_wr_state_reg[2]_0\ => s_axi_bvalid,
      FSM_sequential_rd_state_reg_0 => s_axi_rvalid,
      \I2S_CONTROL_REG_reg[0]\ => \I2S_CONTROL_REG_reg_n_0_[0]\,
      \I2S_RESET_REG_reg[1]\ => \I2S_RESET_REG[1]_i_2_n_0\,
      Q(15 downto 8) => \I2S_CLK_CONTROL_REG__0\(23 downto 16),
      Q(7 downto 0) => \I2S_CLK_CONTROL_REG__0\(7 downto 0),
      SR(0) => ctrl_n_0,
      cnt_reg(7 downto 0) => cnt_reg(7 downto 0),
      rx_enable => rx_enable,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(3 downto 0) => s_axi_araddr(5 downto 2),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(3 downto 0) => s_axi_awaddr(5 downto 2),
      \s_axi_awaddr[4]\(0) => I2S_CLK_CONTROL_REG,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_rdata(23 downto 0) => \^s_axi_rdata\(23 downto 0),
      \s_axi_rdata[15]\(15) => \PERIOD_LEN_REG_reg_n_0_[15]\,
      \s_axi_rdata[15]\(14) => \PERIOD_LEN_REG_reg_n_0_[14]\,
      \s_axi_rdata[15]\(13) => \PERIOD_LEN_REG_reg_n_0_[13]\,
      \s_axi_rdata[15]\(12) => \PERIOD_LEN_REG_reg_n_0_[12]\,
      \s_axi_rdata[15]\(11) => \PERIOD_LEN_REG_reg_n_0_[11]\,
      \s_axi_rdata[15]\(10) => \PERIOD_LEN_REG_reg_n_0_[10]\,
      \s_axi_rdata[15]\(9) => \PERIOD_LEN_REG_reg_n_0_[9]\,
      \s_axi_rdata[15]\(8) => \PERIOD_LEN_REG_reg_n_0_[8]\,
      \s_axi_rdata[15]\(7) => \PERIOD_LEN_REG_reg_n_0_[7]\,
      \s_axi_rdata[15]\(6) => \PERIOD_LEN_REG_reg_n_0_[6]\,
      \s_axi_rdata[15]\(5) => \PERIOD_LEN_REG_reg_n_0_[5]\,
      \s_axi_rdata[15]\(4) => \PERIOD_LEN_REG_reg_n_0_[4]\,
      \s_axi_rdata[15]\(3) => \PERIOD_LEN_REG_reg_n_0_[3]\,
      \s_axi_rdata[15]\(2) => \PERIOD_LEN_REG_reg_n_0_[2]\,
      \s_axi_rdata[15]\(1) => \PERIOD_LEN_REG_reg_n_0_[1]\,
      \s_axi_rdata[15]\(0) => \PERIOD_LEN_REG_reg_n_0_[0]\,
      s_axi_rready => s_axi_rready,
      s_axi_wdata(1 downto 0) => s_axi_wdata(1 downto 0),
      \s_axi_wdata[1]_0\ => ctrlif_n_4,
      s_axi_wdata_0_sp_1 => ctrlif_n_2,
      s_axi_wdata_1_sp_1 => ctrlif_n_1,
      s_axi_wvalid => s_axi_wvalid
    );
\streaming_dma_rx_gen.rx_fifo\: entity work.icyradio_axi_i2s_adi_0_1_axi_streaming_dma_rx_fifo
     port map (
      Q(15) => \PERIOD_LEN_REG_reg_n_0_[15]\,
      Q(14) => \PERIOD_LEN_REG_reg_n_0_[14]\,
      Q(13) => \PERIOD_LEN_REG_reg_n_0_[13]\,
      Q(12) => \PERIOD_LEN_REG_reg_n_0_[12]\,
      Q(11) => \PERIOD_LEN_REG_reg_n_0_[11]\,
      Q(10) => \PERIOD_LEN_REG_reg_n_0_[10]\,
      Q(9) => \PERIOD_LEN_REG_reg_n_0_[9]\,
      Q(8) => \PERIOD_LEN_REG_reg_n_0_[8]\,
      Q(7) => \PERIOD_LEN_REG_reg_n_0_[7]\,
      Q(6) => \PERIOD_LEN_REG_reg_n_0_[6]\,
      Q(5) => \PERIOD_LEN_REG_reg_n_0_[5]\,
      Q(4) => \PERIOD_LEN_REG_reg_n_0_[4]\,
      Q(3) => \PERIOD_LEN_REG_reg_n_0_[3]\,
      Q(2) => \PERIOD_LEN_REG_reg_n_0_[2]\,
      Q(1) => \PERIOD_LEN_REG_reg_n_0_[1]\,
      Q(0) => \PERIOD_LEN_REG_reg_n_0_[0]\,
      SR(0) => \streaming_dma_tx_gen.tx_fifo_n_1\,
      \gen[0].data_latched_reg[0]\(23 downto 0) => \gen[0].data_latched_reg[0]\(23 downto 0),
      m_axis_aclk => m_axis_aclk,
      m_axis_tdata(23 downto 0) => \^m_axis_tdata\(31 downto 8),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => m_axis_tready,
      not_empty_reg => m_axis_tvalid,
      rx_ack => rx_ack,
      rx_stb => rx_stb,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn
    );
\streaming_dma_tx_gen.tx_fifo\: entity work.icyradio_axi_i2s_adi_0_1_axi_streaming_dma_tx_fifo
     port map (
      D(0) => \streaming_dma_tx_gen.tx_fifo_n_3\,
      SR(0) => \streaming_dma_tx_gen.tx_fifo_n_1\,
      channel_sync_int => \tx_gen.tx/channel_sync_int\,
      channel_sync_int_d1 => \tx_gen.tx/channel_sync_int_d1\,
      \drain_process.enable_d1_reg_0\ => \I2S_CONTROL_REG_reg_n_0_[0]\,
      enable_int => \tx_gen.tx/enable_int\,
      out_data(22) => \streaming_dma_tx_gen.tx_fifo_n_4\,
      out_data(21) => \streaming_dma_tx_gen.tx_fifo_n_5\,
      out_data(20) => \streaming_dma_tx_gen.tx_fifo_n_6\,
      out_data(19) => \streaming_dma_tx_gen.tx_fifo_n_7\,
      out_data(18) => \streaming_dma_tx_gen.tx_fifo_n_8\,
      out_data(17) => \streaming_dma_tx_gen.tx_fifo_n_9\,
      out_data(16) => \streaming_dma_tx_gen.tx_fifo_n_10\,
      out_data(15) => \streaming_dma_tx_gen.tx_fifo_n_11\,
      out_data(14) => \streaming_dma_tx_gen.tx_fifo_n_12\,
      out_data(13) => \streaming_dma_tx_gen.tx_fifo_n_13\,
      out_data(12) => \streaming_dma_tx_gen.tx_fifo_n_14\,
      out_data(11) => \streaming_dma_tx_gen.tx_fifo_n_15\,
      out_data(10) => \streaming_dma_tx_gen.tx_fifo_n_16\,
      out_data(9) => \streaming_dma_tx_gen.tx_fifo_n_17\,
      out_data(8) => \streaming_dma_tx_gen.tx_fifo_n_18\,
      out_data(7) => \streaming_dma_tx_gen.tx_fifo_n_19\,
      out_data(6) => \streaming_dma_tx_gen.tx_fifo_n_20\,
      out_data(5) => \streaming_dma_tx_gen.tx_fifo_n_21\,
      out_data(4) => \streaming_dma_tx_gen.tx_fifo_n_22\,
      out_data(3) => \streaming_dma_tx_gen.tx_fifo_n_23\,
      out_data(2) => \streaming_dma_tx_gen.tx_fifo_n_24\,
      out_data(1) => \streaming_dma_tx_gen.tx_fifo_n_25\,
      out_data(0) => \streaming_dma_tx_gen.tx_fifo_n_26\,
      rd_addr0 => \fifo/rd_addr0\,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axis_aclk => s_axis_aclk,
      s_axis_tdata(23 downto 0) => s_axis_tdata(31 downto 8),
      s_axis_tlast => s_axis_tlast,
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid,
      tx_fifo_reset => tx_fifo_reset,
      tx_stb => tx_stb
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_axi_i2s_adi_0_1 is
  port (
    data_clk_i : in STD_LOGIC;
    bclk_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    lrclk_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    sdata_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    sdata_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_aclk : in STD_LOGIC;
    s_axis_aresetn : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    m_axis_aclk : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of icyradio_axi_i2s_adi_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of icyradio_axi_i2s_adi_0_1 : entity is "icyradio_axi_i2s_adi_0_1,axi_i2s_adi,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of icyradio_axi_i2s_adi_0_1 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of icyradio_axi_i2s_adi_0_1 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of icyradio_axi_i2s_adi_0_1 : entity is "axi_i2s_adi,Vivado 2021.1";
end icyradio_axi_i2s_adi_0_1;

architecture STRUCTURE of icyradio_axi_i2s_adi_0_1 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^m_axis_tdata\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal NLW_U0_dma_req_rx_daready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_dma_req_rx_drlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_dma_req_rx_drvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_dma_req_tx_daready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_dma_req_tx_drlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_dma_req_tx_drvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_dma_req_rx_drtype_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_dma_req_tx_drtype_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_m_axis_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axis_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 24 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute BCLK_POL : integer;
  attribute BCLK_POL of U0 : label is 0;
  attribute DEVICE_FAMILY : string;
  attribute DEVICE_FAMILY of U0 : label is "virtex6";
  attribute DMA_TYPE : integer;
  attribute DMA_TYPE of U0 : label is 0;
  attribute HAS_RX : integer;
  attribute HAS_RX of U0 : label is 1;
  attribute HAS_TX : integer;
  attribute HAS_TX of U0 : label is 1;
  attribute LRCLK_POL : integer;
  attribute LRCLK_POL of U0 : label is 0;
  attribute NUM_OF_CHANNEL : integer;
  attribute NUM_OF_CHANNEL of U0 : label is 1;
  attribute SLOT_WIDTH : integer;
  attribute SLOT_WIDTH of U0 : label is 24;
  attribute S_AXI_ADDRESS_WIDTH : integer;
  attribute S_AXI_ADDRESS_WIDTH of U0 : label is 32;
  attribute S_AXI_DATA_WIDTH : integer;
  attribute S_AXI_DATA_WIDTH of U0 : label is 32;
  attribute x_interface_info : string;
  attribute x_interface_info of data_clk_i : signal is "xilinx.com:signal:clock:1.0 i2s_signal_clock CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of data_clk_i : signal is "XIL_INTERFACENAME i2s_signal_clock, ASSOCIATED_BUSIF i2s, FREQ_HZ 49152000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN icyradio_I2S_BCLK_IN, INSERT_VIP 0";
  attribute x_interface_info of m_axis_aclk : signal is "xilinx.com:signal:clock:1.0 m_axis_aclk CLK";
  attribute x_interface_parameter of m_axis_aclk : signal is "XIL_INTERFACENAME m_axis_aclk, ASSOCIATED_BUSIF m_axis, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN icyradio_axi_pcie_0_0_axi_aclk_out, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis TLAST";
  attribute x_interface_info of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute x_interface_parameter of m_axis_tready : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN icyradio_axi_pcie_0_0_axi_aclk_out, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute x_interface_info of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 s_axi_aclk CLK";
  attribute x_interface_parameter of s_axi_aclk : signal is "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN icyradio_axi_pcie_0_0_axi_aclk_out, INSERT_VIP 0";
  attribute x_interface_info of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 s_axi_aresetn RST";
  attribute x_interface_parameter of s_axi_aresetn : signal is "XIL_INTERFACENAME s_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 s_axi ARREADY";
  attribute x_interface_info of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi ARVALID";
  attribute x_interface_info of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi AWREADY";
  attribute x_interface_info of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi AWVALID";
  attribute x_interface_info of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi BREADY";
  attribute x_interface_info of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi BVALID";
  attribute x_interface_info of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 s_axi RREADY";
  attribute x_interface_info of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi RVALID";
  attribute x_interface_info of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi WREADY";
  attribute x_interface_info of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi WVALID";
  attribute x_interface_info of s_axis_aclk : signal is "xilinx.com:signal:clock:1.0 s_axis_aclk CLK";
  attribute x_interface_parameter of s_axis_aclk : signal is "XIL_INTERFACENAME s_axis_aclk, ASSOCIATED_BUSIF s_axis, ASSOCIATED_RESET s_axis_aresetn, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN icyradio_axi_pcie_0_0_axi_aclk_out, INSERT_VIP 0";
  attribute x_interface_info of s_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 s_axis_aresetn RST";
  attribute x_interface_parameter of s_axis_aresetn : signal is "XIL_INTERFACENAME s_axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 s_axis TLAST";
  attribute x_interface_info of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute x_interface_parameter of s_axis_tready : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN icyradio_axi_pcie_0_0_axi_aclk_out, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute x_interface_info of bclk_o : signal is "analog.com:interface:i2s:1.0 i2s BCLK";
  attribute x_interface_info of lrclk_o : signal is "analog.com:interface:i2s:1.0 i2s LRCLK";
  attribute x_interface_info of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute x_interface_info of m_axis_tkeep : signal is "xilinx.com:interface:axis:1.0 m_axis TKEEP";
  attribute x_interface_info of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axi ARADDR";
  attribute x_interface_info of s_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 s_axi ARPROT";
  attribute x_interface_info of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi AWADDR";
  attribute x_interface_parameter of s_axi_awaddr : signal is "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 125000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN icyradio_axi_pcie_0_0_axi_aclk_out, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 s_axi AWPROT";
  attribute x_interface_info of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi BRESP";
  attribute x_interface_info of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute x_interface_info of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axi RRESP";
  attribute x_interface_info of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi WDATA";
  attribute x_interface_info of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axi WSTRB";
  attribute x_interface_info of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
  attribute x_interface_info of sdata_i : signal is "analog.com:interface:i2s:1.0 i2s SDATA_IN";
  attribute x_interface_info of sdata_o : signal is "analog.com:interface:i2s:1.0 i2s SDATA_OUT";
begin
  m_axis_tdata(31 downto 8) <= \^m_axis_tdata\(31 downto 8);
  m_axis_tdata(7) <= \<const0>\;
  m_axis_tdata(6) <= \<const0>\;
  m_axis_tdata(5) <= \<const0>\;
  m_axis_tdata(4) <= \<const0>\;
  m_axis_tdata(3) <= \<const0>\;
  m_axis_tdata(2) <= \<const0>\;
  m_axis_tdata(1) <= \<const0>\;
  m_axis_tdata(0) <= \<const0>\;
  m_axis_tkeep(3) <= \<const1>\;
  m_axis_tkeep(2) <= \<const1>\;
  m_axis_tkeep(1) <= \<const1>\;
  m_axis_tkeep(0) <= \<const1>\;
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
  s_axi_rdata(23 downto 0) <= \^s_axi_rdata\(23 downto 0);
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.icyradio_axi_i2s_adi_0_1_axi_i2s_adi
     port map (
      bclk_o(0) => bclk_o(0),
      data_clk_i => data_clk_i,
      dma_req_rx_aclk => '0',
      dma_req_rx_daready => NLW_U0_dma_req_rx_daready_UNCONNECTED,
      dma_req_rx_datype(1 downto 0) => B"00",
      dma_req_rx_davalid => '0',
      dma_req_rx_drlast => NLW_U0_dma_req_rx_drlast_UNCONNECTED,
      dma_req_rx_drready => '0',
      dma_req_rx_drtype(1 downto 0) => NLW_U0_dma_req_rx_drtype_UNCONNECTED(1 downto 0),
      dma_req_rx_drvalid => NLW_U0_dma_req_rx_drvalid_UNCONNECTED,
      dma_req_rx_rstn => '0',
      dma_req_tx_aclk => '0',
      dma_req_tx_daready => NLW_U0_dma_req_tx_daready_UNCONNECTED,
      dma_req_tx_datype(1 downto 0) => B"00",
      dma_req_tx_davalid => '0',
      dma_req_tx_drlast => NLW_U0_dma_req_tx_drlast_UNCONNECTED,
      dma_req_tx_drready => '0',
      dma_req_tx_drtype(1 downto 0) => NLW_U0_dma_req_tx_drtype_UNCONNECTED(1 downto 0),
      dma_req_tx_drvalid => NLW_U0_dma_req_tx_drvalid_UNCONNECTED,
      dma_req_tx_rstn => '0',
      lrclk_o(0) => lrclk_o(0),
      m_axis_aclk => m_axis_aclk,
      m_axis_tdata(31 downto 8) => \^m_axis_tdata\(31 downto 8),
      m_axis_tdata(7 downto 0) => NLW_U0_m_axis_tdata_UNCONNECTED(7 downto 0),
      m_axis_tkeep(3 downto 0) => NLW_U0_m_axis_tkeep_UNCONNECTED(3 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(31 downto 6) => B"00000000000000000000000000",
      s_axi_araddr(5 downto 2) => s_axi_araddr(5 downto 2),
      s_axi_araddr(1 downto 0) => B"00",
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arprot(2 downto 0) => B"000",
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(31 downto 6) => B"00000000000000000000000000",
      s_axi_awaddr(5 downto 2) => s_axi_awaddr(5 downto 2),
      s_axi_awaddr(1 downto 0) => B"00",
      s_axi_awprot(2 downto 0) => B"000",
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 24) => NLW_U0_s_axi_rdata_UNCONNECTED(31 downto 24),
      s_axi_rdata(23 downto 0) => \^s_axi_rdata\(23 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 24) => B"00000000",
      s_axi_wdata(23 downto 0) => s_axi_wdata(23 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => B"0000",
      s_axi_wvalid => s_axi_wvalid,
      s_axis_aclk => s_axis_aclk,
      s_axis_aresetn => '0',
      s_axis_tdata(31 downto 8) => s_axis_tdata(31 downto 8),
      s_axis_tdata(7 downto 0) => B"00000000",
      s_axis_tlast => s_axis_tlast,
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid,
      sdata_i(0) => sdata_i(0),
      sdata_o(0) => sdata_o(0)
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
