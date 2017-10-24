transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {Z:/Projeto de Sistemas Digitais/M3/prime_8bits/counter_WbitsR1.vhd}
vcom -93 -work work {Z:/Projeto de Sistemas Digitais/M3/prime_8bits/sub_Wbits.vhd}
vcom -93 -work work {Z:/Projeto de Sistemas Digitais/M3/prime_8bits/reg_pp_Wbits.vhd}
vcom -93 -work work {Z:/Projeto de Sistemas Digitais/M3/prime_8bits/multiplier_as.vhd}
vcom -93 -work work {Z:/Projeto de Sistemas Digitais/M3/prime_8bits/module_datapath.vhd}
vcom -93 -work work {Z:/Projeto de Sistemas Digitais/M3/prime_8bits/module_control.vhd}
vcom -93 -work work {Z:/Projeto de Sistemas Digitais/M3/prime_8bits/module_8bits.vhd}
vcom -93 -work work {Z:/Projeto de Sistemas Digitais/M3/prime_8bits/less_than.vhd}
vcom -93 -work work {Z:/Projeto de Sistemas Digitais/M3/prime_8bits/halfadder.vhd}
vcom -93 -work work {Z:/Projeto de Sistemas Digitais/M3/prime_8bits/fulladder.vhd}
vcom -93 -work work {Z:/Projeto de Sistemas Digitais/M3/prime_8bits/counter_Wbits.vhd}
vcom -93 -work work {Z:/Projeto de Sistemas Digitais/M3/prime_8bits/adder.vhd}
vcom -93 -work work {Z:/Projeto de Sistemas Digitais/M3/prime_8bits/prime_datapath.vhd}
vcom -93 -work work {Z:/Projeto de Sistemas Digitais/M3/prime_8bits/prime_control.vhd}
vcom -93 -work work {Z:/Projeto de Sistemas Digitais/M3/prime_8bits/prime_8bits.vhd}
vcom -93 -work work {Z:/Projeto de Sistemas Digitais/M3/prime_8bits/bigger_than.vhd}
vcom -93 -work work {Z:/Projeto de Sistemas Digitais/M3/prime_8bits/equal.vhd}

