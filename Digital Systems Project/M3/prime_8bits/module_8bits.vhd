LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY module_8bits IS

PORT(	i_clk    : IN  std_logic;
		i_clrn   : IN  std_logic;
		i_startn : IN std_logic;
		i_A      : IN  std_logic_vector(7 DOWNTO 0);
		i_B      : IN  std_logic_vector(7 DOWNTO 0);
		o_rdy    : OUT std_logic;
		o_S      : OUT std_logic_vector(7 DOWNTO 0));
END module_8bits;


ARCHITECTURE arch OF module_8bits IS


-- Component declaration --

-- control
COMPONENT module_control IS
PORT(	clk          : IN  std_logic;
		clrn         : IN  std_logic;
		i_startn     : IN  std_logic;
		i_s_lt_b     : IN  std_logic;
		o_ena_regI   : OUT  std_logic;
		o_ena_regO   : OUT std_logic;
		o_ena_contK  : OUT std_logic;
		o_clearn     : OUT std_logic;
		o_rdy        : OUT std_logic);
END COMPONENT;

-- datapath
COMPONENT module_datapath IS
PORT (i_clk        : IN  std_logic;
		i_clrn       : IN  std_logic;
		i_clrnK      : IN  std_logic;
		i_ena_contK  : IN  std_logic;
		i_ena_regI   : IN  std_logic;
		i_ena_regO   : IN  std_logic;
		i_A          : IN  std_logic_vector(7 DOWNTO 0);
		i_B          : IN  std_logic_vector(7 DOWNTO 0);
		o_s_lt_b     : OUT std_logic;
		o_S          : OUT std_logic_vector(7 DOWNTO 0));
END COMPONENT;

	SIGNAL w_ena_regI  : std_logic;
	SIGNAL w_ena_regO  : std_logic;
	SIGNAL w_ena_contK : std_logic;
	SIGNAL w_clrnK     : std_logic;
	SIGNAL w_s_lt_b    : std_logic;
	
BEGIN
	
-- control instanciation
	u_control: module_control PORT MAP(i_clk, i_clrn, i_startn, w_s_lt_b, w_ena_regI, w_ena_regO, w_ena_contK, w_clrnK, o_rdy);
	
-- datapath instanciation
	u_datapath: module_datapath PORT MAP(i_clk, i_clrn, w_clrnK, w_ena_contK, w_ena_regI, w_ena_regO, i_A, i_B, w_s_lt_b, o_S);
	
	
END arch;