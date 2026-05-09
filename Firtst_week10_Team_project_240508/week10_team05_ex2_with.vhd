library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- week10
-- week10_team05_ex2_with_select_when
-- 2학년 2반 2021041089 최태민. 2학년 2반 2021041043 서재권

entity week10_team05_ex2_with is
    Port ( x : in  STD_LOGIC_VECTOR (3 downto 0);
           k : out  STD_LOGIC_VECTOR (3 downto 0));
end week10_team05_ex2_with;

architecture Behavioral of week10_team05_ex2_with is
	signal a: STD_LOGIC_VECTOR(3 downto 0);
	signal d: STD_LOGIC_VECTOR(3 downto 0);
begin

	a <= x;
	with a select
		d <= "1100" when "0000",
			"1101" when "0001",
			"1110" when "0010",
			"1111" when "0011",
			"1010" when "0100",
			"1011" when "0101",
			"1001" when "0110",
			"0011" when "0111",
			"0010" when "1000",
			"0110" when "1001",
			"0001" when "1010",
			"0101" when "1011",
			"0111" when "1100",
			"1000" when "1101",
			"0100" when "1110",
			"0000" when others;
	k <= not d;

end Behavioral;

