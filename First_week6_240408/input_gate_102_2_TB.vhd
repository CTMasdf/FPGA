--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:58:51 04/08/2024
-- Design Name:   
-- Module Name:   F:/week4/input_gate_102_2/input_gate_102_2_TB.vhd
-- Project Name:  input_gate_102_2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: input_gate_2
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
 
-- week6
-- input_gate_102_2_TB
-- 2학년 2반 2021041089 최태민
 
ENTITY input_gate_102_2_TB IS
END input_gate_102_2_TB;
 
ARCHITECTURE behavior OF input_gate_102_2_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT input_gate_2
    PORT(
         x0 : IN  std_logic;
         x1 : IN  std_logic;
         x2 : IN  std_logic;
         y0 : OUT  std_logic;
         y1 : OUT  std_logic;
         y2 : OUT  std_logic;
         y3 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal x0 : std_logic := '0';
   signal x1 : std_logic := '0';
   signal x2 : std_logic := '0';

 	--Outputs
   signal y0 : std_logic;
   signal y1 : std_logic;
   signal y2 : std_logic;
   signal y3 : std_logic;
   
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: input_gate_2 PORT MAP (
          x0 => x0,
          x1 => x1,
          x2 => x2,
          y0 => y0,
          y1 => y1,
          y2 => y2,
          y3 => y3
        );

   -- Stimulus process
   stim_proc: process
   begin		
      X2<='0'; X1<='0'; X0<='0'; wait for 100ns;--0
		X2<='0'; X1<='0'; X0<='1'; wait for 100ns;--1
		X2<='0'; X1<='1'; X0<='0'; wait for 100ns;--2
		X2<='0'; X1<='1'; X0<='1'; wait for 100ns;--3
		X2<='1'; X1<='0'; X0<='0'; wait for 100ns;--4
		X2<='1'; X1<='0'; X0<='1'; wait for 100ns;--5
		X2<='1'; X1<='1'; X0<='0'; wait for 100ns;--6
		X2<='1'; X1<='1'; X0<='1'; wait ; --7 실행정지
   end process;

END;
