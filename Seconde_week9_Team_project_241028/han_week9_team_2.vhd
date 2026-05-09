----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:05:00 10/28/2024 
-- Design Name: 
-- Module Name:    han_week9_team_2 - Behavioral 
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
use ieee.numeric_std.all;

-- 2021041091 2학년 3반 한규철, 2021041089_2학년_3반_최태민
-- 9주차 팀 과제 링 카운터 로드 추가
entity han_week9_team_2 is
    Port ( RST, CLK : in  STD_LOGIC;
           DQ : out  STD_LOGIC_VECTOR (3 downto 0);
           PWM : OUT STD_LOGIC_VECTOR (2 downto 0);
			  BUZZER : OUT STD_LOGIC;
			  LOAD : in  STD_LOGIC);
end han_week9_team_2;

architecture Behavioral of han_week9_team_2 is

signal COUNT_IN: std_logic_vector(3 downto 0):= "1010"; -- 내부신호선언	
signal BUZ : std_logic:= '1';			
signal led_pwm : std_logic_vector(2 downto 0):= "000"; 

begin
	process(RST, CLK)
	begin
		if(RST = '0') THEN count_in <= "0000"; -- 출력 RESET
		elsif(RISING_EDGE(CLK)) THEN 		--  CLOCK이 상승엣지일때
			COUNT_IN(3) <= COUNT_IN(2); BUZ <= '1'; led_pwm <= "111";
			COUNT_IN(2) <= COUNT_IN(1); BUZ <= '1'; led_pwm <= "111";
			COUNT_IN(1) <= COUNT_IN(0); BUZ <= '1'; led_pwm <= "111";
			COUNT_IN(0) <= COUNT_IN(3); BUZ <= '1'; led_pwm <= "111";
	   IF(COUNT_IN = "1010" AND LOAD = '0') THEN BUZ <= '0'; led_pwm <= "111";
		elsif(COUNT_IN = "0101" AND LOAD ='0') THEN BUZ <= '1'; led_pwm <= "000";
		end if;
	 end if;
	 end process;
	
DQ <= COUNT_IN;
BUZZER <= BUZ;
PWM <= led_pwm;

end Behavioral;


