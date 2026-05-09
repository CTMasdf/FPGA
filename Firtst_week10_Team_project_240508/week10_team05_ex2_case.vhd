library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- week10
-- week10_team05_ex2_case
-- 2학년 2반 2021041089 최태민. 2학년 2반 2021041043 서재권

entity week10_team05_ex2_case is
    Port ( x : in  STD_LOGIC_VECTOR (3 downto 0);
           k : out  STD_LOGIC_VECTOR (3 downto 0));
end week10_team05_ex2_case;

architecture Behavioral of week10_team05_ex2_case is
	signal a: STD_LOGIC_VECTOR(3 downto 0);
	signal d: STD_LOGIC_VECTOR(3 downto 0);
begin
	a <= x;
	process(a)
	begin
	
	case a is
		when "0000" => d <= "1100";
		when "0001" => d <= "1101";
		when "0010" => d <= "1110";
		when "0011" => d <= "1111";
		when "0100" => d <= "1010";
		when "0101" => d <= "1011";
		when "0110" => d <= "1001";
		when "0111" => d <= "0011";
		when "1000" => d <= "0010";
		when "1001" => d <= "0110";
		when "1010" => d <= "0001";
		when "1011" => d <= "0101";
		when "1100" => d <= "0111";
		when "1101" => d <= "1000";
		when "1110" => d <= "0100";
		when others => d <= "0000";
	
	end case;
	end process;
	
	k <= not d;

end Behavioral;

