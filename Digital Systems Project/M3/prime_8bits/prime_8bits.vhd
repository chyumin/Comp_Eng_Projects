LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY prime_8bits IS
	PORT(	i_clk    : IN  std_logic;
			i_clrn   : IN  std_logic;
			i_startn : IN  std_logic;
			i_data   : IN  std_logic_vector(7 DOWNTO 0);
			o_res    : OUT std_logic;
			o_rdy    : OUT std_logic);
END prime_8bits;

ARCHITECTURE arch OF prime_8bits IS

-- control declaration
COMPONENT prime_control IS
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
END COMPONENT;


-- datapath declaration
COMPONENT prime_datapath IS
	PORT(	i_clk         : IN  std_logic;
			i_clrn        : IN  std_logic;
			i_startn      : IN  std_logic;
			i_modStartn   : IN  std_logic;
			i_clrnRegs    : IN  std_logic;
			i_ena_I       : IN  std_logic;
			i_ena_Div     : IN  std_logic;
			i_ena_regOut  : IN  std_logic;
			i_X           : IN  std_logic_vector(7 DOWNTO 0);
			o_modRdy      : OUT std_logic;
			o_mr_eq_zero  : OUT std_logic;
			o_I_bt_X      : OUT std_logic;
			o_prime       : OUT std_logic);
END COMPONENT;

-- Signlas declaration
	SIGNAL w_modStartn  : std_logic;
	SIGNAL w_clrnRegs   : std_logic;
	SIGNAL w_ena_I      : std_logic;
	SIGNAL w_ena_Div    : std_logic;
	SIGNAL w_ena_regOut : std_logic;
	SIGNAL w_modRdy     : std_logic;
	SIGNAL w_mr_eq_zero : std_logic;
	SIGNAL w_I_bt_X     : std_logic;
	
BEGIN
	
	-- control instanciation
	u_control: prime_control PORT MAP(i_clk, i_clrn, i_startn, w_I_bt_X, w_modRdy, w_mr_eq_zero, o_rdy, w_modStartn, w_clrnRegs, w_ena_I, w_ena_Div, w_ena_regOut);
	
	-- datapath instanciation
	u_datapath: prime_datapath PORT MAP(i_clk, i_clrn, i_startn, w_modStartn, w_clrnRegs, w_ena_I, w_ena_Div, w_ena_regOut, i_data, w_modRdy, w_mr_eq_zero, w_I_bt_X, o_res);
	
END arch;