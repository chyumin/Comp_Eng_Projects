LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY decoder5x32 IS
PORT (
		addr    : IN  std_logic_vector(4 DOWNTO 0);
		sel_00  : OUT std_logic;
		sel_01  : OUT std_logic;
		sel_02  : OUT std_logic;
		sel_03  : OUT std_logic;
		sel_04  : OUT std_logic;
		sel_05  : OUT std_logic;
		sel_06  : OUT std_logic;
		sel_07  : OUT std_logic;
		sel_08  : OUT std_logic;
		sel_09  : OUT std_logic;
		sel_10  : OUT std_logic;
		sel_11  : OUT std_logic;
		sel_12  : OUT std_logic;
		sel_13  : OUT std_logic;
		sel_14  : OUT std_logic;
		sel_15  : OUT std_logic;
		sel_16  : OUT std_logic;
		sel_17  : OUT std_logic;
		sel_18  : OUT std_logic;
		sel_19  : OUT std_logic;
		sel_20  : OUT std_logic;
		sel_21  : OUT std_logic;
		sel_22  : OUT std_logic;
		sel_23  : OUT std_logic;
		sel_24  : OUT std_logic;
		sel_25  : OUT std_logic;
		sel_26  : OUT std_logic;
		sel_27  : OUT std_logic;
		sel_28  : OUT std_logic;
		sel_29  : OUT std_logic;
		sel_30  : OUT std_logic;
		sel_31  : OUT std_logic
);
END decoder5x32;

ARCHITECTURE arch OF decoder5x32 IS

signal w_sel0 : std_logic;
signal w_sel1 : std_logic;
signal w_sel2 : std_logic;
signal w_sel3 : std_logic;

--- declaracao componente

	COMPONENT decoder3x8 IS
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
	END COMPONENT;

--- declaracao componente

	COMPONENT decoder2x4 IS
		PORT (
		  i_A		  : IN  std_logic_vector(1 DOWNTO 0);
		  o_SEL0	  : OUT std_logic;
		  o_SEL1	  : OUT std_logic;
		  o_SEL2	  : OUT std_logic;
		  o_SEL3	  : OUT std_logic);
	END COMPONENT;


BEGIN

u_0: decoder2x4 PORT MAP (addr(4 DOWNTO 3), w_sel0, w_sel1, w_sel2, w_sel3);
u_1: decoder3x8 PORT MAP (w_sel0, addr(2 DOWNTO 0), sel_00, sel_01, sel_02, sel_03, sel_04, sel_05, sel_06, sel_07);
u_2: decoder3x8 PORT MAP (w_sel1, addr(2 DOWNTO 0), sel_08, sel_09, sel_10, sel_11, sel_12, sel_13, sel_14, sel_15);
u_3: decoder3x8 PORT MAP (w_sel2, addr(2 DOWNTO 0), sel_16, sel_17, sel_18, sel_19, sel_20, sel_21, sel_22, sel_23);
u_4: decoder3x8 PORT MAP (w_sel3, addr(2 DOWNTO 0), sel_24, sel_25, sel_26, sel_27, sel_28, sel_29, sel_30, sel_31);

END arch;