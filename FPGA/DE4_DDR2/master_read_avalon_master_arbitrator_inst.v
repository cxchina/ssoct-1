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
// Created on Wed Aug 10 18:58:12 2011

master_read_avalon_master_arbitrator master_read_avalon_master_arbitrator_inst
(
	.clk(clk_sig) ,	// input  clk_sig
	.clock_crossing_s1_readdata_from_sa(clock_crossing_s1_readdata_from_sa_sig) ,	// input [31:0] clock_crossing_s1_readdata_from_sa_sig
	.clock_crossing_s1_waitrequest_from_sa(clock_crossing_s1_waitrequest_from_sa_sig) ,	// input  clock_crossing_s1_waitrequest_from_sa_sig
	.d1_clock_crossing_s1_end_xfer(d1_clock_crossing_s1_end_xfer_sig) ,	// input  d1_clock_crossing_s1_end_xfer_sig
	.master_read_avalon_master_address(master_read_avalon_master_address_sig) ,	// input [29:0] master_read_avalon_master_address_sig
	.master_read_avalon_master_burstcount(master_read_avalon_master_burstcount_sig) ,	// input  master_read_avalon_master_burstcount_sig
	.master_read_avalon_master_byteenable(master_read_avalon_master_byteenable_sig) ,	// input [3:0] master_read_avalon_master_byteenable_sig
	.master_read_avalon_master_read(master_read_avalon_master_read_sig) ,	// input  master_read_avalon_master_read_sig
	.master_read_granted_clock_crossing_s1(master_read_granted_clock_crossing_s1_sig) ,	// input  master_read_granted_clock_crossing_s1_sig
	.master_read_qualified_request_clock_crossing_s1(master_read_qualified_request_clock_crossing_s1_sig) ,	// input  master_read_qualified_request_clock_crossing_s1_sig
	.master_read_read_data_valid_clock_crossing_s1(master_read_read_data_valid_clock_crossing_s1_sig) ,	// input  master_read_read_data_valid_clock_crossing_s1_sig
	.master_read_read_data_valid_clock_crossing_s1_shift_register(master_read_read_data_valid_clock_crossing_s1_shift_register_sig) ,	// input  master_read_read_data_valid_clock_crossing_s1_shift_register_sig
	.master_read_requests_clock_crossing_s1(master_read_requests_clock_crossing_s1_sig) ,	// input  master_read_requests_clock_crossing_s1_sig
	.reset_n(reset_n_sig) ,	// input  reset_n_sig
	.master_read_avalon_master_address_to_slave(master_read_avalon_master_address_to_slave_sig) ,	// output [29:0] master_read_avalon_master_address_to_slave_sig
	.master_read_avalon_master_readdata(master_read_avalon_master_readdata_sig) ,	// output [31:0] master_read_avalon_master_readdata_sig
	.master_read_avalon_master_readdatavalid(master_read_avalon_master_readdatavalid_sig) ,	// output  master_read_avalon_master_readdatavalid_sig
	.master_read_avalon_master_reset(master_read_avalon_master_reset_sig) ,	// output  master_read_avalon_master_reset_sig
	.master_read_avalon_master_waitrequest(master_read_avalon_master_waitrequest_sig) ,	// output  master_read_avalon_master_waitrequest_sig
	.master_read_latency_counter(master_read_latency_counter_sig) 	// output  master_read_latency_counter_sig
);

