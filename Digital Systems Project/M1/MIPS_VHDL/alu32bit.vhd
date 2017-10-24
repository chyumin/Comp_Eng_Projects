LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY alu32bit IS

PORT(
		Op     : IN  std_logic_vector(1 DOWNTO 0);
		InvB   : IN  std_logic;
		A      : IN  std_logic_vector(31 DOWNTO 0);
		B      : IN  std_logic_vector(31 DOWNTO 0);
		Result : OUT std_logic_vector(31 DOWNTO 0);
		Zero   : OUT std_logic;
		Overf  : OUT std_logic);

END alu32bit;

ARCHITECTURE arch OF alu32bit IS

SIGNAL w_Carryout : std_logic_vector(31 DOWNTO 0);
SIGNAL w_Result   : std_logic_vector(31 DOWNTO 0);
SIGNAL w_Set31    : std_logic;
SIGNAL w_Zero     : std_logic;

-- declaracao componente
COMPONENT alu_1_bit IS
	PORT(
			Op       : IN  std_logic_vector(1 DOWNTO 0);
			InvB     : IN  std_logic;
			CarryIn  : IN  std_logic;
			A        : IN  std_logic;
			B        : IN  std_logic;
			less     : IN  std_logic;
			Result   : OUT std_logic;
			CarryOut : OUT std_logic);
END COMPONENT;

COMPONENT alu_1_bitmsb IS
	PORT(
			Op       : IN  std_logic_vector(1 DOWNTO 0);
			InvB     : IN  std_logic;
			CarryIn  : IN  std_logic;
			A        : IN  std_logic;
			B        : IN  std_logic;
			less     : IN  std_logic;
			Result   : OUT std_logic;
			Set      : OUT std_logic;
			Overflow : OUT std_logic);
END COMPONENT;


BEGIN

	u_0: alu_1_bit PORT MAP(Op(1 DOWNTO 0), InvB, InvB, A(0), B(0), w_Set31, w_Result(0), w_Carryout(0));

	f_0: FOR i IN 1 TO 30 GENERATE
		u_x: alu_1_bit PORT MAP(Op(1 DOWNTO 0), InvB, w_Carryout(i-1), A(i), B(i), '0', w_Result(i), w_Carryout(i));
		
	END GENERATE f_0;
	
	u_1: alu_1_bitmsb PORT MAP(Op(1 DOWNTO 0), InvB, w_Carryout(30), A(31), B(31), '0', w_Result(31), w_Set31, Overf);
	
	Result <= w_Result(31 DOWNTO 0);
	
	Zero <= '1' WHEN w_Result(31 DOWNTO 0) = "00000000000000000000000000000000" ELSE '0';

END arch;