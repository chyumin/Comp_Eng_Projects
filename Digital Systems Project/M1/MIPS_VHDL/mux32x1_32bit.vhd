LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mux32x1_32bit IS
GENERIC( p_WIDTH	:	natural	:= 32);
PORT(
	i_SEL		: in	std_logic_vector(4 downto 0);
	i_DIN00	: in	std_logic_vector(p_WIDTH-1 downto 0);
	i_DIN01	: in 	std_logic_vector(p_WIDTH-1 downto 0);
	i_DIN02	: in 	std_logic_vector(p_WIDTH-1 downto 0);
	i_DIN03	: in 	std_logic_vector(p_WIDTH-1 downto 0);
	i_DIN04	: in 	std_logic_vector(p_WIDTH-1 downto 0);
	i_DIN05	: in 	std_logic_vector(p_WIDTH-1 downto 0);
	i_DIN06	: in 	std_logic_vector(p_WIDTH-1 downto 0);
	i_DIN07	: in 	std_logic_vector(p_WIDTH-1 downto 0);
	i_DIN08	: in 	std_logic_vector(p_WIDTH-1 downto 0);
	i_DIN09	: in 	std_logic_vector(p_WIDTH-1 downto 0);
	i_DIN10	: in 	std_logic_vector(p_WIDTH-1 downto 0);
	i_DIN11	: in 	std_logic_vector(p_WIDTH-1 downto 0);
	i_DIN12	: in 	std_logic_vector(p_WIDTH-1 downto 0);
	i_DIN13	: in 	std_logic_vector(p_WIDTH-1 downto 0);
	i_DIN14	: in 	std_logic_vector(p_WIDTH-1 downto 0);
	i_DIN15	: in 	std_logic_vector(p_WIDTH-1 downto 0);
	i_DIN16	: in 	std_logic_vector(p_WIDTH-1 downto 0);
	i_DIN17	: in 	std_logic_vector(p_WIDTH-1 downto 0);
	i_DIN18	: in 	std_logic_vector(p_WIDTH-1 downto 0);
	i_DIN19	: in 	std_logic_vector(p_WIDTH-1 downto 0);
	i_DIN20	: in 	std_logic_vector(p_WIDTH-1 downto 0);
	i_DIN21	: in 	std_logic_vector(p_WIDTH-1 downto 0);
	i_DIN22	: in 	std_logic_vector(p_WIDTH-1 downto 0);
	i_DIN23	: in 	std_logic_vector(p_WIDTH-1 downto 0);
	i_DIN24	: in 	std_logic_vector(p_WIDTH-1 downto 0);
	i_DIN25	: in 	std_logic_vector(p_WIDTH-1 downto 0);
	i_DIN26	: in 	std_logic_vector(p_WIDTH-1 downto 0);
	i_DIN27	: in 	std_logic_vector(p_WIDTH-1 downto 0);
	i_DIN28	: in 	std_logic_vector(p_WIDTH-1 downto 0);
	i_DIN29	: in 	std_logic_vector(p_WIDTH-1 downto 0);
	i_DIN30	: in 	std_logic_vector(p_WIDTH-1 downto 0);
	i_DIN31	: in 	std_logic_vector(p_WIDTH-1 downto 0);
	o_DOUT	: out	std_logic_vector(p_WIDTH-1 downto 0));
END mux32x1_32bit;

---------------------------------------------------------


ARCHITECTURE arch OF mux32x1_32bit IS
	BEGIN
    WITH i_SEL SELECT
      o_DOUT <= i_DIN00  WHEN "00000",
                i_DIN01  WHEN "00001",
					 i_DIN02  WHEN "00010",
                i_DIN03  WHEN "00011",
					 i_DIN04  WHEN "00100",
                i_DIN05  WHEN "00101",
					 i_DIN06  WHEN "00110",
                i_DIN07  WHEN "00111",
					 i_DIN08  WHEN "01000",
                i_DIN09  WHEN "01001",
					 i_DIN10  WHEN "01010",
                i_DIN11  WHEN "01011",
					 i_DIN12  WHEN "01100",
                i_DIN13  WHEN "01101",
					 i_DIN14  WHEN "01110",
                i_DIN15  WHEN "01111",
					 i_DIN16  WHEN "10000",
                i_DIN17  WHEN "10001",
					 i_DIN18  WHEN "10010",
                i_DIN19  WHEN "10011",
					 i_DIN20  WHEN "10100",
                i_DIN21  WHEN "10101",
					 i_DIN22  WHEN "10110",
                i_DIN23  WHEN "10111",
					 i_DIN24  WHEN "11000",
                i_DIN25  WHEN "11001",
					 i_DIN26  WHEN "11010",
                i_DIN27  WHEN "11011",
					 i_DIN28  WHEN "11100",
                i_DIN29  WHEN "11101",
					 i_DIN30  WHEN "11110",
                i_DIN31  WHEN "11111";
END arch;