----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:31:14 04/08/2024 
-- Design Name: 
-- Module Name:    input_gate_102_ex2 - Behavioral 
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
-- input_gate_102_ex2
-- 2학년 2반 2021041089 최태민

entity input_gate_102_ex2 is
    Port ( x0, x1, x2, x3 : in  STD_LOGIC;
           y0, y1, y2, y3 : out  STD_LOGIC);
end input_gate_102_ex2;

architecture Behavioral of input_gate_102_ex2 is
	signal s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, o0, o1, o2, o3: std_logic;

begin
	-- 내부회로 소스코드
	s0 <= NOT x1;
	s1 <= NOT x0;
	s2 <= x0 NAND x1;
	s3 <= x0 xor x1;
	s4 <= x0 AND x1;
	s5 <= x2 AND x3;
	s6 <= x0 AND s0;
	s7 <= s1 AND x1;
	s8 <= x0 NAND s2;
	s9 <= s2 NAND x1;
	o1 <= s3 XNOR x2;
	o0 <= s4 NOR s5;
	o3 <= s6 OR s7;
	o2 <= s8 NAND s9;
	
	--출력회로 소스코드
	y3 <= NOT o3;
	y2 <= NOT o2;
	y1 <= NOT o1;
	y0 <= NOT o0;
	

end Behavioral;

