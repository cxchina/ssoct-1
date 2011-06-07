// Copyright (C) 1991-2010 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.


// Generated by Quartus II 64-Bit Version 9.1 (Build Build 350 03/24/2010)
// Created on Tue Jun 07 09:40:36 2011

cpu_instruction_master_arbitrator cpu_instruction_master_arbitrator_inst
(
	.clk(clk_sig) ,	// input  clk_sig
	.cpu_instruction_master_address(cpu_instruction_master_address_sig) ,	// input [26:0] cpu_instruction_master_address_sig
	.cpu_instruction_master_granted_cpu_jtag_debug_module(cpu_instruction_master_granted_cpu_jtag_debug_module_sig) ,	// input  cpu_instruction_master_granted_cpu_jtag_debug_module_sig
	.cpu_instruction_master_granted_ext_flash_s1(cpu_instruction_master_granted_ext_flash_s1_sig) ,	// input  cpu_instruction_master_granted_ext_flash_s1_sig
	.cpu_instruction_master_granted_onchip_memory_s1(cpu_instruction_master_granted_onchip_memory_s1_sig) ,	// input  cpu_instruction_master_granted_onchip_memory_s1_sig
	.cpu_instruction_master_qualified_request_cpu_jtag_debug_module(cpu_instruction_master_qualified_request_cpu_jtag_debug_module_sig) ,	// input  cpu_instruction_master_qualified_request_cpu_jtag_debug_module_sig
	.cpu_instruction_master_qualified_request_ext_flash_s1(cpu_instruction_master_qualified_request_ext_flash_s1_sig) ,	// input  cpu_instruction_master_qualified_request_ext_flash_s1_sig
	.cpu_instruction_master_qualified_request_onchip_memory_s1(cpu_instruction_master_qualified_request_onchip_memory_s1_sig) ,	// input  cpu_instruction_master_qualified_request_onchip_memory_s1_sig
	.cpu_instruction_master_read(cpu_instruction_master_read_sig) ,	// input  cpu_instruction_master_read_sig
	.cpu_instruction_master_read_data_valid_cpu_jtag_debug_module(cpu_instruction_master_read_data_valid_cpu_jtag_debug_module_sig) ,	// input  cpu_instruction_master_read_data_valid_cpu_jtag_debug_module_sig
	.cpu_instruction_master_read_data_valid_ext_flash_s1(cpu_instruction_master_read_data_valid_ext_flash_s1_sig) ,	// input  cpu_instruction_master_read_data_valid_ext_flash_s1_sig
	.cpu_instruction_master_read_data_valid_onchip_memory_s1(cpu_instruction_master_read_data_valid_onchip_memory_s1_sig) ,	// input  cpu_instruction_master_read_data_valid_onchip_memory_s1_sig
	.cpu_instruction_master_requests_cpu_jtag_debug_module(cpu_instruction_master_requests_cpu_jtag_debug_module_sig) ,	// input  cpu_instruction_master_requests_cpu_jtag_debug_module_sig
	.cpu_instruction_master_requests_ext_flash_s1(cpu_instruction_master_requests_ext_flash_s1_sig) ,	// input  cpu_instruction_master_requests_ext_flash_s1_sig
	.cpu_instruction_master_requests_onchip_memory_s1(cpu_instruction_master_requests_onchip_memory_s1_sig) ,	// input  cpu_instruction_master_requests_onchip_memory_s1_sig
	.cpu_jtag_debug_module_readdata_from_sa(cpu_jtag_debug_module_readdata_from_sa_sig) ,	// input [31:0] cpu_jtag_debug_module_readdata_from_sa_sig
	.d1_cpu_jtag_debug_module_end_xfer(d1_cpu_jtag_debug_module_end_xfer_sig) ,	// input  d1_cpu_jtag_debug_module_end_xfer_sig
	.d1_flash_tristate_bridge_avalon_slave_end_xfer(d1_flash_tristate_bridge_avalon_slave_end_xfer_sig) ,	// input  d1_flash_tristate_bridge_avalon_slave_end_xfer_sig
	.d1_onchip_memory_s1_end_xfer(d1_onchip_memory_s1_end_xfer_sig) ,	// input  d1_onchip_memory_s1_end_xfer_sig
	.ext_flash_s1_wait_counter_eq_0(ext_flash_s1_wait_counter_eq_0_sig) ,	// input  ext_flash_s1_wait_counter_eq_0_sig
	.incoming_flash_tristate_bridge_data(incoming_flash_tristate_bridge_data_sig) ,	// input [15:0] incoming_flash_tristate_bridge_data_sig
	.onchip_memory_s1_readdata_from_sa(onchip_memory_s1_readdata_from_sa_sig) ,	// input [31:0] onchip_memory_s1_readdata_from_sa_sig
	.reset_n(reset_n_sig) ,	// input  reset_n_sig
	.cpu_instruction_master_address_to_slave(cpu_instruction_master_address_to_slave_sig) ,	// output [26:0] cpu_instruction_master_address_to_slave_sig
	.cpu_instruction_master_dbs_address(cpu_instruction_master_dbs_address_sig) ,	// output [1:0] cpu_instruction_master_dbs_address_sig
	.cpu_instruction_master_latency_counter(cpu_instruction_master_latency_counter_sig) ,	// output [1:0] cpu_instruction_master_latency_counter_sig
	.cpu_instruction_master_readdata(cpu_instruction_master_readdata_sig) ,	// output [31:0] cpu_instruction_master_readdata_sig
	.cpu_instruction_master_readdatavalid(cpu_instruction_master_readdatavalid_sig) ,	// output  cpu_instruction_master_readdatavalid_sig
	.cpu_instruction_master_waitrequest(cpu_instruction_master_waitrequest_sig) 	// output  cpu_instruction_master_waitrequest_sig
);

