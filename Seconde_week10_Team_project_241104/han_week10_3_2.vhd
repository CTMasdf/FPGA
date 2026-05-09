----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:18:47 11/04/2024 
-- Design Name: 
-- Module Name:    han_week10_3_2 - Behavioral 
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
use ieee.std_logic_unsigned.all; -- 산술연산을 위한 선언

-- 2021041091 2학년 3반 한규철 2021041089 최태민 10주차 팀과제 3 동기식 8진 리셋, 비프카운터 응용

entity han_week10_3_2 is
    Port ( rst,clk : in  STD_LOGIC;
           q : out STD_LOGIC_vector(3 downto 0);
           seg : out  STD_LOGIC_vector(7 downto 0);
           beep : out  STD_LOGIC;
           load : in  STD_LOGIC;
			  team3 : out std_logic_vector(7 downto 0);
           pwm_led : out  STD_LOGIC_vector(2 downto 0));
end han_week10_3_2;

architecture Behavioral of han_week10_3_2 is
 signal count1 : std_logic_vector(2 downto 0); -- 000
 signal alpha : std_logic_vector(7 downto 0);
begin
upcount : process(rst, clk)
begin
if(rising_edge(clk)) then
	if(rst = '0') then count1 <= "000";
		else count1 <= count1 + 1;
		end if;
	end if;
end process;

q <= "1110"; -- Q0 on
seg <=  "11111110" when (count1 = "000") else --0
        "11111101" when (count1 = "001") else --1
		  "11111011" when (count1 = "010") else --2
		  "11110111" when (count1 = "011") else --3
		  "11101111" when (count1 = "100") else --4
		  "11011111" when (count1 = "101") else --5
		  "10111111" when (count1 = "110") else --6
		  "11111111" ;
		  

extra : process(load) -- load process
begin 	
	if (load = '0') then beep <= '0'; pwm_led <= "000";alpha <= "11001100"; -- load 동작시 beep, pwm, all green, yellow led on
	else beep <= '1'; pwm_led <= "111";  alpha <= "00000000"; -- 아닐시 off
	end if;
end process;

team3 <= not alpha;


end Behavioral;

