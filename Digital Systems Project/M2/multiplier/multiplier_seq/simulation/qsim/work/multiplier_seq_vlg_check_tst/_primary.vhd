library verilog;
use verilog.vl_types.all;
entity multiplier_seq_vlg_check_tst is
    port(
        o_DOUT          : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end multiplier_seq_vlg_check_tst;
