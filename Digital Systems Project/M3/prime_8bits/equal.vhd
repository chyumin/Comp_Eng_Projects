LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;

ENTITY equal IS
  GENERIC(W : NATURAL := 8);
  PORT (a, b : IN  STD_LOGIC_VECTOR(W-1 DOWNTO 0);  -- data inputs
        eq   : OUT STD_LOGIC); -- a = b
END equal;

ARCHITECTURE arch OF equal IS
BEGIN
  eq <= '1' WHEN (a = b) ELSE '0';
END arch;