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

pll_s1_arbitrator pll_s1_arbitrator_inst
(
	.DE4_SOPC_clock_0_out_address_to_slave(DE4_SOPC_clock_0_out_address_to_slave_sig) ,	// input [3:0] DE4_SOPC_clock_0_out_address_to_slave_sig
	.DE4_SOPC_clock_0_out_nativeaddress(DE4_SOPC_clock_0_out_nativeaddress_sig) ,	// input [2:0] DE4_SOPC_clock_0_out_nativeaddress_sig
	.DE4_SOPC_clock_0_out_read(DE4_SOPC_clock_0_out_read_sig) ,	// input  DE4_SOPC_clock_0_out_read_sig
	.DE4_SOPC_clock_0_out_write(DE4_SOPC_clock_0_out_write_sig) ,	// input  DE4_SOPC_clock_0_out_write_sig
	.DE4_SOPC_clock_0_out_writedata(DE4_SOPC_clock_0_out_writedata_sig) ,	// input [15:0] DE4_SOPC_clock_0_out_writedata_sig
	.clk(clk_sig) ,	// input  clk_sig
	.pll_s1_readdata(pll_s1_readdata_sig) ,	// input [15:0] pll_s1_readdata_sig
	.pll_s1_resetrequest(pll_s1_resetrequest_sig) ,	// input  pll_s1_resetrequest_sig
	.reset_n(reset_n_sig) ,	// input  reset_n_sig
	.DE4_SOPC_clock_0_out_granted_pll_s1(DE4_SOPC_clock_0_out_granted_pll_s1_sig) ,	// output  DE4_SOPC_clock_0_out_granted_pll_s1_sig
	.DE4_SOPC_clock_0_out_qualified_request_pll_s1(DE4_SOPC_clock_0_out_qualified_request_pll_s1_sig) ,	// output  DE4_SOPC_clock_0_out_qualified_request_pll_s1_sig
	.DE4_SOPC_clock_0_out_read_data_valid_pll_s1(DE4_SOPC_clock_0_out_read_data_valid_pll_s1_sig) ,	// output  DE4_SOPC_clock_0_out_read_data_valid_pll_s1_sig
	.DE4_SOPC_clock_0_out_requests_pll_s1(DE4_SOPC_clock_0_out_requests_pll_s1_sig) ,	// output  DE4_SOPC_clock_0_out_requests_pll_s1_sig
	.d1_pll_s1_end_xfer(d1_pll_s1_end_xfer_sig) ,	// output  d1_pll_s1_end_xfer_sig
	.pll_s1_address(pll_s1_address_sig) ,	// output [2:0] pll_s1_address_sig
	.pll_s1_chipselect(pll_s1_chipselect_sig) ,	// output  pll_s1_chipselect_sig
	.pll_s1_read(pll_s1_read_sig) ,	// output  pll_s1_read_sig
	.pll_s1_readdata_from_sa(pll_s1_readdata_from_sa_sig) ,	// output [15:0] pll_s1_readdata_from_sa_sig
	.pll_s1_reset_n(pll_s1_reset_n_sig) ,	// output  pll_s1_reset_n_sig
	.pll_s1_resetrequest_from_sa(pll_s1_resetrequest_from_sa_sig) ,	// output  pll_s1_resetrequest_from_sa_sig
	.pll_s1_write(pll_s1_write_sig) ,	// output  pll_s1_write_sig
	.pll_s1_writedata(pll_s1_writedata_sig) 	// output [15:0] pll_s1_writedata_sig
);

