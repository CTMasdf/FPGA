----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:41:45 10/28/2024 
-- Design Name: 
-- Module Name:    han_week9_team_1 - Behavioral 
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

-- 2021041091 2학년 3반 한규철 , 2021041089_2학년_3반_최태민
-- 9주차 팀과제 존슨 카운터

entity han_week9_team_1 is
    Port ( RST, CLK : in  STD_LOGIC;
           DQ : out  STD_LOGIC_VECTOR (3 downto 0));
end han_week9_team_1;

architecture Behavioral of han_week9_team_1 is

signal COUNT_IN : std_logic_vector(3 downto 0):= "1010";

begin

 process (RST, CLK)
 BEGIN
  IF (RST = '0') THEN COUNT_IN <= "0000"; -- 출력 리셋
	ELSIF(RISING_EDGE(CLK)) THEN -- CLOCK이 상승 엣지일때
	 COUNT_IN(3) <= COUNT_IN(2);
	 COUNT_IN(2) <= COUNT_IN(1);
	 COUNT_IN(1) <= COUNT_IN(0);
	 COUNT_IN(0) <= NOT COUNT_IN(3); -- DQ(0) <= NOT DQ(3)
  END IF;
 END PROCESS;
 
DQ <= COUNT_IN;
end Behavioral;

