transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {E:/Projeto de Sistemas Digitais/M3/module_8bits/module_8bits.vhd}
vcom -93 -work work {E:/Projeto de Sistemas Digitais/M3/module_8bits/module_control.vhd}
vcom -93 -work work {E:/Projeto de Sistemas Digitais/M3/module_8bits/module_datapath.vhd}
vcom -93 -work work {E:/Projeto de Sistemas Digitais/M3/module_8bits/reg_pp_wbits.vhd}
vcom -93 -work work {E:/Projeto de Sistemas Digitais/M3/module_8bits/counter_wbits.vhd}
vcom -93 -work work {E:/Projeto de Sistemas Digitais/M3/module_8bits/multiplier_as.vhd}
vcom -93 -work work {E:/Projeto de Sistemas Digitais/M3/module_8bits/adder.vhd}
vcom -93 -work work {E:/Projeto de Sistemas Digitais/M3/module_8bits/halfadder.vhd}
vcom -93 -work work {E:/Projeto de Sistemas Digitais/M3/module_8bits/fulladder.vhd}
vcom -93 -work work {E:/Projeto de Sistemas Digitais/M3/module_8bits/sub_wbits.vhd}
vcom -93 -work work {E:/Projeto de Sistemas Digitais/M3/module_8bits/less_than.vhd}

