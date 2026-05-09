LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- RS_D_Flip_Flop_TB
-- 2학년_2반_2021041089_최태민

 
ENTITY RS_D_Flip_Flop_TB IS
END RS_D_Flip_Flop_TB;
 
ARCHITECTURE behavior OF RS_D_Flip_Flop_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RS_D_Flip_Flop
    PORT(
         S : IN  std_logic;
         R : IN  std_logic;
         D : IN  std_logic;
         CLK : IN  std_logic;
         D_Q : OUT  std_logic;
         D_QVAR : OUT  std_logic;
         RS_Q : Buffer  std_logic;	-- 피드백이 되어서 입력으로 사용하기 때문에 Buffer형 으로 선언 
         RS_QVAR : Buffer  std_logic	-- 피드백이 되어서 입력으로 사용하기 때문에 Buffer형 으로 선언
        );
    END COMPONENT;
    

   --Inputs
   signal S : std_logic := '1';	-- SR FF의 초기값 변경
   signal R : std_logic := '0';	-- SR FF의 초기값 변경
   signal D : std_logic := '0';
   signal CLK : std_logic := '0';

 	--Outputs
   signal D_Q : std_logic;
   signal D_QVAR : std_logic;
   signal RS_Q : std_logic;
   signal RS_QVAR : std_logic;

   
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RS_D_Flip_Flop PORT MAP (
          S => S,
          R => R,
          D => D,
          CLK => CLK,
          D_Q => D_Q,
          D_QVAR => D_QVAR,
          RS_Q => RS_Q,
          RS_QVAR => RS_QVAR
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
		D <= '1';	S <= '0';	 R <= '0'; 	wait for 160 ns;
		D <= '1';	S <= '1';	 R <= '0'; 	wait for 160 ns;
		D <= '1';	S <= '1';	 R <= '1'; 	wait for 160 ns;
		D <= '0';	S <= '0';	 R <= '1'; 	wait for 160 ns;
		D <= '0';	S <= '1';	 R <= '0'; 	wait for 160 ns;
		D <= '1';	S <= '0';	 R <= '0'; 	wait for 160 ns;
		D <= '1';	S <= '1';	 R <= '1'; 	wait for 160 ns;
		
   end process;	-- input 프로세스 문으로 돌아간다.

END;
