############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project proj
set_top basic_mul
add_files src/func.cc
add_files -tb testbench.cc -cflags "-Wno-unknown-pragmas"
open_solution "solution" -flow_target vivado
set_part {xcu55c-fsvh2892-2L-e}
create_clock -period 2.777 -name default
config_export -format ip_catalog -rtl verilog -vivado_clock 2.777
source "./proj/solution/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -flow syn -rtl verilog -format ip_catalog
