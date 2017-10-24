LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY twobit_left_shifter_32bit IS
	PORT (D : IN  std_logic_vector(31 DOWNTO 0);
			Q : OUT std_logic_vector(31 DOWNTO 0));
END twobit_left_shifter_32bit;

ARCHITECTURE arch OF twobit_left_shifter_32bit IS
BEGIN
	Q(31 DOWNTO 2) <= D(29 DOWNTO 0);
	Q(1  DOWNTO 0) <= "00";
END;