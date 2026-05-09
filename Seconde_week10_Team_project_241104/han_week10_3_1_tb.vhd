--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:05:46 11/04/2024
-- Design Name:   
-- Module Name:   F:/han_week10_3_1/han_week10_3_1_tb.vhd
-- Project Name:  han_week10_3_1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: han_week10_3_1
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
 
-- 2021041091 2학년 3반 한규철 2021041089 최태민 10주차 팀과제 3 - 1 동기식 리셋 16진 카운터 응용 tb
 
ENTITY han_week10_3_1_tb IS
END han_week10_3_1_tb;
 
ARCHITECTURE behavior OF han_week10_3_1_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT han_week10_3_1
    PORT(
         rst : IN  std_logic;
         clk : IN  std_logic;
         beep : OUT  std_logic;
         q : OUT  std_logic_vector(3 downto 0);
         seg : OUT  std_logic_vector(7 downto 0);
         load : IN  std_logic;
			team3 : out std_logic_vector(7 downto 0);
         pwm_led : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal rst : std_logic := '0';
   signal clk : std_logic := '0';
   signal load : std_logic := '0';

 	--Outputs
   signal beep : std_logic;
   signal q : std_logic_vector(3 downto 0);
   signal seg : std_logic_vector(7 downto 0);
	signal team3 : std_logic_vector(7 downto 0);
   signal pwm_led : std_logic_vector(2 downto 0);

   -- Clock period definitions
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: han_week10_3_1 PORT MAP (
          rst => rst,
          clk => clk,
          beep => beep,
          q => q,
          seg => seg,
          load => load,
			 team3 => team3,
          pwm_led => pwm_led
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= not clk;
		wait for 25 ns;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
	 wait for 110ns;
    rst <= not rst;
	 load <= not load;
	 wait;
   end process;

END;
