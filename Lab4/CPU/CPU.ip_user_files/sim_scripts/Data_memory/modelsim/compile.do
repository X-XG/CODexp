vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/dist_mem_gen_v8_0_13
vlib modelsim_lib/msim/xil_defaultlib

vmap dist_mem_gen_v8_0_13 modelsim_lib/msim/dist_mem_gen_v8_0_13
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work dist_mem_gen_v8_0_13  -incr \
"../../../ipstatic/simulation/dist_mem_gen_v8_0.v" \

vlog -work xil_defaultlib  -incr \
"../../../../CPU.srcs/sources_1/ip/Data_memory/sim/Data_memory.v" \


vlog -work xil_defaultlib \
"glbl.v"

