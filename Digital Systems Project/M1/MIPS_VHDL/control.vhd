LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Control IS
  PORT(
        op         : in  std_logic_vector(5 DOWNTO 0);
        clock      : in  std_logic;
        o_RegDst   : out std_logic;
        o_ALUSrc   : out std_logic;
        o_MemToReg : out std_logic;
		  o_RegWrite : out std_logic;
        o_MemWrite : out std_logic;
        o_Branch   : out std_logic;
        o_ALUOp1   : out std_logic;
        o_ALUOp0   : out std_logic);
END Control;


ARCHITECTURE arch OF Control IS

signal w_RFormat : std_logic; -- saida do R format
signal w_lw      : std_logic; -- saida load word
signal w_sw      : std_logic; -- saida store word
signal w_beq     : std_logic; -- saida branch equal
signal w_addi    : std_logic; -- saida add imediate


BEGIN

---- Atribui��o dos fios
w_RFormat  <= '1' when op(5 downto 0) = "000000" else '0';
w_lw       <= '1' when op(5 downto 0) = "100011" else '0';
w_sw       <= '1' when op(5 downto 0) = "101011" else '0';
w_beq      <= '1' when op(5 downto 0) = "000100" else '0';
w_addi     <= '1' when op(5 downto 0) = "001000" else '0';

o_RegDst   <= w_RFormat;
o_ALUSrc   <= w_addi or w_sw or w_lw;
o_MemToReg <= w_lw;
o_RegWrite <= (w_RFormat or W_lw or w_addi) and not clock;
o_MemWrite <= w_sw and clock;
o_Branch   <= w_beq;
o_ALUOp1   <= w_RFormat;
o_ALUOp0   <= w_beq;

END arch;