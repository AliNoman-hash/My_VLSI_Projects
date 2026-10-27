transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog  -work work +incdir+C:/Users/alino/OneDrive/Desktop/ALI/VLSI_Projects/LABS/mux_4_using_mux_2/rtl {C:/Users/alino/OneDrive/Desktop/ALI/VLSI_Projects/LABS/mux_4_using_mux_2/rtl/mux_four.v}

vlog  -work work +incdir+C:/Users/alino/OneDrive/Desktop/ALI/VLSI_Projects/LABS/mux_4_using_mux_2/quart/../tb {C:/Users/alino/OneDrive/Desktop/ALI/VLSI_Projects/LABS/mux_4_using_mux_2/quart/../tb/tb_mux_four.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L maxv_ver -L rtl_work -L work -voptargs="+acc"  tb_mux_four

add wave *
view structure
view signals
run -all
