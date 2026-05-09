library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- RS_D_Flip_Flop
-- 2학년_2반_2021041089_최태민

entity RS_D_Flip_Flop is
    Port ( S, R, D, CLK : in  STD_LOGIC;
           D_Q, D_QVAR : out  STD_LOGIC;
           RS_Q, RS_QVAR : Buffer  STD_LOGIC);
end RS_D_Flip_Flop;

architecture Behavioral of RS_D_Flip_Flop is

begin
	process(CLK, S, R, D)
		begin
			if rising_edge(CLK)	then
			-- D 플립플롭 
				if (D = '0') then D_Q <= '0'; D_QVAR <= '1';
					else D_Q <= '1';	D_QVAR <= '0';
				end if;
			-- RS 플립플롭
				if (S = '0' and R = '0') then RS_Q <= RS_Q; RS_QVAR <= RS_QVAR ;	-- 피드백
					elsif( S = '0' and R = '1') then RS_Q <= '0'; RS_QVAR <= '1';
					elsif( S = '1' and R = '0') then RS_Q <= '0'; RS_QVAR <= '1';
					elsif( S = '1' and R = '1') then RS_Q <= 'Z'; RS_QVAR <= 'Z';	-- Z high impdance
				end if;
			end if;
			end process ;

end Behavioral;

