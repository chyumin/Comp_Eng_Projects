transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {E:/Projeto de Sistemas Digitais/M2/multiplier/multiplier_seq/halfadder.vhd}
vcom -93 -work work {E:/Projeto de Sistemas Digitais/M2/multiplier/multiplier_seq/fulladder.vhd}
vcom -93 -work work {E:/Projeto de Sistemas Digitais/M2/multiplier/multiplier_seq/adder.vhd}
vcom -93 -work work {E:/Projeto de Sistemas Digitais/M2/multiplier/multiplier_seq/multiplier_seq.vhd}
vcom -93 -work work {E:/Projeto de Sistemas Digitais/M2/multiplier/multiplier_seq/mult_control.vhd}
vcom -93 -work work {E:/Projeto de Sistemas Digitais/M2/multiplier/multiplier_seq/mult_op.vhd}
vcom -93 -work work {E:/Projeto de Sistemas Digitais/M2/multiplier/multiplier_seq/register_pp.vhd}
vcom -93 -work work {E:/Projeto de Sistemas Digitais/M2/multiplier/multiplier_seq/button.vhd}
vcom -93 -work work {E:/Projeto de Sistemas Digitais/M2/multiplier/multiplier_seq/running_sum.vhd}

