LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY prime_control IS
	PORT(	i_clk        : IN  std_logic;
			i_clrn       : IN  std_logic;
			i_startn     : IN  std_logic;
			i_I_bt_X     : IN  std_logic;
			i_modRdy     : IN  std_logic;
			i_mr_eq_zero : IN  std_logic;
			o_rdy        : OUT std_logic;
			o_modStartn  : OUT std_logic;
			o_clrnRegs   : OUT std_logic;
			o_ena_I      : OUT std_logic;
			o_ena_Div    : OUT std_logic;
			o_ena_regOut : OUT std_logic);
END prime_control;

ARCHITECTURE arch OF prime_control IS

-- state declaration
TYPE state_type IS (idle, init, s0, s1, s2, s3, s4, s5, s6);
SIGNAL state      : state_type;
SIGNAL next_state : state_type;

BEGIN

	p_state_reg: 
	PROCESS(i_clk, i_clrn)
	BEGIN
		IF(i_clrn='0') THEN
			state <= idle;
		ELSIF (i_clk'EVENT AND i_clk='1') THEN
			state <= next_state;
		END IF;
	END PROCESS;

	p_next_state:
	PROCESS(i_clk, i_startn, i_I_bt_X, i_modRdy, i_mr_eq_zero, state)
	BEGIN
		CASE(state) IS
			WHEN idle =>	IF (i_startn = '1') THEN
									next_state <= idle;
								ELSE
									next_state <= init;
								END IF;

			WHEN init => next_state <= s0;
			
			WHEN s0 => 	IF (i_I_bt_X = '0') THEN
								next_state <= s1;
							ELSE
								next_state <= s6;
							END IF;
							
			WHEN s1 => next_state <= s2;
			
			WHEN s2 => 	IF(i_modRdy = '0') THEN 
								next_state <= s2;
							ELSE
								next_state <= s3;
							END IF;
			
			WHEN s3 => 	IF (i_mr_eq_zero = '1') THEN
								next_state <= s4;
							ELSE
								next_state <= s5;
							END IF;
							
			WHEN s4 => next_state <= s5;
			
			WHEN s5 => 	next_state <= s0;
			
			WHEN s6 =>	next_state <= Idle;
			
		END CASE;
	END PROCESS;
	
	o_rdy        <= '1' WHEN (state = idle) ELSE '0';
	o_modStartn  <= '0' WHEN (state = s1)   ELSE '1';
	o_clrnRegs   <= '0' WHEN (state = init) ELSE '1';
	o_ena_I      <= '1' WHEN (state = s5)   ELSE '0';
	o_ena_Div    <= '1' WHEN (state = s4)   ELSE '0';
	o_ena_regOut <= '1' WHEN (state = s6)   ELSE '0';
	
END arch;