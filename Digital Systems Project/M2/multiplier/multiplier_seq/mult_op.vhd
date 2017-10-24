LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
	
ENTITY mult_op IS
	PORT(	i_CLK    : IN  std_logic;
			i_rsclr  : IN  std_logic;
			i_rsshr  : IN  std_logic;
			i_rsld   : IN  std_logic;
			i_DinA   : IN  std_logic_vector(7 DOWNTO 0);
			o_result : OUT std_logic_vector(15 DOWNTO 0));
END mult_op;
	
ARCHITECTURE arch OF mult_op IS
	
	SIGNAL w_add0res : std_logic_vector(8 DOWNTO 0);
	SIGNAL w_result  : std_logic_vector(15 DOWNTO 0);
	
	
-- Adder Component declaration
COMPONENT adder IS
GENERIC (
		p_WIDTH : natural := 16); -- data width
	PORT(
		i_DIN0 : in  std_logic_vector(p_WIDTH-1 DOWNTO 0); -- data input
		i_DIN1 : in  std_logic_vector(p_WIDTH-1 DOWNTO 0);
		o_DOUT : out std_logic_vector(p_WIDTH-1 DOWNTO 0);
		o_COUT : out std_logic);
END COMPONENT;
	
-- Running Sum Component Declaration
COMPONENT running_sum IS
PORT(
		clk     : IN  std_logic;
		clr     : IN  std_logic;
		shift_r : IN  std_logic;
		load    : IN  std_logic;
		i_DinA  : IN  std_logic_vector(8 DOWNTO 0);
		o_Dout  : OUT std_logic_vector(15 DOWNTO 0));
END COMPONENT; 	
BEGIN
	
-- adder instanciation
	add_0: adder GENERIC MAP(8) PORT MAP(i_DinA, w_result(15 DOWNTO 8), w_add0res(7 DOWNTO 0), w_add0res(8));
	
-- running sum innstanciation
	rm_0: running_sum PORT MAP(i_CLK, i_rsclr, i_rsshr, i_rsld, w_add0res, w_result);
	
	o_result <= w_result;
	
END arch;