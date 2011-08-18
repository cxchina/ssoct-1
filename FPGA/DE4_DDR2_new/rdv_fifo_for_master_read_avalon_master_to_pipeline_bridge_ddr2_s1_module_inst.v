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
// Created on Wed Aug 17 14:23:29 2011

rdv_fifo_for_master_read_avalon_master_to_pipeline_bridge_ddr2_s1_module rdv_fifo_for_master_read_avalon_master_to_pipeline_bridge_ddr2_s1_module_inst
(
	.clear_fifo(clear_fifo_sig) ,	// input  clear_fifo_sig
	.clk(clk_sig) ,	// input  clk_sig
	.data_in(data_in_sig) ,	// input  data_in_sig
	.read(read_sig) ,	// input  read_sig
	.reset_n(reset_n_sig) ,	// input  reset_n_sig
	.sync_reset(sync_reset_sig) ,	// input  sync_reset_sig
	.write(write_sig) ,	// input  write_sig
	.data_out(data_out_sig) ,	// output  data_out_sig
	.empty(empty_sig) ,	// output  empty_sig
	.fifo_contains_ones_n(fifo_contains_ones_n_sig) ,	// output  fifo_contains_ones_n_sig
	.full(full_sig) 	// output  full_sig
);

