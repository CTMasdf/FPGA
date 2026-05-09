----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:51:28 03/25/2024 
-- Design Name: 
-- Module Name:    AND_gate - Behavioral 
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
--AND_gate
--2학년 2반_ 2021041089_최태민

entity AND_gate is
    Port ( X0 : in  STD_LOGIC;
           X1 : in  STD_LOGIC;
           Y0 : out  STD_LOGIC);
end AND_gate;

architecture Behavioral of AND_gate is

begin

	Y0 <= X0 AND X1;	--2입력 게이트
end Behavioral;

