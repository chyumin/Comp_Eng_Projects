transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {E:/Projeto de Sistemas Digitais/M2/converter/left_shifter_ovf.vhd}
vcom -93 -work work {E:/Projeto de Sistemas Digitais/M2/converter/halfadder.vhd}
vcom -93 -work work {E:/Projeto de Sistemas Digitais/M2/converter/fulladder.vhd}
vcom -93 -work work {E:/Projeto de Sistemas Digitais/M2/converter/adder.vhd}
vcom -93 -work work {E:/Projeto de Sistemas Digitais/M2/converter/converter.vhd}
vcom -93 -work work {E:/Projeto de Sistemas Digitais/M2/converter/right_shifter.vhd}

