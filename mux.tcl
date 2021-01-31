puts "CUSTOMINFO: vivado_prj start"

set root_dir [pwd]
set proj_dir $root_dir/proj

set proj_name "mux_proj"
set part "xczu19eg-ffvc1760-2-i"

# Create project
create_project -force $proj_name $proj_dir

# Set project properties
set obj [get_projects $proj_name]

set_property "part" $part $obj
set_property "default_lib" "xil_defaultlib" $obj
set_property "simulator_language" "Mixed" $obj
set_property "target_language" "Verilog" $obj
set_property "default_lib" "xil_defaultlib" $obj

# WF Drut File paths
set Sources "$proj_dir/../mux.srcs/sources_1/imports/Sources/"


# --------------------------------------------------------------------------------------
# Verilog FIles
# -------------------------------------------------------------------------------------

read_verilog "${Sources}/top.v"
read_verilog "${Sources}/clock_generator.v"
read_verilog "${Sources}/mgtTop.v"
read_verilog "${Sources}/fftTop.v"
read_verilog "${Sources}/FifoBuffer.v"
read_verilog "${Sources}/async_fifo.v"

read_verilog "${Sources}/bftLib/round_1.vhdl"
read_verilog "${Sources}/bftLib/round_2.vhdl"
read_verilog "${Sources}/bftLib/round_3.vhdl"
read_verilog "${Sources}/bftLib/round_4.vhdl"
read_verilog "${Sources}/bftLib/bft_package.vhdl"
read_verilog "${Sources}/bftLib/core_transform.vhdl"

read_verilog "${Sources}/or1200/or1200_top.v"
read_verilog "${Sources}/or1200/or1200_iwb_biu.v"
read_verilog "${Sources}/or1200/or1200_wb_biu.v"
read_verilog "${Sources}/or1200/or1200_immu_top.v"
read_verilog "${Sources}/or1200/or1200_immu_tlb.v"
read_verilog "${Sources}/or1200/or1200_spram_64x14.v"
read_verilog "${Sources}/or1200/or1200_spram_64x22.v"
read_verilog "${Sources}/or1200/or1200_ic_top.v"
read_verilog "${Sources}/or1200/or1200_ic_fsm.v"
read_verilog "${Sources}/or1200/or1200_ic_ram.v"
read_verilog "${Sources}/or1200/or1200_ic_tag.v"
read_verilog "${Sources}/or1200/or1200_spram_2048x32_bw.v"
read_verilog "${Sources}/or1200/or1200_spram_512x20.v"
read_verilog "${Sources}/or1200/or1200_cpu.v"
read_verilog "${Sources}/or1200/or1200_genpc.v"
read_verilog "${Sources}/or1200/or1200_if.v"
read_verilog "${Sources}/or1200/or1200_ctrl.v"
read_verilog "${Sources}/or1200/or1200_rf.v"
read_verilog "${Sources}/or1200/or1200_operandmuxes.v"
read_verilog "${Sources}/or1200/or1200_rfram_generic.v"
read_verilog "${Sources}/or1200/or1200_alu.v"
read_verilog "${Sources}/or1200/or1200_mult_mac.v"
read_verilog "${Sources}/or1200/or1200_sprs.v"
read_verilog "${Sources}/or1200/or1200_lsu.v"
read_verilog "${Sources}/or1200/or1200_gmultp2_32x32.v"
read_verilog "${Sources}/or1200/or1200_mem2reg.v"
read_verilog "${Sources}/or1200/or1200_reg2mem.v"
read_verilog "${Sources}/or1200/or1200_wbmux.v"
read_verilog "${Sources}/or1200/or1200_freeze.v"
read_verilog "${Sources}/or1200/or1200_except.v"
read_verilog "${Sources}/or1200/or1200_cfgr.v"
read_verilog "${Sources}/or1200/or1200_dmmu_top.v"
read_verilog "${Sources}/or1200/or1200_dmmu_tlb.v"
read_verilog "${Sources}/or1200/or1200_spram_64x24.v"
read_verilog "${Sources}/or1200/or1200_dc_top.v"
read_verilog "${Sources}/or1200/or1200_dc_fsm.v"
read_verilog "${Sources}/or1200/or1200_dc_ram.v"
read_verilog "${Sources}/or1200/or1200_qmem_top.v"
read_verilog "${Sources}/or1200/or1200_sb.v"
read_verilog "${Sources}/or1200/or1200_sb_fifo.v"
read_verilog "${Sources}/or1200/or1200_du.v"
read_verilog "${Sources}/or1200/or1200_dpram_256x32.v"
read_verilog "${Sources}/or1200/or1200_pic.v"
read_verilog "${Sources}/or1200/or1200_tt.v"
read_verilog "${Sources}/or1200/or1200_pm.v"


read_verilog "${Sources}/wb_conmax/wb_conmax_top.v"
read_verilog "${Sources}/wb_conmax/wb_conmax_master_if.v"
read_verilog "${Sources}/wb_conmax/wb_conmax_slave_if.v"
read_verilog "${Sources}/wb_conmax/wb_conmax_arb.v"
read_verilog "${Sources}/wb_conmax/wb_conmax_msel.v"
read_verilog "${Sources}/wb_conmax/wb_conmax_pri_dec.v"
read_verilog "${Sources}/wb_conmax/wb_conmax_arb.v"
read_verilog "${Sources}/wb_conmax/wb_conmax_pri_enc.v"
read_verilog "${Sources}/wb_conmax/wb_conmax_rf.v"


read_verilog "${Sources}/usbf/usbf_top.v"
read_verilog "${Sources}/usbf/usbf_utmi_if.v"
read_verilog "${Sources}/usbf/usbf_utmi_ls.v"
read_verilog "${Sources}/usbf/usbf_pl.v"
read_verilog "${Sources}/usbf/usbf_pd.v"
read_verilog "${Sources}/usbf/usbf_crc5.v"
read_verilog "${Sources}/usbf/usbf_crc16.v"
read_verilog "${Sources}/usbf/usbf_idma.v"
read_verilog "${Sources}/usbf/usbf_pe.v"
read_verilog "${Sources}/usbf/usbf_mem_arb.v"
read_verilog "${Sources}/usbf/usbf_ep_rf.v"
read_verilog "${Sources}/usbf/usbf_rf.v"
read_verilog "${Sources}/usbf/usbf_wb.v"

read_verilog "${Sources}/rtlRam.v"

read_verilog "${Sources}/4x1mux.v"

read_verilog "${Sources}/mgt/rocketio_wrapper_tile.v"
read_verilog "${Sources}/mgt/rocketio_wrapper_tile_gt.v"
read_verilog "${Sources}/mgt/rocketio_wrapper_tile_gt_frame_check.v"
read_verilog "${Sources}/mgt/rocketio_wrapper_tile_gt_frame_gen.v"
read_verilog "${Sources}/mgt/rocketio_wrapper_tile_gt_usrclk_source.v"





