LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mux2x1_5bit IS
	PORT (sel : IN  std_logic;
			a   : IN  std_logic_vector (4 DOWNTO 0);		
			b	 :	IN  std_logic_vector (4 DOWNTO 0);
			s   : OUT std_logic_vector (4 DOWNTO 0));
END mux2x1_5bit;

ARCHITECTURE arch OF mux2x1_5bit IS
--- Declaracao de componente
	COMPONENT mux_2x1_1bit IS
		PORT( sel : IN  std_logic;
				a   : IN  std_logic;
				b   : IN  std_logic;
				s   : OUT std_logic);
	END COMPONENT;
	
BEGIN
-- instanciacao do componente
u_0: mux_2x1_1bit PORT MAP (sel, a(0), b(0), s(0));
u_1: mux_2x1_1bit PORT MAP (sel, a(1), b(1), s(1));
u_2: mux_2x1_1bit PORT MAP (sel, a(2), b(2), s(2));
u_3: mux_2x1_1bit PORT MAP (sel, a(3), b(3), s(3));
u_4: mux_2x1_1bit PORT MAP (sel, a(4), b(4), s(4));
	
END arch;