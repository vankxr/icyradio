-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Sat Oct  1 21:26:53 2022
-- Host        : jsilva-kde running 64-bit KDE neon User - 5.25
-- Command     : write_vhdl -force -mode synth_stub
--               /media/joao/SSD/Development/icyradio/firmware/icyradio.gen/sources_1/bd/icyradio/ip/icyradio_axi_dmac_rf_rx_2/icyradio_axi_dmac_rf_rx_2_stub.vhdl
-- Design      : icyradio_axi_dmac_rf_rx_2
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity icyradio_axi_dmac_rf_rx_2 is
  Port ( 
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_awready : out STD_LOGIC;
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wready : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bready : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_arready : out STD_LOGIC;
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    irq : out STD_LOGIC;
    m_dest_axi_aclk : in STD_LOGIC;
    m_dest_axi_aresetn : in STD_LOGIC;
    m_dest_axi_awaddr : out STD_LOGIC_VECTOR ( 30 downto 0 );
    m_dest_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_dest_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_dest_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_dest_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_dest_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_dest_axi_awvalid : out STD_LOGIC;
    m_dest_axi_awready : in STD_LOGIC;
    m_dest_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_dest_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_dest_axi_wready : in STD_LOGIC;
    m_dest_axi_wvalid : out STD_LOGIC;
    m_dest_axi_wlast : out STD_LOGIC;
    m_dest_axi_bvalid : in STD_LOGIC;
    m_dest_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_dest_axi_bready : out STD_LOGIC;
    fifo_wr_clk : in STD_LOGIC;
    fifo_wr_en : in STD_LOGIC;
    fifo_wr_din : in STD_LOGIC_VECTOR ( 63 downto 0 );
    fifo_wr_overflow : out STD_LOGIC;
    fifo_wr_sync : in STD_LOGIC;
    fifo_wr_xfer_req : out STD_LOGIC
  );

end icyradio_axi_dmac_rf_rx_2;

architecture stub of icyradio_axi_dmac_rf_rx_2 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_aclk,s_axi_aresetn,s_axi_awvalid,s_axi_awaddr[10:0],s_axi_awready,s_axi_awprot[2:0],s_axi_wvalid,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wready,s_axi_bvalid,s_axi_bresp[1:0],s_axi_bready,s_axi_arvalid,s_axi_araddr[10:0],s_axi_arready,s_axi_arprot[2:0],s_axi_rvalid,s_axi_rready,s_axi_rresp[1:0],s_axi_rdata[31:0],irq,m_dest_axi_aclk,m_dest_axi_aresetn,m_dest_axi_awaddr[30:0],m_dest_axi_awlen[7:0],m_dest_axi_awsize[2:0],m_dest_axi_awburst[1:0],m_dest_axi_awprot[2:0],m_dest_axi_awcache[3:0],m_dest_axi_awvalid,m_dest_axi_awready,m_dest_axi_wdata[63:0],m_dest_axi_wstrb[7:0],m_dest_axi_wready,m_dest_axi_wvalid,m_dest_axi_wlast,m_dest_axi_bvalid,m_dest_axi_bresp[1:0],m_dest_axi_bready,fifo_wr_clk,fifo_wr_en,fifo_wr_din[63:0],fifo_wr_overflow,fifo_wr_sync,fifo_wr_xfer_req";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "axi_dmac,Vivado 2021.1";
begin
end;
