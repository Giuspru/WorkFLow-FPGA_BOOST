# create a project
open_project -reset "proj"
# specify the name of the function to synthetize
#set_top basic_mul
set_top func
# load source code for synthesis
add_files src/func.cc
# load source code for the testbench
add_files -tb testbench.cc

# create a solution (i.e. a hardware configuration for synthesis)
open_solution -reset "solution" -flow_target vitis 
# set the FPGA (VU9P), and a 360 MHz clock
set_part {xcu55c-fsvh2892-2L-e}
create_clock -period 2.777

csim_design -argv "10 30"
csynth_design

export_design -format xo

exit
