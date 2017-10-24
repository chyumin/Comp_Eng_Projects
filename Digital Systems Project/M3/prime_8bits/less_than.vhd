LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;

ENTITY less_than IS
  GENERIC(W : NATURAL := 8);
  PORT (a, b : IN  STD_LOGIC_VECTOR(W-1 DOWNTO 0);  -- data inputs
        lt   : OUT STD_LOGIC); -- a < b
END less_than;

ARCHITECTURE arch OF less_than IS
BEGIN
  lt <= '1' WHEN (a < b) ELSE '0';
END arch;