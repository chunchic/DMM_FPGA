transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vmap -link {}
vlib activehdl/xpm
vlib activehdl/xbip_utils_v3_0_10
vlib activehdl/axi_utils_v2_0_6
vlib activehdl/xbip_pipe_v3_0_6
vlib activehdl/xbip_dsp48_wrapper_v3_0_4
vlib activehdl/xbip_dsp48_addsub_v3_0_6
vlib activehdl/xbip_dsp48_multadd_v3_0_6
vlib activehdl/xbip_bram18k_v3_0_6
vlib activehdl/mult_gen_v12_0_18
vlib activehdl/floating_point_v7_1_15
vlib activehdl/xil_defaultlib
vlib activehdl/microblaze_v11_0_11
vlib activehdl/lmb_v10_v3_0_12
vlib activehdl/lmb_bram_if_cntlr_v4_0_22
vlib activehdl/blk_mem_gen_v8_4_6
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/mdm_v3_2_24
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_register_slice_v2_1_28
vlib activehdl/fifo_generator_v13_2_8
vlib activehdl/axi_data_fifo_v2_1_27
vlib activehdl/axi_crossbar_v2_1_29
vlib activehdl/axi_bram_ctrl_v4_1_8
vlib activehdl/lib_pkg_v1_0_2
vlib activehdl/lib_srl_fifo_v1_0_2
vlib activehdl/axi_uartlite_v2_0_32
vlib activehdl/axi_protocol_converter_v2_1_28

vlog -work xpm  -sv2k12 "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/30ef" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" -l xpm -l xbip_utils_v3_0_10 -l axi_utils_v2_0_6 -l xbip_pipe_v3_0_6 -l xbip_dsp48_wrapper_v3_0_4 -l xbip_dsp48_addsub_v3_0_6 -l xbip_dsp48_multadd_v3_0_6 -l xbip_bram18k_v3_0_6 -l mult_gen_v12_0_18 -l floating_point_v7_1_15 -l xil_defaultlib -l microblaze_v11_0_11 -l lmb_v10_v3_0_12 -l lmb_bram_if_cntlr_v4_0_22 -l blk_mem_gen_v8_4_6 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_24 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l generic_baseblocks_v2_1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l axi_bram_ctrl_v4_1_8 -l lib_pkg_v1_0_2 -l lib_srl_fifo_v1_0_2 -l axi_uartlite_v2_0_32 -l axi_protocol_converter_v2_1_28 \
"/home/chunchic/Vivado/Vivado/2023.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/home/chunchic/Vivado/Vivado/2023.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"/home/chunchic/Vivado/Vivado/2023.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xbip_utils_v3_0_10 -93  \
"../../../../test_6_pipeline.gen/sources_1/bd/design_1/ip/design_1_test_6_0_0/src/floating_point_0_1/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_6 -93  \
"../../../../test_6_pipeline.gen/sources_1/bd/design_1/ip/design_1_test_6_0_0/src/floating_point_0_1/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6 -93  \
"../../../../test_6_pipeline.gen/sources_1/bd/design_1/ip/design_1_test_6_0_0/src/floating_point_0_1/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -93  \
"../../../../test_6_pipeline.gen/sources_1/bd/design_1/ip/design_1_test_6_0_0/src/floating_point_0_1/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_6 -93  \
"../../../../test_6_pipeline.gen/sources_1/bd/design_1/ip/design_1_test_6_0_0/src/floating_point_0_1/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_6 -93  \
"../../../../test_6_pipeline.gen/sources_1/bd/design_1/ip/design_1_test_6_0_0/src/floating_point_0_1/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_6 -93  \
"../../../../test_6_pipeline.gen/sources_1/bd/design_1/ip/design_1_test_6_0_0/src/floating_point_0_1/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_18 -93  \
"../../../../test_6_pipeline.gen/sources_1/bd/design_1/ip/design_1_test_6_0_0/src/floating_point_0_1/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work floating_point_v7_1_15 -93  \
"../../../../test_6_pipeline.gen/sources_1/bd/design_1/ip/design_1_test_6_0_0/src/floating_point_0_1/hdl/floating_point_v7_1_rfs.vhd" \

vlog -work floating_point_v7_1_15  -v2k5 "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/30ef" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" -l xpm -l xbip_utils_v3_0_10 -l axi_utils_v2_0_6 -l xbip_pipe_v3_0_6 -l xbip_dsp48_wrapper_v3_0_4 -l xbip_dsp48_addsub_v3_0_6 -l xbip_dsp48_multadd_v3_0_6 -l xbip_bram18k_v3_0_6 -l mult_gen_v12_0_18 -l floating_point_v7_1_15 -l xil_defaultlib -l microblaze_v11_0_11 -l lmb_v10_v3_0_12 -l lmb_bram_if_cntlr_v4_0_22 -l blk_mem_gen_v8_4_6 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_24 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l generic_baseblocks_v2_1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l axi_bram_ctrl_v4_1_8 -l lib_pkg_v1_0_2 -l lib_srl_fifo_v1_0_2 -l axi_uartlite_v2_0_32 -l axi_protocol_converter_v2_1_28 \
"../../../../test_6_pipeline.gen/sources_1/bd/design_1/ip/design_1_test_6_0_0/src/floating_point_0_1/hdl/floating_point_v7_1_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/30ef" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" -l xpm -l xbip_utils_v3_0_10 -l axi_utils_v2_0_6 -l xbip_pipe_v3_0_6 -l xbip_dsp48_wrapper_v3_0_4 -l xbip_dsp48_addsub_v3_0_6 -l xbip_dsp48_multadd_v3_0_6 -l xbip_bram18k_v3_0_6 -l mult_gen_v12_0_18 -l floating_point_v7_1_15 -l xil_defaultlib -l microblaze_v11_0_11 -l lmb_v10_v3_0_12 -l lmb_bram_if_cntlr_v4_0_22 -l blk_mem_gen_v8_4_6 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_24 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l generic_baseblocks_v2_1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l axi_bram_ctrl_v4_1_8 -l lib_pkg_v1_0_2 -l lib_srl_fifo_v1_0_2 -l axi_uartlite_v2_0_32 -l axi_protocol_converter_v2_1_28 \
"../../../bd/design_1/ip/design_1_test_6_0_0/src/floating_point_0_1/sim/floating_point_0.v" \
"../../../bd/design_1/ip/design_1_test_6_0_0/src/floating_point_1_1/sim/floating_point_1.v" \
"../../../bd/design_1/ipshared/7987/hdl/test_6_v1_0_S00_AXI.v" \
"../../../bd/design_1/ipshared/7987/src/DMM_3SAT_test_pipeline.v" \
"../../../bd/design_1/ipshared/7987/src/my_list_of_functions_32.v" \
"../../../bd/design_1/ipshared/7987/src/euler_integrator_v.v" \
"../../../bd/design_1/ipshared/7987/hdl/test_6_v1_0.v" \
"../../../bd/design_1/ip/design_1_test_6_0_0/sim/design_1_test_6_0_0.v" \

vcom -work microblaze_v11_0_11 -93  \
"../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/e224/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_1/ip/design_1_microblaze_0_0/sim/design_1_microblaze_0_0.vhd" \

vcom -work lmb_v10_v3_0_12 -93  \
"../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/cd1d/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_1/ip/design_1_dlmb_v10_0/sim/design_1_dlmb_v10_0.vhd" \
"../../../bd/design_1/ip/design_1_ilmb_v10_0/sim/design_1_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_22 -93  \
"../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/b87e/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_1/ip/design_1_dlmb_bram_if_cntlr_0/sim/design_1_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/design_1/ip/design_1_ilmb_bram_if_cntlr_0/sim/design_1_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_6  -v2k5 "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/30ef" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" -l xpm -l xbip_utils_v3_0_10 -l axi_utils_v2_0_6 -l xbip_pipe_v3_0_6 -l xbip_dsp48_wrapper_v3_0_4 -l xbip_dsp48_addsub_v3_0_6 -l xbip_dsp48_multadd_v3_0_6 -l xbip_bram18k_v3_0_6 -l mult_gen_v12_0_18 -l floating_point_v7_1_15 -l xil_defaultlib -l microblaze_v11_0_11 -l lmb_v10_v3_0_12 -l lmb_bram_if_cntlr_v4_0_22 -l blk_mem_gen_v8_4_6 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_24 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l generic_baseblocks_v2_1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l axi_bram_ctrl_v4_1_8 -l lib_pkg_v1_0_2 -l lib_srl_fifo_v1_0_2 -l axi_uartlite_v2_0_32 -l axi_protocol_converter_v2_1_28 \
"../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/bb55/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/30ef" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" -l xpm -l xbip_utils_v3_0_10 -l axi_utils_v2_0_6 -l xbip_pipe_v3_0_6 -l xbip_dsp48_wrapper_v3_0_4 -l xbip_dsp48_addsub_v3_0_6 -l xbip_dsp48_multadd_v3_0_6 -l xbip_bram18k_v3_0_6 -l mult_gen_v12_0_18 -l floating_point_v7_1_15 -l xil_defaultlib -l microblaze_v11_0_11 -l lmb_v10_v3_0_12 -l lmb_bram_if_cntlr_v4_0_22 -l blk_mem_gen_v8_4_6 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_24 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l generic_baseblocks_v2_1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l axi_bram_ctrl_v4_1_8 -l lib_pkg_v1_0_2 -l lib_srl_fifo_v1_0_2 -l axi_uartlite_v2_0_32 -l axi_protocol_converter_v2_1_28 \
"../../../bd/design_1/ip/design_1_lmb_bram_0/sim/design_1_lmb_bram_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -93  \
"../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work mdm_v3_2_24 -93  \
"../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/4e42/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_1/ip/design_1_mdm_1_0/sim/design_1_mdm_1_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/30ef" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" -l xpm -l xbip_utils_v3_0_10 -l axi_utils_v2_0_6 -l xbip_pipe_v3_0_6 -l xbip_dsp48_wrapper_v3_0_4 -l xbip_dsp48_addsub_v3_0_6 -l xbip_dsp48_multadd_v3_0_6 -l xbip_bram18k_v3_0_6 -l mult_gen_v12_0_18 -l floating_point_v7_1_15 -l xil_defaultlib -l microblaze_v11_0_11 -l lmb_v10_v3_0_12 -l lmb_bram_if_cntlr_v4_0_22 -l blk_mem_gen_v8_4_6 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_24 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l generic_baseblocks_v2_1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l axi_bram_ctrl_v4_1_8 -l lib_pkg_v1_0_2 -l lib_srl_fifo_v1_0_2 -l axi_uartlite_v2_0_32 -l axi_protocol_converter_v2_1_28 \
"../../../bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0.v" \

vcom -work lib_cdc_v1_0_2 -93  \
"../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93  \
"../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_1/ip/design_1_rst_clk_wiz_1_100M_0/sim/design_1_rst_clk_wiz_1_100M_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/30ef" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" -l xpm -l xbip_utils_v3_0_10 -l axi_utils_v2_0_6 -l xbip_pipe_v3_0_6 -l xbip_dsp48_wrapper_v3_0_4 -l xbip_dsp48_addsub_v3_0_6 -l xbip_dsp48_multadd_v3_0_6 -l xbip_bram18k_v3_0_6 -l mult_gen_v12_0_18 -l floating_point_v7_1_15 -l xil_defaultlib -l microblaze_v11_0_11 -l lmb_v10_v3_0_12 -l lmb_bram_if_cntlr_v4_0_22 -l blk_mem_gen_v8_4_6 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_24 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l generic_baseblocks_v2_1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l axi_bram_ctrl_v4_1_8 -l lib_pkg_v1_0_2 -l lib_srl_fifo_v1_0_2 -l axi_uartlite_v2_0_32 -l axi_protocol_converter_v2_1_28 \
"../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/30ef" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" -l xpm -l xbip_utils_v3_0_10 -l axi_utils_v2_0_6 -l xbip_pipe_v3_0_6 -l xbip_dsp48_wrapper_v3_0_4 -l xbip_dsp48_addsub_v3_0_6 -l xbip_dsp48_multadd_v3_0_6 -l xbip_bram18k_v3_0_6 -l mult_gen_v12_0_18 -l floating_point_v7_1_15 -l xil_defaultlib -l microblaze_v11_0_11 -l lmb_v10_v3_0_12 -l lmb_bram_if_cntlr_v4_0_22 -l blk_mem_gen_v8_4_6 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_24 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l generic_baseblocks_v2_1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l axi_bram_ctrl_v4_1_8 -l lib_pkg_v1_0_2 -l lib_srl_fifo_v1_0_2 -l axi_uartlite_v2_0_32 -l axi_protocol_converter_v2_1_28 \
"../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_28  -v2k5 "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/30ef" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" -l xpm -l xbip_utils_v3_0_10 -l axi_utils_v2_0_6 -l xbip_pipe_v3_0_6 -l xbip_dsp48_wrapper_v3_0_4 -l xbip_dsp48_addsub_v3_0_6 -l xbip_dsp48_multadd_v3_0_6 -l xbip_bram18k_v3_0_6 -l mult_gen_v12_0_18 -l floating_point_v7_1_15 -l xil_defaultlib -l microblaze_v11_0_11 -l lmb_v10_v3_0_12 -l lmb_bram_if_cntlr_v4_0_22 -l blk_mem_gen_v8_4_6 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_24 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l generic_baseblocks_v2_1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l axi_bram_ctrl_v4_1_8 -l lib_pkg_v1_0_2 -l lib_srl_fifo_v1_0_2 -l axi_uartlite_v2_0_32 -l axi_protocol_converter_v2_1_28 \
"../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/87d1/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_8  -v2k5 "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/30ef" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" -l xpm -l xbip_utils_v3_0_10 -l axi_utils_v2_0_6 -l xbip_pipe_v3_0_6 -l xbip_dsp48_wrapper_v3_0_4 -l xbip_dsp48_addsub_v3_0_6 -l xbip_dsp48_multadd_v3_0_6 -l xbip_bram18k_v3_0_6 -l mult_gen_v12_0_18 -l floating_point_v7_1_15 -l xil_defaultlib -l microblaze_v11_0_11 -l lmb_v10_v3_0_12 -l lmb_bram_if_cntlr_v4_0_22 -l blk_mem_gen_v8_4_6 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_24 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l generic_baseblocks_v2_1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l axi_bram_ctrl_v4_1_8 -l lib_pkg_v1_0_2 -l lib_srl_fifo_v1_0_2 -l axi_uartlite_v2_0_32 -l axi_protocol_converter_v2_1_28 \
"../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/c97d/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_8 -93  \
"../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/c97d/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_8  -v2k5 "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/30ef" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" -l xpm -l xbip_utils_v3_0_10 -l axi_utils_v2_0_6 -l xbip_pipe_v3_0_6 -l xbip_dsp48_wrapper_v3_0_4 -l xbip_dsp48_addsub_v3_0_6 -l xbip_dsp48_multadd_v3_0_6 -l xbip_bram18k_v3_0_6 -l mult_gen_v12_0_18 -l floating_point_v7_1_15 -l xil_defaultlib -l microblaze_v11_0_11 -l lmb_v10_v3_0_12 -l lmb_bram_if_cntlr_v4_0_22 -l blk_mem_gen_v8_4_6 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_24 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l generic_baseblocks_v2_1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l axi_bram_ctrl_v4_1_8 -l lib_pkg_v1_0_2 -l lib_srl_fifo_v1_0_2 -l axi_uartlite_v2_0_32 -l axi_protocol_converter_v2_1_28 \
"../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/c97d/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_27  -v2k5 "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/30ef" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" -l xpm -l xbip_utils_v3_0_10 -l axi_utils_v2_0_6 -l xbip_pipe_v3_0_6 -l xbip_dsp48_wrapper_v3_0_4 -l xbip_dsp48_addsub_v3_0_6 -l xbip_dsp48_multadd_v3_0_6 -l xbip_bram18k_v3_0_6 -l mult_gen_v12_0_18 -l floating_point_v7_1_15 -l xil_defaultlib -l microblaze_v11_0_11 -l lmb_v10_v3_0_12 -l lmb_bram_if_cntlr_v4_0_22 -l blk_mem_gen_v8_4_6 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_24 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l generic_baseblocks_v2_1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l axi_bram_ctrl_v4_1_8 -l lib_pkg_v1_0_2 -l lib_srl_fifo_v1_0_2 -l axi_uartlite_v2_0_32 -l axi_protocol_converter_v2_1_28 \
"../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/fab7/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_29  -v2k5 "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/30ef" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" -l xpm -l xbip_utils_v3_0_10 -l axi_utils_v2_0_6 -l xbip_pipe_v3_0_6 -l xbip_dsp48_wrapper_v3_0_4 -l xbip_dsp48_addsub_v3_0_6 -l xbip_dsp48_multadd_v3_0_6 -l xbip_bram18k_v3_0_6 -l mult_gen_v12_0_18 -l floating_point_v7_1_15 -l xil_defaultlib -l microblaze_v11_0_11 -l lmb_v10_v3_0_12 -l lmb_bram_if_cntlr_v4_0_22 -l blk_mem_gen_v8_4_6 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_24 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l generic_baseblocks_v2_1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l axi_bram_ctrl_v4_1_8 -l lib_pkg_v1_0_2 -l lib_srl_fifo_v1_0_2 -l axi_uartlite_v2_0_32 -l axi_protocol_converter_v2_1_28 \
"../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/f8f3/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/30ef" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" -l xpm -l xbip_utils_v3_0_10 -l axi_utils_v2_0_6 -l xbip_pipe_v3_0_6 -l xbip_dsp48_wrapper_v3_0_4 -l xbip_dsp48_addsub_v3_0_6 -l xbip_dsp48_multadd_v3_0_6 -l xbip_bram18k_v3_0_6 -l mult_gen_v12_0_18 -l floating_point_v7_1_15 -l xil_defaultlib -l microblaze_v11_0_11 -l lmb_v10_v3_0_12 -l lmb_bram_if_cntlr_v4_0_22 -l blk_mem_gen_v8_4_6 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_24 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l generic_baseblocks_v2_1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l axi_bram_ctrl_v4_1_8 -l lib_pkg_v1_0_2 -l lib_srl_fifo_v1_0_2 -l axi_uartlite_v2_0_32 -l axi_protocol_converter_v2_1_28 \
"../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \

vcom -work axi_bram_ctrl_v4_1_8 -93  \
"../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/85f5/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_1/ip/design_1_axi_bram_ctrl_0_0/sim/design_1_axi_bram_ctrl_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/30ef" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" -l xpm -l xbip_utils_v3_0_10 -l axi_utils_v2_0_6 -l xbip_pipe_v3_0_6 -l xbip_dsp48_wrapper_v3_0_4 -l xbip_dsp48_addsub_v3_0_6 -l xbip_dsp48_multadd_v3_0_6 -l xbip_bram18k_v3_0_6 -l mult_gen_v12_0_18 -l floating_point_v7_1_15 -l xil_defaultlib -l microblaze_v11_0_11 -l lmb_v10_v3_0_12 -l lmb_bram_if_cntlr_v4_0_22 -l blk_mem_gen_v8_4_6 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_24 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l generic_baseblocks_v2_1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l axi_bram_ctrl_v4_1_8 -l lib_pkg_v1_0_2 -l lib_srl_fifo_v1_0_2 -l axi_uartlite_v2_0_32 -l axi_protocol_converter_v2_1_28 \
"../../../bd/design_1/ip/design_1_axi_bram_ctrl_0_bram_0/sim/design_1_axi_bram_ctrl_0_bram_0.v" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_1/ip/design_1_axi_bram_ctrl_1_0/sim/design_1_axi_bram_ctrl_1_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/30ef" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" -l xpm -l xbip_utils_v3_0_10 -l axi_utils_v2_0_6 -l xbip_pipe_v3_0_6 -l xbip_dsp48_wrapper_v3_0_4 -l xbip_dsp48_addsub_v3_0_6 -l xbip_dsp48_multadd_v3_0_6 -l xbip_bram18k_v3_0_6 -l mult_gen_v12_0_18 -l floating_point_v7_1_15 -l xil_defaultlib -l microblaze_v11_0_11 -l lmb_v10_v3_0_12 -l lmb_bram_if_cntlr_v4_0_22 -l blk_mem_gen_v8_4_6 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_24 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l generic_baseblocks_v2_1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l axi_bram_ctrl_v4_1_8 -l lib_pkg_v1_0_2 -l lib_srl_fifo_v1_0_2 -l axi_uartlite_v2_0_32 -l axi_protocol_converter_v2_1_28 \
"../../../bd/design_1/ip/design_1_axi_bram_ctrl_1_bram_0/sim/design_1_axi_bram_ctrl_1_bram_0.v" \

vcom -work lib_pkg_v1_0_2 -93  \
"../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93  \
"../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_32 -93  \
"../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/3dd9/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_1/ip/design_1_axi_uartlite_0_0/sim/design_1_axi_uartlite_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/30ef" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" -l xpm -l xbip_utils_v3_0_10 -l axi_utils_v2_0_6 -l xbip_pipe_v3_0_6 -l xbip_dsp48_wrapper_v3_0_4 -l xbip_dsp48_addsub_v3_0_6 -l xbip_dsp48_multadd_v3_0_6 -l xbip_bram18k_v3_0_6 -l mult_gen_v12_0_18 -l floating_point_v7_1_15 -l xil_defaultlib -l microblaze_v11_0_11 -l lmb_v10_v3_0_12 -l lmb_bram_if_cntlr_v4_0_22 -l blk_mem_gen_v8_4_6 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_24 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l generic_baseblocks_v2_1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l axi_bram_ctrl_v4_1_8 -l lib_pkg_v1_0_2 -l lib_srl_fifo_v1_0_2 -l axi_uartlite_v2_0_32 -l axi_protocol_converter_v2_1_28 \
"../../../bd/design_1/ip/design_1_ila_0_0/sim/design_1_ila_0_0.v" \

vlog -work axi_protocol_converter_v2_1_28  -v2k5 "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/30ef" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" -l xpm -l xbip_utils_v3_0_10 -l axi_utils_v2_0_6 -l xbip_pipe_v3_0_6 -l xbip_dsp48_wrapper_v3_0_4 -l xbip_dsp48_addsub_v3_0_6 -l xbip_dsp48_multadd_v3_0_6 -l xbip_bram18k_v3_0_6 -l mult_gen_v12_0_18 -l floating_point_v7_1_15 -l xil_defaultlib -l microblaze_v11_0_11 -l lmb_v10_v3_0_12 -l lmb_bram_if_cntlr_v4_0_22 -l blk_mem_gen_v8_4_6 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_24 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l generic_baseblocks_v2_1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l axi_bram_ctrl_v4_1_8 -l lib_pkg_v1_0_2 -l lib_srl_fifo_v1_0_2 -l axi_uartlite_v2_0_32 -l axi_protocol_converter_v2_1_28 \
"../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/8c02/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/30ef" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../test_6_pipeline.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" -l xpm -l xbip_utils_v3_0_10 -l axi_utils_v2_0_6 -l xbip_pipe_v3_0_6 -l xbip_dsp48_wrapper_v3_0_4 -l xbip_dsp48_addsub_v3_0_6 -l xbip_dsp48_multadd_v3_0_6 -l xbip_bram18k_v3_0_6 -l mult_gen_v12_0_18 -l floating_point_v7_1_15 -l xil_defaultlib -l microblaze_v11_0_11 -l lmb_v10_v3_0_12 -l lmb_bram_if_cntlr_v4_0_22 -l blk_mem_gen_v8_4_6 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_24 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l generic_baseblocks_v2_1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l axi_bram_ctrl_v4_1_8 -l lib_pkg_v1_0_2 -l lib_srl_fifo_v1_0_2 -l axi_uartlite_v2_0_32 -l axi_protocol_converter_v2_1_28 \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \
"../../../bd/design_1/ip/design_1_auto_pc_1/sim/design_1_auto_pc_1.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

