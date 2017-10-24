LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY alucontrol IS
PORT(	
		aluop : IN  std_logic_vector(1 DOWNTO 0);
		f     : IN  std_logic_vector(5 DOWNTO 0);
		op    : OUT std_logic_vector(2 DOWNTO 0));

END alucontrol;

ARCHITECTURE arch OF alucontrol IS

BEGIN

op(2) <= aluop(0) or (aluop(1) and f(1));
op(1) <= not aluop(1) or not(f(2));
op(0) <= aluop(1) and (f(3) or f(0));

END arch;