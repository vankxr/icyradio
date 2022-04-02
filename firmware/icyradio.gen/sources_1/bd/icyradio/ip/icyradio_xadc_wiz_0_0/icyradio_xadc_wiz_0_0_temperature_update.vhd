
-- file: icyradio_xadc_wiz_0_0_temperature_update.vhd
-- (c) Copyright 2009 - 2013 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.

library IEEE;
  use IEEE.std_logic_1164.all;
  use IEEE.std_logic_unsigned.all;

entity  temperature_update is
  port (
  reset    : in  std_logic;                      -- Active High Reset 
  clk     : in  std_logic;                      -- Async Clock input from Slave   
  temp_bus_update : in std_logic;
  wait_cycle      : in   std_logic_vector(15 downto 0);
  temp_out        : out std_logic_vector(11 downto 0);
  -- DRP signals for Arbiter
  daddr_o         : out std_logic_vector(7 downto 0);    
  den_o           : out std_logic;
  di_o            : out std_logic_vector(15 downto 0);
  dwe_o           : out std_logic;
  do_i            : in  std_logic_vector(15 downto 0);
  drdy_i          : in  std_logic;
  busy_o          : out std_logic
);
end temperature_update;

architecture beh of temperature_update is

  type fsmstate_temp_rd is (WAIT_TIMER_UPDATE, WAIT_UPDATE_ENABLE,RD_EN_CTRL_REG_TEMP,RD_CTRL_REG_TEMP );
  signal state : fsmstate_temp_rd;
  type ram_type is array (1 downto 0) of std_logic_vector (15 downto 0);
  signal RAM : ram_type;
  signal timer_cntr : std_logic_vector(15 downto 0);

begin

  di_o <= (others => '0');

  drp_fsm: process (clk, reset)
  begin
    if (reset = '1') then
      state <= WAIT_UPDATE_ENABLE;
      daddr_o <= (others => '0');
      dwe_o <= '0';
      den_o <= '0';
      busy_o <= '0';
      temp_out <= (others => '0');
    elsif clk'event and clk = '1' then
      case state is
         when WAIT_UPDATE_ENABLE  =>
                                    busy_o <= '0';
                                       state <= RD_EN_CTRL_REG_TEMP;
                                       busy_o <= '1';
                                    den_o <= '0';
         when RD_EN_CTRL_REG_TEMP  =>
                                       state <= RD_CTRL_REG_TEMP;
                                       daddr_o <= X"00";
                                       dwe_o <= '0';
                                       den_o <= '1';
         when RD_CTRL_REG_TEMP     =>
                                       den_o <= '0';
                                       if drdy_i  = '1' then
                                          state <= WAIT_TIMER_UPDATE;
                                          temp_out <= do_i(15 downto 4);
                                          busy_o <= '0';
                                       end if;
         when WAIT_TIMER_UPDATE   =>
                                      
                                       dwe_o <= '0';
                                       if timer_cntr >= X"0000" and timer_cntr <= X"0008" then
                                          state <= WAIT_UPDATE_ENABLE;
                                       end if;
          when others       => Null;
      end case;
    end if;
  end process;

  timer_cntr_proc: process (clk, reset)
  begin
    if (reset = '1') then
       timer_cntr <= (others => '0');
    elsif clk'event and clk = '1' then
       if timer_cntr = X"0000" then
          timer_cntr <= wait_cycle;
       else
          timer_cntr <= timer_cntr - 1;
       end if;
    end if;
  end process;


end beh;



