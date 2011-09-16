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
// Created on Thu Sep 15 19:44:19 2011

sysid_control_slave_arbitrator sysid_control_slave_arbitrator_inst
(
	.clk(clk_sig) ,	// input  clk_sig
	.cpu_data_master_address_to_slave(cpu_data_master_address_to_slave_sig) ,	// input [30:0] cpu_data_master_address_to_slave_sig
	.cpu_data_master_latency_counter(cpu_data_master_latency_counter_sig) ,	// input [1:0] cpu_data_master_latency_counter_sig
	.cpu_data_master_read(cpu_data_master_read_sig) ,	// input  cpu_data_master_read_sig
	.cpu_data_master_write(cpu_data_master_write_sig) ,	// input  cpu_data_master_write_sig
	.reset_n(reset_n_sig) ,	// input  reset_n_sig
	.sysid_control_slave_readdata(sysid_control_slave_readdata_sig) ,	// input [31:0] sysid_control_slave_readdata_sig
	.cpu_data_master_granted_sysid_control_slave(cpu_data_master_granted_sysid_control_slave_sig) ,	// output  cpu_data_master_granted_sysid_control_slave_sig
	.cpu_data_master_qualified_request_sysid_control_slave(cpu_data_master_qualified_request_sysid_control_slave_sig) ,	// output  cpu_data_master_qualified_request_sysid_control_slave_sig
	.cpu_data_master_read_data_valid_sysid_control_slave(cpu_data_master_read_data_valid_sysid_control_slave_sig) ,	// output  cpu_data_master_read_data_valid_sysid_control_slave_sig
	.cpu_data_master_requests_sysid_control_slave(cpu_data_master_requests_sysid_control_slave_sig) ,	// output  cpu_data_master_requests_sysid_control_slave_sig
	.d1_sysid_control_slave_end_xfer(d1_sysid_control_slave_end_xfer_sig) ,	// output  d1_sysid_control_slave_end_xfer_sig
	.sysid_control_slave_address(sysid_control_slave_address_sig) ,	// output  sysid_control_slave_address_sig
	.sysid_control_slave_readdata_from_sa(sysid_control_slave_readdata_from_sa_sig) 	// output [31:0] sysid_control_slave_readdata_from_sa_sig
);

