LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL; --산술연상을 위한 패키지
USE ieee.numeric_std.ALL;

-- week10
-- week10_team05_ex6_case_TB
-- 2학년 2반 2021041089 최태민. 2학년 2반 2021041043 서재권

ENTITY week10_team05_ex6_case_TB IS
END week10_team05_ex6_case_TB;
 
ARCHITECTURE behavior OF week10_team05_ex6_case_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT week10_team05_ex6_case
    PORT(
         x1 : IN  std_logic_vector(3 downto 0);
         x2 : IN  std_logic_vector(3 downto 0);
         x3 : IN  std_logic_vector(9 downto 8);
         k : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal x1 : std_logic_vector(3 downto 0) := (others => '0');
   signal x2 : std_logic_vector(3 downto 0) := (others => '0');
   signal x3 : std_logic_vector(9 downto 8) := (others => '0');

 	--Outputs
   signal k : std_logic_vector(3 downto 0);
 
	signal count : std_logic_vector(9 downto 0):= "0000000000";
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: week10_team05_ex6_case PORT MAP (
          x1 => x1,
          x2 => x2,
          x3 => x3,
          k => k
        );
		  
	OE_proc: process
	begin
		wait for 425 ns;	--(25ns x 17) x3(8)과 x3(9)의 테이블이 겹치는 시간
		 x3(8) <= not x3(8); -- (x3(8), x3(9)) = (0, 1) 
		 count <= count + 1; -- 425ns 마다 1씩 증가한다.
		
		wait for 425 ns;	--(25ns x 17) x3(8)과 x3(9)의 테이블이 겹치는 시간
		 x3(8) <= not x3(8); -- (x3(8), x3(9)) = (1, 0)
		 x3(9) <= not x3(9);  
		 count <= count + 1; -- 425ns 마다 1씩 증가한다.
		
		wait for 425 ns;	--(25ns x 17) x3(8)과 x3(9)의 테이블이 겹치는 시간
		 x3(8) <= not x3(8);  -- (x3(8), x3(9)) = (1, 1)
		 count <= count + 1; -- 425ns 마다 1씩 증가한다.
		 
		wait for 425 ns;	--(25ns x 17) x3(8)과 x3(9)의 테이블이 겹치는 시간
		 x3(8) <= not x3(8); -- (x3(8), x3(9)) = (0, 0)
		 x3(9) <= not x3(9); 
		 count <= count + 1; -- 425ns 마다 1씩 증가한다.
		
		if(count = "0000001111") then	--6400 / 425 = 15.058 (소수점 제외 정수 15)
			wait;	-- STOP Simulasion
		end if;	
		
	end process;
		
	stim_proc: process
   begin		
      wait for 25 ns;	--25ns delay	
		
		--x1 이 1111일 때
		if(x1 = "1111") then x2 <= x2 + 1; x1 <= "0000";
		end if;
		
		
		if (x2 = "1111") then x2 <= "1111";
		end if;
		
		x1 <= x1 + 1;	--increase vector x value
		
		if(x2 = "1111" and x1 = "1111") then 
				wait;	-- STOP Simulasion
		end if;	
		
		
   end process;

END;
