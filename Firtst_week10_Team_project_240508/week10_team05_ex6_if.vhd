library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- week10
-- week10_team05_ex6_if
-- 2학년 2반 2021041089 최태민. 2학년 2반 2021041043 서재권

entity week10_team05_ex6_if is
    Port ( x1 : in  STD_LOGIC_VECTOR (3 downto 0);	--X0, X1, X2, X3 스위치
			  x2 : in  STD_LOGIC_VECTOR (3 downto 0); --X4, X5, X6, X7 스위치
           x3 : in  STD_LOGIC_VECTOR (9 downto 8); --X8, X9 스위치
			  k : out  STD_LOGIC_VECTOR (3 downto 0));	--LED 설정
end week10_team05_ex6_if;

architecture Behavioral of week10_team05_ex6_if is
	signal a: STD_LOGIC_VECTOR(3 downto 0); --x1의 신호를 받기 위해 내부 벡터 선언
	signal b: STD_LOGIC_VECTOR(3 downto 0); --x2의 신호를 받기 위해 내부 벡터 선언
	signal s: STD_LOGIC_VECTOR(1 downto 0); --x8, x9의 스위치의 신호를 받기 위해 내부 벡터 선언
	signal c: STD_LOGIC_VECTOR(3 downto 0); --3state buffer의 신호를 받기 위해 내부 벡터 선언
	
	signal n : STD_LOGIC;		 				 --x8, x9의 nor 게이트를 사용하기 위해 내부 로직 선언
	signal oe1: std_logic;						 --3state buffer를 사용하기 위해 내부 로직 선언
	signal oe2: std_logic;						 --3state buffer를 사용하기 위해 내부 로직 선언
begin
	a <= x1;	-- x1의 신호를 a에 전달
	b <= x2; -- x2의 신호를 b에 전달
	s(1) <= x3(8); -- X8 스위치의 신호를 s1에 s1에 전달 (Buffer 1)
	s(0) <= not x3(9); -- X9 스위치의 신호를 s0에 NOT 게이트를 거쳐서 n에 신호를 전달 (Buffer 2)
	n <= s(1) NOR s(0); -- s(1), s(0) 두개의 신호를 NOR 게이트를 거쳐서 n에 신호를 전달
	
--=======================3state buffer 코드============================
	oe1 <= s(1);	
	oe2 <= n;
-------------------------Buffer 1-------------------------------------
	process(oe1, a)
	begin
		if(oe1 = '1') then c <= a;
		else
			c <= "ZZZZ";
		end if;
	end process;

-------------------------Buffer 2-------------------------------------	
	process(oe2, b)
	begin
		if(oe2 = '1') then c <= b;
		else
			c <= "ZZZZ";
		end if;
	end process;
--=======================Buffer 코드 설정 끝============================
	
--=======================출력 코드======================================
	k <= not c;

end Behavioral;

