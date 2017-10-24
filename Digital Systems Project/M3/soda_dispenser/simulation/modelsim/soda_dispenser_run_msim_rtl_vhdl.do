transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {Z:/Projeto de Sistemas Digitais/M2/soda_dispenser/reg_pp_Wbits.vhd}
vcom -93 -work work {Z:/Projeto de Sistemas Digitais/M2/soda_dispenser/data_path.vhd}
vcom -93 -work work {Z:/Projeto de Sistemas Digitais/M2/soda_dispenser/comparator_Wbits.vhd}
vcom -93 -work work {Z:/Projeto de Sistemas Digitais/M2/soda_dispenser/adder.vhd}
vcom -93 -work work {Z:/Projeto de Sistemas Digitais/M2/soda_dispenser/soda_dispenser.vhd}
vcom -93 -work work {Z:/Projeto de Sistemas Digitais/M2/soda_dispenser/sd_control.vhd}

