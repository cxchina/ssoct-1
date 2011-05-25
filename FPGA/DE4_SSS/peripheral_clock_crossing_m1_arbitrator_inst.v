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

peripheral_clock_crossing_m1_arbitrator peripheral_clock_crossing_m1_arbitrator_inst
(
	.DE4_SOPC_clock_1_in_endofpacket_from_sa(DE4_SOPC_clock_1_in_endofpacket_from_sa_sig) ,	// input  DE4_SOPC_clock_1_in_endofpacket_from_sa_sig
	.DE4_SOPC_clock_1_in_readdata_from_sa(DE4_SOPC_clock_1_in_readdata_from_sa_sig) ,	// input [7:0] DE4_SOPC_clock_1_in_readdata_from_sa_sig
	.DE4_SOPC_clock_1_in_waitrequest_from_sa(DE4_SOPC_clock_1_in_waitrequest_from_sa_sig) ,	// input  DE4_SOPC_clock_1_in_waitrequest_from_sa_sig
	.DE4_SOPC_clock_2_in_endofpacket_from_sa(DE4_SOPC_clock_2_in_endofpacket_from_sa_sig) ,	// input  DE4_SOPC_clock_2_in_endofpacket_from_sa_sig
	.DE4_SOPC_clock_2_in_readdata_from_sa(DE4_SOPC_clock_2_in_readdata_from_sa_sig) ,	// input [15:0] DE4_SOPC_clock_2_in_readdata_from_sa_sig
	.DE4_SOPC_clock_2_in_waitrequest_from_sa(DE4_SOPC_clock_2_in_waitrequest_from_sa_sig) ,	// input  DE4_SOPC_clock_2_in_waitrequest_from_sa_sig
	.DE4_SOPC_clock_3_in_endofpacket_from_sa(DE4_SOPC_clock_3_in_endofpacket_from_sa_sig) ,	// input  DE4_SOPC_clock_3_in_endofpacket_from_sa_sig
	.DE4_SOPC_clock_3_in_readdata_from_sa(DE4_SOPC_clock_3_in_readdata_from_sa_sig) ,	// input [15:0] DE4_SOPC_clock_3_in_readdata_from_sa_sig
	.DE4_SOPC_clock_3_in_waitrequest_from_sa(DE4_SOPC_clock_3_in_waitrequest_from_sa_sig) ,	// input  DE4_SOPC_clock_3_in_waitrequest_from_sa_sig
	.clk(clk_sig) ,	// input  clk_sig
	.d1_DE4_SOPC_clock_1_in_end_xfer(d1_DE4_SOPC_clock_1_in_end_xfer_sig) ,	// input  d1_DE4_SOPC_clock_1_in_end_xfer_sig
	.d1_DE4_SOPC_clock_2_in_end_xfer(d1_DE4_SOPC_clock_2_in_end_xfer_sig) ,	// input  d1_DE4_SOPC_clock_2_in_end_xfer_sig
	.d1_DE4_SOPC_clock_3_in_end_xfer(d1_DE4_SOPC_clock_3_in_end_xfer_sig) ,	// input  d1_DE4_SOPC_clock_3_in_end_xfer_sig
	.d1_led_pio_s1_end_xfer(d1_led_pio_s1_end_xfer_sig) ,	// input  d1_led_pio_s1_end_xfer_sig
	.d1_pb_pio_s1_end_xfer(d1_pb_pio_s1_end_xfer_sig) ,	// input  d1_pb_pio_s1_end_xfer_sig
	.d1_seven_seg_pio_s1_end_xfer(d1_seven_seg_pio_s1_end_xfer_sig) ,	// input  d1_seven_seg_pio_s1_end_xfer_sig
	.d1_sw_pio_s1_end_xfer(d1_sw_pio_s1_end_xfer_sig) ,	// input  d1_sw_pio_s1_end_xfer_sig
	.led_pio_s1_readdata_from_sa(led_pio_s1_readdata_from_sa_sig) ,	// input [7:0] led_pio_s1_readdata_from_sa_sig
	.pb_pio_s1_readdata_from_sa(pb_pio_s1_readdata_from_sa_sig) ,	// input [3:0] pb_pio_s1_readdata_from_sa_sig
	.peripheral_clock_crossing_m1_address(peripheral_clock_crossing_m1_address_sig) ,	// input [6:0] peripheral_clock_crossing_m1_address_sig
	.peripheral_clock_crossing_m1_byteenable(peripheral_clock_crossing_m1_byteenable_sig) ,	// input [3:0] peripheral_clock_crossing_m1_byteenable_sig
	.peripheral_clock_crossing_m1_granted_DE4_SOPC_clock_1_in(peripheral_clock_crossing_m1_granted_DE4_SOPC_clock_1_in_sig) ,	// input  peripheral_clock_crossing_m1_granted_DE4_SOPC_clock_1_in_sig
	.peripheral_clock_crossing_m1_granted_DE4_SOPC_clock_2_in(peripheral_clock_crossing_m1_granted_DE4_SOPC_clock_2_in_sig) ,	// input  peripheral_clock_crossing_m1_granted_DE4_SOPC_clock_2_in_sig
	.peripheral_clock_crossing_m1_granted_DE4_SOPC_clock_3_in(peripheral_clock_crossing_m1_granted_DE4_SOPC_clock_3_in_sig) ,	// input  peripheral_clock_crossing_m1_granted_DE4_SOPC_clock_3_in_sig
	.peripheral_clock_crossing_m1_granted_led_pio_s1(peripheral_clock_crossing_m1_granted_led_pio_s1_sig) ,	// input  peripheral_clock_crossing_m1_granted_led_pio_s1_sig
	.peripheral_clock_crossing_m1_granted_pb_pio_s1(peripheral_clock_crossing_m1_granted_pb_pio_s1_sig) ,	// input  peripheral_clock_crossing_m1_granted_pb_pio_s1_sig
	.peripheral_clock_crossing_m1_granted_seven_seg_pio_s1(peripheral_clock_crossing_m1_granted_seven_seg_pio_s1_sig) ,	// input  peripheral_clock_crossing_m1_granted_seven_seg_pio_s1_sig
	.peripheral_clock_crossing_m1_granted_sw_pio_s1(peripheral_clock_crossing_m1_granted_sw_pio_s1_sig) ,	// input  peripheral_clock_crossing_m1_granted_sw_pio_s1_sig
	.peripheral_clock_crossing_m1_qualified_request_DE4_SOPC_clock_1_in(peripheral_clock_crossing_m1_qualified_request_DE4_SOPC_clock_1_in_sig) ,	// input  peripheral_clock_crossing_m1_qualified_request_DE4_SOPC_clock_1_in_sig
	.peripheral_clock_crossing_m1_qualified_request_DE4_SOPC_clock_2_in(peripheral_clock_crossing_m1_qualified_request_DE4_SOPC_clock_2_in_sig) ,	// input  peripheral_clock_crossing_m1_qualified_request_DE4_SOPC_clock_2_in_sig
	.peripheral_clock_crossing_m1_qualified_request_DE4_SOPC_clock_3_in(peripheral_clock_crossing_m1_qualified_request_DE4_SOPC_clock_3_in_sig) ,	// input  peripheral_clock_crossing_m1_qualified_request_DE4_SOPC_clock_3_in_sig
	.peripheral_clock_crossing_m1_qualified_request_led_pio_s1(peripheral_clock_crossing_m1_qualified_request_led_pio_s1_sig) ,	// input  peripheral_clock_crossing_m1_qualified_request_led_pio_s1_sig
	.peripheral_clock_crossing_m1_qualified_request_pb_pio_s1(peripheral_clock_crossing_m1_qualified_request_pb_pio_s1_sig) ,	// input  peripheral_clock_crossing_m1_qualified_request_pb_pio_s1_sig
	.peripheral_clock_crossing_m1_qualified_request_seven_seg_pio_s1(peripheral_clock_crossing_m1_qualified_request_seven_seg_pio_s1_sig) ,	// input  peripheral_clock_crossing_m1_qualified_request_seven_seg_pio_s1_sig
	.peripheral_clock_crossing_m1_qualified_request_sw_pio_s1(peripheral_clock_crossing_m1_qualified_request_sw_pio_s1_sig) ,	// input  peripheral_clock_crossing_m1_qualified_request_sw_pio_s1_sig
	.peripheral_clock_crossing_m1_read(peripheral_clock_crossing_m1_read_sig) ,	// input  peripheral_clock_crossing_m1_read_sig
	.peripheral_clock_crossing_m1_read_data_valid_DE4_SOPC_clock_1_in(peripheral_clock_crossing_m1_read_data_valid_DE4_SOPC_clock_1_in_sig) ,	// input  peripheral_clock_crossing_m1_read_data_valid_DE4_SOPC_clock_1_in_sig
	.peripheral_clock_crossing_m1_read_data_valid_DE4_SOPC_clock_2_in(peripheral_clock_crossing_m1_read_data_valid_DE4_SOPC_clock_2_in_sig) ,	// input  peripheral_clock_crossing_m1_read_data_valid_DE4_SOPC_clock_2_in_sig
	.peripheral_clock_crossing_m1_read_data_valid_DE4_SOPC_clock_3_in(peripheral_clock_crossing_m1_read_data_valid_DE4_SOPC_clock_3_in_sig) ,	// input  peripheral_clock_crossing_m1_read_data_valid_DE4_SOPC_clock_3_in_sig
	.peripheral_clock_crossing_m1_read_data_valid_led_pio_s1(peripheral_clock_crossing_m1_read_data_valid_led_pio_s1_sig) ,	// input  peripheral_clock_crossing_m1_read_data_valid_led_pio_s1_sig
	.peripheral_clock_crossing_m1_read_data_valid_pb_pio_s1(peripheral_clock_crossing_m1_read_data_valid_pb_pio_s1_sig) ,	// input  peripheral_clock_crossing_m1_read_data_valid_pb_pio_s1_sig
	.peripheral_clock_crossing_m1_read_data_valid_seven_seg_pio_s1(peripheral_clock_crossing_m1_read_data_valid_seven_seg_pio_s1_sig) ,	// input  peripheral_clock_crossing_m1_read_data_valid_seven_seg_pio_s1_sig
	.peripheral_clock_crossing_m1_read_data_valid_sw_pio_s1(peripheral_clock_crossing_m1_read_data_valid_sw_pio_s1_sig) ,	// input  peripheral_clock_crossing_m1_read_data_valid_sw_pio_s1_sig
	.peripheral_clock_crossing_m1_requests_DE4_SOPC_clock_1_in(peripheral_clock_crossing_m1_requests_DE4_SOPC_clock_1_in_sig) ,	// input  peripheral_clock_crossing_m1_requests_DE4_SOPC_clock_1_in_sig
	.peripheral_clock_crossing_m1_requests_DE4_SOPC_clock_2_in(peripheral_clock_crossing_m1_requests_DE4_SOPC_clock_2_in_sig) ,	// input  peripheral_clock_crossing_m1_requests_DE4_SOPC_clock_2_in_sig
	.peripheral_clock_crossing_m1_requests_DE4_SOPC_clock_3_in(peripheral_clock_crossing_m1_requests_DE4_SOPC_clock_3_in_sig) ,	// input  peripheral_clock_crossing_m1_requests_DE4_SOPC_clock_3_in_sig
	.peripheral_clock_crossing_m1_requests_led_pio_s1(peripheral_clock_crossing_m1_requests_led_pio_s1_sig) ,	// input  peripheral_clock_crossing_m1_requests_led_pio_s1_sig
	.peripheral_clock_crossing_m1_requests_pb_pio_s1(peripheral_clock_crossing_m1_requests_pb_pio_s1_sig) ,	// input  peripheral_clock_crossing_m1_requests_pb_pio_s1_sig
	.peripheral_clock_crossing_m1_requests_seven_seg_pio_s1(peripheral_clock_crossing_m1_requests_seven_seg_pio_s1_sig) ,	// input  peripheral_clock_crossing_m1_requests_seven_seg_pio_s1_sig
	.peripheral_clock_crossing_m1_requests_sw_pio_s1(peripheral_clock_crossing_m1_requests_sw_pio_s1_sig) ,	// input  peripheral_clock_crossing_m1_requests_sw_pio_s1_sig
	.peripheral_clock_crossing_m1_write(peripheral_clock_crossing_m1_write_sig) ,	// input  peripheral_clock_crossing_m1_write_sig
	.peripheral_clock_crossing_m1_writedata(peripheral_clock_crossing_m1_writedata_sig) ,	// input [31:0] peripheral_clock_crossing_m1_writedata_sig
	.reset_n(reset_n_sig) ,	// input  reset_n_sig
	.seven_seg_pio_s1_readdata_from_sa(seven_seg_pio_s1_readdata_from_sa_sig) ,	// input [15:0] seven_seg_pio_s1_readdata_from_sa_sig
	.sw_pio_s1_readdata_from_sa(sw_pio_s1_readdata_from_sa_sig) ,	// input [7:0] sw_pio_s1_readdata_from_sa_sig
	.peripheral_clock_crossing_m1_address_to_slave(peripheral_clock_crossing_m1_address_to_slave_sig) ,	// output [6:0] peripheral_clock_crossing_m1_address_to_slave_sig
	.peripheral_clock_crossing_m1_endofpacket(peripheral_clock_crossing_m1_endofpacket_sig) ,	// output  peripheral_clock_crossing_m1_endofpacket_sig
	.peripheral_clock_crossing_m1_latency_counter(peripheral_clock_crossing_m1_latency_counter_sig) ,	// output  peripheral_clock_crossing_m1_latency_counter_sig
	.peripheral_clock_crossing_m1_readdata(peripheral_clock_crossing_m1_readdata_sig) ,	// output [31:0] peripheral_clock_crossing_m1_readdata_sig
	.peripheral_clock_crossing_m1_readdatavalid(peripheral_clock_crossing_m1_readdatavalid_sig) ,	// output  peripheral_clock_crossing_m1_readdatavalid_sig
	.peripheral_clock_crossing_m1_reset_n(peripheral_clock_crossing_m1_reset_n_sig) ,	// output  peripheral_clock_crossing_m1_reset_n_sig
	.peripheral_clock_crossing_m1_waitrequest(peripheral_clock_crossing_m1_waitrequest_sig) 	// output  peripheral_clock_crossing_m1_waitrequest_sig
);
