library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- week10
-- week10_team05_ex2_if
-- 2학년 2반 2021041089 최태민. 2학년 2반 2021041043 서재권
entity week10_team05_ex2_if is
    Port ( x : in  STD_LOGIC_VECTOR (3 downto 0);
           k : out  STD_LOGIC_VECTOR (3 downto 0));
end week10_team05_ex2_if;

architecture Behavioral of week10_team05_ex2_if is
	signal a: STD_LOGIC_VECTOR(3 downto 0);
	signal d: STD_LOGIC_VECTOR(3 downto 0);
begin
	a <= x;
	process(a)
	begin
		if (a = "0000") then d <= "1100"; 
		elsif (a = "0001") then d <= "1101"; 
		elsif (a = "0010") then d <= "1110"; 
		elsif (a = "0011") then d <= "1111"; 
		elsif (a = "0100") then d <= "1010"; 
		elsif (a = "0101") then d <= "1011"; 
		elsif (a = "0110") then d <= "1001"; 
		elsif (a = "0111") then d <= "0011"; 
		elsif (a = "1000") then d <= "0010"; 
		elsif (a = "1001") then d <= "0110"; 
		elsif (a = "1010") then d <= "0001"; 
		elsif (a = "1011") then d <= "0101"; 
		elsif (a = "1100") then d <= "0111"; 
		elsif (a = "1101") then d <= "1000"; 
		elsif (a = "1110") then d <= "0100"; 
		else d <= "0000";
		end if;
	end process;
	k <= not d;
	
end Behavioral;

