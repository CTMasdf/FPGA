--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:25:25 04/01/2024
-- Design Name:   
-- Module Name:   F:/week4/IN_MUL_102/IN_MUL_102_TB.vhd
-- Project Name:  IN_MUL_102
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: IN_MUL_102
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
 
-- week5
-- 2학년 2반_202141089_최태민
-- IN_MUL_102_TB
 
ENTITY IN_MUL_102_TB IS
END IN_MUL_102_TB;
 
ARCHITECTURE behavior OF IN_MUL_102_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT IN_MUL_102
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         C : IN  std_logic;
         Y0 : OUT  std_logic;
         Y1 : OUT  std_logic;
         Y2 : OUT  std_logic;
         Y3 : OUT  std_logic;
         Y4 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic ;--:= '0';
   signal B : std_logic ;--:= '0';
   signal C : std_logic ;--:= '0';

 	--Outputs
   signal Y0 : std_logic;
   signal Y1 : std_logic;
   signal Y2 : std_logic;
   signal Y3 : std_logic;
   signal Y4 : std_logic;
   
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: IN_MUL_102 PORT MAP (
          A => A,
          B => B,
          C => C,
          Y0 => Y0,
          Y1 => Y1,
          Y2 => Y2,
          Y3 => Y3,
          Y4 => Y4
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      A <= '0'; B <= '0'; C <= '0'; wait for 100 ns;	
		A <= '1'; B <= '0'; C <= '0'; wait for 100 ns;	
		A <= '0'; B <= '1'; C <= '0'; wait for 100 ns;	
		A <= '0'; B <= '0'; C <= '1'; wait for 100 ns;	
		A <= '1'; B <= '1'; C <= '0'; wait for 100 ns;	
		A <= '0'; B <= '1'; C <= '1'; wait for 100 ns;	
		A <= '1'; B <= '0'; C <= '1'; wait for 100 ns;	
		A <= '1'; B <= '1'; C <= '1'; wait for 100 ns;	

      
      wait;
   end process;

END;
