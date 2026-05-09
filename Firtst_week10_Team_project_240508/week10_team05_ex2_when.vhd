library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- week10
-- week10_team05_ex2_when~else
-- 2학년 2반 2021041089 최태민. 2학년 2반 2021041043 서재권

entity week10_team05_ex2_when is
    Port ( x : in  STD_LOGIC_VECTOR (3 downto 0);
           k : out  STD_LOGIC_VECTOR (3 downto 0));
end week10_team05_ex2_when;

architecture Behavioral of week10_team05_ex2_when is
	signal a: STD_LOGIC_VECTOR(3 downto 0);
	signal d: STD_LOGIC_VECTOR(3 downto 0);
begin
	a <= x;
	
	d <= "1100" when (a = "0000") else
		"1101" when (a = "0001") else
		"1110" when (a = "0010") else
		"1111" when (a = "0011") else
		"1010" when (a = "0100") else
		"1011" when (a = "0101") else
		"1001" when (a = "0110") else
		"0011" when (a = "0111") else
		"0010" when (a = "1000") else
		"0110" when (a = "1001") else
		"0001" when (a = "1010") else
		"0101" when (a = "1011") else
		"0111" when (a = "1100") else
		"1000" when (a = "1101") else
		"0100" when (a = "1110") else
		"0000";
	k <= not d;
end Behavioral;

