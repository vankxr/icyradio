-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Wed Mar 27 12:09:37 2024
-- Host        : node4-dev running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/joao/icyradio/firmware/a100t/icyradio.gen/sources_1/bd/icyradio/ip/icyradio_axi_qspi_mm_0_0/icyradio_axi_qspi_mm_0_0_stub.vhdl
-- Design      : icyradio_axi_qspi_mm_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity icyradio_axi_qspi_mm_0_0 is
  Port ( 
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_lite_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_lite_awvalid : in STD_LOGIC;
    s_axi_lite_awready : out STD_LOGIC;
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_lite_wvalid : in STD_LOGIC;
    s_axi_lite_wready : out STD_LOGIC;
    s_axi_lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_bvalid : out STD_LOGIC;
    s_axi_lite_bready : in STD_LOGIC;
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_lite_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_lite_arvalid : in STD_LOGIC;
    s_axi_lite_arready : out STD_LOGIC;
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_rvalid : out STD_LOGIC;
    s_axi_lite_rready : in STD_LOGIC;
    irq : out STD_LOGIC;
    s_axi_full_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_full_awaddr : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi_full_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_full_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_full_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_full_awlock : in STD_LOGIC;
    s_axi_full_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_full_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_full_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_full_awvalid : in STD_LOGIC;
    s_axi_full_awready : out STD_LOGIC;
    s_axi_full_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_full_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_full_wlast : in STD_LOGIC;
    s_axi_full_wvalid : in STD_LOGIC;
    s_axi_full_wready : out STD_LOGIC;
    s_axi_full_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_full_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_full_bvalid : out STD_LOGIC;
    s_axi_full_bready : in STD_LOGIC;
    s_axi_full_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_full_araddr : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi_full_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_full_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_full_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_full_arlock : in STD_LOGIC;
    s_axi_full_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_full_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_full_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_full_arvalid : in STD_LOGIC;
    s_axi_full_arready : out STD_LOGIC;
    s_axi_full_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_full_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_full_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_full_rlast : out STD_LOGIC;
    s_axi_full_rvalid : out STD_LOGIC;
    s_axi_full_rready : in STD_LOGIC;
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
    spi_io1_t : out STD_LOGIC;
    spi_io2_i : in STD_LOGIC;
    spi_io2_o : out STD_LOGIC;
    spi_io2_t : out STD_LOGIC;
    spi_io3_i : in STD_LOGIC;
    spi_io3_o : out STD_LOGIC;
    spi_io3_t : out STD_LOGIC
  );

end icyradio_axi_qspi_mm_0_0;

architecture stub of icyradio_axi_qspi_mm_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,aresetn,s_axi_lite_awaddr[5:0],s_axi_lite_awprot[2:0],s_axi_lite_awvalid,s_axi_lite_awready,s_axi_lite_wdata[31:0],s_axi_lite_wstrb[3:0],s_axi_lite_wvalid,s_axi_lite_wready,s_axi_lite_bresp[1:0],s_axi_lite_bvalid,s_axi_lite_bready,s_axi_lite_araddr[5:0],s_axi_lite_arprot[2:0],s_axi_lite_arvalid,s_axi_lite_arready,s_axi_lite_rdata[31:0],s_axi_lite_rresp[1:0],s_axi_lite_rvalid,s_axi_lite_rready,irq,s_axi_full_awid[3:0],s_axi_full_awaddr[23:0],s_axi_full_awlen[7:0],s_axi_full_awsize[2:0],s_axi_full_awburst[1:0],s_axi_full_awlock,s_axi_full_awcache[3:0],s_axi_full_awprot[2:0],s_axi_full_awqos[3:0],s_axi_full_awvalid,s_axi_full_awready,s_axi_full_wdata[63:0],s_axi_full_wstrb[7:0],s_axi_full_wlast,s_axi_full_wvalid,s_axi_full_wready,s_axi_full_bid[3:0],s_axi_full_bresp[1:0],s_axi_full_bvalid,s_axi_full_bready,s_axi_full_arid[3:0],s_axi_full_araddr[23:0],s_axi_full_arlen[7:0],s_axi_full_arsize[2:0],s_axi_full_arburst[1:0],s_axi_full_arlock,s_axi_full_arcache[3:0],s_axi_full_arprot[2:0],s_axi_full_arqos[3:0],s_axi_full_arvalid,s_axi_full_arready,s_axi_full_rid[3:0],s_axi_full_rdata[63:0],s_axi_full_rresp[1:0],s_axi_full_rlast,s_axi_full_rvalid,s_axi_full_rready,spi_sck_i,spi_sck_o,spi_sck_t,spi_ss_i[0:0],spi_ss_o[0:0],spi_ss_t,spi_io0_i,spi_io0_o,spi_io0_t,spi_io1_i,spi_io1_o,spi_io1_t,spi_io2_i,spi_io2_o,spi_io2_t,spi_io3_i,spi_io3_o,spi_io3_t";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "axi_qspi_mm,Vivado 2023.2";
begin
end;
