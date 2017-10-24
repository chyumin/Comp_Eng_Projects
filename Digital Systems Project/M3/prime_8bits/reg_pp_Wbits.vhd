library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;


entity reg_pp_Wbits is generic(p_WIDTH : natural := 4);
  port (i_D    : in  std_logic_vector(p_WIDTH-1 downto 0);-- data input
        i_CLK  : in  std_logic;  -- clock
        i_CLRn : in  std_logic;  -- clear
        i_ENA  : in  std_logic;  -- enable
        o_Q    : out std_logic_vector(p_WIDTH-1 downto 0));-- data output
end reg_pp_Wbits;

architecture arch_1 of reg_pp_Wbits is
begin
  process(i_CLK, i_CLRn)
  begin
    if (i_CLRn='0') then
      o_Q <= (others => '0');
    elsif (i_CLK'event and i_CLK='1') then
      if (i_ENA='1') then
        o_Q <= i_D;
      end if;
    end if;
  end process;
end arch_1;
