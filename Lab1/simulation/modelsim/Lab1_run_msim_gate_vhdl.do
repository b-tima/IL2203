transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {Lab1_fast.vho}

vcom -93 -work work {/home/morgan/git/IL2203/Lab1/test_ripple_carry_adder.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /NA=Lab1_vhd_fast.sdo -L cycloneii -L gate_work -L work -voptargs="+acc"  test_ripple_carry_adder

add wave *
view structure
view signals
run -all
