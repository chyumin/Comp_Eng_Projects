LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mux2x1_32bit IS
	PORT (sel : IN  std_logic;
			a   : IN  std_logic_vector (31 DOWNTO 0);		
			b	 :	IN  std_logic_vector (31 DOWNTO 0);
			s   : OUT std_logic_vector (31 DOWNTO 0));
END mux2x1_32bit;

ARCHITECTURE arch OF mux2x1_32bit IS
--- declaracao de componente ---
	COMPONENT  mux2x1_8bit IS
		PORT (sel : IN  std_logic;
			a   : IN  std_logic_vector (7 DOWNTO 0);		
			b	 :	IN  std_logic_vector (7 DOWNTO 0);
			s   : OUT std_logic_vector (7 DOWNTO 0));
	END COMPONENT;

BEGIN
--- instanciacao de componente ---
u_0: mux2x1_8bit PORT MAP (sel, a(7 DOWNTO 0), b(7 DOWNTO 0), s(7 DOWNTO 0));
u_1: mux2x1_8bit PORT MAP (sel, a(15 DOWNTO 8), b(15 DOWNTO 8), s(15 DOWNTO 8));
u_2: mux2x1_8bit PORT MAP (sel, a(23 DOWNTO 16), b(23 DOWNTO 16), s(23 DOWNTO 16));
u_3: mux2x1_8bit PORT MAP (sel, a(31 DOWNTO 24), b(31 DOWNTO 24), s(31 DOWNTO 24));
END arch;