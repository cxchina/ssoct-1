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

cpu_data_master_arbitrator cpu_data_master_arbitrator_inst
(
	.DE4_SOPC_clock_0_in_readdata_from_sa(DE4_SOPC_clock_0_in_readdata_from_sa_sig) ,	// input [15:0] DE4_SOPC_clock_0_in_readdata_from_sa_sig
	.DE4_SOPC_clock_0_in_waitrequest_from_sa(DE4_SOPC_clock_0_in_waitrequest_from_sa_sig) ,	// input  DE4_SOPC_clock_0_in_waitrequest_from_sa_sig
	.DE4_SOPC_clock_1_in_readdata_from_sa(DE4_SOPC_clock_1_in_readdata_from_sa_sig) ,	// input [31:0] DE4_SOPC_clock_1_in_readdata_from_sa_sig
	.DE4_SOPC_clock_1_in_waitrequest_from_sa(DE4_SOPC_clock_1_in_waitrequest_from_sa_sig) ,	// input  DE4_SOPC_clock_1_in_waitrequest_from_sa_sig
	.DE4_SOPC_clock_2_in_readdata_from_sa(DE4_SOPC_clock_2_in_readdata_from_sa_sig) ,	// input [31:0] DE4_SOPC_clock_2_in_readdata_from_sa_sig
	.DE4_SOPC_clock_2_in_waitrequest_from_sa(DE4_SOPC_clock_2_in_waitrequest_from_sa_sig) ,	// input  DE4_SOPC_clock_2_in_waitrequest_from_sa_sig
	.clk(clk_sig) ,	// input  clk_sig
	.cpu_data_master_address(cpu_data_master_address_sig) ,	// input [30:0] cpu_data_master_address_sig
	.cpu_data_master_byteenable(cpu_data_master_byteenable_sig) ,	// input [3:0] cpu_data_master_byteenable_sig
	.cpu_data_master_byteenable_ext_flash_s1(cpu_data_master_byteenable_ext_flash_s1_sig) ,	// input [1:0] cpu_data_master_byteenable_ext_flash_s1_sig
	.cpu_data_master_granted_DE4_SOPC_clock_0_in(cpu_data_master_granted_DE4_SOPC_clock_0_in_sig) ,	// input  cpu_data_master_granted_DE4_SOPC_clock_0_in_sig
	.cpu_data_master_granted_DE4_SOPC_clock_1_in(cpu_data_master_granted_DE4_SOPC_clock_1_in_sig) ,	// input  cpu_data_master_granted_DE4_SOPC_clock_1_in_sig
	.cpu_data_master_granted_DE4_SOPC_clock_2_in(cpu_data_master_granted_DE4_SOPC_clock_2_in_sig) ,	// input  cpu_data_master_granted_DE4_SOPC_clock_2_in_sig
	.cpu_data_master_granted_cpu_jtag_debug_module(cpu_data_master_granted_cpu_jtag_debug_module_sig) ,	// input  cpu_data_master_granted_cpu_jtag_debug_module_sig
	.cpu_data_master_granted_descriptor_memory_s1(cpu_data_master_granted_descriptor_memory_s1_sig) ,	// input  cpu_data_master_granted_descriptor_memory_s1_sig
	.cpu_data_master_granted_ext_flash_s1(cpu_data_master_granted_ext_flash_s1_sig) ,	// input  cpu_data_master_granted_ext_flash_s1_sig
	.cpu_data_master_granted_high_res_timer_s1(cpu_data_master_granted_high_res_timer_s1_sig) ,	// input  cpu_data_master_granted_high_res_timer_s1_sig
	.cpu_data_master_granted_onchip_memory_s1(cpu_data_master_granted_onchip_memory_s1_sig) ,	// input  cpu_data_master_granted_onchip_memory_s1_sig
	.cpu_data_master_granted_sgdma_rx_csr(cpu_data_master_granted_sgdma_rx_csr_sig) ,	// input  cpu_data_master_granted_sgdma_rx_csr_sig
	.cpu_data_master_granted_sgdma_tx_csr(cpu_data_master_granted_sgdma_tx_csr_sig) ,	// input  cpu_data_master_granted_sgdma_tx_csr_sig
	.cpu_data_master_granted_sys_timer_s1(cpu_data_master_granted_sys_timer_s1_sig) ,	// input  cpu_data_master_granted_sys_timer_s1_sig
	.cpu_data_master_granted_sysid_control_slave(cpu_data_master_granted_sysid_control_slave_sig) ,	// input  cpu_data_master_granted_sysid_control_slave_sig
	.cpu_data_master_granted_tse_mac_control_port(cpu_data_master_granted_tse_mac_control_port_sig) ,	// input  cpu_data_master_granted_tse_mac_control_port_sig
	.cpu_data_master_qualified_request_DE4_SOPC_clock_0_in(cpu_data_master_qualified_request_DE4_SOPC_clock_0_in_sig) ,	// input  cpu_data_master_qualified_request_DE4_SOPC_clock_0_in_sig
	.cpu_data_master_qualified_request_DE4_SOPC_clock_1_in(cpu_data_master_qualified_request_DE4_SOPC_clock_1_in_sig) ,	// input  cpu_data_master_qualified_request_DE4_SOPC_clock_1_in_sig
	.cpu_data_master_qualified_request_DE4_SOPC_clock_2_in(cpu_data_master_qualified_request_DE4_SOPC_clock_2_in_sig) ,	// input  cpu_data_master_qualified_request_DE4_SOPC_clock_2_in_sig
	.cpu_data_master_qualified_request_cpu_jtag_debug_module(cpu_data_master_qualified_request_cpu_jtag_debug_module_sig) ,	// input  cpu_data_master_qualified_request_cpu_jtag_debug_module_sig
	.cpu_data_master_qualified_request_descriptor_memory_s1(cpu_data_master_qualified_request_descriptor_memory_s1_sig) ,	// input  cpu_data_master_qualified_request_descriptor_memory_s1_sig
	.cpu_data_master_qualified_request_ext_flash_s1(cpu_data_master_qualified_request_ext_flash_s1_sig) ,	// input  cpu_data_master_qualified_request_ext_flash_s1_sig
	.cpu_data_master_qualified_request_high_res_timer_s1(cpu_data_master_qualified_request_high_res_timer_s1_sig) ,	// input  cpu_data_master_qualified_request_high_res_timer_s1_sig
	.cpu_data_master_qualified_request_onchip_memory_s1(cpu_data_master_qualified_request_onchip_memory_s1_sig) ,	// input  cpu_data_master_qualified_request_onchip_memory_s1_sig
	.cpu_data_master_qualified_request_sgdma_rx_csr(cpu_data_master_qualified_request_sgdma_rx_csr_sig) ,	// input  cpu_data_master_qualified_request_sgdma_rx_csr_sig
	.cpu_data_master_qualified_request_sgdma_tx_csr(cpu_data_master_qualified_request_sgdma_tx_csr_sig) ,	// input  cpu_data_master_qualified_request_sgdma_tx_csr_sig
	.cpu_data_master_qualified_request_sys_timer_s1(cpu_data_master_qualified_request_sys_timer_s1_sig) ,	// input  cpu_data_master_qualified_request_sys_timer_s1_sig
	.cpu_data_master_qualified_request_sysid_control_slave(cpu_data_master_qualified_request_sysid_control_slave_sig) ,	// input  cpu_data_master_qualified_request_sysid_control_slave_sig
	.cpu_data_master_qualified_request_tse_mac_control_port(cpu_data_master_qualified_request_tse_mac_control_port_sig) ,	// input  cpu_data_master_qualified_request_tse_mac_control_port_sig
	.cpu_data_master_read(cpu_data_master_read_sig) ,	// input  cpu_data_master_read_sig
	.cpu_data_master_read_data_valid_DE4_SOPC_clock_0_in(cpu_data_master_read_data_valid_DE4_SOPC_clock_0_in_sig) ,	// input  cpu_data_master_read_data_valid_DE4_SOPC_clock_0_in_sig
	.cpu_data_master_read_data_valid_DE4_SOPC_clock_1_in(cpu_data_master_read_data_valid_DE4_SOPC_clock_1_in_sig) ,	// input  cpu_data_master_read_data_valid_DE4_SOPC_clock_1_in_sig
	.cpu_data_master_read_data_valid_DE4_SOPC_clock_2_in(cpu_data_master_read_data_valid_DE4_SOPC_clock_2_in_sig) ,	// input  cpu_data_master_read_data_valid_DE4_SOPC_clock_2_in_sig
	.cpu_data_master_read_data_valid_cpu_jtag_debug_module(cpu_data_master_read_data_valid_cpu_jtag_debug_module_sig) ,	// input  cpu_data_master_read_data_valid_cpu_jtag_debug_module_sig
	.cpu_data_master_read_data_valid_descriptor_memory_s1(cpu_data_master_read_data_valid_descriptor_memory_s1_sig) ,	// input  cpu_data_master_read_data_valid_descriptor_memory_s1_sig
	.cpu_data_master_read_data_valid_ext_flash_s1(cpu_data_master_read_data_valid_ext_flash_s1_sig) ,	// input  cpu_data_master_read_data_valid_ext_flash_s1_sig
	.cpu_data_master_read_data_valid_high_res_timer_s1(cpu_data_master_read_data_valid_high_res_timer_s1_sig) ,	// input  cpu_data_master_read_data_valid_high_res_timer_s1_sig
	.cpu_data_master_read_data_valid_onchip_memory_s1(cpu_data_master_read_data_valid_onchip_memory_s1_sig) ,	// input  cpu_data_master_read_data_valid_onchip_memory_s1_sig
	.cpu_data_master_read_data_valid_sgdma_rx_csr(cpu_data_master_read_data_valid_sgdma_rx_csr_sig) ,	// input  cpu_data_master_read_data_valid_sgdma_rx_csr_sig
	.cpu_data_master_read_data_valid_sgdma_tx_csr(cpu_data_master_read_data_valid_sgdma_tx_csr_sig) ,	// input  cpu_data_master_read_data_valid_sgdma_tx_csr_sig
	.cpu_data_master_read_data_valid_sys_timer_s1(cpu_data_master_read_data_valid_sys_timer_s1_sig) ,	// input  cpu_data_master_read_data_valid_sys_timer_s1_sig
	.cpu_data_master_read_data_valid_sysid_control_slave(cpu_data_master_read_data_valid_sysid_control_slave_sig) ,	// input  cpu_data_master_read_data_valid_sysid_control_slave_sig
	.cpu_data_master_read_data_valid_tse_mac_control_port(cpu_data_master_read_data_valid_tse_mac_control_port_sig) ,	// input  cpu_data_master_read_data_valid_tse_mac_control_port_sig
	.cpu_data_master_requests_DE4_SOPC_clock_0_in(cpu_data_master_requests_DE4_SOPC_clock_0_in_sig) ,	// input  cpu_data_master_requests_DE4_SOPC_clock_0_in_sig
	.cpu_data_master_requests_DE4_SOPC_clock_1_in(cpu_data_master_requests_DE4_SOPC_clock_1_in_sig) ,	// input  cpu_data_master_requests_DE4_SOPC_clock_1_in_sig
	.cpu_data_master_requests_DE4_SOPC_clock_2_in(cpu_data_master_requests_DE4_SOPC_clock_2_in_sig) ,	// input  cpu_data_master_requests_DE4_SOPC_clock_2_in_sig
	.cpu_data_master_requests_cpu_jtag_debug_module(cpu_data_master_requests_cpu_jtag_debug_module_sig) ,	// input  cpu_data_master_requests_cpu_jtag_debug_module_sig
	.cpu_data_master_requests_descriptor_memory_s1(cpu_data_master_requests_descriptor_memory_s1_sig) ,	// input  cpu_data_master_requests_descriptor_memory_s1_sig
	.cpu_data_master_requests_ext_flash_s1(cpu_data_master_requests_ext_flash_s1_sig) ,	// input  cpu_data_master_requests_ext_flash_s1_sig
	.cpu_data_master_requests_high_res_timer_s1(cpu_data_master_requests_high_res_timer_s1_sig) ,	// input  cpu_data_master_requests_high_res_timer_s1_sig
	.cpu_data_master_requests_onchip_memory_s1(cpu_data_master_requests_onchip_memory_s1_sig) ,	// input  cpu_data_master_requests_onchip_memory_s1_sig
	.cpu_data_master_requests_sgdma_rx_csr(cpu_data_master_requests_sgdma_rx_csr_sig) ,	// input  cpu_data_master_requests_sgdma_rx_csr_sig
	.cpu_data_master_requests_sgdma_tx_csr(cpu_data_master_requests_sgdma_tx_csr_sig) ,	// input  cpu_data_master_requests_sgdma_tx_csr_sig
	.cpu_data_master_requests_sys_timer_s1(cpu_data_master_requests_sys_timer_s1_sig) ,	// input  cpu_data_master_requests_sys_timer_s1_sig
	.cpu_data_master_requests_sysid_control_slave(cpu_data_master_requests_sysid_control_slave_sig) ,	// input  cpu_data_master_requests_sysid_control_slave_sig
	.cpu_data_master_requests_tse_mac_control_port(cpu_data_master_requests_tse_mac_control_port_sig) ,	// input  cpu_data_master_requests_tse_mac_control_port_sig
	.cpu_data_master_write(cpu_data_master_write_sig) ,	// input  cpu_data_master_write_sig
	.cpu_data_master_writedata(cpu_data_master_writedata_sig) ,	// input [31:0] cpu_data_master_writedata_sig
	.cpu_jtag_debug_module_readdata_from_sa(cpu_jtag_debug_module_readdata_from_sa_sig) ,	// input [31:0] cpu_jtag_debug_module_readdata_from_sa_sig
	.d1_DE4_SOPC_clock_0_in_end_xfer(d1_DE4_SOPC_clock_0_in_end_xfer_sig) ,	// input  d1_DE4_SOPC_clock_0_in_end_xfer_sig
	.d1_DE4_SOPC_clock_1_in_end_xfer(d1_DE4_SOPC_clock_1_in_end_xfer_sig) ,	// input  d1_DE4_SOPC_clock_1_in_end_xfer_sig
	.d1_DE4_SOPC_clock_2_in_end_xfer(d1_DE4_SOPC_clock_2_in_end_xfer_sig) ,	// input  d1_DE4_SOPC_clock_2_in_end_xfer_sig
	.d1_cpu_jtag_debug_module_end_xfer(d1_cpu_jtag_debug_module_end_xfer_sig) ,	// input  d1_cpu_jtag_debug_module_end_xfer_sig
	.d1_descriptor_memory_s1_end_xfer(d1_descriptor_memory_s1_end_xfer_sig) ,	// input  d1_descriptor_memory_s1_end_xfer_sig
	.d1_flash_tristate_bridge_avalon_slave_end_xfer(d1_flash_tristate_bridge_avalon_slave_end_xfer_sig) ,	// input  d1_flash_tristate_bridge_avalon_slave_end_xfer_sig
	.d1_high_res_timer_s1_end_xfer(d1_high_res_timer_s1_end_xfer_sig) ,	// input  d1_high_res_timer_s1_end_xfer_sig
	.d1_onchip_memory_s1_end_xfer(d1_onchip_memory_s1_end_xfer_sig) ,	// input  d1_onchip_memory_s1_end_xfer_sig
	.d1_sgdma_rx_csr_end_xfer(d1_sgdma_rx_csr_end_xfer_sig) ,	// input  d1_sgdma_rx_csr_end_xfer_sig
	.d1_sgdma_tx_csr_end_xfer(d1_sgdma_tx_csr_end_xfer_sig) ,	// input  d1_sgdma_tx_csr_end_xfer_sig
	.d1_sys_timer_s1_end_xfer(d1_sys_timer_s1_end_xfer_sig) ,	// input  d1_sys_timer_s1_end_xfer_sig
	.d1_sysid_control_slave_end_xfer(d1_sysid_control_slave_end_xfer_sig) ,	// input  d1_sysid_control_slave_end_xfer_sig
	.d1_tse_mac_control_port_end_xfer(d1_tse_mac_control_port_end_xfer_sig) ,	// input  d1_tse_mac_control_port_end_xfer_sig
	.descriptor_memory_s1_readdata_from_sa(descriptor_memory_s1_readdata_from_sa_sig) ,	// input [31:0] descriptor_memory_s1_readdata_from_sa_sig
	.ext_flash_s1_wait_counter_eq_0(ext_flash_s1_wait_counter_eq_0_sig) ,	// input  ext_flash_s1_wait_counter_eq_0_sig
	.high_res_timer_s1_irq_from_sa(high_res_timer_s1_irq_from_sa_sig) ,	// input  high_res_timer_s1_irq_from_sa_sig
	.high_res_timer_s1_readdata_from_sa(high_res_timer_s1_readdata_from_sa_sig) ,	// input [15:0] high_res_timer_s1_readdata_from_sa_sig
	.incoming_flash_tristate_bridge_data_with_Xs_converted_to_0(incoming_flash_tristate_bridge_data_with_Xs_converted_to_0_sig) ,	// input [15:0] incoming_flash_tristate_bridge_data_with_Xs_converted_to_0_sig
	.jtag_uart_avalon_jtag_slave_irq_from_sa(jtag_uart_avalon_jtag_slave_irq_from_sa_sig) ,	// input  jtag_uart_avalon_jtag_slave_irq_from_sa_sig
	.onchip_memory_s1_readdata_from_sa(onchip_memory_s1_readdata_from_sa_sig) ,	// input [31:0] onchip_memory_s1_readdata_from_sa_sig
	.pll_sys_clk(pll_sys_clk_sig) ,	// input  pll_sys_clk_sig
	.pll_sys_clk_reset_n(pll_sys_clk_reset_n_sig) ,	// input  pll_sys_clk_reset_n_sig
	.reset_n(reset_n_sig) ,	// input  reset_n_sig
	.sgdma_rx_csr_irq_from_sa(sgdma_rx_csr_irq_from_sa_sig) ,	// input  sgdma_rx_csr_irq_from_sa_sig
	.sgdma_rx_csr_readdata_from_sa(sgdma_rx_csr_readdata_from_sa_sig) ,	// input [31:0] sgdma_rx_csr_readdata_from_sa_sig
	.sgdma_tx_csr_irq_from_sa(sgdma_tx_csr_irq_from_sa_sig) ,	// input  sgdma_tx_csr_irq_from_sa_sig
	.sgdma_tx_csr_readdata_from_sa(sgdma_tx_csr_readdata_from_sa_sig) ,	// input [31:0] sgdma_tx_csr_readdata_from_sa_sig
	.sys_timer_s1_irq_from_sa(sys_timer_s1_irq_from_sa_sig) ,	// input  sys_timer_s1_irq_from_sa_sig
	.sys_timer_s1_readdata_from_sa(sys_timer_s1_readdata_from_sa_sig) ,	// input [15:0] sys_timer_s1_readdata_from_sa_sig
	.sysid_control_slave_readdata_from_sa(sysid_control_slave_readdata_from_sa_sig) ,	// input [31:0] sysid_control_slave_readdata_from_sa_sig
	.tse_mac_control_port_readdata_from_sa(tse_mac_control_port_readdata_from_sa_sig) ,	// input [31:0] tse_mac_control_port_readdata_from_sa_sig
	.tse_mac_control_port_waitrequest_from_sa(tse_mac_control_port_waitrequest_from_sa_sig) ,	// input  tse_mac_control_port_waitrequest_from_sa_sig
	.cpu_data_master_address_to_slave(cpu_data_master_address_to_slave_sig) ,	// output [30:0] cpu_data_master_address_to_slave_sig
	.cpu_data_master_dbs_address(cpu_data_master_dbs_address_sig) ,	// output [1:0] cpu_data_master_dbs_address_sig
	.cpu_data_master_dbs_write_16(cpu_data_master_dbs_write_16_sig) ,	// output [15:0] cpu_data_master_dbs_write_16_sig
	.cpu_data_master_irq(cpu_data_master_irq_sig) ,	// output [31:0] cpu_data_master_irq_sig
	.cpu_data_master_latency_counter(cpu_data_master_latency_counter_sig) ,	// output [1:0] cpu_data_master_latency_counter_sig
	.cpu_data_master_readdata(cpu_data_master_readdata_sig) ,	// output [31:0] cpu_data_master_readdata_sig
	.cpu_data_master_readdatavalid(cpu_data_master_readdatavalid_sig) ,	// output  cpu_data_master_readdatavalid_sig
	.cpu_data_master_waitrequest(cpu_data_master_waitrequest_sig) 	// output  cpu_data_master_waitrequest_sig
);

