
-------------------------------------------------------------------------------
-- drp_arbiter.vhd - entity/architecture pair
-------------------------------------------------------------------------------
--
-- ************************************************************************
-- ** DISCLAIMER OF LIABILITY                                            **
-- **                                                                    **
-- ** This file contains proprietary and confidential information of     **
-- ** Xilinx, Inc. ("Xilinx"), that is distributed under a license       **
-- ** from Xilinx, and may be used, copied and/or disclosed only         **
-- ** pursuant to the terms of a valid license agreement with Xilinx.    **
-- **                                                                    **
-- ** XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION              **
-- ** ("MATERIALS") "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER         **
-- ** EXPRESSED, IMPLIED, OR STATUTORY, INCLUDING WITHOUT                **
-- ** LIMITATION, ANY WARRANTY WITH RESPECT TO NONINFRINGEMENT,          **
-- ** MERCHANTABILITY OR FITNESS FOR ANY PARTICULAR PURPOSE. Xilinx      **
-- ** does not warrant that functions included in the Materials will     **
-- ** meet the requirements of Licensee, or that the operation of the    **
-- ** Materials will be uninterrupted or error-free, or that defects     **
-- ** in the Materials will be corrected. Furthermore, Xilinx does       **
-- ** not warrant or make any representations regarding use, or the      **
-- ** results of the use, of the Materials in terms of correctness,      **
-- ** accuracy, reliability or otherwise.                                **
-- **                                                                    **
-- ** Xilinx products are not designed or intended to be fail-safe,      **
-- ** or for use in any application requiring fail-safe performance,     **
-- ** such as life-support or safety devices or systems, Class III       **
-- ** medical devices, nuclear facilities, applications related to       **
-- ** the deployment of airbags, or any other applications that could    **
-- ** lead to death, personal injury or severe property or               **
-- ** environmental damage (individually and collectively, "critical     **
-- ** applications"). Customer assumes the sole risk and liability       **
-- ** of any use of Xilinx products in critical applications,            **
-- ** subject only to applicable laws and regulations governing          **
-- ** limitations on product liability.                                  **
-- **                                                                    **
-- ** Copyright 2010, 2011 Xilinx, Inc.                                  **
-- ** All rights reserved.                                               **
-- **                                                                    **
-- ** This disclaimer and copyright notice must be retained as part      **
-- ** of this file at all times.                                         **
-- ************************************************************************
--
-------------------------------------------------------------------------------

library IEEE;
    use IEEE.std_logic_1164.all;

entity  drp_arbiter is
  port (
  reset   : in     std_logic;                   -- input clock
  clk     : in     std_logic;                   -- input clock
  jtaglocked : in     std_logic;                   -- input clock
  bgrant_A : out    std_logic;  -- bus grant
  bgrant_B : out    std_logic;  -- bus grant
  bbusy_A   : in    std_logic;                    -- bus busy
  bbusy_B   : in    std_logic;                    -- bus busy
  daddr_A  : in  std_logic_vector(7 downto 0);
  den_A    : in  std_logic;
  di_A     : in  std_logic_vector(15 downto 0);
  dwe_A    : in  std_logic;
  do_A     : out   std_logic_vector(15 downto 0);
  drdy_A   : out   std_logic;
  daddr_B  : in  std_logic_vector(7 downto 0);
  den_B    : in  std_logic;
  di_B     : in  std_logic_vector(15 downto 0);
  dwe_B    : in  std_logic;
  do_B     : out   std_logic_vector(15 downto 0);
  drdy_B   : out   std_logic;
  daddr_C  : out  std_logic_vector(7 downto 0);
  den_C    : out  std_logic;
  di_C     : out  std_logic_vector(15 downto 0);
  dwe_C    : out  std_logic;
  do_C     : in   std_logic_vector(15 downto 0);
  drdy_C   : in   std_logic
);

end drp_arbiter;

architecture behv of drp_arbiter is



  type fsmstate is (NOGRANT,GRANT_A,GRANT_A_WAIT, GRANT_B,GRANT_B_WAIT);
  signal state : fsmstate;
  signal daddr_C_reg : std_logic_vector(7 downto 0);
  signal di_C_reg : std_logic_vector(15 downto 0);
  signal den_C_reg : std_logic;
  signal dwe_C_reg : std_logic;
  signal daddr_reg : std_logic_vector(7 downto 0);
  signal di_reg : std_logic_vector(15 downto 0);
  signal den_reg : std_logic;
  signal dwe_reg : std_logic;
  signal do_A_reg : std_logic_vector(15 downto 0);
  signal drdy_A_reg : std_logic;
  signal do_B_reg : std_logic_vector(15 downto 0);
  signal drdy_B_reg : std_logic;
  signal overlap_A : std_logic;
  signal overlap_B : std_logic;

begin


      daddr_C <= daddr_C_reg;
      di_C <= di_C_reg;
      den_C <= den_C_reg;
      dwe_C <= dwe_C_reg;
      do_B <= do_B_reg;
      drdy_B <= drdy_B_reg;
      drdy_A <= drdy_A_reg;
      do_A <= do_A_reg;

  arbiter_fsm: process (clk, reset)
  begin
    if (reset = '1') then
      state <= NOGRANT;
      daddr_C_reg <= X"00";
      di_C_reg <= X"0000";
      dwe_C_reg <= '0';
      den_C_reg <= '0';
      daddr_reg <= X"00";
      di_reg <= X"0000";
      dwe_reg <= '0';
      den_reg <= '0';
      drdy_A_reg <= '0';
      do_A_reg <= X"0000";
      drdy_B_reg <= '0';
      do_B_reg <= X"0000";
      overlap_A <= '0';
      overlap_B <= '0';
      bgrant_A <= '0';
      bgrant_B <= '0';
    elsif clk'event and clk = '1' then
      case state is
         when NOGRANT          =>
                                 if jtaglocked= '0' then
                                    if bbusy_A = '0' and bbusy_B = '0' then
                                       if  overlap_B = '1'  then
                                             daddr_C_reg <= daddr_reg;
                                             di_C_reg <= di_reg;
                                             dwe_C_reg <= dwe_reg;
                                             den_C_reg <= den_reg;
                                             overlap_B <= '0';
                                             bgrant_A <= '0';
                                             bgrant_B <= '1';
                                             state <= GRANT_B;
                                        elsif overlap_A = '1'  then
                                             daddr_C_reg <= daddr_reg;
                                             di_C_reg <= di_reg;
                                             dwe_C_reg <= dwe_reg;
                                             den_C_reg <= den_reg;
                                             overlap_A <= '0';
                                             bgrant_A <= '1';
                                             bgrant_B <= '0';
                                             state <= GRANT_A;
                                    else
                                       if den_A = '1' and den_B = '0' then
                                          daddr_C_reg <= daddr_A;
                                          di_C_reg <= di_A;
                                          dwe_C_reg <= dwe_A;
                                          den_C_reg <= den_A;
                                          overlap_A <= '0';
                                          overlap_B <= '0';
                                          bgrant_A <= '1';
                                          bgrant_B <= '0';
                                          state <= GRANT_A;
                                       end if;
                                       if den_A = '0' and den_B = '1' then
                                          daddr_C_reg <= daddr_B;
                                          di_C_reg <= di_B;
                                          dwe_C_reg <= dwe_B;
                                          den_C_reg <= den_B;
                                          overlap_A <= '0';
                                          overlap_B <= '0';
                                          bgrant_A <= '0';
                                          bgrant_B <= '1';
                                          state <= GRANT_B;
                                       end if;
                                       if den_A = '1' and den_B = '1' then
                                          daddr_C_reg <= daddr_A;
                                          di_C_reg <= di_A;
                                          dwe_C_reg <= dwe_A;
                                          den_C_reg <= den_A;
                                          daddr_reg <= daddr_B;
                                          di_reg <= di_B;
                                          dwe_reg <= dwe_B;
                                          den_reg <= den_B;
                                          overlap_A <= '0';
                                          overlap_B <= '1';
                                          bgrant_A <= '1';
                                          bgrant_B <= '0';
                                          state <= GRANT_A;
                                       end if;
                                       if den_A = '0' and den_B = '0' then
                                          daddr_C_reg <= X"00";
                                          di_C_reg <= X"0000";
                                          dwe_C_reg <= '0';
                                          den_C_reg <= '0';
                                          bgrant_A <= '0';
                                          bgrant_B <= '0';
                                       end if;
                                       end if;
                                    elsif bbusy_A = '1' and bbusy_B = '0' then
                                       if den_A = '1' then
                                          daddr_C_reg <= daddr_A;
                                          di_C_reg <= di_A;
                                          dwe_C_reg <= dwe_A;
                                          den_C_reg <= den_A;
                                          state <= GRANT_A;
                                          bgrant_A <= '1';
                                       end if;
                                       if den_B = '1' then
                                          daddr_reg <= daddr_B;
                                          di_reg <= di_B;
                                          dwe_reg <= dwe_B;
                                          den_reg <= den_B;
                                          overlap_B <= '1';
                                       end if;
                                    elsif bbusy_A = '0' and bbusy_B = '1' then
                                       if den_B = '1' then
                                          daddr_C_reg <= daddr_B;
                                          di_C_reg <= di_B;
                                          dwe_C_reg <= dwe_B;
                                          den_C_reg <= den_B;
                                          state <= GRANT_B;
                                          bgrant_B <= '1';
                                       end if;
                                       if den_A = '1' then
                                          daddr_reg <= daddr_A;
                                          di_reg <= di_A;
                                          dwe_reg <= dwe_A;
                                          den_reg <= den_A;
                                          overlap_A <= '1';
                                       end if;
                                   end if;
                                end if;

                                drdy_A_reg <= '0';
                                do_A_reg <= X"0000";
                                drdy_B_reg <= '0';
                                do_B_reg <= X"0000";


         when GRANT_A      =>
                                       if drdy_C = '1' then
                                          --if (den_B = '1' or req_A_B = '1' or overlap_B = '1') and busy_in /= '1'  then
                                         -- if  bbusy_A /= '1' and (den_B = '1'  or overlap_B = '1')  then
                                          if  bbusy_A /= '1' and overlap_B = '1'  then
                                             daddr_C_reg <= daddr_reg;
                                             di_C_reg <= di_reg;
                                             dwe_C_reg <= dwe_reg;
                                             den_C_reg <= den_reg;
                                             overlap_B <= '0';
                                             bgrant_A <= '0';
                                             bgrant_B <= '1';
                                             state <= GRANT_B;
                                          elsif bbusy_A /= '1' and den_B = '1' then
                                             daddr_C_reg <= daddr_B;
                                             di_C_reg <= di_B;
                                             dwe_C_reg <= dwe_B;
                                             den_C_reg <= den_B;
                                             overlap_B <= '0';
                                             bgrant_A <= '0';
                                             bgrant_B <= '1';
                                             state <= GRANT_B;
                                          else
                                             state <= NOGRANT;
                                          end if;
                                          do_A_reg <= do_C;
                                       else
                                          daddr_C_reg <= daddr_A;
                                          di_C_reg <= di_A;
                                          dwe_C_reg <= dwe_A;
                                          den_C_reg <= den_A;
                                       end if;
                                       if den_B = '1' then
                                          daddr_reg <= daddr_B;
                                          di_reg <= di_B;
                                          dwe_reg <= dwe_B;
                                          den_reg <= den_B;
                                          overlap_B <= '1';
                                       end if;
                                       drdy_A_reg <= drdy_C;
                                       drdy_B_reg <= '0';
         when GRANT_B           =>
                                       if drdy_C = '1' then
                                          --if (den_A = '1' or overlap_A = '1') and busy_in /= '1'   then
                                          if  bbusy_B /= '1' and overlap_A = '1'  then
                                             daddr_C_reg <= daddr_reg;
                                             di_C_reg <= di_reg;
                                             dwe_C_reg <= dwe_reg;
                                             den_C_reg <= den_reg;
                                             overlap_A <= '0';
                                             bgrant_A <= '1';
                                             bgrant_B <= '0';
                                             state <= GRANT_A;
                                          elsif bbusy_B /= '1' and den_A = '1'  then
                                             daddr_C_reg <= daddr_A;
                                             di_C_reg <= di_A;
                                             dwe_C_reg <= dwe_A;
                                             den_C_reg <= den_A;
                                             overlap_A <= '0';
                                             bgrant_A <= '1';
                                             bgrant_B <= '0';
                                             state <= GRANT_A;
                                          else
                                             state <= NOGRANT;
                                          end if;
                                          do_B_reg <= do_C;
                                       else
                                          daddr_C_reg <= daddr_B;
                                          di_C_reg <= di_B;
                                          dwe_C_reg <= dwe_B;
                                          den_C_reg <= den_B;
                                       end if;
                                       if den_A = '1' then
                                          daddr_reg <= daddr_A;
                                          di_reg <= di_A;
                                          dwe_reg <= dwe_A;
                                          den_reg <= den_A;
                                          overlap_A <= '1';
                                       end if;
                                       drdy_B_reg <= drdy_C;
                                       drdy_A_reg <= '0';

         when others            =>     Null;

      end case;

    end if;
  end process;


end behv;
