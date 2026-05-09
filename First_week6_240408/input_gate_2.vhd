---------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:34:04 04/08/2024 
-- Design Name: 
-- Module Name:    input_gate_2 - Behavioral 
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
-- input_gate_2
-- 2학년 2반 2021041089 최태민

entity input_gate_2 is
    Port ( x0, x1, x2 : in  STD_LOGIC;
           y0, y1, y2, y3 : out  STD_LOGIC);
end input_gate_2;

architecture Behavioral of input_gate_2 is
	signal s1, s2, s3, s4, s5, s6, s7 : std_logic;
begin
	--내부회로 소스코드
	s1 <= NOT x2;
	s2 <= NOT x1;
	s3 <= s2 AND x2;
	s4 <= (x0 NOR x2)NOR x1;	--x0와 x2를 nor로 우선입력 후 후입력으로 x1을 한 값을 s4에 신호를 보낸다.
	s5 <= (x0 NAND x1)NAND x2;
	s6 <= (x1 AND x0)AND s1;
	s7 <= x0 OR s3;
	
	
	--출력 소스코드
	y0 <= NOT s4;
	y1 <= NOT s5;
	y2 <= NOT s6;
	y3 <= NOT s7;
	
	

end Behavioral;