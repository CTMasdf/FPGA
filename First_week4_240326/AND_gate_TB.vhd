--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:54:17 03/25/2024
-- Design Name:   
-- Module Name:   F:/week4/AND_gate/AND_gate_TB.vhd
-- Project Name:  AND_gate
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: AND_gate
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
 
--WEEK4
--AND_gate_TB
--2학년 2반_ 2021041089_최태민

ENTITY AND_gate_TB IS
END AND_gate_TB;
 
ARCHITECTURE behavior OF AND_gate_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT AND_gate
    PORT(
         X0 : IN  std_logic;
         X1 : IN  std_logic;
         Y0 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal X0 : std_logic := '0';
   signal X1 : std_logic := '0';

 	--Outputs
   signal Y0 : std_logic;
   
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: AND_gate PORT MAP (
          X0 => X0,
          X1 => X1,
          Y0 => Y0
        );

 

END;
