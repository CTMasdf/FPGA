----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:00:32 09/23/2024 
-- Design Name: 
-- Module Name:    HW1 - Behavioral 
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

-- 2학년 3반 2021041068 이한수, 2021041089 최태민 JK_FLIP-FLOP

entity HW1 is
    Port ( CLK: in  STD_LOGIC;
			  JK : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
           JK_Q_QVAR : BUFFER  STD_LOGIC_VECTOR(1 DOWNTO 0));
end HW1;

architecture Behavioral of HW1 is

begin
	PROCESS(CLK, JK, JK_Q_QVAR)
	BEGIN
		IF rising_edge(CLK) THEN			
		--JK플립플롭
		case (JK) is
                when "10" =>  -- J=1, K=0
                    JK_Q_QVAR <= "10";  -- Set
                when "01" =>  -- J=0, K=1
                    JK_Q_QVAR <= "01";  -- Reset
                when "11" =>  -- J=1, K=1
                    JK_Q_QVAR <= not JK_Q_QVAR;  -- Toggle
                when others =>  
      end case;
		case (JK & JK_Q_QVAR) IS
					WHEN "0001" | "0010" | "0011" =>	-- J=0, K=0, JK_Q_QVAR=01 or 10 or 11
                    JK_Q_QVAR <= JK_Q_QVAR;  -- 유지
					WHEN OTHERS =>
		END CASE;

		END IF;
	END PROCESS; 

end Behavioral;

