LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
	
ENTITY sd_control IS
		PORT(
				clk        : IN  std_logic;
				clrn       : IN  std_logic;
				i_tot_lt_s : IN  std_logic;
				c          : IN  std_logic;
				d          : OUT std_logic;
				o_tot_ld   : OUT std_logic;
				o_tot_clrn : OUT std_logic);
END sd_control;
	
	
ARCHITECTURE arch OF sd_control IS
	
-- state declaration
TYPE state_type IS (s_init, s_wait, s_add, s_disp);
SIGNAL state      : state_type;
SIGNAL next_state : state_type;
	
BEGIN
	
	p_state_reg: 
	PROCESS(clk, clrn)
	BEGIN
		IF(clrn='0') THEN
			state <= s_init;
		ELSIF (clk'EVENT AND clk='1') THEN
			state <= next_state;
		END IF;
	END PROCESS;
	
	p_next_state:
	PROCESS(state, i_tot_lt_s, c)
	BEGIN
		CASE (state) IS
			WHEN s_init => next_state <= s_wait;
			
			WHEN s_wait => IF (c = '1') THEN
									next_state <= s_add;
								ELSIF(c = '0' AND i_tot_lt_s = '1') THEN
									next_state <= s_wait;
								ELSE 
									next_state <= s_disp;
								END IF;
								
			WHEN s_add  => next_state <= s_wait;
				
			WHEN s_disp => next_state <= s_init;
			
			WHEN OTHERS => next_state <= s_init;
		END CASE;
	END PROCESS;
	
	o_tot_clrn <= '0' WHEN (state = s_init) ELSE '1';
	o_tot_ld   <= '1' WHEN (state = s_add ) ELSE '0';
	d          <= '1' WHEN (state = s_disp) ELSE '0';
	
END arch;