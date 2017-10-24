LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY prime_datapath IS
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
END prime_datapath;

ARCHITECTURE arch OF prime_datapath IS

------ Component Declaration ------

-- module
COMPONENT module_8bits IS
	PORT(	i_clk    : IN  std_logic;
			i_clrn   : IN  std_logic;
			i_startn : IN std_logic;
			i_A      : IN  std_logic_vector(7 DOWNTO 0);
			i_B      : IN  std_logic_vector(7 DOWNTO 0);
			o_rdy    : OUT std_logic;
			o_S      : OUT std_logic_vector(7 DOWNTO 0));
END COMPONENT;

-- register
COMPONENT reg_pp_Wbits IS GENERIC(p_WIDTH : natural := 8);
	PORT(i_D    : IN  std_logic_vector(p_WIDTH-1 DOWNTO 0);-- data input
        i_CLK  : IN  std_logic;  -- clock
        i_CLRn : IN  std_logic;  -- clear
        i_ENA  : IN std_logic;  -- enable
        o_Q    : OUT std_logic_vector(p_WIDTH-1 DOWNTO 0));-- data output
END COMPONENT;

-- contDiv
COMPONENT counter_Wbits IS
  GENERIC(W : NATURAL := 8);
  PORT (clk : IN  std_logic;  -- clock
        clrn: IN  std_logic;  -- clear
        ena : IN  std_logic;  -- enable
        q   : BUFFER STD_LOGIC_VECTOR(W-1 DOWNTO 0));-- data output
END COMPONENT;

-- countI
COMPONENT counter_WbitsR1 IS
  GENERIC(W : NATURAL := 8);
  PORT (clk : IN  std_logic;  -- clock
        clrn: IN  std_logic;  -- clear
        ena : IN  std_logic;  -- enable
        q   : BUFFER STD_LOGIC_VECTOR(W-1 DOWNTO 0));-- data output
END COMPONENT;

-- Bigger than
COMPONENT bigger_than IS
  GENERIC(W : NATURAL := 8);
  PORT (a, b : IN  STD_LOGIC_VECTOR(W-1 DOWNTO 0);  -- data inputs
        bt   : OUT STD_LOGIC); -- a < b
END COMPONENT;


-- Equal
COMPONENT equal IS
  GENERIC(W : NATURAL := 8);
  PORT (a, b : IN  STD_LOGIC_VECTOR(W-1 DOWNTO 0);  -- data inputs
        eq   : OUT STD_LOGIC); -- a = b
END COMPONENT;


------- Signal declarations --------
	SIGNAL w_ena_regX   : std_logic;
	SIGNAL w_clrnRegs   : std_logic;
	SIGNAL w_Div_eq_two : std_logic;
	SIGNAL w_regX       : std_logic_vector(7 DOWNTO 0);
	SIGNAL w_I          : std_logic_vector(7 DOWNTO 0);
	SIGNAL w_Div        : std_logic_vector(7 DOWNTO 0);
	SIGNAL w_modRes     : std_logic_vector(7 DOWNTO 0);
	SIGNAL w_zero       : std_logic_vector(7 DOWNTO 0);
	SIGNAL w_two        : std_logic_vector(7 DOWNTO 0);

BEGIN
	
	-- regX instanciation
	u_regX: reg_pp_Wbits PORT MAP(i_X, i_clk, i_clrn, w_ena_regX, w_regX);
	
	-- contI instanciation
	u_countI: counter_WbitsR1 PORT MAP (i_clk, w_clrnRegs, i_ena_I, w_I);
	
	-- module instanciation
	u_module: module_8bits PORT MAP(i_clk, i_clrn, i_modStartn, w_regX, w_I, o_modRdy, w_modRes);
	
	-- equal instanciation
	u_equal: equal PORT MAP (w_modRes, w_zero, o_mr_eq_zero);
	
	-- bigger instanciation
	u_biggerthan: bigger_than PORT MAP (w_I, w_regX, o_I_bt_X);
	
	-- contDiv instanciation
	u_contDiv: counter_Wbits PORT MAP(i_clk, w_clrnRegs, i_ena_Div, w_div);
	
	-- equal2 instanciation
	u_eual2: equal PORT MAP(w_div, w_two, w_Div_eq_two);
	
	-- RegOut instanciation
	u_regOut: 
		reg_pp_Wbits	GENERIC MAP(1) 
							PORT MAP (	i_D(0) => w_Div_eq_two, 
											i_CLK  => i_clk,
											i_CLRn => w_clrnRegs, 
											i_ENA  => i_ena_regOut, 
											o_Q(0) => o_prime);
	
	w_zero <= (OTHERS =>'0');
	w_two <= "00000010";
	w_ena_regX <= not i_startn;
	w_clrnRegs <= i_clrn and i_clrnRegs;
END arch;