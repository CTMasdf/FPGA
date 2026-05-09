----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    04:06:29 04/16/2024 
-- Design Name: 
-- Module Name:    input_gate_vector_ex2 - Behavioral 
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

-- week7
-- input_gate_vector_ex2
-- 2021041089_최태민, 2학년 2반 2019041066 송기준

entity input_gate_vector_ex2 is
    Port ( x : in  STD_LOGIC_VECTOR (3 downto 0);
           y : out  STD_LOGIC_VECTOR (3 downto 0));
end input_gate_vector_ex2;

architecture Behavioral of input_gate_vector_ex2 is
	signal s : STD_LOGIC_VECTOR (9 downto 0);
	signal o : STD_LOGIC_VECTOR (3 downto 0);
begin

gate_proc: process(x)
begin
	if(x="0000") 	 then s<="1100000111"; o<="0011";
	elsif(x="0001") then s<="1001001101"; o<="1101";
	elsif(x="0010") then s<="0110001110"; o<="1101";
	elsif(x="0011") then s<="1100010000"; o<="0010";
	elsif(x="0100") then s<="1100000111"; o<="0001";
	elsif(x="0101") then s<="1001001101"; o<="1111";
	elsif(x="0110") then s<="0110001110"; o<="1111";
	elsif(x="0111") then s<="1100010000"; o<="0000";
	elsif(x="1000") then s<="1100000111"; o<="0011";
	elsif(x="1001") then s<="1001001101"; o<="1101";
	elsif(x="1010") then s<="0110001110"; o<="1101";
	elsif(x="1011") then s<="1100010000"; o<="0010";
	elsif(x="1100") then s<="1100100111"; o<="0000";
	elsif(x="1101") then s<="1001101101"; o<="1110";
	elsif(x="1110") then s<="0110101110"; o<="1110";
	else s<="1100110000"; o<="0000";
	end if;
end process;
	--출력회로 소스코드
	y <= NOT o;
	
end Behavioral;