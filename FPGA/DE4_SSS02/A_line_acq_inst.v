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
// Created on Sat Jul 09 12:09:52 2011

A_line_acq A_line_acq_inst
(
	.clk_system(clk_system_sig) ,	// input  clk_system_sig
	.clk50MHz(clk50MHz_sig) ,	// input  clk50MHz_sig
	.ADC_data_out_clk(ADC_data_out_clk_sig) ,	// input  ADC_data_out_clk_sig
	.trigger50kHz(trigger50kHz_sig) ,	// input  trigger50kHz_sig
	.ADC_chanA(ADC_chanA_sig) ,	// input [13:0] ADC_chanA_sig
	.global_reset(global_reset_sig) ,	// input  global_reset_sig
	.sample_pos(sample_pos_sig) ,	// output [10:0] sample_pos_sig
	.read_RAM_address(read_RAM_address_sig) ,	// output [10:0] read_RAM_address_sig
	.DAC_output(DAC_output_sig) ,	// output [13:0] DAC_output_sig
	.o_sine(o_sine_sig) ,	// output [13:0] o_sine_sig
	.LED7(LED7_sig) ,	// output  LED7_sig
	.FANpin(FANpin_sig) ,	// output  FANpin_sig
	.acq_busy(acq_busy_sig) 	// output  acq_busy_sig
);

