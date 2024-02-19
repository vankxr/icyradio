-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Fri Dec 22 02:37:54 2023
-- Host        : node4-dev running 64-bit Ubuntu 22.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/joao/icyradio/firmware/icyradio.gen/sources_1/bd/icyradio/ip/icyradio_axi_spi_1_0/icyradio_axi_spi_1_0_stub.vhdl
-- Design      : icyradio_axi_spi_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity icyradio_axi_spi_1_0 is
  Port ( 
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
    spi_sck_i : in STD_LOGIC;
    spi_sck_o : out STD_LOGIC;
    spi_sck_t : out STD_LOGIC;
    spi_ss_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    spi_ss_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    spi_ss_t : out STD_LOGIC;
    spi_io0_i : in STD_LOGIC;
    spi_io0_o : out STD_LOGIC;
    spi_io0_t : out STD_LOGIC;
    spi_io1_i : in STD_LOGIC;
    spi_io1_o : out STD_LOGIC;
    spi_io1_t : out STD_LOGIC
  );

end icyradio_axi_spi_1_0;

architecture stub of icyradio_axi_spi_1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,aresetn,s_axi_awaddr[4:0],s_axi_awprot[2:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wvalid,s_axi_wready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_araddr[4:0],s_axi_arprot[2:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_rready,spi_sck_i,spi_sck_o,spi_sck_t,spi_ss_i[0:0],spi_ss_o[0:0],spi_ss_t,spi_io0_i,spi_io0_o,spi_io0_t,spi_io1_i,spi_io1_o,spi_io1_t";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "axi_spi,Vivado 2021.1";
begin
end;
