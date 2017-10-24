LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY decoder2x4 IS
PORT (
  i_A		  : IN  std_logic_vector(1 DOWNTO 0);
  o_SEL0	  : OUT std_logic;
  o_SEL1	  : OUT std_logic;
  o_SEL2	  : OUT std_logic;
  o_SEL3	  : OUT std_logic);
END decoder2x4;

ARCHITECTURE arch OF decoder2x4 IS
BEGIN
  o_SEL0 <= (not i_A(0) and not i_A(1));
  o_SEL1 <= (i_A(0) and not i_A(1));
  o_SEL2 <= (not i_A(0) and i_A(1));
  o_SEL3 <= (i_A(0) and i_A(1));
END arch;