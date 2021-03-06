transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/morgan/git/IL2203/Lab1/full_adder.vhd}
vcom -93 -work work {/home/morgan/git/IL2203/Lab1/ripple_carry_adder.vhd}
vcom -93 -work work {/home/morgan/git/IL2203/Lab1/test_ripple_carry_adder.vhd}
vcom -93 -work work {/home/morgan/git/IL2203/Lab1/ALU.vhd}
vcom -93 -work work {/home/morgan/git/IL2203/Lab1/test_ALU.vhd}

vcom -93 -work work {/home/morgan/git/IL2203/Lab1/test_ALU.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  test_alu

add wave *
view structure
view signals
run -all
