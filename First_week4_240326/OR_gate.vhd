----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:10:24 03/25/2024 
-- Design Name: 
-- Module Name:    OR_gate - Behavioral 
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

--WEEK4
--OR_gate
--2학년_2반_2021041089_최태민

entity OR_gate is
    Port ( X0 : in  STD_LOGIC;
           X1 : in  STD_LOGIC;
           X2 : in  STD_LOGIC;
           Y0 : out  STD_LOGIC);
end OR_gate;

architecture Behavioral of OR_gate is

begin
	
	Y0 <= X0 OR X1 OR X2; --3입력 게이트

end Behavioral;

