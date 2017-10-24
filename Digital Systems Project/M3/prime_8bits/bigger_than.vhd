LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;

ENTITY bigger_than IS
  GENERIC(W : NATURAL := 8);
  PORT (a, b : IN  STD_LOGIC_VECTOR(W-1 DOWNTO 0);  -- data inputs
        bt   : OUT STD_LOGIC); -- a < b
END bigger_than;

ARCHITECTURE arch OF bigger_than IS
BEGIN
  bt <= '1' WHEN (a > b) ELSE '0';
END arch;