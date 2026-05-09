--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:19:50 10/28/2024
-- Design Name:   
-- Module Name:   F:/han_week9_team_2/han_week9_team_2_tb.vhd
-- Project Name:  han_week9_team_2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: han_week9_team_2
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
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

-- 2021041091 2학년 3반 한규철, 2021041089_2학년_3반_최태민
-- 9주차 팀과제 링카운터 로드 추가 tb
 

 
ENTITY han_week9_team_2_tb IS
END han_week9_team_2_tb;
 
ARCHITECTURE behavior OF han_week9_team_2_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT han_week9_team_2
    PORT(
         RST : IN  std_logic;
         CLK : IN  std_logic;
         DQ : OUT  std_logic_vector(3 downto 0);
         PWM : OUT  std_logic_vector(2 downto 0);
         BUZZER : OUT  std_logic;
         LOAD : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal RST : std_logic := '1';  -- 초기값 설정
   signal CLK : std_logic := '0';
   signal LOAD : std_logic := '1'; -- 초기값 설정
   

 	--Outputs
   signal DQ : std_logic_vector(3 downto 0);
   signal PWM : std_logic_vector(2 downto 0):= "000";
   signal BUZZER : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: han_week9_team_2 PORT MAP (
          RST => RST,
          CLK => CLK,
          DQ => DQ,
          PWM => PWM,
          BUZZER => BUZZER,
          LOAD => LOAD
        
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= NOT CLK;
		WAIT FOR 25 NS;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
    WAIT FOR 600 NS;
	 RST <= '0';
	 LOAD <=  NOT LOAD; WAIT FOR 200 NS;
   wait;
	end process;
END;
