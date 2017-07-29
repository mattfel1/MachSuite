open_project gemm_syn

add_files -cflags -I../../common gemm.c
add_files -cflags -I../../common support.h
add_files input.data
add_files check.data
add_files -tb -cflags -I../../common ../../common/harness.c
add_files -tb -cflags -I../../common ../../common/support.c
add_files -tb -cflags -I../../common local_support.c
set_top bbgemm

open_solution -reset solution
set_part virtex7
create_clock -period 10
source ./gemm_dir
csynth_design
cosim_design -rtl verilog -tool xsim -trace_level all

exit
