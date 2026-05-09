----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:10:52 04/08/2024 
-- Design Name: 
-- Module Name:    input_gate_102_ex1 - Behavioral 
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

-- week7
-- input_gate_102_ex1_std_logic 선언 if
-- 2학년 2반 2021041089 최태민, 2학년 2반 2019041066 송기준


entity input_gate_102_ex1 is

    Port ( x0, x1, x2 : in  STD_LOGIC;
           y0 : out  STD_LOGIC);
end input_gate_102_ex1;

architecture Behavioral of input_gate_102_ex1 is

signal s1, s2, s3, s4 : std_logic;

begin

s1_proc : process(x1) -- buffer
	--내부회로 not 소스코드
	begin
	if (x1 = '0') then s1<='1';
	else s1 <= '0';
	end if;
	
end process;


s2_proc : process(x0,x1) 
	--내부회로 and 소스코드
	begin
	if (x0 ='0' and x1='0') then s2 <= '0';
	elsif (x0 ='0' and x1='1') then s2 <= '0';
	elsif (x0 ='1' and x1='0') then s2 <= '0';
	else s2 <= '1';
	
	end if;
end process;	
	
s3_proc : process(s1,x2)
	--내부회로 and 소스코드
		begin
		if (s1 ='0' and x2='0') then s3 <= '0';
		elsif (s1 ='0' and x2='1') then s3 <= '0';
		elsif (s1 ='1' and x2='0') then s3 <= '0';
		else s3 <= '1';
	
	end if;
end process;
	 
s4_proc : process(s2,s3)
	--내부회로 and 소스코드
		begin
		if (s2 ='0' and s3 ='0') then s4 <= '0';
		elsif (s2 ='0' and s3 ='1') then s4 <= '1';
		elsif (s2 ='1' and s3 ='0') then s4 <= '1';
		else s4 <= '1';
	
	end if;
end process;

--출력회로 소스코드
y0_proc : process(s4) -- buffer
	--출력회로 not 소스코드
	begin
	if (s4 = '0') then y0<='1';
	else y0 <= '0';
	end if;
	
end process;
		
	
end Behavioral;

