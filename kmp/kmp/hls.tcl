open_project kmp_syn

	add_files -cflags -I../../common kmp.c
	add_files -cflags -I../../common support.h
	add_files -tb -cflags -I../../common ../../common/harness.c
	add_files -tb -cflags -I../../common ../../common/support.c
	add_files -tb -cflags -I../../common local_support.c
add_files input.data
add_files check.data

#add_files -tb kmp_test.c

set_top kmp

open_solution -reset solution
set_part virtex7
create_clock -period 10
#source ./kmp_dir
#config_rtl -reset all -reset_level low
csynth_design
cosim_design -rtl verilog -tool xsim

exit
