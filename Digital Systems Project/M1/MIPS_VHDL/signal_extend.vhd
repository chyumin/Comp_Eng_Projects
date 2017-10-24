LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY signal_extend IS
	PORT (D : IN  std_logic_vector(15 DOWNTO 0);
			Q : OUT std_logic_vector(31 DOWNTO 0));
END signal_extend;

ARCHITECTURE arch OF signal_extend IS

BEGIN
	
f_0:	FOR i IN 31 DOWNTO 15 GENERATE
 		Q(i) <= D(15);
	END GENERATE;
	
	Q(14 DOWNTO  0) <= D(14 DOWNTO  0);
END;