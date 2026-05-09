LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL; --산술연상을 위한 패키지
USE ieee.numeric_std.ALL;

-- week10
-- week10_team05_ex2_with_select_when_TB
-- 2학년 2반 2021041089 최태민. 2학년 2반 2021041043 서재권
 
ENTITY week10_team05_ex2_with_TB IS
END week10_team05_ex2_with_TB;
 
ARCHITECTURE behavior OF week10_team05_ex2_with_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT week10_team05_ex2_with
    PORT(
         x : IN  std_logic_vector(3 downto 0);
         k : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal x : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal k : std_logic_vector(3 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: week10_team05_ex2_with PORT MAP (
          x => x,
          k => k
        );

   -- Stimulus process
   stim_proc: process
   begin		
      wait for 100 ns;	--100ns delay
		x <= x+1;	--increase vector x value
		
		if(x = "1111") then wait;	-- STOP Simulasion
		end if;
   end process;

END;
