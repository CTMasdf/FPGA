----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:31:14 04/08/2024 
-- Design Name: 
-- Module Name:    input_gate_102_ex2 - Behavioral 
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
-- input_gate_102_ex2_std_logic 선언 if
-- 2학년 2반 2021041089 최태민, 2학년 2반 2019041066 송기준

entity input_gate_102_ex2 is
    Port ( x0, x1, x2, x3 : in  STD_LOGIC;
           y0, y1, y2, y3 : out  STD_LOGIC);
end input_gate_102_ex2;

architecture Behavioral of input_gate_102_ex2 is
	signal s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, o0, o1, o2, o3: std_logic;

begin

buf_proc : process(x0) -- buffer process
	begin
	if (x0 ='0') then s1 <='1';
		else s1 <='0';
	end if;
									
end process;

buf2_proc : process(x0) -- buffer process
	begin
	if (x1 ='0') then s0 <='1';
		else s0 <='0';
	end if;
									
end process;

so_proc : process(x0, x1, x2, x3) -- and, nand, or, nor, xor, xnor process
	begin
	if (x3 ='0' and x2='0' and x1 ='0' and x0='0') 
		then s2<= '1'; s3<= '0'; s4<= '0'; 
				s5<= '0'; s6<= '0'; s7<= '0'; 
				s8<= '1'; s9<= '1'; 
				o0 <= '1'; o1 <= '1'; o2 <= '0'; o3 <= '0';
	elsif (x3 ='0' and x2='0' and x1 ='0' and x0='1') 
		then s2<= '1'; s3<= '1'; s4<= '0'; 
				s5<= '0'; s6<= '1'; s7<= '0'; 
				s8<= '0'; s9<= '1'; 
				o0 <= '1'; o1 <= '0'; o2 <= '1'; o3 <= '1';
	elsif (x3 ='0' and x2='0' and x1 ='1' and x0='0') 
		then s2<= '1'; s3<= '1'; s4<= '0'; 
				s5<= '0'; s6<= '0'; s7<= '1'; 
				s8<= '1'; s9<= '0';
				o0 <= '1'; o1 <= '0'; o2 <= '1'; o3 <= '1';
	elsif (x3 ='0' and x2='0' and x1 ='1' and x0='1') 
		then s2<= '0'; s3<= '0'; s4<= '1'; 
				s5<= '0'; s6<= '0'; s7<= '0'; 
				s8<= '1'; s9<= '1'; 
				o0 <= '0'; o1 <= '1'; o2 <= '0'; o3 <= '0';
	elsif (x3 ='0' and x2='1' and x1 ='0' and x0='0') 
		then s2<= '1'; s3<= '0'; s4<= '0'; 
				s5<= '0'; s6<= '0'; s7<= '0'; 
				s8<= '1'; s9<= '1';
				o0 <= '1'; o1 <= '0'; o2 <= '0'; o3 <= '0';
	elsif (x3 ='0' and x2='1' and x1 ='0' and x0='1') 
		then s2<= '1'; s3<= '1'; s4<= '0'; 
				s5<= '0'; s6<= '1'; s7<= '0'; 
				s8<= '0'; s9<= '1';
				o0 <= '1'; o1 <= '1'; o2 <= '1'; o3 <= '1';
	elsif (x3 ='0' and x2='1' and x1 ='1' and x0='0') 
		then s2<= '1'; s3<= '1'; s4<= '0'; 
				s5<= '0'; s6<= '0'; s7<= '1'; 
				s8<= '1'; s9<= '0';
				o0 <= '1'; o1 <= '1'; o2 <= '1'; o3 <= '1';
	elsif (x3 ='0' and x2='1' and x1 ='1' and x0='1') 
		then s2<= '0'; s3<= '0'; s4<= '1'; 
				s5<= '0'; s6<= '0'; s7<= '0'; 
				s8<= '1'; s9<= '1';
				o0 <= '0'; o1 <= '0'; o2 <= '0'; o3 <= '0';
	elsif (x3 ='1' and x2='0' and x1 ='0' and x0='0') 
		then s2<= '1'; s3<= '0'; s4<= '0'; 
				s5<= '0'; s6<= '0'; s7<= '0'; 
				s8<= '1'; s9<= '1';
				o0 <= '1'; o1 <= '1'; o2 <= '0'; o3 <= '0';
	elsif (x3 ='1' and x2='0' and x1 ='0' and x0='1') 
		then s2<= '1'; s3<= '1'; s4<= '0'; 
				s5<= '0'; s6<= '1'; s7<= '0'; 
				s8<= '0'; s9<= '1';
				o0 <= '1'; o1 <= '0'; o2 <= '1'; o3 <= '1';
	elsif (x3 ='1' and x2='0' and x1 ='1' and x0='0') 
		then s2<= '1'; s3<= '1'; s4<= '0'; 
				s5<= '0'; s6<= '0'; s7<= '1'; 
				s8<= '1'; s9<= '0';
				o0 <= '1'; o1 <= '0'; o2 <= '1'; o3 <= '1';
	elsif (x3 ='1' and x2='0' and x1 ='1' and x0='1') 
		then s2<= '0'; s3<= '0'; s4<= '1'; 
				s5<= '0'; s6<= '0'; s7<= '0'; 
				s8<= '1'; s9<= '1';
				o0 <= '0'; o1 <= '1'; o2 <= '0'; o3 <= '0';
	elsif (x3 ='1' and x2='1' and x1 ='0' and x0='0') 
		then s2<= '1'; s3<= '0'; s4<= '0'; 
				s5<= '1'; s6<= '0'; s7<= '0'; 
				s8<= '1'; s9<= '1';
				o0 <= '0'; o1 <= '0'; o2 <= '0'; o3 <= '0';
	elsif (x3 ='1' and x2='1' and x1 ='0' and x0='1') 
		then s2<= '1'; s3<= '1'; s4<= '0'; 
				s5<= '1'; s6<= '1'; s7<= '0'; 
				s8<= '0'; s9<= '1';
				o0 <= '0'; o1 <= '1'; o2 <= '1'; o3 <= '1';
	elsif (x3 ='1' and x2='1' and x1 ='1' and x0='0') 
		then s2<= '1'; s3<= '1'; s4<= '0'; 
				s5<= '1'; s6<= '0'; s7<= '1'; 
				s8<= '1'; s9<= '0';
				o0 <= '0'; o1 <= '1'; o2 <= '1'; o3 <= '1';
	else 
		s2<= '0'; s3<= '0'; s4<= '1'; 
		s5<= '1'; s6<= '0'; s7<= '0'; 
		s8<= '1'; s9<= '1';
		o0 <= '0'; o1 <= '0'; o2 <= '0'; o3 <= '0';
	end if;
end process;
	
	--출력회로 소스코드
	y3 <= NOT o3;
	y2 <= NOT o2;
	y1 <= NOT o1;
	y0 <= NOT o0;
	

end Behavioral;

