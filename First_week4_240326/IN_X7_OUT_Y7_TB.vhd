--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:23:38 03/25/2024
-- Design Name:   
-- Module Name:   F:/week4/IN_X7_OUT_Y7/IN_X7_OUT_Y7_TB.vhd
-- Project Name:  IN_X7_OUT_Y7
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: IN_X7_OUT_Y7
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
 
-- WEEK4
-- IN_X7_OUT_Y7_TB
-- 2학년_2반_2021041089_최태민
 
ENTITY IN_X7_OUT_Y7_TB IS
END IN_X7_OUT_Y7_TB;
 
ARCHITECTURE behavior OF IN_X7_OUT_Y7_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT IN_X7_OUT_Y7
    PORT(
         X7 : IN  std_logic;
         Y7 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal X7 : std_logic := '0';

 	--Outputs
   signal Y7 : std_logic;
  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: IN_X7_OUT_Y7 PORT MAP (
          X7 => X7,
          Y7 => Y7
        );

END;
