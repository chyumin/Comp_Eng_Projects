LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY module_datapath IS

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
END module_datapath;

ARCHITECTURE arch OF module_datapath IS

-------- Components declaration - Start --------

-- K cont --
	COMPONENT counter_Wbits IS
	  GENERIC(W : NATURAL := 8);
	  PORT (clk : IN  std_logic;  -- clock
			  clrn: IN  std_logic;  -- clear
			  ena : IN  std_logic;  -- enable
			  q   : BUFFER STD_LOGIC_VECTOR(W-1 DOWNTO 0));-- data output
	END COMPONENT;

-- multiplier
	COMPONENT multiplier_as IS
		PORT(
				i_DINa   : IN  std_logic_vector(7 DOWNTO 0);
				i_DINb   : IN  std_logic_vector(7 DOWNTO 0);
				o_DOUT   : OUT std_logic_vector(15 DOWNTO 0));
	END COMPONENT;

-- subtrator
	COMPONENT sub_Wbits is
		GENERIC (W : NATURAL := 16);
		PORT(
				i_A : IN  std_logic_vector(W-1 DOWNTO 0);
				i_B : IN  std_logic_vector(W-1 DOWNTO 0);
				o_O : OUT std_logic_vector(W-1 DOWNTO 0));
	END COMPONENT;
	
-- Register
	component reg_pp_Wbits is generic(p_WIDTH : natural := 8);
	  port (i_D    : in  std_logic_vector(p_WIDTH-1 downto 0);-- data input
			  i_CLK  : in  std_logic;  -- clock
			  i_CLRn : in  std_logic;  -- clear
			  i_ENA  : in  std_logic;  -- enable
			  o_Q    : out std_logic_vector(p_WIDTH-1 downto 0));-- data output
	end component;
	
-- Comparator 
	COMPONENT less_than IS
	  GENERIC(W : NATURAL := 8);
	  PORT (a, b : IN  STD_LOGIC_VECTOR(W-1 DOWNTO 0);  -- data inputs
			  lt   : OUT STD_LOGIC); -- a < b
	END COMPONENT;

-------- Components declaration - End --------
	
-------- Signal Declaration --------
SIGNAL w_clrnK    : std_logic;
SIGNAL w_Kresult : std_logic_vector(7 DOWNTO 0);
SIGNAL w_A       : std_logic_vector(7 DOWNTO 0);
SIGNAL w_B       : std_logic_vector(7 DOWNTO 0);
SIGNAL w_MultRes : std_logic_vector(15 DOWNTO 0);
SIGNAL w_S       : std_logic_vector(15 DOWNTO 0);
SIGNAL w_A1      : std_logic_vector(15 DOWNTO 0);

BEGIN

-- inA register instanciation
	u_i_A: reg_pp_Wbits PORT MAP(i_A, i_clk, i_clrn, i_ena_regI, w_A);
	
-- inB register instanciation
	u_i_B: reg_pp_Wbits PORT MAP(i_B, i_clk, i_clrn, i_ena_regI, w_B);
	
	
-- counter K insntaciation
	u_contK: counter_Wbits PORT MAP(i_clk, w_clrnK, i_ena_contK, w_Kresult);
	
-- multiplier instanciation
	u_KmultB: multiplier_as PORT MAP(w_Kresult, w_B, w_MultRes);
	
-- subtractor instanciation
	u_AsubMultRes: sub_Wbits PORT MAP(w_A1, w_MultRes, w_S);
	
-- less_than instanciation
	u_less_than : less_than PORT MAP(w_S(7 DOWNTO 0), w_B, o_s_lt_b);
	
-- out register instanciation
	u_regOut: reg_pp_Wbits PORT MAP (w_S(7 DOWNTO 0), i_clk, i_clrn, i_ena_regO, o_S);
	
	w_clrnK <= i_clrnK and i_clrn;
	w_A1 <= "00000000" & w_A;
END arch;