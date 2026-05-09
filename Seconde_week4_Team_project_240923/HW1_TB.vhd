--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:05:37 09/23/2024
-- Design Name:   
-- Module Name:   C:/2021041068/week3/HW1/HW1_TB.vhd
-- Project Name:  HW1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: HW1
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- 2학년 3반 2021041068 이한수, 2021041089 최태민 JK_FLIP-FLOP
 
ENTITY HW1_TB IS
END HW1_TB;
 
ARCHITECTURE behavior OF HW1_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT HW1
    PORT(
         CLK : IN  std_logic;
         JK : IN  std_logic_vector(1 downto 0);
         JK_Q_QVAR : BUFFER  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal JK : std_logic_vector(1 downto 0) := ("10"); --JK FF의 초기값 변경

 	--Outputs
   signal JK_Q_QVAR : std_logic_vector(1 downto 0);

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: HW1 PORT MAP (
          CLK => CLK,
          JK => JK,
          JK_Q_QVAR => JK_Q_QVAR
        );

  

   -- 클록 발진
   CLK_PROCESS :process
   begin		
		CLK <= NOT CLK; WAIT FOR 50 NS;
	END PROCESS; -- CLOCK PROCESS문으로 돌아간다.
	
	INPUT :PROCESS
	BEGIN
	WAIT FOR 100NS;
	JK <= "00"; WAIT FOR 100 NS;
	JK <= "01"; WAIT FOR 100 NS;
	JK <= "11"; WAIT FOR 100 NS;
	END PROCESS;

END;
