LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
	
ENTITY mult_control IS
	PORT(	clk     : IN  std_logic;
			clrn    : IN  std_logic;
			i_start : IN  std_logic;
			i_mr    : IN  std_logic_vector(7 DOWNTO 0);
			o_mdld  : OUT std_logic;
			o_mrld  : OUT std_logic;
			o_rsclr : OUT std_logic;
			o_rsshr : OUT std_logic;
			o_rsld  : OUT std_logic);
END mult_control;
	
ARCHITECTURE arch OF mult_control IS
	
-- state declaration
TYPE state_type IS (idle, start, s0, s1, s2, s3, s4, s5, s6, s7, 
						  s8, s9, s10, s11, s12, s13, s14, s15, s16);
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
	PROCESS(state, i_start, i_mr)
	BEGIN
		
		CASE(state) IS
			WHEN idle => IF (i_start='1') THEN
								next_state <= start;
							ELSE
								next_state <= idle;
							END IF;
							
			WHEN start => next_state <= s0;
			
			WHEN s0 =>  IF(i_mr(0)='0') THEN
								next_state <= s2;
							ELSIF(i_mr(0)='1') THEN
								next_state <= s1;
							ELSE
								next_state <= idle;
							END IF;
							
			WHEN s1 =>	next_state <= s2;
			
			WHEN s2 =>	IF(i_mr(1)='0') THEN
								next_state <= s4;
							ELSIF(i_mr(1)='1') THEN
								next_state <= s3;
							ELSE
								next_state <= idle;
							END IF;
							
			WHEN s3 =>	next_state <= s4;
			
			WHEN s4 =>	IF(i_mr(2)='0') THEN
								next_state <= s6;
							ELSIF(i_mr(2)='1') THEN
								next_state <= s5;
							ELSE
								next_state <= idle;
							END IF;
							
			WHEN s5 =>	next_state <= s6;
			
			WHEN s6 =>	IF(i_mr(3)='0') THEN
								next_state <= s8;
							ELSIF(i_mr(3)='1') THEN
								next_state <= s7;
							ELSE
								next_state <= idle;
							END IF;
			WHEN s7 =>	next_state <= s8;
			
			WHEN s8 =>	IF(i_mr(4)='0') THEN
								next_state <= s10;
							ELSIF(i_mr(4)='1') THEN
								next_state <= s9;
							ELSE
								next_state <= idle;
							END IF;
							
			WHEN s9 =>	next_state <= s10;
			
			WHEN s10 =>	IF(i_mr(5)='0') THEN
								next_state <= s12;
							ELSIF(i_mr(5)='1') THEN
								next_state <= s11;
							ELSE
								next_state <= idle;
							END IF;
							
			WHEN s11 =>	next_state <= s12;
			
			WHEN s12 =>	IF(i_mr(6)='0') THEN
								next_state <= s14;
							ELSIF(i_mr(6)='1') THEN
								next_state <= s13;
							ELSE
								next_state <= idle;
							END IF;
			
			WHEN s13 =>	next_state <= s14;
			
			WHEN s14 =>	IF(i_mr(7)='0') THEN
								next_state <= s16;
							ELSIF(i_mr(7)='1') THEN
								next_state <= s15;
							ELSE
								next_state <= idle;
							END IF;
							
			WHEN s15 =>	next_state <= s16;
			
			WHEN s16 =>	next_state <= idle;
			
			WHEN OTHERS => next_state <= idle;
		END CASE;
	END PROCESS;
	
	o_rsclr <= '1' WHEN (state = start) ELSE '0';
	o_mdld  <= '1' WHEN (state = start)  ELSE '0';
	o_mrld  <= '1' WHEN (state = start)  ELSE '0';
	o_rsshr <= '1' WHEN (state = s2 OR state = s4 OR state = s6 OR state = s8 OR state = s10 OR state = s12 OR state = s14 OR state = s16) ELSE '0';
	o_rsld  <= '1' WHEN (state = s1 OR state = s3 OR state = s5 OR state = s7 OR state = s9 OR state = s11 OR state = s13 OR state = s15) ELSE '0';
	
END arch;