library verilog;
use verilog.vl_types.all;
entity multiplier_seq_vlg_sample_tst is
    port(
        i_CLK           : in     vl_logic;
        i_clrn          : in     vl_logic;
        i_DINa          : in     vl_logic_vector(7 downto 0);
        i_DINb          : in     vl_logic_vector(7 downto 0);
        i_start         : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end multiplier_seq_vlg_sample_tst;
