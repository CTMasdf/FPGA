LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL; --산술연상을 위한 패키지
USE ieee.numeric_std.ALL;

-- week11
-- week11_ex04_CTM_TB
-- 2학년_2반_2021041089_최태민
 
ENTITY week11_ex04_CTM_TB IS
END week11_ex04_CTM_TB;
 
ARCHITECTURE behavior OF week11_ex04_CTM_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT week11_ex04_CTM
    PORT(
         X : IN  std_logic_vector(3 downto 0);
         Y0 : OUT  std_logic
        );
    END COMPONENT;
   --Inputs
   signal X : std_logic_vector(3 downto 0) := (others => '0');
    


 	--Outputs
   signal Y0 : std_logic;
	signal XW : std_logic_vector(1 downto 0) := "00";
	signal Buffer_AB : std_logic_vector(1 downto 0) := "00";
	
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: week11_ex04_CTM PORT MAP (
          X => X,
          Y0 => Y0
        );

	Buffer_AB_proc: process
	begin
	
		X(2) <= Buffer_AB(1);	-- 3state buffer 2 switch
		X(1) <= Buffer_AB(0);	-- 3state buffer 1 switch
		Buffer_AB <= Buffer_AB + 1;
		
		wait for 400 ns;
		
		if(X = "1111") then wait;
		end if;
	end process;
	
   stim_proc: process
   begin		
      X(0) <= XW(0);
		X(3) <= XW(1);
		XW <= XW + 1;	--increase vector x value
		
		wait for 100 ns;	--100ns delay
		
		if(X = "1111") then wait;
		end if;
   end process;

END;
