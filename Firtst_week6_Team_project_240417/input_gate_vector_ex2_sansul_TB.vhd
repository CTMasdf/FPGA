--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   04:55:11 04/16/2024
-- Design Name:   
-- Module Name:   C:/fpga_study/week7_team_project/ex2_vector_fi/input_gate_vector_ex2/input_gate_vector_ex2_sansul_TB.vhd
-- Project Name:  input_gate_vector_ex2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: input_gate_vector_ex2
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
USE ieee.std_logic_unsigned.ALL;	--산술연산 패키지
USE ieee.numeric_std.ALL;	--산술연산 패키지
 
-- week7
-- input_gate_vector_ex2_sansul_TB_산술연산 사용
-- 2021041089_최태민, 2학년 2반 2019041066 송기준

ENTITY input_gate_vector_ex2_sansul_TB IS
END input_gate_vector_ex2_sansul_TB;
 
ARCHITECTURE behavior OF input_gate_vector_ex2_sansul_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT input_gate_vector_ex2
    PORT(
         x : IN  std_logic_vector(3 downto 0);
         y : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal x : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal y : std_logic_vector(3 downto 0);
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: input_gate_vector_ex2 PORT MAP (
          x => x,
          y => y
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      x <= x+1;	--increase vector x value
		wait for 100 ns;	--100ns delay
		
	if(x = "1111") then wait;	-- STOP Simulasion
		end if;
   end process;

END;
