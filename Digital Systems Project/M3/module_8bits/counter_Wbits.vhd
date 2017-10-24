LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;

ENTITY counter_Wbits IS
  GENERIC(W : NATURAL := 8);
  PORT (clk : IN  std_logic;  -- clock
        clrn: IN  std_logic;  -- clear
        ena : IN  std_logic;  -- enable
        q   : BUFFER STD_LOGIC_VECTOR(W-1 DOWNTO 0));-- data output
END counter_Wbits;

ARCHITECTURE arch_1 OF counter_Wbits IS
BEGIN
  PROCESS(clk,clrn)
  BEGIN
    IF (clrn='0') THEN
      q <= (OTHERS => '0');
    ELSIF (clk'EVENT AND clk='1') THEN
      IF (ena='1') THEN
          q <= q+1;
        ELSE
          q <= q;
      END IF;
    END IF;
  END PROCESS;
END arch_1;