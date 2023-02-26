-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Wed Jan 11 17:27:04 2023
-- Host        : xubuntu-dev running 64-bit Ubuntu 20.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/joao/icyradio/firmware/icyradio.gen/sources_1/bd/icyradio/ip/icyradio_axi_i2s_adi_0_1/icyradio_axi_i2s_adi_0_1_stub.vhdl
-- Design      : icyradio_axi_i2s_adi_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity icyradio_axi_i2s_adi_0_1 is
  Port ( 
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

end icyradio_axi_i2s_adi_0_1;

architecture stub of icyradio_axi_i2s_adi_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "data_clk_i,bclk_o[0:0],lrclk_o[0:0],sdata_o[0:0],sdata_i[0:0],s_axis_aclk,s_axis_aresetn,s_axis_tready,s_axis_tdata[31:0],s_axis_tlast,s_axis_tvalid,m_axis_aclk,m_axis_tready,m_axis_tdata[31:0],m_axis_tlast,m_axis_tvalid,m_axis_tkeep[3:0],s_axi_aclk,s_axi_aresetn,s_axi_awaddr[31:0],s_axi_awvalid,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wvalid,s_axi_bready,s_axi_araddr[31:0],s_axi_arvalid,s_axi_rready,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_wready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_awready,s_axi_awprot[2:0],s_axi_arprot[2:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "axi_i2s_adi,Vivado 2021.1";
begin
end;
