LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY running_sum IS
PORT(
		clk     : IN  std_logic;
		clr     : IN  std_logic;
		load    : IN  std_logic;
		shift_r : IN  std_logic;
		i_DinA  : IN  std_logic_vector(8 DOWNTO 0);
		o_Dout  : OUT std_logic_vector(15 DOWNTO 0));
END running_sum;
	
ARCHITECTURE arch OF running_sum IS
	SIGNAL w_data : std_logic_vector (16 DOWNTO 0);
	
BEGIN
	
	PROCESS(clk,clr)
	BEGIN
		IF (clr='1') THEN
			w_data <= (OTHERS => '0');
		ELSIF (clk'EVENT AND clk='1') THEN
			IF (load='1') THEN
				w_data <= i_DinA & w_data(7 DOWNTO 0);
			END IF;
			IF(shift_r = '1') THEN
				w_data <= '0' & w_data(16 DOWNTO 1);
			END IF;
		END IF;
	END PROCESS;
	
	o_Dout <= w_data(15 DOWNTO 0);

END arch;