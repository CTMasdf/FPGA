--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:46:19 10/28/2024
-- Design Name:   
-- Module Name:   F:/han_week9_team_1/han_week9_team_1_tb.vhd
-- Project Name:  han_week9_team_1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: han_week9_team_1
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- 2021041091 2학년 3반 한규철, 2021041089_2학년_3반_최태민
-- 9주차 팀과제 존슨 카운터 tb
 
ENTITY han_week9_team_1_tb IS
END han_week9_team_1_tb;
 
ARCHITECTURE behavior OF han_week9_team_1_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT han_week9_team_1
    PORT(
         RST : IN  std_logic;
         CLK : IN  std_logic;
         DQ : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal RST : std_logic := '1';  --초기값 설정
   signal CLK : std_logic := '0';

 	--Outputs
   signal DQ : std_logic_vector(3 downto 0);

  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: han_week9_team_1 PORT MAP (
          RST => RST,
          CLK => CLK,
          DQ => DQ
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= NOT CLK;
		WAIT FOR 25 NS;
   end process;
 

  stim_proc: process
   begin		
      WAIT FOR 800 NS;
		RST <= '0';
      wait;
   end process;

END;
