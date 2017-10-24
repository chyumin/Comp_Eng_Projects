LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY button IS
	PORT(	clk  : IN  std_logic; 
			clrn : IN  std_logic;
			i_Din  : IN  std_logic;
			o_Dout : OUT std_logic);
END button;

ARCHITECTURE arch OF button IS
	
-- state declaration
TYPE state_type IS (s0, s1, s2);
SIGNAL state      : state_type;
SIGNAL next_state : state_type;
	
BEGIN

	p_state_reg: 
	PROCESS(clk, clrn)
	BEGIN
		IF(clrn='0') THEN
			state <= s0;
		ELSIF (clk'EVENT AND clk='1') THEN
			state <= next_state;
		END IF;
	END PROCESS;
	
	
	p_next_state:
	PROCESS(state, i_Din)
	BEGIN
		CASE (state) IS
			WHEN s0 =>  IF(i_Din = '0') THEN
								next_state <= s1;
							ELSE
								next_state <= s0;
							END IF;
			WHEN s1 => 	IF(i_Din = '1') THEN
								next_state <= s2;
							ELSE
								next_state <= s1;
							END IF;
							
			WHEN s2 =>	next_state <= s0;
			
			WHEN OTHERS => next_state <= s0;
			
		END CASE;
	END PROCESS;
	
	o_Dout <= '1' WHEN (state = s2) ELSE '0';
	
END arch;