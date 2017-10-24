LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY halfadder IS
PORT (i_DIN0 : in  std_logic;   --data  input
		i_DIN1 : in  std_logic;   --data  input
		o_DOUT : out std_logic;   --data  output
		o_COUT : out std_logic);  --carry output
END halfadder;

ARCHITECTURE arch OF halfadder IS
BEGIN
	o_DOUT <= i_DIN0 xor i_DIN1;
	o_COUT <= i_DIN0 and i_DIN1;
END arch;