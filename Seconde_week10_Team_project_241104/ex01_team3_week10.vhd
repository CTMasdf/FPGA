library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

-- 2학년_3반_2021041091_한규철, 2021041089_최태민
-- ex01_team3_week10
-- 비동기식reset + 8진 segment counter + Beep

entity ex01_team3_week10 is
    Port ( RST, CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (3 downto 0);
           SEG : out  STD_LOGIC_VECTOR (7 downto 0);
           beep : out  STD_LOGIC);
end ex01_team3_week10;

architecture Behavioral of ex01_team3_week10 is
	signal count1 : std_logic_vector(2 downto 0);
begin

	upcount : process(clk, rst)
	begin
		if(rst = '0') then	-- 비동기식 리셋
			count1 <= "000";
		elsif (rst = '1') then	-- 리셋이 눌리지 않았을 때
			if(rising_edge(clk)) then -- 동기식 카운터
				count1 <= count1 + 1;
			end if;
		end if;
	end process;

	Q <= "1110";
	SEG <= X"fe" when (count1 = "000") else	--0
				X"fd" when (count1 = "001") else --1
				X"fb" when (count1 = "010") else --2
				X"f7" when (count1 = "011") else --3
				X"ef" when (count1 = "100") else --4
				X"df" when (count1 = "101") else --5
				X"bf" when (count1 = "110") else --6
				X"ff"; 
				
	beep <= '0' when (count1 = "111") else -- 마지막 숫자 부저
				'1';
end Behavioral;

