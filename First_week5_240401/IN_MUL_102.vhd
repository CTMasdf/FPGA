----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:49:37 04/01/2024 
-- Design Name: 
-- Module Name:    IN_MUL_102 - Behavioral 
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

-- WEEK5
-- 2학년 2반 2021041089_최태민
-- IN_MUL_102


entity IN_MUL_102 is
    Port ( A, B, C: in  STD_LOGIC;
           Y0, Y1, Y2,  Y3, Y4 : out  STD_LOGIC);
end IN_MUL_102;

architecture Behavioral of IN_MUL_102 is

begin

	Y0 <= (A AND B) AND C;	--A, B 우선입력 후 C 후입력 (3입력 AND 게이트)
	Y1 <= (A OR B) OR C;		--A, B 우선입력 후 C 후입력 (3입력 OR 게이트)
	Y2 <= (A XOR B) XOR C;	--A, B 우선입력 후 C 후입력 (3입력 XOR 게이트)
	Y3 <= NOT A;				--A의 값을 NOT 게이트를 거쳐 Y3에 출력한다.
	Y4 <= A;						--A의 값을 버퍼를 거쳐서 Y3에 출력한다.
end Behavioral;

