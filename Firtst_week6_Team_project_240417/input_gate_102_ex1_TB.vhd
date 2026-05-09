--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:17:38 04/08/2024
-- Design Name:   
-- Module Name:   F:/week4/input_gate_102_ex1/input_gate_102_ex1_TB.vhd
-- Project Name:  input_gate_102_ex1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: input_gate_102_ex1
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
 
-- week7
--input_gate_102_ex1_TB.
-- 2학년 2반 2021041089 최태민, 2학년 2반 2019041066 송기준

ENTITY input_gate_102_ex1_TB IS
END input_gate_102_ex1_TB;
 
ARCHITECTURE behavior OF input_gate_102_ex1_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT input_gate_102_ex1
    PORT(
         x0 : IN  std_logic;
         x1 : IN  std_logic;
         x2 : IN  std_logic;
         y0 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal x0 : std_logic := '0';
   signal x1 : std_logic := '0';
   signal x2 : std_logic := '0';

 	--Outputs
   signal y0 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: input_gate_102_ex1 PORT MAP (
          x0 => x0,
          x1 => x1,
          x2 => x2,
          y0 => y0
        );


   -- Stimulus process
   stim_proc: process
   begin		
	
      x2<='0'; x1<='0'; x0<='0'; wait for 100ns;--0
		x2<='0'; x1<='0'; x0<='1'; wait for 100ns;--1
		x2<='0'; x1<='1'; x0<='0'; wait for 100ns;--2
		x2<='0'; x1<='1'; x0<='1'; wait for 100ns;--3
		x2<='1'; x1<='0'; x0<='0'; wait for 100ns;--4
		x2<='1'; x1<='0'; x0<='1'; wait for 100ns;--5
		x2<='1'; x1<='1'; x0<='0'; wait for 100ns;--6
		x2<='1'; x1<='1'; x0<='1'; wait for 100ns;
		wait ; -- 실행정지
		
   end process;

END;
