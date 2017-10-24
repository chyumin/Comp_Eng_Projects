LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY module_control IS
PORT(	clk          : IN  std_logic;
		clrn         : IN  std_logic;
		i_startn     : IN  std_logic;
		i_s_lt_b     : IN  std_logic;
		o_ena_regI   : OUT  std_logic;
		o_ena_regO   : OUT std_logic;
		o_ena_contK  : OUT std_logic;
		o_clearn     : OUT std_logic;
		o_rdy        : OUT std_logic);
END module_control;

ARCHITECTURE arch OF module_control IS

-- state declaration
TYPE state_type IS (idle, s0, s1, s2, s3);
SIGNAL state      : state_type;
SIGNAL next_state : state_type;

BEGIN

	p_state_reg: 
	PROCESS(clk, clrn)
	BEGIN
		IF(clrn='0') THEN
			state <= idle;
		ELSIF (clk'EVENT AND clk='1') THEN
			state <= next_state;
		END IF;
	END PROCESS;

	p_next_state:
	PROCESS(clk, i_startn, i_s_lt_b, state)
	BEGIN
		CASE(state) IS
			WHEN idle =>	IF (i_startn = '1') THEN
									next_state <= idle;
								ELSE
									next_state <= s0;
								END IF;

			WHEN s0 => next_state <= s1;
			
			WHEN s1 => 	IF (i_s_lt_b = '1') THEN
								next_state <= s3;
							ELSE
								next_state <= s2;
							END IF;
							
			WHEN s2 => next_state <= s1;
			
			WHEN s3 => next_state <= idle;
		END CASE;
	END PROCESS;
	
	o_ena_regO  <= '1' WHEN (state = s3) ELSE '0';
	o_ena_contK <= '1' WHEN (state = s2) ELSE '0';
	o_clearn	   <= '0' WHEN (state = s0) ELSE '1';
	o_rdy       <= '1' WHEN (state = idle) ELSE '0';
	o_ena_regI  <= not i_startn;
END arch;