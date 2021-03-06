transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/morgan/git/IL2203/Lab2/ALU.vhd}
vcom -93 -work work {/home/morgan/git/IL2203/Lab2/Register_File.vhd}
vcom -93 -work work {/home/morgan/git/IL2203/Lab2/Datapath.vhd}
vcom -93 -work work {/home/morgan/git/IL2203/Lab2/test_ALU.vhd}
vcom -93 -work work {/home/morgan/git/IL2203/Lab2/test_rf.vhd}
vcom -93 -work work {/home/morgan/git/IL2203/Lab2/test_datapath.vhd}
vcom -93 -work work {/home/morgan/git/IL2203/Lab2/Clock_Divider.vhd}

vcom -93 -work work {/home/morgan/git/IL2203/Lab2/test_datapath.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  tb_datapath

add wave *
view structure
view signals
run 100 ns
