-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Sat Sep 30 01:07:54 2023
-- Host        : xubuntu-dev running 64-bit Ubuntu 20.04.6 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top icyradio_axi_ad9361_2 -prefix
--               icyradio_axi_ad9361_2_ icyradio_axi_ad9361_2_stub.vhdl
-- Design      : icyradio_axi_ad9361_2
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity icyradio_axi_ad9361_2 is
  Port ( 
    rx_clk_in : in STD_LOGIC;
    rx_frame_in : in STD_LOGIC;
    rx_data_in : in STD_LOGIC_VECTOR ( 11 downto 0 );
    tx_clk_out : out STD_LOGIC;
    tx_frame_out : out STD_LOGIC;
    tx_data_out : out STD_LOGIC_VECTOR ( 11 downto 0 );
    enable : out STD_LOGIC;
    txnrx : out STD_LOGIC;
    dac_sync_in : in STD_LOGIC;
    dac_sync_out : out STD_LOGIC;
    tdd_sync : in STD_LOGIC;
    tdd_sync_cntr : out STD_LOGIC;
    gps_pps : in STD_LOGIC;
    gps_pps_irq : out STD_LOGIC;
    delay_clk : in STD_LOGIC;
    l_clk : out STD_LOGIC;
    clk : in STD_LOGIC;
    rst : out STD_LOGIC;
    adc_enable_i0 : out STD_LOGIC;
    adc_valid_i0 : out STD_LOGIC;
    adc_data_i0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    adc_enable_q0 : out STD_LOGIC;
    adc_valid_q0 : out STD_LOGIC;
    adc_data_q0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    adc_enable_i1 : out STD_LOGIC;
    adc_valid_i1 : out STD_LOGIC;
    adc_data_i1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    adc_enable_q1 : out STD_LOGIC;
    adc_valid_q1 : out STD_LOGIC;
    adc_data_q1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    adc_dovf : in STD_LOGIC;
    adc_r1_mode : out STD_LOGIC;
    dac_enable_i0 : out STD_LOGIC;
    dac_valid_i0 : out STD_LOGIC;
    dac_data_i0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dac_enable_q0 : out STD_LOGIC;
    dac_valid_q0 : out STD_LOGIC;
    dac_data_q0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dac_enable_i1 : out STD_LOGIC;
    dac_valid_i1 : out STD_LOGIC;
    dac_data_i1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dac_enable_q1 : out STD_LOGIC;
    dac_valid_q1 : out STD_LOGIC;
    dac_data_q1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dac_dunf : in STD_LOGIC;
    dac_r1_mode : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awready : out STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wready : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bready : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arready : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rready : in STD_LOGIC;
    up_enable : in STD_LOGIC;
    up_txnrx : in STD_LOGIC;
    up_dac_gpio_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    up_dac_gpio_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    up_adc_gpio_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    up_adc_gpio_out : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end icyradio_axi_ad9361_2;

architecture stub of icyradio_axi_ad9361_2 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "rx_clk_in,rx_frame_in,rx_data_in[11:0],tx_clk_out,tx_frame_out,tx_data_out[11:0],enable,txnrx,dac_sync_in,dac_sync_out,tdd_sync,tdd_sync_cntr,gps_pps,gps_pps_irq,delay_clk,l_clk,clk,rst,adc_enable_i0,adc_valid_i0,adc_data_i0[15:0],adc_enable_q0,adc_valid_q0,adc_data_q0[15:0],adc_enable_i1,adc_valid_i1,adc_data_i1[15:0],adc_enable_q1,adc_valid_q1,adc_data_q1[15:0],adc_dovf,adc_r1_mode,dac_enable_i0,dac_valid_i0,dac_data_i0[15:0],dac_enable_q0,dac_valid_q0,dac_data_q0[15:0],dac_enable_i1,dac_valid_i1,dac_data_i1[15:0],dac_enable_q1,dac_valid_q1,dac_data_q1[15:0],dac_dunf,dac_r1_mode,s_axi_aclk,s_axi_aresetn,s_axi_awvalid,s_axi_awaddr[15:0],s_axi_awprot[2:0],s_axi_awready,s_axi_wvalid,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wready,s_axi_bvalid,s_axi_bresp[1:0],s_axi_bready,s_axi_arvalid,s_axi_araddr[15:0],s_axi_arprot[2:0],s_axi_arready,s_axi_rvalid,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rready,up_enable,up_txnrx,up_dac_gpio_in[31:0],up_dac_gpio_out[31:0],up_adc_gpio_in[31:0],up_adc_gpio_out[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "axi_ad9361,Vivado 2021.1";
begin
end;
