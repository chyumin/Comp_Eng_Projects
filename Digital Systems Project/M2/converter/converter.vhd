LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY converter IS
	PORT(
		i_DIN  :  IN  std_logic_vector (15 DOWNTO 0);
		o_DOUT :  OUT std_logic_vector (15 DOWNTO 0);
		o_COUT :  OUT std_logic);
END converter;

ARCHITECTURE arch OF converter IS
	SIGNAL w_datatoshift1  : std_logic_vector (20 DOWNTO 0);
	SIGNAL w_datatoshift3  : std_logic_vector (20 DOWNTO 0);
	SIGNAL w_datatoshift4  : std_logic_vector (20 DOWNTO 0);
	SIGNAL w_datatoshift1a : std_logic_vector (20 DOWNTO 0);
	SIGNAL w_leftshift1    : std_logic_vector (20 DOWNTO 0);
	SIGNAL w_leftshift3    : std_logic_vector (20 DOWNTO 0);
	SIGNAL w_leftshift4    : std_logic_vector (20 DOWNTO 0);
	SIGNAL w_add1          : std_logic_vector (20 DOWNTO 0);
	SIGNAL w_add2          : std_logic_vector (20 DOWNTO 0);
	SIGNAL w_Rshift7       : std_logic_vector (20 DOWNTO 0);
	SIGNAL w_leftshift1DIN : std_logic_vector (15 DOWNTO 0);
	SIGNAL w_add3          : std_logic_vector (15 DOWNTO 0);
	SIGNAL w_ovf_ls1       : std_logic;
	SIGNAL w_ovf_ls3       : std_logic;
	SIGNAL w_ovf_ls4       : std_logic;
	SIGNAL w_ovf_ls1a      : std_logic;
	SIGNAL cout_add1       : std_logic;
	SIGNAL cout_add2       : std_logic;
	SIGNAL cout_add3       : std_logic;
	SIGNAL w_TopOverflow   : std_logic;
	
	-- adder declaration
	COMPONENT adder IS
		GENERIC (
		p_WIDTH : natural); -- data width
	PORT(
		i_DIN0 : in  std_logic_vector(p_WIDTH-1 DOWNTO 0); -- data input
		i_DIN1 : in  std_logic_vector(p_WIDTH-1 DOWNTO 0);
		o_DOUT : out std_logic_vector(p_WIDTH-1 DOWNTO 0);
		o_COUT : out std_logic);
	END COMPONENT;
	
	--left shifter declaration
	COMPONENT left_shifter_ovf IS
	GENERIC	(n   : INTEGER := 32;
				 ns  : INTEGER := 1);
	PORT		(D   : IN  std_logic_vector(n-1 DOWNTO 0);
				 Q   : OUT std_logic_vector(n-1 DOWNTO 0);
				 Ovf : OUT std_logic);
	END COMPONENT;
	
	--right shifter declaration
	COMPONENT right_shifter IS
	GENERIC	(n  : INTEGER := 32;
				 ns : INTEGER := 1);
	PORT		(D : IN  std_logic_vector(n-1 DOWNTO 0);
				 Q : OUT std_logic_vector(n-1 DOWNTO 0));
	END COMPONENT;
	
BEGIN

	w_datatoshift1 (15 DOWNTO 0) <= i_DIN;
	w_datatoshift1 (20 DOWNTO 16)<= (OTHERS=>'0');
	
	w_datatoshift3 (15 DOWNTO 0) <= i_DIN;
	w_datatoshift3 (20 DOWNTO 16)<= (OTHERS=>'0');
	
	w_datatoshift4 (15 DOWNTO 0) <= i_DIN;
	w_datatoshift4 (20 DOWNTO 16)<= (OTHERS=>'0');

	w_datatoshift1a(15 DOWNTO 0) <= i_DIN;
	w_datatoshift1a(20 DOWNTO 16)<= (OTHERS=>'0');
	
	u_ls1a : left_shifter_ovf  GENERIC MAP (21, 1) PORT MAP(w_datatoshift1, w_leftshift1, w_ovf_ls1);
	u_ls3  : left_shifter_ovf  GENERIC MAP (21, 3) PORT MAP(w_datatoshift3, w_leftshift3, w_ovf_ls3);
	u_ls4  : left_shifter_ovf  GENERIC MAP (21, 4) PORT MAP(w_datatoshift4, w_leftshift4, w_ovf_ls4);
	u_add1 : adder             GENERIC MAP (21)    PORT MAP(w_leftshift1, w_leftshift3, w_add1, cout_add1);
	u_add2 : adder             GENERIC MAP (21)    PORT MAP(w_add1, w_leftshift4, w_add2, cout_add2);
	u_rs7  : right_shifter     GENERIC MAP (21, 7) PORT MAP(w_add2, w_Rshift7);
	u_ls1b : left_shifter_ovf  GENERIC MAP (16, 1) PORT MAP(i_DIN, w_leftshift1DIN, w_ovf_ls1a);
	u_add3 : adder             GENERIC MAP (16)    PORT MAP(w_Rshift7(15 DOWNTO 0), w_leftshift1DIN(15 DOWNTO 0), w_add3, cout_add3);
	
	w_TopOverflow <= w_ovf_ls1 OR w_ovf_ls3 OR w_ovf_ls4 OR w_ovf_ls1a OR cout_add1 OR cout_add2 OR cout_add3;
	o_DOUT <= w_add3 WHEN (w_TopOverflow = '0') ELSE (OTHERS=>'0');
	o_COUT <= w_TopOverflow;
	
END arch;