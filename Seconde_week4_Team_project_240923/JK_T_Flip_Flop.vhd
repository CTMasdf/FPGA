library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- JK_T_Flip_Flop
-- 2학년_2반_2021041089_최태민_2021041068_이한수

entity JK_T_Flip_Flop is
    Port ( K, J, T, CLK : in  STD_LOGIC;
           T_Q, T_QVAR : buffer  STD_LOGIC;
           JK_Q, JK_QVAR : buffer  STD_LOGIC);
end JK_T_Flip_Flop;

architecture Behavioral of JK_T_Flip_Flop is

begin
	process (CLK, K, J, T)
begin
	
    if rising_edge(CLK) then	-- 상승 엣지일 때
		-- T 플립플롭
			case (T and T_Q and T_QVAR) is					-- case T 가 
            when '0' =>			-- 0일 때
                T_Q <= T_Q;
                T_QVAR <= T_QVAR;
            when others =>
			end case;					-- case 종료
			
			case T is
				when '1' =>		-- 1일 때	trigger 상태
					T_Q <= '0';
					T_QVAR <= '1';
				when others =>
			end case; 
    end if;
	 
end process;

end Behavioral;

