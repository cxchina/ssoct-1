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
// Created on Wed May 18 18:11:01 2011

high_res_timer_s1_arbitrator high_res_timer_s1_arbitrator_inst
(
	.clk(clk_sig) ,	// input  clk_sig
	.cpu_data_master_address_to_slave(cpu_data_master_address_to_slave_sig) ,	// input [26:0] cpu_data_master_address_to_slave_sig
	.cpu_data_master_latency_counter(cpu_data_master_latency_counter_sig) ,	// input [1:0] cpu_data_master_latency_counter_sig
	.cpu_data_master_read(cpu_data_master_read_sig) ,	// input  cpu_data_master_read_sig
	.cpu_data_master_read_data_valid_peripheral_clock_crossing_s1_shift_register(cpu_data_master_read_data_valid_peripheral_clock_crossing_s1_shift_register_sig) ,	// input  cpu_data_master_read_data_valid_peripheral_clock_crossing_s1_shift_register_sig
	.cpu_data_master_write(cpu_data_master_write_sig) ,	// input  cpu_data_master_write_sig
	.cpu_data_master_writedata(cpu_data_master_writedata_sig) ,	// input [31:0] cpu_data_master_writedata_sig
	.high_res_timer_s1_irq(high_res_timer_s1_irq_sig) ,	// input  high_res_timer_s1_irq_sig
	.high_res_timer_s1_readdata(high_res_timer_s1_readdata_sig) ,	// input [15:0] high_res_timer_s1_readdata_sig
	.reset_n(reset_n_sig) ,	// input  reset_n_sig
	.cpu_data_master_granted_high_res_timer_s1(cpu_data_master_granted_high_res_timer_s1_sig) ,	// output  cpu_data_master_granted_high_res_timer_s1_sig
	.cpu_data_master_qualified_request_high_res_timer_s1(cpu_data_master_qualified_request_high_res_timer_s1_sig) ,	// output  cpu_data_master_qualified_request_high_res_timer_s1_sig
	.cpu_data_master_read_data_valid_high_res_timer_s1(cpu_data_master_read_data_valid_high_res_timer_s1_sig) ,	// output  cpu_data_master_read_data_valid_high_res_timer_s1_sig
	.cpu_data_master_requests_high_res_timer_s1(cpu_data_master_requests_high_res_timer_s1_sig) ,	// output  cpu_data_master_requests_high_res_timer_s1_sig
	.d1_high_res_timer_s1_end_xfer(d1_high_res_timer_s1_end_xfer_sig) ,	// output  d1_high_res_timer_s1_end_xfer_sig
	.high_res_timer_s1_address(high_res_timer_s1_address_sig) ,	// output [2:0] high_res_timer_s1_address_sig
	.high_res_timer_s1_chipselect(high_res_timer_s1_chipselect_sig) ,	// output  high_res_timer_s1_chipselect_sig
	.high_res_timer_s1_irq_from_sa(high_res_timer_s1_irq_from_sa_sig) ,	// output  high_res_timer_s1_irq_from_sa_sig
	.high_res_timer_s1_readdata_from_sa(high_res_timer_s1_readdata_from_sa_sig) ,	// output [15:0] high_res_timer_s1_readdata_from_sa_sig
	.high_res_timer_s1_reset_n(high_res_timer_s1_reset_n_sig) ,	// output  high_res_timer_s1_reset_n_sig
	.high_res_timer_s1_write_n(high_res_timer_s1_write_n_sig) ,	// output  high_res_timer_s1_write_n_sig
	.high_res_timer_s1_writedata(high_res_timer_s1_writedata_sig) 	// output [15:0] high_res_timer_s1_writedata_sig
);

