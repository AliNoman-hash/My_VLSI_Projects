transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog  -work work +incdir+C:/Users/alino/OneDrive/Desktop/ALI/VLSI_Projects/4_bit_full_adder/rtl {C:/Users/alino/OneDrive/Desktop/ALI/VLSI_Projects/4_bit_full_adder/rtl/4_bit_FA.v}

vlog  -work work +incdir+C:/Users/alino/OneDrive/Desktop/ALI/VLSI_Projects/4_bit_full_adder/rtl/../tb {C:/Users/alino/OneDrive/Desktop/ALI/VLSI_Projects/4_bit_full_adder/rtl/../tb/4_bit_FA_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L maxv_ver -L rtl_work -L work -voptargs="+acc"  tb_rca4

add wave *
view structure
view signals
run -all
