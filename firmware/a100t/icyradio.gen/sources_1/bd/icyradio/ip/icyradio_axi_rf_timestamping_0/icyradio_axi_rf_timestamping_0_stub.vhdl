-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Wed Mar 27 12:09:38 2024
-- Host        : node4-dev running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/joao/icyradio/firmware/a100t/icyradio.gen/sources_1/bd/icyradio/ip/icyradio_axi_rf_timestamping_0/icyradio_axi_rf_timestamping_0_stub.vhdl
-- Design      : icyradio_axi_rf_timestamping_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity icyradio_axi_rf_timestamping_0 is
  Port ( 
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
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
    s_axi_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    irq : out STD_LOGIC;
    ts_clk : in STD_LOGIC;
    ts_resetn : in STD_LOGIC;
    ts_clk_tx_en : out STD_LOGIC;
    ts_clk_rx_en : out STD_LOGIC;
    tx_dma_data_ready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rx_dma_xfer_req : in STD_LOGIC_VECTOR ( 1 downto 0 );
    tx_data_ready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rx_data_ready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    tx_fifo_underflow : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rx_fifo_overflow : in STD_LOGIC_VECTOR ( 1 downto 0 );
    tx_enable : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rx_enable : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );

end icyradio_axi_rf_timestamping_0;

architecture stub of icyradio_axi_rf_timestamping_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,aresetn,s_axi_awaddr[6:0],s_axi_awprot[2:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wvalid,s_axi_wready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_araddr[6:0],s_axi_arprot[2:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_rready,irq,ts_clk,ts_resetn,ts_clk_tx_en,ts_clk_rx_en,tx_dma_data_ready[1:0],rx_dma_xfer_req[1:0],tx_data_ready[1:0],rx_data_ready[1:0],tx_fifo_underflow[1:0],rx_fifo_overflow[1:0],tx_enable[1:0],rx_enable[1:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "axi_rf_timestamping,Vivado 2023.2";
begin
end;
