library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity comparator_Wbits is
  generic(p_WIDTH : NATURAL := 4);

  port (i_DIN0  : in std_logic_vector(p_WIDTH-1 downto 0); 
        i_DIN1  : in std_logic_vector(p_WIDTH-1 downto 0);
        o_EQ    : out std_logic;  -- a = b
        o_GT    : out std_logic;  -- a > b
        o_LT    : out std_logic);  -- a < b
end comparator_Wbits;

------------------------------------------------------------------
architecture behavior of comparator_Wbits is
begin
  o_LT <= '1' when (i_DIN0 < i_DIN1) else '0';
  o_EQ <= '1' when (i_DIN0 = i_DIN1) else '0';
  o_GT <= '1' when (i_DIN0 > i_DIN1) else '0';
end behavior;