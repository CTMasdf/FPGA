----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:10:52 04/08/2024 
-- Design Name: 
-- Module Name:    input_gate_102_ex1 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- week6
-- input_gate_102_ex1
-- 2학년 2반 2021041089 최태민
entity input_gate_102_ex1 is

    Port ( x0, x1, x2 : in  STD_LOGIC;
           y0 : out  STD_LOGIC);
end input_gate_102_ex1;

architecture Behavioral of input_gate_102_ex1 is

signal s1, s2, s3, s4 : std_logic;

begin

	--내부회로 소스코드
	s1 <= NOT x1;
	s2 <= x0 AND x1;
	s3 <= s1 AND x2;
	s4 <= s2 OR s3;
	
	--출력회로 소스코드
	y0 <= NOT s4;
	
	
	
end Behavioral;

