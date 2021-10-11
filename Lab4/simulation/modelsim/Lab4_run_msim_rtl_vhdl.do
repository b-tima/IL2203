transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/morgan/git/IL2203/Lab4/ram.vhd}
vcom -93 -work work {/home/morgan/git/IL2203/Lab4/test_rf.vhd}
vcom -93 -work work {/home/morgan/git/IL2203/Lab4/test_datapath.vhd}
vcom -93 -work work {/home/morgan/git/IL2203/Lab4/test_ALU.vhd}
vcom -93 -work work {/home/morgan/git/IL2203/Lab4/Register_File.vhd}
vcom -93 -work work {/home/morgan/git/IL2203/Lab4/Micro_code.vhd}
vcom -93 -work work {/home/morgan/git/IL2203/Lab4/MCU_FSM.vhd}
vcom -93 -work work {/home/morgan/git/IL2203/Lab4/Datapath.vhd}
vcom -93 -work work {/home/morgan/git/IL2203/Lab4/Clock_Divider.vhd}
vcom -93 -work work {/home/morgan/git/IL2203/Lab4/ALU.vhd}
vcom -93 -work work {/home/morgan/git/IL2203/Lab4/Computer.vhd}
vcom -93 -work work {/home/morgan/git/IL2203/Lab4/Instruction.vhd}

