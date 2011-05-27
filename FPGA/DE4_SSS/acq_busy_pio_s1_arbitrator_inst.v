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

acq_busy_pio_s1_arbitrator acq_busy_pio_s1_arbitrator_inst
(
	.DE4_SOPC_clock_1_out_address_to_slave(DE4_SOPC_clock_1_out_address_to_slave_sig) ,	// input [1:0] DE4_SOPC_clock_1_out_address_to_slave_sig
	.DE4_SOPC_clock_1_out_nativeaddress(DE4_SOPC_clock_1_out_nativeaddress_sig) ,	// input [1:0] DE4_SOPC_clock_1_out_nativeaddress_sig
	.DE4_SOPC_clock_1_out_read(DE4_SOPC_clock_1_out_read_sig) ,	// input  DE4_SOPC_clock_1_out_read_sig
	.DE4_SOPC_clock_1_out_write(DE4_SOPC_clock_1_out_write_sig) ,	// input  DE4_SOPC_clock_1_out_write_sig
	.acq_busy_pio_s1_readdata(acq_busy_pio_s1_readdata_sig) ,	// input  acq_busy_pio_s1_readdata_sig
	.clk(clk_sig) ,	// input  clk_sig
	.reset_n(reset_n_sig) ,	// input  reset_n_sig
	.DE4_SOPC_clock_1_out_granted_acq_busy_pio_s1(DE4_SOPC_clock_1_out_granted_acq_busy_pio_s1_sig) ,	// output  DE4_SOPC_clock_1_out_granted_acq_busy_pio_s1_sig
	.DE4_SOPC_clock_1_out_qualified_request_acq_busy_pio_s1(DE4_SOPC_clock_1_out_qualified_request_acq_busy_pio_s1_sig) ,	// output  DE4_SOPC_clock_1_out_qualified_request_acq_busy_pio_s1_sig
	.DE4_SOPC_clock_1_out_read_data_valid_acq_busy_pio_s1(DE4_SOPC_clock_1_out_read_data_valid_acq_busy_pio_s1_sig) ,	// output  DE4_SOPC_clock_1_out_read_data_valid_acq_busy_pio_s1_sig
	.DE4_SOPC_clock_1_out_requests_acq_busy_pio_s1(DE4_SOPC_clock_1_out_requests_acq_busy_pio_s1_sig) ,	// output  DE4_SOPC_clock_1_out_requests_acq_busy_pio_s1_sig
	.acq_busy_pio_s1_address(acq_busy_pio_s1_address_sig) ,	// output [1:0] acq_busy_pio_s1_address_sig
	.acq_busy_pio_s1_readdata_from_sa(acq_busy_pio_s1_readdata_from_sa_sig) ,	// output  acq_busy_pio_s1_readdata_from_sa_sig
	.acq_busy_pio_s1_reset_n(acq_busy_pio_s1_reset_n_sig) ,	// output  acq_busy_pio_s1_reset_n_sig
	.d1_acq_busy_pio_s1_end_xfer(d1_acq_busy_pio_s1_end_xfer_sig) 	// output  d1_acq_busy_pio_s1_end_xfer_sig
);
