LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY decoder3x8 IS
PORT (
  i_SEL_IN : IN  std_logic;
  i_A		  : IN  std_logic_vector(2 downto 0);
  o_SEL0   : OUT std_logic;
  o_SEL1   : OUT std_logic;
  o_SEL2   : OUT std_logic;
  o_SEL3   : OUT std_logic;
  o_SEL4   : OUT std_logic;
  o_SEL5   : OUT std_logic;
  o_SEL6   : OUT std_logic;
  o_SEL7   : OUT std_logic);
END decoder3x8;

ARCHITECTURE arch OF decoder3x8 IS
BEGIN
  o_SEL0 <= (i_SEL_IN and (not i_A(0) and not i_A(1) and not i_A(2)));
  o_SEL1 <= (i_SEL_IN and (i_A(0) and not i_A(1) and not i_A(2)));
  o_SEL2 <= (i_SEL_IN and (not i_A(0) and i_A(1) and not i_A(2)));
  o_SEL3 <= (i_SEL_IN and (i_A(0) and i_A(1) and not i_A(2)));
  o_SEL4 <= (i_SEL_IN and (not i_A(0) and not i_A(1) and i_A(2)));
  o_SEL5 <= (i_SEL_IN and (i_A(0) and not i_A(1) and i_A(2)));
  o_SEL6 <= (i_SEL_IN and (not i_A(0) and i_A(1) and i_A(2)));
  o_SEL7 <= (i_SEL_IN and (i_A(0) and i_A(1) and i_A(2)));
END arch;