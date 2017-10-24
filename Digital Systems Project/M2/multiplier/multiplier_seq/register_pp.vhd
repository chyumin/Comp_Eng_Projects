LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY register_pp IS
	GENERIC (w : natural := 8);
	PORT (d    :  IN std_logic_vector(w-1 DOWNTO 0);
			clk  :  IN std_logic;
			clrn :  IN std_logic;
			ena  :  IN std_logic;
			q    : OUT std_logic_vector(w-1 DOWNTO 0));
END register_pp;

ARCHITECTURE arch OF register_pp IS
BEGIN
	PROCESS(clk, clrn)
	BEGIN
		IF(clrn='0') THEN
			q <= (others =>'0');
		ELSIF (clk'EVENT and clk='1') THEN
			IF (ena='1') THEN
				q <= d;
			END IF;
		END IF;
	END PROCESS;
END arch;