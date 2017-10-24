LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY alu_1_bit IS
	PORT(
			Op       : IN  std_logic_vector(1 DOWNTO 0);
			InvB     : IN  std_logic;
			CarryIn  : IN  std_logic;
			A        : IN  std_logic;
			B        : IN  std_logic;
			less     : IN  std_logic;
			Result   : OUT std_logic;
			CarryOut : OUT std_logic);
END alu_1_bit;

ARCHITECTURE arch OF alu_1_bit IS

-- Fio da saida do adder
SIGNAL w_A         : std_logic;
SIGNAL w_B         : std_logic;
SIGNAL w_Bxor      : std_logic;
SIGNAL w_fulladder : std_logic;

-- Declaracao do componente
	COMPONENT fulladder IS
		PORT(
		i_CIN  : IN  std_logic;  -- carry input
		i_DIN0 : IN  std_logic;  -- data input
		i_DIN1 : IN  std_logic;  -- data input
		o_DOUT : OUT std_logic;  -- data output
		o_COUT : OUT std_logic); -- carry out
	END COMPONENT;
	
	COMPONENT mux4x1_1bit IS
		PORT (sel : IN  std_logic_vector(1 DOWNTO 0);
				a   : IN  std_logic;		
				b	 :	IN  std_logic;
				c   : IN  std_logic;
				d   : IN  std_logic;
				s   : OUT std_logic);
	END COMPONENT;


BEGIN

	w_Bxor <= B xor InvB;
	w_A    <= A and B;
	w_B    <= A or  B;
	u_0: fulladder   PORT MAP (CarryIn, A, w_Bxor, w_fulladder, CarryOut);
	u_1: mux4x1_1bit PORT MAP (Op (1 DOWNTO 0), w_A, w_B, w_fulladder, less, Result);

END;