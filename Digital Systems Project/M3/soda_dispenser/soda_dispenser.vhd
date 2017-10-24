LIBRARY ieee;
USE ieee.std_logic_1164.ALL;


ENTITY soda_dispenser IS
	PORT(
		i_clk   : IN  std_logic;
		i_clrn  : IN  std_logic;
		i_c     : IN  std_logic;
		i_s     : IN  std_logic_vector(7 DOWNTO 0);
		i_a     : IN  std_logic_vector(7 DOWNTO 0);
		o_d     : OUT std_logic);
END soda_dispenser;

ARCHITECTURE arch OF soda_dispenser IS

-- Control component declaration
COMPONENT sd_control IS
	PORT(
			clk        : IN  std_logic;
			clrn       : IN  std_logic;
			i_tot_lt_s : IN  std_logic;
			c          : IN  std_logic;
			d          : OUT std_logic;
			o_tot_ld   : OUT std_logic;
			o_tot_clrn : OUT std_logic);
END COMPONENT;
	
-- Data Path component declaration
COMPONENT data_path IS
  GENERIC(p_WIDTH : NATURAL := 8);
  PORT(i_S        : in std_logic_vector(p_WIDTH-1 downto 0); 
        i_A        : in std_logic_vector(p_WIDTH-1 downto 0);
		  i_TOT_LD   : in std_logic;
		  i_TOT_CLR  : in std_logic;
		  i_CLK      : in std_logic;
        o_TOT_LT_S : out std_logic);  
END COMPONENT;
	
-- Signal declaration
	SIGNAL w_tot_ld_out   : std_logic;
	SIGNAL w_tot_clrn_out : std_logic;
	SIGNAL w_tot_lt_s_out : std_logic;
	
BEGIN
	
	u_0:sd_control PORT MAP(clk        => i_clk,
									clrn       => i_clrn,
									i_tot_lt_s => w_tot_lt_s_out,
									c          => i_c,
									d          => o_d,
									o_tot_ld   => w_tot_ld_out,
									o_tot_clrn => w_tot_clrn_out);
	
	u_1: data_path PORT MAP(i_S        => i_s,
									i_A        => i_a,
									i_TOT_LD   => w_tot_ld_out,
									i_TOT_CLR  => w_tot_clrn_out,
									i_CLK      => i_clk,
									o_TOT_LT_S => w_tot_lt_s_out);
	
END arch;