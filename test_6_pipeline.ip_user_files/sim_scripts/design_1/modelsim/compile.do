vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xbip_utils_v3_0_10
vlib modelsim_lib/msim/axi_utils_v2_0_6
vlib modelsim_lib/msim/xbip_pipe_v3_0_6
vlib modelsim_lib/msim/xbip_dsp48_wrapper_v3_0_4
vlib modelsim_lib/msim/xbip_dsp48_addsub_v3_0_6
vlib modelsim_lib/msim/xbip_dsp48_multadd_v3_0_6
vlib modelsim_lib/msim/xbip_bram18k_v3_0_6
vlib modelsim_lib/msim/mult_gen_v12_0_18
vlib modelsim_lib/msim/floating_point_v7_1_15
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/microblaze_v11_0_11
vlib modelsim_lib/msim/lmb_v10_v3_0_12
vlib modelsim_lib/msim/lmb_bram_if_cntlr_v4_0_22
vlib modelsim_lib/msim/blk_mem_gen_v8_4_6
vlib modelsim_lib/msim/axi_lite_ipif_v3_0_4
vlib modelsim_lib/msim/mdm_v3_2_24
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13
vlib modelsim_lib/msim/generic_baseblocks_v2_1_0
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_28
vlib modelsim_lib/msim/fifo_generator_v13_2_8
vlib modelsim_lib/msim/axi_data_fifo_v2_1_27
vlib modelsim_lib/msim/axi_crossbar_v2_1_29
vlib modelsim_lib/msim/axi_bram_ctrl_v4_1_8
vlib modelsim_lib/msim/lib_pkg_v1_0_2
vlib modelsim_lib/msim/lib_srl_fifo_v1_0_2
vlib modelsim_lib/msim/axi_uartlite_v2_0_32
vlib modelsim_lib/msim/axi_protocol_converter_v2_1_28

vmap xpm modelsim_lib/msim/xpm
vmap xbip_utils_v3_0_10 modelsim_lib/msim/xbip_utils_v3_0_10
vmap axi_utils_v2_0_6 modelsim_lib/msim/axi_utils_v2_0_6
vmap xbip_pipe_v3_0_6 modelsim_lib/msim/xbip_pipe_v3_0_6
vmap xbip_dsp48_wrapper_v3_0_4 modelsim_lib/msim/xbip_dsp48_wrapper_v3_0_4
vmap xbip_dsp48_addsub_v3_0_6 modelsim_lib/msim/xbip_dsp48_addsub_v3_0_6
vmap xbip_dsp48_multadd_v3_0_6 modelsim_lib/msim/xbip_dsp48_multadd_v3_0_6
vmap xbip_bram18k_v3_0_6 modelsim_lib/msim/xbip_bram18k_v3_0_6
vmap mult_gen_v12_0_18 modelsim_lib/msim/mult_gen_v12_0_18
vmap floating_point_v7_1_15 modelsim_lib/msim/floating_point_v7_1_15
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap microblaze_v11_0_11 modelsim_lib/msim/microblaze_v11_0_11
vmap lmb_v10_v3_0_12 modelsim_lib/msim/lmb_v10_v3_0_12
vmap lmb_bram_if_cntlr_v4_0_22 modelsim_lib/msim/lmb_bram_if_cntlr_v4_0_22
vmap blk_mem_gen_v8_4_6 modelsim_lib/msim/blk_mem_gen_v8_4_6
vmap axi_lite_ipif_v3_0_4 modelsim_lib/msim/axi_lite_ipif_v3_0_4
vmap mdm_v3_2_24 modelsim_lib/msim/mdm_v3_2_24
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13
vmap generic_baseblocks_v2_1_0 modelsim_lib/msim/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_28 modelsim_lib/msim/axi_register_slice_v2_1_28
vmap fifo_generator_v13_2_8 modelsim_lib/msim/fifo_generator_v13_2_8
vmap axi_data_fifo_v2_1_27 modelsim_lib/msim/axi_data_fifo_v2_1_27
vmap axi_crossbar_v2_1_29 modelsim_lib/msim/axi_crossbar_v2_1_29
vmap axi_bram_ctrl_v4_1_8 modelsim_lib/msim/axi_bram_ctrl_v4_1_8
vmap lib_pkg_v1_0_2 modelsim_lib/msim/lib_pkg_v1_0_2
vmap lib_srl_fifo_v1_0_2 modelsim_lib/msim/lib_srl_fifo_v1_0_2
vmap axi_uartlite_v2_0_32 modelsim_lib/msim/axi_uartlite_v2_0_32
vmap axi_protocol_converter_v2_1_28 modelsim_lib/msim/axi_protocol_converter_v2_1_28

vlog -work xpm -64 -incr -mfcu  -sv "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/30ef" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" \
"/home/chunchic/Vivado/Vivado/2023.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/home/chunchic/Vivado/Vivado/2023.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93  \
"/home/chunchic/Vivado/Vivado/2023.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xbip_utils_v3_0_10 -64 -93  \
"../../../../test_6_pipeline.gen/sources_1/bd/design_1/ip/design_1_test_6_0_0/src/floating_point_0_1/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_6 -64 -93  \
"../../../../test_6_pipeline.gen/sources_1/bd/design_1/ip/design_1_test_6_0_0/src/floating_point_0_1/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6 -64 -93  \
"../../../../test_6_pipeline.gen/sources_1/bd/design_1/ip/design_1_test_6_0_0/src/floating_point_0_1/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -64 -93  \
"../../../../test_6_pipeline.gen/sources_1/bd/design_1/ip/design_1_test_6_0_0/src/floating_point_0_1/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_6 -64 -93  \
"../../../../test_6_pipeline.gen/sources_1/bd/design_1/ip/design_1_test_6_0_0/src/floating_point_0_1/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_6 -64 -93  \
"../../../../test_6_pipeline.gen/sources_1/bd/design_1/ip/design_1_test_6_0_0/src/floating_point_0_1/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_6 -64 -93  \
"../../../../test_6_pipeline.gen/sources_1/bd/design_1/ip/design_1_test_6_0_0/src/floating_point_0_1/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_18 -64 -93  \
"../../../../test_6_pipeline.gen/sources_1/bd/design_1/ip/design_1_test_6_0_0/src/floating_point_0_1/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work floating_point_v7_1_15 -64 -93  \
"../../../../test_6_pipeline.gen/sources_1/bd/design_1/ip/design_1_test_6_0_0/src/floating_point_0_1/hdl/floating_point_v7_1_rfs.vhd" \

vlog -work floating_point_v7_1_15 -64 -incr -mfcu  "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/30ef" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" \
"../../../../test_6_pipeline.gen/sources_1/bd/design_1/ip/design_1_test_6_0_0/src/floating_point_0_1/hdl/floating_point_v7_1_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/30ef" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" \
"../../../bd/design_1/ip/design_1_test_6_0_0/src/floating_point_0_1/sim/floating_point_0.v" \
"../../../bd/design_1/ip/design_1_test_6_0_0/src/floating_point_1_1/sim/floating_point_1.v" \
"../../../bd/design_1/ipshared/7987/hdl/test_6_v1_0_S00_AXI.v" \
"../../../bd/design_1/ipshared/7987/src/DMM_3SAT_test_pipeline.v" \
"../../../bd/design_1/ipshared/7987/src/my_list_of_functions_32.v" \
"../../../bd/design_1/ipshared/7987/src/euler_integrator_v.v" \
"../../../bd/design_1/ipshared/7987/hdl/test_6_v1_0.v" \
"../../../bd/design_1/ip/design_1_test_6_0_0/sim/design_1_test_6_0_0.v" \

vcom -work microblaze_v11_0_11 -64 -93  \
"../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/e224/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_1/ip/design_1_microblaze_0_0/sim/design_1_microblaze_0_0.vhd" \

vcom -work lmb_v10_v3_0_12 -64 -93  \
"../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/cd1d/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_1/ip/design_1_dlmb_v10_0/sim/design_1_dlmb_v10_0.vhd" \
"../../../bd/design_1/ip/design_1_ilmb_v10_0/sim/design_1_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_22 -64 -93  \
"../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/b87e/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_1/ip/design_1_dlmb_bram_if_cntlr_0/sim/design_1_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/design_1/ip/design_1_ilmb_bram_if_cntlr_0/sim/design_1_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_6 -64 -incr -mfcu  "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/30ef" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" \
"../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/bb55/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/30ef" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" \
"../../../bd/design_1/ip/design_1_lmb_bram_0/sim/design_1_lmb_bram_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93  \
"../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work mdm_v3_2_24 -64 -93  \
"../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/4e42/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_1/ip/design_1_mdm_1_0/sim/design_1_mdm_1_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/30ef" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" \
"../../../bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0.v" \

vcom -work lib_cdc_v1_0_2 -64 -93  \
"../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -64 -93  \
"../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_1/ip/design_1_rst_clk_wiz_1_100M_0/sim/design_1_rst_clk_wiz_1_100M_0.vhd" \

vlog -work generic_baseblocks_v2_1_0 -64 -incr -mfcu  "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/30ef" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" \
"../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr -mfcu  "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/30ef" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" \
"../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_28 -64 -incr -mfcu  "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/30ef" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" \
"../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/87d1/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_8 -64 -incr -mfcu  "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/30ef" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" \
"../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/c97d/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_8 -64 -93  \
"../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/c97d/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_8 -64 -incr -mfcu  "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/30ef" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" \
"../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/c97d/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_27 -64 -incr -mfcu  "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/30ef" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" \
"../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/fab7/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_29 -64 -incr -mfcu  "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/30ef" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" \
"../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/f8f3/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/30ef" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" \
"../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \

vcom -work axi_bram_ctrl_v4_1_8 -64 -93  \
"../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/85f5/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_1/ip/design_1_axi_bram_ctrl_0_0/sim/design_1_axi_bram_ctrl_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/30ef" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" \
"../../../bd/design_1/ip/design_1_axi_bram_ctrl_0_bram_0/sim/design_1_axi_bram_ctrl_0_bram_0.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_1/ip/design_1_axi_bram_ctrl_1_0/sim/design_1_axi_bram_ctrl_1_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/30ef" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" \
"../../../bd/design_1/ip/design_1_axi_bram_ctrl_1_bram_0/sim/design_1_axi_bram_ctrl_1_bram_0.v" \

vcom -work lib_pkg_v1_0_2 -64 -93  \
"../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -64 -93  \
"../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_32 -64 -93  \
"../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/3dd9/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_1/ip/design_1_axi_uartlite_0_0/sim/design_1_axi_uartlite_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/30ef" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" \
"../../../bd/design_1/ip/design_1_ila_0_0/sim/design_1_ila_0_0.v" \

vlog -work axi_protocol_converter_v2_1_28 -64 -incr -mfcu  "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/30ef" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" \
"../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/8c02/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/30ef" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \
"../../../bd/design_1/ip/design_1_auto_pc_1/sim/design_1_auto_pc_1.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

