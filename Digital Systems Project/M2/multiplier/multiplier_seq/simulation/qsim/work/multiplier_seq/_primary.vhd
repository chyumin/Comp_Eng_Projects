library verilog;
use verilog.vl_types.all;
entity multiplier_seq is
    port(
        i_CLK           : in     vl_logic;
        i_clrn          : in     vl_logic;
        i_start         : in     vl_logic;
        i_DINa          : in     vl_logic_vector(7 downto 0);
        i_DINb          : in     vl_logic_vector(7 downto 0);
        o_DOUT          : out    vl_logic_vector(15 downto 0)
    );
end multiplier_seq;
