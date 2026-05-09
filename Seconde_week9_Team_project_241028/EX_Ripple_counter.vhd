library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- 2학년3반_2021041089_최태민, 2학년3반_2021041091_한규철
-- EX_ripple_counter

entity EX_Ripple_counter is
    Port ( CLK, RST : in  STD_LOGIC;
				BEEP : out std_logic;
				LOAD : in  std_logic;
				STEP : out  STD_LOGIC_VECTOR (3 downto 0);
           JQ : buffer  STD_LOGIC_VECTOR (3 downto 0));
end EX_Ripple_counter;

architecture Behavioral of EX_Ripple_counter is
	signal CQ0, CQ1, CQ2, CQ3 : std_logic;
				
begin
	JQ <= CQ3 & CQ2 & CQ1 & CQ0;
	
	STEP_LED :process (JQ, LOAD)	-- 로드 동작 감지신호
	begin
		if (JQ = "1110") then	-- JQ가 1110 일 때
			STEP <= "1110";
			BEEP <= '1';
		elsif (JQ = "1101") then	-- JQ가 1101 일 때
			STEP <= "1101";
			BEEP <= '1';
		elsif (JQ = "1011") then	-- JQ가 1011 일 때
			STEP <= "1011";
			BEEP <= '1';
		elsif (JQ = "0111") then	-- JQ가 0111 일 때
			STEP <= "0111";
		elsif (JQ = "0000" and LOAD = '0') then
			BEEP <= '0';
		else 
			STEP <= "1111";
			BEEP <= '1';
		end if;
	end process;
	
	-- CLK rising edge에서 동작
	A_FF : process (RST, CLK)	-- RST CLK 감지신호
	begin
		if (RST = '0') then CQ0 <= '0';	-- RST = 0이면 CQ0 = 0
			elsif (rising_edge(CLK)) then CQ0 <= not CQ0;	-- RST = 1이면 Q0 토글
		end if;
	end process;
	
	-- CQ0 rising edge에서 동작
	B_FF : process (RST, CQ0)	-- RST CQ0 감지신호
	begin
		if (RST = '0') then CQ1 <= '0';	-- RST = 0이면 CQ1 = 0
			elsif (rising_edge(CQ0)) then CQ1 <= not CQ1;	-- RST = 1이면 Q1 토글
		end if;
	end process;
	
	-- CQ0 rising edge에서 동작
	C_FF : process (RST,CQ1)	-- RST CQ0 감지신호
	begin
		if (RST = '0') then CQ2 <= '0';	-- RST = 0이면 CQ1 = 0
			elsif (rising_edge(CQ1)) then CQ2 <= not CQ2;	-- RST = 1이면 Q1 토글
		end if;
	end process;
	
	
	-- CQ2 rising edge에서 동작
	D_FF : process (RST,CQ2)	-- RST CQ2 감지신호
	begin
		if (RST = '0') then CQ3 <= '0';	-- RST = 0이면 CQ2 = 0
			elsif (rising_edge(CQ2)) then CQ3 <= not CQ3;	-- RST = 1이면 Q3 토글
		end if;
	end process;

end Behavioral;

