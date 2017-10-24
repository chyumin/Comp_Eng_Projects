LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith;
USE ieee.std_logic_signed;

ENTITY adder IS
GENERIC (
		p_WIDTH : natural := 32); -- data width
	PORT(
		i_DIN0 : in  std_logic_vector(p_WIDTH-1 DOWNTO 0); -- data input
		i_DIN1 : in  std_logic_vector(p_WIDTH-1 DOWNTO 0);
		o_DOUT : out std_logic_vector(p_WIDTH-1 DOWNTO 0);
		o_COUT : out std_logic);
END adder;

ARCHITECTURE arch OF adder IS

-- component declaration
	COMPONENT halfadder IS
	PORT (i_DIN0 : in  std_logic;   --data  input
			i_DIN1 : in  std_logic;   --data  input
			o_DOUT : out std_logic;   --data  output
			o_COUT : out std_logic);  --carry output
	END COMPONENT;

	COMPONENT fulladder IS
	PORT(
	i_CIN  : IN  std_logic;  -- carry input
	i_DIN0 : IN  std_logic;  -- data input
	i_DIN1 : IN  std_logic;  -- data input
	o_DOUT : OUT std_logic;  -- data output
	o_COUT : OUT std_logic); -- carry out
	END COMPONENT;
	
	SIGNAL w_COUT: std_logic_vector(p_WIDTH-1 DOWNTO 0);

BEGIN
	u_0: halfadder PORT MAP(i_DIN0(0), i_DIN1(0), o_DOUT(0), w_COUT(0));


	f_0: FOR i IN 1 TO (p_WIDTH-1) GENERATE
		u_1: fulladder PORT MAP (w_COUT(i-1), i_DIN0(i), i_DIN1(i), o_DOUT(i), w_COUT(i));
	END GENERATE f_0;
	
	o_COUT <= w_COUT(p_WIDTH-1);
END arch;