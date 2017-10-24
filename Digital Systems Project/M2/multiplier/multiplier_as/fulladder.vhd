LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY fulladder IS
PORT(
	i_CIN  : IN  std_logic;  -- carry input
	i_DIN0 : IN  std_logic;  -- data input
	i_DIN1 : IN  std_logic;  -- data input
	o_DOUT : OUT std_logic;  -- data output
	o_COUT : OUT std_logic); -- carry out
END fulladder;

ARCHITECTURE arch OF fulladder IS

BEGIN
	o_DOUT <=  i_CIN  xor i_DIN0  xor i_DIN1;
	o_COUT <= (i_CIN  and i_DIN0) or
				(i_CIN  and i_DIN1) or
				 (i_DIN0 and i_DIN1);
END arch;