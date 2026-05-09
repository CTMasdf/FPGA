----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:34:48 03/25/2024 
-- Design Name: 
-- Module Name:    All_gate - Behavioral 
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

-- Week4
-- All_gate
-- 2학년 2반 2021041089_ 최태민

entity All_gate is
    Port ( X0 : in  STD_LOGIC;
           X1 : in  STD_LOGIC;
			  X2 : in  STD_LOGIC;
           
           Y0 : out  STD_LOGIC;
           Y1 : out  STD_LOGIC;
           Y2 : out  STD_LOGIC;
           Y3 : out  STD_LOGIC;
           Y4 : out  STD_LOGIC;
           Y5 : out  STD_LOGIC);
end All_gate;

architecture Behavioral of All_gate is

begin

	Y0 <= NOT X0;		--X0를 입력하면 인버터를 거친 값을 Y0에 출력한다.
	Y1 <= X0 OR X1;	--X0와 X1의 신호를 or 게이트를 거친 값을 Y1에 출력한다.
	Y2 <= X0 XOR X1;	--X0와 X1의 신호를 XOR 게이트를 거친 값을 Y2에 출력한다.
	Y3 <= (X0 NAND X1) NAND X2;	--우선입력 X0와 X1의 신호를 NAND 게이트를 거치고 그 값을 X2신호랑 같이 NAND 게이트에 거친 값을 Y3에 출력한다.
	Y4 <= (X0 NOR X1) NOR X2; 		--우선입력 X0와 X1의 신호를 NOR 게이트를 거치고 그 값을 X2신호랑 같이 NOR 게이트에 거친 값을 Y3에 출력한다.
	Y5 <= (X0 XNOR X1) XNOR X2;	--우선입력 X0와 X1의 신호를 XNOR 게이트를 거치고 그 값을 X2신호랑 같이 XNOR 게이트에 거친 값을 Y3에 출력한다.
	
end Behavioral;

