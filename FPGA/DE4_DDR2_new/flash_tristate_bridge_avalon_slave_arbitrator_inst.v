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
// Created on Tue Oct 18 15:48:02 2011

flash_tristate_bridge_avalon_slave_arbitrator flash_tristate_bridge_avalon_slave_arbitrator_inst
(
	.clk(clk_sig) ,	// input  clk_sig
	.cpu_data_master_address_to_slave(cpu_data_master_address_to_slave_sig) ,	// input [30:0] cpu_data_master_address_to_slave_sig
	.cpu_data_master_byteenable(cpu_data_master_byteenable_sig) ,	// input [3:0] cpu_data_master_byteenable_sig
	.cpu_data_master_dbs_address(cpu_data_master_dbs_address_sig) ,	// input [1:0] cpu_data_master_dbs_address_sig
	.cpu_data_master_dbs_write_16(cpu_data_master_dbs_write_16_sig) ,	// input [15:0] cpu_data_master_dbs_write_16_sig
	.cpu_data_master_latency_counter(cpu_data_master_latency_counter_sig) ,	// input [1:0] cpu_data_master_latency_counter_sig
	.cpu_data_master_read(cpu_data_master_read_sig) ,	// input  cpu_data_master_read_sig
	.cpu_data_master_read_data_valid_peripheral_clock_crossing_s1_shift_register(cpu_data_master_read_data_valid_peripheral_clock_crossing_s1_shift_register_sig) ,	// input  cpu_data_master_read_data_valid_peripheral_clock_crossing_s1_shift_register_sig
	.cpu_data_master_write(cpu_data_master_write_sig) ,	// input  cpu_data_master_write_sig
	.cpu_instruction_master_address_to_slave(cpu_instruction_master_address_to_slave_sig) ,	// input [30:0] cpu_instruction_master_address_to_slave_sig
	.cpu_instruction_master_dbs_address(cpu_instruction_master_dbs_address_sig) ,	// input [1:0] cpu_instruction_master_dbs_address_sig
	.cpu_instruction_master_latency_counter(cpu_instruction_master_latency_counter_sig) ,	// input [1:0] cpu_instruction_master_latency_counter_sig
	.cpu_instruction_master_read(cpu_instruction_master_read_sig) ,	// input  cpu_instruction_master_read_sig
	.reset_n(reset_n_sig) ,	// input  reset_n_sig
	.cpu_data_master_byteenable_ext_flash_s1(cpu_data_master_byteenable_ext_flash_s1_sig) ,	// output [1:0] cpu_data_master_byteenable_ext_flash_s1_sig
	.cpu_data_master_granted_ext_flash_s1(cpu_data_master_granted_ext_flash_s1_sig) ,	// output  cpu_data_master_granted_ext_flash_s1_sig
	.cpu_data_master_qualified_request_ext_flash_s1(cpu_data_master_qualified_request_ext_flash_s1_sig) ,	// output  cpu_data_master_qualified_request_ext_flash_s1_sig
	.cpu_data_master_read_data_valid_ext_flash_s1(cpu_data_master_read_data_valid_ext_flash_s1_sig) ,	// output  cpu_data_master_read_data_valid_ext_flash_s1_sig
	.cpu_data_master_requests_ext_flash_s1(cpu_data_master_requests_ext_flash_s1_sig) ,	// output  cpu_data_master_requests_ext_flash_s1_sig
	.cpu_instruction_master_granted_ext_flash_s1(cpu_instruction_master_granted_ext_flash_s1_sig) ,	// output  cpu_instruction_master_granted_ext_flash_s1_sig
	.cpu_instruction_master_qualified_request_ext_flash_s1(cpu_instruction_master_qualified_request_ext_flash_s1_sig) ,	// output  cpu_instruction_master_qualified_request_ext_flash_s1_sig
	.cpu_instruction_master_read_data_valid_ext_flash_s1(cpu_instruction_master_read_data_valid_ext_flash_s1_sig) ,	// output  cpu_instruction_master_read_data_valid_ext_flash_s1_sig
	.cpu_instruction_master_requests_ext_flash_s1(cpu_instruction_master_requests_ext_flash_s1_sig) ,	// output  cpu_instruction_master_requests_ext_flash_s1_sig
	.d1_flash_tristate_bridge_avalon_slave_end_xfer(d1_flash_tristate_bridge_avalon_slave_end_xfer_sig) ,	// output  d1_flash_tristate_bridge_avalon_slave_end_xfer_sig
	.ext_flash_s1_wait_counter_eq_0(ext_flash_s1_wait_counter_eq_0_sig) ,	// output  ext_flash_s1_wait_counter_eq_0_sig
	.flash_tristate_bridge_address(flash_tristate_bridge_address_sig) ,	// output [24:0] flash_tristate_bridge_address_sig
	.flash_tristate_bridge_data(flash_tristate_bridge_data_sig) ,	// inout [15:0] flash_tristate_bridge_data_sig
	.flash_tristate_bridge_readn(flash_tristate_bridge_readn_sig) ,	// output  flash_tristate_bridge_readn_sig
	.flash_tristate_bridge_writen(flash_tristate_bridge_writen_sig) ,	// output  flash_tristate_bridge_writen_sig
	.incoming_flash_tristate_bridge_data(incoming_flash_tristate_bridge_data_sig) ,	// output [15:0] incoming_flash_tristate_bridge_data_sig
	.incoming_flash_tristate_bridge_data_with_Xs_converted_to_0(incoming_flash_tristate_bridge_data_with_Xs_converted_to_0_sig) ,	// output [15:0] incoming_flash_tristate_bridge_data_with_Xs_converted_to_0_sig
	.select_n_to_the_ext_flash(select_n_to_the_ext_flash_sig) 	// output  select_n_to_the_ext_flash_sig
);

