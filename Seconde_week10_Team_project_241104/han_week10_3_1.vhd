----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:53:36 11/04/2024 
-- Design Name: 
-- Module Name:    han_week10_3_1 - Behavioral 
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
use ieee.std_logic_unsigned.all;

-- 2021041091 2학년 3반 한규철 2021041089 최태민 10주차 팀과제 3 - 1 동기식 리셋 16진 카운터 응용

entity han_week10_3_1 is
    Port ( rst, clk : in  STD_LOGIC;
           beep : out  STD_LOGIC;
           q : out  STD_LOGIC_vector(3 downto 0);
           seg : out  STD_LOGIC_vector(7 downto 0);
           load : in  STD_LOGIC;
			  team3 : out std_logic_vector(7 downto 0); -- event
           pwm_led : out  STD_LOGIC_vector(2 downto 0));
end han_week10_3_1;

architecture Behavioral of han_week10_3_1 is
	signal count1 : std_logic_vector(3 downto 0);
	signal alpha : std_logic_vector(7 downto 0);
begin
upcount : process(rst, clk)
begin
if(rising_edge(clk)) then
	if(rst = '0') then count1 <= "0000";
		else count1 <= count1 + 1;
		end if;
	end if;
end process;

Q <= "1110"; -- Q0 on
seg <=  "01000000" when (count1 = "0000") else --0
        "01111001" when (count1 = "0001") else --1
		  "00100100" when (count1 = "0010") else --2
		  "00110000" when (count1 = "0011") else --3
		  "00011001" when (count1 = "0100") else --4
		  "00010010" when (count1 = "0101") else --5
		  "00000010" when (count1 = "0110") else --6
		  "01111000" when (count1 = "0111") else --7
		  "00000000" when (count1 = "1000") else --8
		  "00010000" when (count1 = "1001") else --9
		  "00001000" when (count1 = "1010") else --a
		  "00000011" when (count1 = "1011") else --b
		  "01000110" when (count1 = "1100") else --c
		  "00100001" when (count1 = "1101") else --d
		  "00000110" when (count1 = "1110") else --e
		  "00001110" when (count1 = "1111") else --f
		  "01111111";
extra : process(load) -- load process
begin 	
	if (load = '0') then beep <= '0'; pwm_led <= "000";alpha <= "00110011"; -- load 동작시 beep, pwm, all red led on
	else beep <= '1'; pwm_led <= "111";  alpha <= "00000000";-- 아닐시 off
	end if;
end process;

team3 <= not alpha;

end Behavioral;

