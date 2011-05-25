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

led_pio_s1_arbitrator led_pio_s1_arbitrator_inst
(
	.clk(clk_sig) ,	// input  clk_sig
	.led_pio_s1_readdata(led_pio_s1_readdata_sig) ,	// input [7:0] led_pio_s1_readdata_sig
	.peripheral_clock_crossing_m1_address_to_slave(peripheral_clock_crossing_m1_address_to_slave_sig) ,	// input [6:0] peripheral_clock_crossing_m1_address_to_slave_sig
	.peripheral_clock_crossing_m1_byteenable(peripheral_clock_crossing_m1_byteenable_sig) ,	// input [3:0] peripheral_clock_crossing_m1_byteenable_sig
	.peripheral_clock_crossing_m1_latency_counter(peripheral_clock_crossing_m1_latency_counter_sig) ,	// input  peripheral_clock_crossing_m1_latency_counter_sig
	.peripheral_clock_crossing_m1_nativeaddress(peripheral_clock_crossing_m1_nativeaddress_sig) ,	// input [4:0] peripheral_clock_crossing_m1_nativeaddress_sig
	.peripheral_clock_crossing_m1_read(peripheral_clock_crossing_m1_read_sig) ,	// input  peripheral_clock_crossing_m1_read_sig
	.peripheral_clock_crossing_m1_write(peripheral_clock_crossing_m1_write_sig) ,	// input  peripheral_clock_crossing_m1_write_sig
	.peripheral_clock_crossing_m1_writedata(peripheral_clock_crossing_m1_writedata_sig) ,	// input [31:0] peripheral_clock_crossing_m1_writedata_sig
	.reset_n(reset_n_sig) ,	// input  reset_n_sig
	.d1_led_pio_s1_end_xfer(d1_led_pio_s1_end_xfer_sig) ,	// output  d1_led_pio_s1_end_xfer_sig
	.led_pio_s1_address(led_pio_s1_address_sig) ,	// output [1:0] led_pio_s1_address_sig
	.led_pio_s1_chipselect(led_pio_s1_chipselect_sig) ,	// output  led_pio_s1_chipselect_sig
	.led_pio_s1_readdata_from_sa(led_pio_s1_readdata_from_sa_sig) ,	// output [7:0] led_pio_s1_readdata_from_sa_sig
	.led_pio_s1_reset_n(led_pio_s1_reset_n_sig) ,	// output  led_pio_s1_reset_n_sig
	.led_pio_s1_write_n(led_pio_s1_write_n_sig) ,	// output  led_pio_s1_write_n_sig
	.led_pio_s1_writedata(led_pio_s1_writedata_sig) ,	// output [7:0] led_pio_s1_writedata_sig
	.peripheral_clock_crossing_m1_granted_led_pio_s1(peripheral_clock_crossing_m1_granted_led_pio_s1_sig) ,	// output  peripheral_clock_crossing_m1_granted_led_pio_s1_sig
	.peripheral_clock_crossing_m1_qualified_request_led_pio_s1(peripheral_clock_crossing_m1_qualified_request_led_pio_s1_sig) ,	// output  peripheral_clock_crossing_m1_qualified_request_led_pio_s1_sig
	.peripheral_clock_crossing_m1_read_data_valid_led_pio_s1(peripheral_clock_crossing_m1_read_data_valid_led_pio_s1_sig) ,	// output  peripheral_clock_crossing_m1_read_data_valid_led_pio_s1_sig
	.peripheral_clock_crossing_m1_requests_led_pio_s1(peripheral_clock_crossing_m1_requests_led_pio_s1_sig) 	// output  peripheral_clock_crossing_m1_requests_led_pio_s1_sig
);
