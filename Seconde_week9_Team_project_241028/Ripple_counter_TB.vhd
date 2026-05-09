LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- 2학년3반_2021041089_최태민, 2학년3반_2021041091_한규철
-- EX_ripple_counter_TB

ENTITY Ripple_counter_TB IS
END Ripple_counter_TB;
 
ARCHITECTURE behavior OF Ripple_counter_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT EX_Ripple_counter
    PORT(
         CLK : IN  std_logic;
         RST : IN  std_logic;
         BEEP : OUT  std_logic;
         LOAD : IN  std_logic;
         STEP : OUT  std_logic_vector(3 downto 0);
         JQ : buffer  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0';
   signal LOAD : std_logic := '0';

 	--Outputs
   signal BEEP : std_logic;
   signal STEP : std_logic_vector(3 downto 0);
   signal JQ : std_logic_vector(3 downto 0);

  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: EX_Ripple_counter PORT MAP (
          CLK => CLK,
          RST => RST,
          BEEP => BEEP,
          LOAD => LOAD,
          STEP => STEP,
          JQ => JQ
        );

  CLK_process :process
	begin
		CLK <= not CLK;
		wait for 25 ns;
	end process;
	
	RES_proc : process
	begin
		wait for 200ns;
		RST <= '1';
		wait;
	end process;
	
	LOAD_proc : process
	begin
		wait for 3000ns;
		LOAD <= '1';
		wait;
	end process;
END;
