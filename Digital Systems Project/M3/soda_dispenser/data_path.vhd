library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity data_path is
  generic(p_WIDTH : NATURAL := 8);

  port (i_S        : in std_logic_vector(p_WIDTH-1 downto 0); 
        i_A        : in std_logic_vector(p_WIDTH-1 downto 0);
		  i_TOT_LD   : in std_logic;
		  i_TOT_CLR  : in std_logic;
		  i_CLK      : in std_logic;
        o_TOT_LT_S : out std_logic);  
        
end data_path;

------------------------------------------------------------------
architecture behavior of data_path is

  component comparator_Wbits is
  generic(p_WIDTH : NATURAL := 8);
  port (i_DIN0  : in std_logic_vector(p_WIDTH-1 downto 0); 
        i_DIN1  : in std_logic_vector(p_WIDTH-1 downto 0);
        o_EQ    : out std_logic;  -- a = b
        o_GT    : out std_logic;  -- a > b
        o_LT    : out std_logic);  -- a < b
  end component;


  component adder is 
  generic (p_WIDTH	: natural := 8);
  port (
     i_DIN0	: in	std_logic_vector(p_WIDTH-1 downto 0);
	  i_DIN1	: in	std_logic_vector(p_WIDTH-1 downto 0);
	  o_DOUT	: out	std_logic_vector(p_WIDTH-1 downto 0);
	  o_COUT	: out	std_logic);
  end component;


  component reg_pp_Wbits is 
  generic(p_WIDTH : natural := 8);
  port (i_D    : in  std_logic_vector(p_WIDTH-1 downto 0);-- data input
        i_CLK  : in  std_logic;  -- clock
        i_CLRn : in  std_logic;  -- clear
        i_ENA  : in  std_logic;  -- enable
        o_Q    : out std_logic_vector(p_WIDTH-1 downto 0));-- data output
  end component;

  signal w_ROUT     : std_logic_vector(p_WIDTH-1 downto 0);
  signal w_ADDEROUT : std_logic_vector(p_WIDTH-1 downto 0);
begin

  u_0 : comparator_Wbits port map (i_DIN0  => w_ROUT,
											  i_DIN1  => i_S,
											  o_EQ    => open,
											  o_GT    => open,
											  o_LT    => o_TOT_LT_S);
					
  u_1: adder port map (i_DIN0	=> w_ROUT,
							  i_DIN1	=> i_A,
							  o_DOUT	=> w_ADDEROUT,
							  o_COUT	=> open);

  u_2: reg_pp_Wbits port map (i_D    => w_ADDEROUT,
										i_CLK  => i_CLK,
										i_CLRn => i_TOT_CLR,
										i_ENA  => i_TOT_LD,
										o_Q    => w_ROUT);
end behavior;