library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- week11
-- week11_ex04_CTM
-- 2학년_2반_2021041089_최태민

entity week11_ex04_CTM is
    Port ( X : in  STD_LOGIC_VECTOR (3 downto 0);	-- X0 ~ X3 스위치
           Y0 : out  STD_LOGIC);	-- Y0 LED
end week11_ex04_CTM;

architecture Behavioral of week11_ex04_CTM is
	signal A: STD_LOGIC;
	signal B: STD_LOGIC;
	signal Y: STD_LOGIC;
	signal Buffer_A1_B2: STD_LOGIC_VECTOR (2 downto 1);
begin
	A <= X(3);	-- 3state buffer 1
	B <= X(0);	-- 3state buffer 2
	
	process(X, A, B)
	begin
		-- Buffer_A1_B2(2) = buffer 1
		-- Buffer_A1_B2(1) = buffer 2
		
		if (X(2) = '0' and X(1) = '0') then 
			Buffer_A1_B2 <= "ZZ";	
			
		elsif (X(2) = '0' and X(1) = '1') then 
			Buffer_A1_B2 <= 'Z' & B;	
			
		elsif (X(2) = '1' and X(1) = '0') then 
			Buffer_A1_B2 <= A & 'Z';	
			
		else
			Buffer_A1_B2 <= A & 'Z';	
			
		end if;
	end process;
	
Y <= Buffer_A1_B2(2);		
Y <= Buffer_A1_B2(1);

Y0 <= not Y;	


end Behavioral;

