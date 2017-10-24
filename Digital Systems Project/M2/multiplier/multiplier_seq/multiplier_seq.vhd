-- data A : multiplicand
-- data B : multiplier
	
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
	
ENTITY multiplier_seq IS
	PORT(
			i_CLK   : IN  std_logic;
			i_clrn  : IN  std_logic;
			i_start : IN  std_logic;
			i_DINa  : IN  std_logic_vector(7 DOWNTO 0);
			i_DINb  : IN  std_logic_vector(7 DOWNTO 0);
			o_DOUT  : OUT std_logic_vector(15 DOWNTO 0)
	);
END multiplier_seq;
	
ARCHITECTURE arch OF multiplier_seq IS
	
	-- Control Component Declaration
	COMPONENT mult_control IS
	PORT(	clk     : IN  std_logic;
			clrn    : IN  std_logic;
			i_start : IN  std_logic;
			i_mr    : IN  std_logic_vector(7 DOWNTO 0);
			o_mdld  : OUT std_logic;
			o_mrld  : OUT std_logic;
			o_rsclr : OUT std_logic;
			o_rsshr : OUT std_logic;
			o_rsld  : OUT std_logic);
	END COMPONENT;
	
	-- Register Component Declaration
	COMPONENT register_pp IS
		GENERIC (w : natural := 8);
		PORT (d    :  IN std_logic_vector(w-1 DOWNTO 0);
				clk  :  IN std_logic;
				clrn :  IN std_logic;
				ena  :  IN std_logic;
				q    : OUT std_logic_vector(w-1 DOWNTO 0));
	END COMPONENT;
	
	-- Operator Component Declaration
	COMPONENT mult_op IS
		PORT(	i_CLK    : IN  std_logic;
				i_rsclr  : IN  std_logic;
				i_rsshr  : IN  std_logic;
				i_rsld   : IN  std_logic;
				i_DinA   : IN  std_logic_vector(7 DOWNTO 0);
				o_result : OUT std_logic_vector(15 DOWNTO 0));
	END COMPONENT;
	
	-- Button threatment Component Declaration
	COMPONENT button IS
	PORT(	clk  : IN  std_logic; 
			clrn : IN  std_logic;
			i_Din  : IN  std_logic;
			o_Dout : OUT std_logic);
	END COMPONENT;
-- End components declaration
	
	SIGNAL w_mdld       : std_logic;
	SIGNAL w_mrld       : std_logic;
	SIGNAL w_rsclrCtrl  : std_logic;
	SIGNAL w_rsclr      : std_logic;
	SIGNAL w_rsshr      : std_logic;
	SIGNAL w_rsld       : std_logic;
	
	SIGNAL w_button : std_logic;
	
	SIGNAL w_regA   : std_logic_vector(7 DOWNTO 0);
	SIGNAL w_regB   : std_logic_vector(7 DOWNTO 0);
	
BEGIN
	
	-- Button threatment instanciation
	u_button: button PORT MAP(i_CLK, i_clrn, i_start, w_button);
	
	-- state machine control instanciation
	u_control: mult_control PORT MAP (i_CLK, i_clrn, w_button, w_regB, w_mdld, w_mrld, w_rsclrCtrl, w_rsshr, w_rsld);
	
	-- register for A and B instanciation
	reg_A: register_pp PORT MAP(i_DinA, i_CLK, i_clrn, w_mdld, w_regA);
	reg_B: register_pp PORT MAP(i_DinB, i_CLK, i_clrn, w_mrld, w_regB);
	
	w_rsclr <= w_rsclrCtrl OR NOT i_clrn;
	
	-- operator instanciation
	u_op: mult_op PORT MAP(i_CLK, w_rsclr, w_rsshr, w_rsld, w_regA, o_DOUT);
	
END arch;