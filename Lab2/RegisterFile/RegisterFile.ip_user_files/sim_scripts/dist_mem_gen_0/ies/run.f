-makelib ies_lib/xpm -sv \
  "C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/dist_mem_gen_v8_0_13 \
  "../../../ipstatic/simulation/dist_mem_gen_v8_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../RegisterFile.srcs/sources_1/ip/dist_mem_gen_0/sim/dist_mem_gen_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

