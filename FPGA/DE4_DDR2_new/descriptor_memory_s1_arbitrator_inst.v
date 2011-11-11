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
// Created on Thu Nov 10 19:33:38 2011

descriptor_memory_s1_arbitrator descriptor_memory_s1_arbitrator_inst
(
	.clk(clk_sig) ,	// input  clk_sig
	.cpu_data_master_address_to_slave(cpu_data_master_address_to_slave_sig) ,	// input [30:0] cpu_data_master_address_to_slave_sig
	.cpu_data_master_byteenable(cpu_data_master_byteenable_sig) ,	// input [3:0] cpu_data_master_byteenable_sig
	.cpu_data_master_latency_counter(cpu_data_master_latency_counter_sig) ,	// input [1:0] cpu_data_master_latency_counter_sig
	.cpu_data_master_read(cpu_data_master_read_sig) ,	// input  cpu_data_master_read_sig
	.cpu_data_master_read_data_valid_peripheral_clock_crossing_s1_shift_register(cpu_data_master_read_data_valid_peripheral_clock_crossing_s1_shift_register_sig) ,	// input  cpu_data_master_read_data_valid_peripheral_clock_crossing_s1_shift_register_sig
	.cpu_data_master_write(cpu_data_master_write_sig) ,	// input  cpu_data_master_write_sig
	.cpu_data_master_writedata(cpu_data_master_writedata_sig) ,	// input [31:0] cpu_data_master_writedata_sig
	.cpu_instruction_master_address_to_slave(cpu_instruction_master_address_to_slave_sig) ,	// input [30:0] cpu_instruction_master_address_to_slave_sig
	.cpu_instruction_master_latency_counter(cpu_instruction_master_latency_counter_sig) ,	// input [1:0] cpu_instruction_master_latency_counter_sig
	.cpu_instruction_master_read(cpu_instruction_master_read_sig) ,	// input  cpu_instruction_master_read_sig
	.descriptor_memory_s1_readdata(descriptor_memory_s1_readdata_sig) ,	// input [31:0] descriptor_memory_s1_readdata_sig
	.reset_n(reset_n_sig) ,	// input  reset_n_sig
	.sgdma_rx_descriptor_read_address_to_slave(sgdma_rx_descriptor_read_address_to_slave_sig) ,	// input [31:0] sgdma_rx_descriptor_read_address_to_slave_sig
	.sgdma_rx_descriptor_read_latency_counter(sgdma_rx_descriptor_read_latency_counter_sig) ,	// input  sgdma_rx_descriptor_read_latency_counter_sig
	.sgdma_rx_descriptor_read_read(sgdma_rx_descriptor_read_read_sig) ,	// input  sgdma_rx_descriptor_read_read_sig
	.sgdma_rx_descriptor_write_address_to_slave(sgdma_rx_descriptor_write_address_to_slave_sig) ,	// input [31:0] sgdma_rx_descriptor_write_address_to_slave_sig
	.sgdma_rx_descriptor_write_write(sgdma_rx_descriptor_write_write_sig) ,	// input  sgdma_rx_descriptor_write_write_sig
	.sgdma_rx_descriptor_write_writedata(sgdma_rx_descriptor_write_writedata_sig) ,	// input [31:0] sgdma_rx_descriptor_write_writedata_sig
	.sgdma_tx_descriptor_read_address_to_slave(sgdma_tx_descriptor_read_address_to_slave_sig) ,	// input [31:0] sgdma_tx_descriptor_read_address_to_slave_sig
	.sgdma_tx_descriptor_read_latency_counter(sgdma_tx_descriptor_read_latency_counter_sig) ,	// input  sgdma_tx_descriptor_read_latency_counter_sig
	.sgdma_tx_descriptor_read_read(sgdma_tx_descriptor_read_read_sig) ,	// input  sgdma_tx_descriptor_read_read_sig
	.sgdma_tx_descriptor_write_address_to_slave(sgdma_tx_descriptor_write_address_to_slave_sig) ,	// input [31:0] sgdma_tx_descriptor_write_address_to_slave_sig
	.sgdma_tx_descriptor_write_write(sgdma_tx_descriptor_write_write_sig) ,	// input  sgdma_tx_descriptor_write_write_sig
	.sgdma_tx_descriptor_write_writedata(sgdma_tx_descriptor_write_writedata_sig) ,	// input [31:0] sgdma_tx_descriptor_write_writedata_sig
	.cpu_data_master_granted_descriptor_memory_s1(cpu_data_master_granted_descriptor_memory_s1_sig) ,	// output  cpu_data_master_granted_descriptor_memory_s1_sig
	.cpu_data_master_qualified_request_descriptor_memory_s1(cpu_data_master_qualified_request_descriptor_memory_s1_sig) ,	// output  cpu_data_master_qualified_request_descriptor_memory_s1_sig
	.cpu_data_master_read_data_valid_descriptor_memory_s1(cpu_data_master_read_data_valid_descriptor_memory_s1_sig) ,	// output  cpu_data_master_read_data_valid_descriptor_memory_s1_sig
	.cpu_data_master_requests_descriptor_memory_s1(cpu_data_master_requests_descriptor_memory_s1_sig) ,	// output  cpu_data_master_requests_descriptor_memory_s1_sig
	.cpu_instruction_master_granted_descriptor_memory_s1(cpu_instruction_master_granted_descriptor_memory_s1_sig) ,	// output  cpu_instruction_master_granted_descriptor_memory_s1_sig
	.cpu_instruction_master_qualified_request_descriptor_memory_s1(cpu_instruction_master_qualified_request_descriptor_memory_s1_sig) ,	// output  cpu_instruction_master_qualified_request_descriptor_memory_s1_sig
	.cpu_instruction_master_read_data_valid_descriptor_memory_s1(cpu_instruction_master_read_data_valid_descriptor_memory_s1_sig) ,	// output  cpu_instruction_master_read_data_valid_descriptor_memory_s1_sig
	.cpu_instruction_master_requests_descriptor_memory_s1(cpu_instruction_master_requests_descriptor_memory_s1_sig) ,	// output  cpu_instruction_master_requests_descriptor_memory_s1_sig
	.d1_descriptor_memory_s1_end_xfer(d1_descriptor_memory_s1_end_xfer_sig) ,	// output  d1_descriptor_memory_s1_end_xfer_sig
	.descriptor_memory_s1_address(descriptor_memory_s1_address_sig) ,	// output [8:0] descriptor_memory_s1_address_sig
	.descriptor_memory_s1_byteenable(descriptor_memory_s1_byteenable_sig) ,	// output [3:0] descriptor_memory_s1_byteenable_sig
	.descriptor_memory_s1_chipselect(descriptor_memory_s1_chipselect_sig) ,	// output  descriptor_memory_s1_chipselect_sig
	.descriptor_memory_s1_clken(descriptor_memory_s1_clken_sig) ,	// output  descriptor_memory_s1_clken_sig
	.descriptor_memory_s1_readdata_from_sa(descriptor_memory_s1_readdata_from_sa_sig) ,	// output [31:0] descriptor_memory_s1_readdata_from_sa_sig
	.descriptor_memory_s1_write(descriptor_memory_s1_write_sig) ,	// output  descriptor_memory_s1_write_sig
	.descriptor_memory_s1_writedata(descriptor_memory_s1_writedata_sig) ,	// output [31:0] descriptor_memory_s1_writedata_sig
	.sgdma_rx_descriptor_read_granted_descriptor_memory_s1(sgdma_rx_descriptor_read_granted_descriptor_memory_s1_sig) ,	// output  sgdma_rx_descriptor_read_granted_descriptor_memory_s1_sig
	.sgdma_rx_descriptor_read_qualified_request_descriptor_memory_s1(sgdma_rx_descriptor_read_qualified_request_descriptor_memory_s1_sig) ,	// output  sgdma_rx_descriptor_read_qualified_request_descriptor_memory_s1_sig
	.sgdma_rx_descriptor_read_read_data_valid_descriptor_memory_s1(sgdma_rx_descriptor_read_read_data_valid_descriptor_memory_s1_sig) ,	// output  sgdma_rx_descriptor_read_read_data_valid_descriptor_memory_s1_sig
	.sgdma_rx_descriptor_read_requests_descriptor_memory_s1(sgdma_rx_descriptor_read_requests_descriptor_memory_s1_sig) ,	// output  sgdma_rx_descriptor_read_requests_descriptor_memory_s1_sig
	.sgdma_rx_descriptor_write_granted_descriptor_memory_s1(sgdma_rx_descriptor_write_granted_descriptor_memory_s1_sig) ,	// output  sgdma_rx_descriptor_write_granted_descriptor_memory_s1_sig
	.sgdma_rx_descriptor_write_qualified_request_descriptor_memory_s1(sgdma_rx_descriptor_write_qualified_request_descriptor_memory_s1_sig) ,	// output  sgdma_rx_descriptor_write_qualified_request_descriptor_memory_s1_sig
	.sgdma_rx_descriptor_write_requests_descriptor_memory_s1(sgdma_rx_descriptor_write_requests_descriptor_memory_s1_sig) ,	// output  sgdma_rx_descriptor_write_requests_descriptor_memory_s1_sig
	.sgdma_tx_descriptor_read_granted_descriptor_memory_s1(sgdma_tx_descriptor_read_granted_descriptor_memory_s1_sig) ,	// output  sgdma_tx_descriptor_read_granted_descriptor_memory_s1_sig
	.sgdma_tx_descriptor_read_qualified_request_descriptor_memory_s1(sgdma_tx_descriptor_read_qualified_request_descriptor_memory_s1_sig) ,	// output  sgdma_tx_descriptor_read_qualified_request_descriptor_memory_s1_sig
	.sgdma_tx_descriptor_read_read_data_valid_descriptor_memory_s1(sgdma_tx_descriptor_read_read_data_valid_descriptor_memory_s1_sig) ,	// output  sgdma_tx_descriptor_read_read_data_valid_descriptor_memory_s1_sig
	.sgdma_tx_descriptor_read_requests_descriptor_memory_s1(sgdma_tx_descriptor_read_requests_descriptor_memory_s1_sig) ,	// output  sgdma_tx_descriptor_read_requests_descriptor_memory_s1_sig
	.sgdma_tx_descriptor_write_granted_descriptor_memory_s1(sgdma_tx_descriptor_write_granted_descriptor_memory_s1_sig) ,	// output  sgdma_tx_descriptor_write_granted_descriptor_memory_s1_sig
	.sgdma_tx_descriptor_write_qualified_request_descriptor_memory_s1(sgdma_tx_descriptor_write_qualified_request_descriptor_memory_s1_sig) ,	// output  sgdma_tx_descriptor_write_qualified_request_descriptor_memory_s1_sig
	.sgdma_tx_descriptor_write_requests_descriptor_memory_s1(sgdma_tx_descriptor_write_requests_descriptor_memory_s1_sig) 	// output  sgdma_tx_descriptor_write_requests_descriptor_memory_s1_sig
);

