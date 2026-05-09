----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:40:33 04/15/2024 
-- Design Name: 
-- Module Name:    input_gate_vector_ex1 - Behavioral 
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
-- input_gate_vector_ex1
-- 2021041089_최태민, 2학년 2반 2019041066 송기준

entity input_gate_vector_ex1 is
    Port ( x : in  STD_LOGIC_VECTOR (2 downto 0);
           y : out  STD_LOGIC);
end input_gate_vector_ex1;

architecture Behavioral of input_gate_vector_ex1 is
	signal s : STD_LOGIC_VECTOR (3 downto 0);
begin
	

--소스코드
y0_proc : process(x) 
	begin
	if(x="000") then s <= "0001";
	elsif(x="001") then s<="0001";
	elsif(x="010") then s<="0000";
	elsif(x="011") then s<="1010";
	elsif(x="100") then s<="1101";
	elsif(x="101") then s<="1101";
	elsif(x="110") then s<="0000";
	else s<="1010";
	end if;
	
end process;
	y <= not s(3);

end Behavioral;

