LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- JK_T_Flip_Flop_TB
-- 2학년_2반_2021041089_최태민_2021041068_이한수

 
ENTITY JK_T_Flip_Flop_TB IS
END JK_T_Flip_Flop_TB;
 
ARCHITECTURE behavior OF JK_T_Flip_Flop_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT JK_T_Flip_Flop
    PORT(
         K : IN  std_logic;
         J : IN  std_logic;
         T : IN  std_logic;
         CLK : IN  std_logic;
         T_Q : Buffer  std_logic;		-- 피드백이 되어서 입력으로 사용하기 때문에 Buffer형 으로 선언
         T_QVAR : Buffer  std_logic;	-- 피드백이 되어서 입력으로 사용하기 때문에 Buffer형 으로 선언
         JK_Q : Buffer  std_logic;
         JK_QVAR : Buffer  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal K : std_logic := '0';		
   signal J : std_logic := '0';
   signal T : std_logic := '1';
   signal CLK : std_logic := '0';

 	--Outputs
   signal T_Q : std_logic;
   signal T_QVAR : std_logic;
   signal JK_Q : std_logic;
   signal JK_QVAR : std_logic;

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: JK_T_Flip_Flop PORT MAP (
          K => K,
          J => J,
          T => T,
          CLK => CLK,
          T_Q => T_Q,
          T_QVAR => T_QVAR,
          JK_Q => JK_Q,
          JK_QVAR => JK_QVAR
        );

	CLK_process :process 	--클록 발진
		Begin 
			CLk <= not CLk ;
			Wait for 50 ns;
		end process;	--클록 프로세스 문으로 돌아간다.
		

   --입력 조건을 준다.
	INPUT: process
   begin		
      wait for 60 ns;	--초기 조건이 동작하기 위한 시간
		-- 입력의 값들을 준다.
		--T <= '1';	wait for 160 ns;
		T <= '0';	wait for 160 ns;
		T <= '1';	wait for 160 ns;
		
		
   end process;	-- input 프로세스 문으로 돌아간다.

END;
