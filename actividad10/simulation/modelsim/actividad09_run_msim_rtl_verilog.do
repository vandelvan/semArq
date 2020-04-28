transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+/home/jorozco/Documentos/semArq/actividad10 {/home/jorozco/Documentos/semArq/actividad10/BFF.v}
vlog -vlog01compat -work work +incdir+/home/jorozco/Documentos/semArq/actividad10 {/home/jorozco/Documentos/semArq/actividad10/RB.v}
vlog -vlog01compat -work work +incdir+/home/jorozco/Documentos/semArq/actividad10 {/home/jorozco/Documentos/semArq/actividad10/ALUControl.v}
vlog -vlog01compat -work work +incdir+/home/jorozco/Documentos/semArq/actividad10 {/home/jorozco/Documentos/semArq/actividad10/DE_EX.v}
vlog -vlog01compat -work work +incdir+/home/jorozco/Documentos/semArq/actividad10 {/home/jorozco/Documentos/semArq/actividad10/BF2.v}
vlog -vlog01compat -work work +incdir+/home/jorozco/Documentos/semArq/actividad10 {/home/jorozco/Documentos/semArq/actividad10/fetchCycle.v}
vlog -vlog01compat -work work +incdir+/home/jorozco/Documentos/semArq/actividad10 {/home/jorozco/Documentos/semArq/actividad10/BF1.v}
vlog -vlog01compat -work work +incdir+/home/jorozco/Documentos/semArq/actividad10 {/home/jorozco/Documentos/semArq/actividad10/ALU.v}

vlog -vlog01compat -work work +incdir+/home/jorozco/Documentos/semArq/actividad10 {/home/jorozco/Documentos/semArq/actividad10/DE_EX_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L maxv_ver -L rtl_work -L work -voptargs="+acc"  DE_EX_tb

add wave *
view structure
view signals
run -all
