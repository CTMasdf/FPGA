----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:32:10 04/08/2024 
-- Design Name: 
-- Module Name:    input_gate_102_1 - Behavioral 
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
-- input_gate_102_1
-- 2학년 2반 2021041089 최태민


entity input_gate_102_1 is
    Port ( x0, x1, x2 : in  STD_LOGIC;
           y0, y1, y2, y3, y4, y5, y6, y7 : out  STD_LOGIC);
end input_gate_102_1;

architecture Behavioral of input_gate_102_1 is

	signal d0,d1,d2,d3,d4,d5,d6,d7 : std_logic;

begin
	--내부회로 소스코드
	d0 <= x0;
	d1 <= NOT x0;
	d2 <= x1 AND x2;
	d3 <= x1 NAND x2;
	d4 <= x1 OR x2;
	d5 <= x1 NOR x2;
	d6 <= x1 XOR x2;
	d7 <= x1 XNOR x2;
	
	
	--출력 회로 소스코드
	y0 <= NOT d0;
	y1 <= NOT d1;
	y2 <= NOT d2;
	y3 <= NOT d3;
	y4 <= NOT d4;
	y5 <= NOT d5;
	y6 <= NOT d6;
	y7 <= NOT d7;
	
end Behavioral;

