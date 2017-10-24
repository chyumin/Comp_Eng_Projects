-- Right Shifter Parameterizable
-- n = number of bits
-- ns = number of left shitf

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY right_shifter IS
	GENERIC	(n  : INTEGER := 32;
				 ns : INTEGER := 2);
	PORT		(D : IN  std_logic_vector(n-1 DOWNTO 0);
				 Q : OUT std_logic_vector(n-1 DOWNTO 0));
END right_shifter;

ARCHITECTURE arch OF right_shifter IS
BEGIN
--
--	Q(31 DOWNTO 30) <= (OTHERS=>'0');
--	Q(29 DOWNTO 0) <= D(31 DOWNTO 2);

	Q(n-1 DOWNTO n-ns) <= (OTHERS=>'0');
	Q(n-ns-1 DOWNTO 0) <= D(n-1 DOWNTO ns);
END;