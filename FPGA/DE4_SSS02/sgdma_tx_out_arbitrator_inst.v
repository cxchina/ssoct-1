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

sgdma_tx_out_arbitrator sgdma_tx_out_arbitrator_inst
(
	.clk(clk_sig) ,	// input  clk_sig
	.reset_n(reset_n_sig) ,	// input  reset_n_sig
	.sgdma_tx_out_data(sgdma_tx_out_data_sig) ,	// input [31:0] sgdma_tx_out_data_sig
	.sgdma_tx_out_empty(sgdma_tx_out_empty_sig) ,	// input [1:0] sgdma_tx_out_empty_sig
	.sgdma_tx_out_endofpacket(sgdma_tx_out_endofpacket_sig) ,	// input  sgdma_tx_out_endofpacket_sig
	.sgdma_tx_out_error(sgdma_tx_out_error_sig) ,	// input  sgdma_tx_out_error_sig
	.sgdma_tx_out_startofpacket(sgdma_tx_out_startofpacket_sig) ,	// input  sgdma_tx_out_startofpacket_sig
	.sgdma_tx_out_valid(sgdma_tx_out_valid_sig) ,	// input  sgdma_tx_out_valid_sig
	.tse_mac_transmit_ready_from_sa(tse_mac_transmit_ready_from_sa_sig) ,	// input  tse_mac_transmit_ready_from_sa_sig
	.sgdma_tx_out_ready(sgdma_tx_out_ready_sig) 	// output  sgdma_tx_out_ready_sig
);

