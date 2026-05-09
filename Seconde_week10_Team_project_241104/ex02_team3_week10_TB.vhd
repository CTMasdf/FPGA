LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- 2학년_3반_2021041091_한규철, 2021041089_최태민
-- ex02_team3_week10_TB
-- 비동기식reset + 5진 segment counter + Beep


ENTITY ex02_team3_week10_TB IS
END ex02_team3_week10_TB;
 
ARCHITECTURE behavior OF ex02_team3_week10_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ex02_taem3_week10
    PORT(
         RST : IN  std_logic;
         CLK : IN  std_logic;
         Q : OUT  std_logic_vector(3 downto 0);
         SEG : OUT  std_logic_vector(7 downto 0);
         BEEP : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal RST : std_logic := '0';
   signal CLK : std_logic := '0';

 	--Outputs
   signal Q : std_logic_vector(3 downto 0);
   signal SEG : std_logic_vector(7 downto 0);
   signal BEEP : std_logic;

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ex02_taem3_week10 PORT MAP (
          RST => RST,
          CLK => CLK,
          Q => Q,
          SEG => SEG,
          BEEP => BEEP
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= not clk;
		wait for 25ns;
   end process;
 

   RST_process: process
	begin
		wait for 110 ns;
		rst <= not rst;
		wait;
		
   end process;

END;
