LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
	
ENTITY multiplier_as IS
	
	PORT(
			i_DINa   : IN  std_logic_vector(7 DOWNTO 0);
			i_DINb   : IN  std_logic_vector(7 DOWNTO 0);
			o_DOUT   : OUT std_logic_vector(15 DOWNTO 0));
END multiplier_as;

ARCHITECTURE arch OF multiplier_as IS
	
	SIGNAL w_pp1 : std_logic_vector(7 DOWNTO 0);
	SIGNAL w_pp2 : std_logic_vector(7 DOWNTO 0);
	SIGNAL w_pp3 : std_logic_vector(7 DOWNTO 0);
	SIGNAL w_pp4 : std_logic_vector(7 DOWNTO 0);
	SIGNAL w_pp5 : std_logic_vector(7 DOWNTO 0);
	SIGNAL w_pp6 : std_logic_vector(7 DOWNTO 0);
	SIGNAL w_pp7 : std_logic_vector(7 DOWNTO 0);
	SIGNAL w_pp8 : std_logic_vector(7 DOWNTO 0);
	
	SIGNAL w_add1inA : std_logic_vector(8 DOWNTO 0);
	SIGNAL w_add1inB : std_logic_vector(8 DOWNTO 0);
	SIGNAL w_add2inA : std_logic_vector(9 DOWNTO 0);
	SIGNAL w_add2inB : std_logic_vector(9 DOWNTO 0);
	SIGNAL w_add3inA : std_logic_vector(10 DOWNTO 0);
	SIGNAL w_add3inB : std_logic_vector(10 DOWNTO 0);
	SIGNAL w_add4inA : std_logic_vector(11 DOWNTO 0);
	SIGNAL w_add4inB : std_logic_vector(11 DOWNTO 0);
	SIGNAL w_add5inA : std_logic_vector(12 DOWNTO 0);
	SIGNAL w_add5inB : std_logic_vector(12 DOWNTO 0);
	SIGNAL w_add6inA : std_logic_vector(13 DOWNTO 0);
	SIGNAL w_add6inB : std_logic_vector(13 DOWNTO 0);
	SIGNAL w_add7inA : std_logic_vector(14 DOWNTO 0);
	SIGNAL w_add7inB : std_logic_vector(14 DOWNTO 0);
	SIGNAL w_add8inA : std_logic_vector(15 DOWNTO 0);
	SIGNAL w_add8inB : std_logic_vector(15 DOWNTO 0);
	
	--component declaration
	COMPONENT adder IS
		GENERIC (
				p_WIDTH : natural := 32); -- data width
			PORT(
				i_DIN0 : in  std_logic_vector(p_WIDTH-1 DOWNTO 0); -- data input
				i_DIN1 : in  std_logic_vector(p_WIDTH-1 DOWNTO 0);
				o_DOUT : out std_logic_vector(p_WIDTH-1 DOWNTO 0);
				o_COUT : out std_logic);
	END COMPONENT;
	
BEGIN
	
	f1: FOR i IN 7 DOWNTO 0 GENERATE
			w_pp1(i) <= (i_DINa(i) AND i_DINb(0));
	END GENERATE f1;
	
	f2: FOR i IN 7 DOWNTO 0 GENERATE
			w_pp2(i) <= (i_DINa(i) AND i_DINb(1));
	END GENERATE f2;
	
	f3: FOR i IN 7 DOWNTO 0 GENERATE
			w_pp3(i) <= (i_DINa(i) AND i_DINb(2));
	END GENERATE f3;
	
	f4: FOR i IN 7 DOWNTO 0 GENERATE
			w_pp4(i) <= (i_DINa(i) AND i_DINb(3));
	END GENERATE f4;
	
	f5: FOR i IN 7 DOWNTO 0 GENERATE
			w_pp5(i) <= (i_DINa(i) AND i_DINb(4));
	END GENERATE f5;
	
	f6: FOR i IN 7 DOWNTO 0 GENERATE
			w_pp6(i) <= (i_DINa(i) AND i_DINb(5));
	END GENERATE f6;
	
	f7: FOR i IN 7 DOWNTO 0 GENERATE
			w_pp7(i) <= (i_DINa(i) AND i_DINb(6));
	END GENERATE f7;
	
	f8: FOR i IN 7 DOWNTO 0 GENERATE
			w_pp8(i) <= (i_DINa(i) AND i_DINb(7));
	END GENERATE f8;
	
	
	w_add1inA(8) <= '0';
	w_add1inA (7 DOWNTO 0) <= w_pp1;
	
	w_add1inB (0) <= '0';
	w_add1inB (8 DOWNTO 1)<= w_pp2;
	
	u_0: adder GENERIC MAP (9) PORT MAP (w_add1inA, w_add1inB, w_add2inA(8 DOWNTO 0), w_add2inA(9));
	
	w_add2inB (1 DOWNTO 0) <= "00";
	w_add2inB (9 DOWNTO 2) <= w_pp3;
	
	u_2: adder GENERIC MAP (10) PORT MAP (w_add2inA, w_add2inB, w_add3inA(9 DOWNTO 0), w_add3inA(10));

	w_add3inB (2 DOWNTO 0) <= "000";
	w_add3inB (10 DOWNTO 3) <= w_pp4;
	
	u_3: adder GENERIC MAP (11) PORT MAP (w_add3inA, w_add3inB, w_add4inA(10 DOWNTO 0), w_add4inA(11));
	
	w_add4inB (3 DOWNTO 0) <= "0000";
	w_add4inB (11 DOWNTO 4) <= w_pp5;
	
	u_4: adder GENERIC MAP (12) PORT MAP (w_add4inA, w_add4inB, w_add5inA(11 DOWNTO 0), w_add5inA(12));
	
	w_add5inB (4 DOWNTO 0) <= "00000";
	w_add5inB (12 DOWNTO 5) <= w_pp6;
	
	u_5: adder GENERIC MAP (13) PORT MAP (w_add5inA, w_add5inB, w_add6inA(12 DOWNTO 0), w_add6inA(13));
	
	w_add6inB (5 DOWNTO 0) <= "000000";
	w_add6inB (13 DOWNTO 6) <= w_pp7;
	
	u_6: adder GENERIC MAP (14) PORT MAP (w_add6inA, w_add6inB, w_add7inA(13 DOWNTO 0), w_add7inA(14));
	
	w_add7inB (6 DOWNTO 0) <= "0000000";
	w_add7inB (14 DOWNTO 7) <= w_pp8;
	
	u_7: adder GENERIC MAP (15) PORT MAP (w_add7inA, w_add7inB, o_DOUT(14 DOWNTO 0), o_DOUT(15));
		
END arch;