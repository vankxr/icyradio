-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Wed Mar 27 12:07:03 2024
-- Host        : node4-dev running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/joao/icyradio/firmware/a100t/icyradio.gen/sources_1/bd/icyradio/ip/icyradio_tx_dma_xfer_req_not_tx0_0/icyradio_tx_dma_xfer_req_not_tx0_0_sim_netlist.vhdl
-- Design      : icyradio_tx_dma_xfer_req_not_tx0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icyradio_tx_dma_xfer_req_not_tx0_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of icyradio_tx_dma_xfer_req_not_tx0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of icyradio_tx_dma_xfer_req_not_tx0_0 : entity is "icyradio_tx_dma_xfer_req_not_tx0_0,util_vector_logic_v2_0_3_util_vector_logic,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of icyradio_tx_dma_xfer_req_not_tx0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of icyradio_tx_dma_xfer_req_not_tx0_0 : entity is "util_vector_logic_v2_0_3_util_vector_logic,Vivado 2023.2";
end icyradio_tx_dma_xfer_req_not_tx0_0;

architecture STRUCTURE of icyradio_tx_dma_xfer_req_not_tx0_0 is
begin
\Res[0]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Op1(0),
      O => Res(0)
    );
end STRUCTURE;
