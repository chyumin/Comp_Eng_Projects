LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY mux4x1_1bit IS	
PORT (sel : IN  std_logic_vector(1 DOWNTO 0);
		a   : IN  std_logic;		
		b	 :	IN  std_logic;
		c   : IN  std_logic;
		d   : IN  std_logic;
		s   : OUT std_logic);
END mux4x1_1bit;

ARCHITECTURE arch OF mux4x1_1bit IS
BEGIN
	WITH sel SELECT
		s <=  a WHEN "00",
				b WHEN "01",
				c WHEN "10",
				d WHEN "11";
END arch;