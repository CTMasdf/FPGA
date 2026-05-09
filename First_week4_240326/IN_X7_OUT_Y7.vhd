----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:20:43 03/25/2024 
-- Design Name: 
-- Module Name:    IN_X7_OUT_Y7 - Behavioral 
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

-- WEEK4
-- IN_X7_OUT_Y7
-- 2학년_2반_2021041089_최태민

entity IN_X7_OUT_Y7 is
    Port ( X7 : in  STD_LOGIC;
           Y7 : out  STD_LOGIC);
end IN_X7_OUT_Y7;

architecture Behavioral of IN_X7_OUT_Y7 is

begin

	Y7 <= X7;	--X7의 신호를 Y7신호에 넣는다.
	
end Behavioral;

