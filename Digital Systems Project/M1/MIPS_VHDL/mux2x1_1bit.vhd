LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY mux2x1_1bit IS	
PORT (sel : IN  std_logic;
		a   : IN  std_logic;		
		b	 :	IN  std_logic;
		s   : OUT std_logic);
END mux2x1_1bit;

ARCHITECTURE arch OF mux2x1_1bit IS
BEGIN
	s <= (not a and sel) or (b and sel);
		
END arch;