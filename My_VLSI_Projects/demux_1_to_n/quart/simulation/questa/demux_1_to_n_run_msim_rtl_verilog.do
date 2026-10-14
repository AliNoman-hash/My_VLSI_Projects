transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog  -work work +incdir+C:/Users/alino/OneDrive/Desktop/ALI/VLSI_Projects/Design_review/Design_review_3/rtl {C:/Users/alino/OneDrive/Desktop/ALI/VLSI_Projects/Design_review/Design_review_3/rtl/demux_1_to_n.v}

vlog  -work work +incdir+C:/Users/alino/OneDrive/Desktop/ALI/VLSI_Projects/Design_review/Design_review_3/quart/../tb {C:/Users/alino/OneDrive/Desktop/ALI/VLSI_Projects/Design_review/Design_review_3/quart/../tb/tb_demux_1_to_n.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L maxv_ver -L rtl_work -L work -voptargs="+acc"  tb_demux_1_to_n

add wave *
view structure
view signals
run -all
