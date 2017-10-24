LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY sub_Wbits is
	GENERIC (W : NATURAL := 8);
	PORT(
			i_A : IN  std_logic_vector(W-1 DOWNTO 0);
			i_B : IN  std_logic_vector(W-1 DOWNTO 0);
			o_O : OUT std_logic_vector(W-1 DOWNTO 0));
END sub_Wbits;

ARCHITECTURE arch OF sub_Wbits IS
SIGNAL	w_A : unsigned(W-1 DOWNTO 0);
SIGNAL	w_B : unsigned(W-1 DOWNTO 0);
SIGNAL	w_O : unsigned(W-1 DOWNTO 0);

BEGIN
	w_A <= unsigned(i_A);
	w_B <= unsigned(i_B);
	w_O <= w_A - w_B;
	o_O <= std_logic_vector(w_O);

END;