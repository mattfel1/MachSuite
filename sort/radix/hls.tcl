open_project sort_syn

set_top ss_sort

	add_files -cflags -I../../common sort.c
	add_files -cflags -I../../common support.h
	add_files -tb -cflags -I../../common ../../common/harness.c
	add_files -tb -cflags -I../../common ../../common/support.c
	add_files -tb -cflags -I../../common local_support.c
add_files input.data
add_files check.data

set clock 10
set part virtex7


open_solution solution
set_part $part
create_clock -period $clock
source ./inline_dir

#config_rtl -reset all -reset_level low
set_clock_uncertainty 0
csynth_design 
cosim_design -rtl verilog -tool xsim -trace_level all

exit
