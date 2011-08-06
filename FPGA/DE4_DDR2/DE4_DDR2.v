// ============================================================================
//  This code is generated by Terasic System Builder
// ============================================================================

module DE4_DDR2(

	//////////// CLOCK //////////
	GCLKIN,
	GCLKOUT_FPGA,
	OSC_50_BANK2,
	OSC_50_BANK3,
	OSC_50_BANK4,
	OSC_50_BANK5,
	OSC_50_BANK6,
	OSC_50_BANK7,
	PLL_CLKIN_p,

	//////////// External PLL //////////
	MAX_I2C_SCLK,
	MAX_I2C_SDAT,

	//////////// LED x 8 //////////
	LED,

	//////////// BUTTON x 4, EXT_IO and CPU_RESET_n //////////
	BUTTON,
	CPU_RESET_n,
	EXT_IO,

	//////////// DIP SWITCH x 8 //////////
	SW,

	//////////// SLIDE SWITCH x 4 //////////
	SLIDE_SW,

	//////////// SEG7 //////////
	SEG0_D,
	SEG0_DP,
	SEG1_D,
	SEG1_DP,

	//////////// Temperature //////////
	TEMP_INT_n,
	TEMP_SMCLK,
	TEMP_SMDAT,

	//////////// Current //////////
	CSENSE_ADC_FO,
	CSENSE_CS_n,
	CSENSE_SCK,
	CSENSE_SDI,
	CSENSE_SDO,

	//////////// Fan //////////
	FAN_CTRL,

	//////////// EEPROM //////////
	EEP_SCL,
	EEP_SDA,

	//////////// SDCARD //////////
	SD_CLK,
	SD_CMD,
	SD_DAT,
	SD_WP_n,

	//////////// RS232 //////////
	UART_CTS,
	UART_RTS,
	UART_RXD,
	UART_TXD,

	//////////// Ethernet x 4 //////////
	ETH_INT_n,
	ETH_MDC,
	ETH_MDIO,
	ETH_RST_n,
	ETH_RX_p,
	ETH_TX_p,

	//////////// Flash and SRAM Address/Data Share Bus //////////
	FSM_A,
	FSM_D,

	//////////// Flash Control //////////
	FLASH_ADV_n,
	FLASH_CE_n,
	FLASH_CLK,
	FLASH_OE_n,
	FLASH_RESET_n,
	FLASH_RYBY_n,
	FLASH_WE_n,

	//////////// SSRAM Control //////////
	SSRAM_ADV,
	SSRAM_BWA_n,
	SSRAM_BWB_n,
	SSRAM_CE_n,
	SSRAM_CKE_n,
	SSRAM_CLK,
	SSRAM_OE_n,
	SSRAM_WE_n,

	//////////// 3-Ports High-Speed USB OTG //////////
	OTG_A,
	OTG_CS_n,
	OTG_D,
	OTG_DC_DACK,
	OTG_DC_DREQ,
	OTG_DC_IRQ,
	OTG_HC_DACK,
	OTG_HC_DREQ,
	OTG_HC_IRQ,
	OTG_OE_n,
	OTG_RESET_n,
	OTG_WE_n,
	
	//////////// GPIO_0, GPIO_0 connect to GPIO Default //////////
	GPIO,

	//////////// HSMC-B, HSMC-B connect to None //////////
	AD_SCLK,
	AD_SDIO,
	ADA_D,
	ADA_DCO,
	ADA_OE,
	ADA_OR,
	ADA_SPI_CS,
	ADB_D,
	ADB_DCO,
	ADB_OE,
	ADB_OR,
	ADB_SPI_CS,
	AIC_BCLK,
	AIC_DIN,
	AIC_DOUT,
	AIC_LRCIN,
	AIC_LRCOUT,
	AIC_SPI_CS,
	AIC_XCLK,
	CLKIN1,
	CLKOUT0,
	DA,
	DB,
	FPGA_CLK_A_N,
	FPGA_CLK_A_P,
	FPGA_CLK_B_N,
	FPGA_CLK_B_P,
	J1_152,
	XT_IN_N,
	XT_IN_P,

	//////////// HSMC I2C //////////
	HSMC_SCL,
	HSMC_SDA, 
	
	//////// DDR2 SODIMM //////////
	M1_DDR2_addr,
	M1_DDR2_ba,
	M1_DDR2_cas_n,
	M1_DDR2_cke,
	M1_DDR2_clk,
	M1_DDR2_clk_n,
	M1_DDR2_cs_n,
	M1_DDR2_dm,
	M1_DDR2_dq,
	M1_DDR2_dqs,
	M1_DDR2_dqsn,
	M1_DDR2_odt,
	M1_DDR2_ras_n,
	M1_DDR2_SA,
	M1_DDR2_SCL,
	M1_DDR2_SDA,
	M1_DDR2_we_n

);

// ============================================================================
//  PARAMETER declarations
// ============================================================================


// ============================================================================
//  PORT declarations
// ============================================================================

//////////// CLOCK //////////
input		          		GCLKIN;
output		          		GCLKOUT_FPGA;
input		          		OSC_50_BANK2;
input		          		OSC_50_BANK3;
input		          		OSC_50_BANK4;
input		          		OSC_50_BANK5;
input		          		OSC_50_BANK6;
input		          		OSC_50_BANK7;
input		          		PLL_CLKIN_p;

//////////// External PLL //////////
output		          		MAX_I2C_SCLK;
inout		          		MAX_I2C_SDAT;

//////////// LED x 8 //////////
output		     [7:0]		LED;

//////////// BUTTON x 4, EXT_IO and CPU_RESET_n //////////
input		     [3:0]		BUTTON;
input		          		CPU_RESET_n;
inout		          		EXT_IO;

//////////// DIP SWITCH x 8 //////////
input		     [7:0]		SW;

//////////// SLIDE SWITCH x 4 //////////
input		     [3:0]		SLIDE_SW;

//////////// SEG7 //////////
output		     [6:0]		SEG0_D;
output		          		SEG0_DP;
output		     [6:0]		SEG1_D;
output		          		SEG1_DP;

//////////// Temperature //////////
input		          		TEMP_INT_n;
output		          		TEMP_SMCLK;
inout		          		TEMP_SMDAT;

//////////// Current //////////
output		          		CSENSE_ADC_FO;
output		     [1:0]		CSENSE_CS_n;
output		          		CSENSE_SCK;
output		          		CSENSE_SDI;
input		          		CSENSE_SDO;

//////////// Fan //////////
output		          		FAN_CTRL;

//////////// EEPROM //////////
output		          		EEP_SCL;
inout		          		EEP_SDA;

//////////// SDCARD //////////
output		          		SD_CLK;
inout		          		SD_CMD;
inout		     [3:0]		SD_DAT;
input		          		SD_WP_n;

//////////// RS232 //////////
output		          		UART_CTS;
input		          		UART_RTS;
input		          		UART_RXD;
output		          		UART_TXD;

//////////// Flash and SRAM Address/Data Share Bus //////////
output		    [25:1]		FSM_A;
inout		    [15:0]		FSM_D;

//////////// Flash Control //////////
output		          		FLASH_ADV_n;
output		          		FLASH_CE_n;
output		          		FLASH_CLK;
output		          		FLASH_OE_n;
output		          		FLASH_RESET_n;
input		          		FLASH_RYBY_n;
output		          		FLASH_WE_n;

//////////// SSRAM Control //////////
output		          		SSRAM_ADV;
output		          		SSRAM_BWA_n;
output		          		SSRAM_BWB_n;
output		          		SSRAM_CE_n;
output		          		SSRAM_CKE_n;
output		          		SSRAM_CLK;
output		          		SSRAM_OE_n;
output		          		SSRAM_WE_n;

//////////// 3-Ports High-Speed USB OTG //////////
output		    [17:1]		OTG_A;
output		          		OTG_CS_n;
inout		    [31:0]		OTG_D;
output		          		OTG_DC_DACK;
input		          		OTG_DC_DREQ;
input		          		OTG_DC_IRQ;
output		          		OTG_HC_DACK;
input		          		OTG_HC_DREQ;
input		          		OTG_HC_IRQ;
output		          		OTG_OE_n;
output		          		OTG_RESET_n;
output		          		OTG_WE_n;

//////////// Ethernet x 4 //////////
input		     [3:0]		ETH_INT_n;
output		     [3:0]		ETH_MDC;
inout		     [3:0]		ETH_MDIO;
output		          		ETH_RST_n;
// Using Ethernet port 0
input		     [0:0]		ETH_RX_p;
output		     [0:0]		ETH_TX_p;

//////////// DDR2 SODIMM //////////
output		    [15:0]		M1_DDR2_addr;
output		     [2:0]		M1_DDR2_ba;
output		          		M1_DDR2_cas_n;
output		     [1:0]		M1_DDR2_cke;
inout		     [1:0]		M1_DDR2_clk;
inout		     [1:0]		M1_DDR2_clk_n;
output		     [1:0]		M1_DDR2_cs_n;
output		     [7:0]		M1_DDR2_dm;
inout		    [63:0]		M1_DDR2_dq;
inout		     [7:0]		M1_DDR2_dqs;
inout		     [7:0]		M1_DDR2_dqsn;
output		     [1:0]		M1_DDR2_odt;
output		          		M1_DDR2_ras_n;
output		     [1:0]		M1_DDR2_SA;
output		          		M1_DDR2_SCL;
inout		          		M1_DDR2_SDA;
output		          		M1_DDR2_we_n;

//////////// GPIO_0, GPIO_0 connect to GPIO Default //////////
inout		    [35:0]		GPIO;

//////////// HSMC-B, HSMC-B connect to DCC //////////
inout		          		AD_SCLK;
inout		          		AD_SDIO;
input		    [13:0]		ADA_D;
input		          		ADA_DCO;
output		          		ADA_OE;
input		          		ADA_OR;
output		          		ADA_SPI_CS;
input		    [13:0]		ADB_D;
input		          		ADB_DCO;
output		          		ADB_OE;
input		          		ADB_OR;
output		          		ADB_SPI_CS;
inout		          		AIC_BCLK;
output		          		AIC_DIN;
input		          		AIC_DOUT;
inout		          		AIC_LRCIN;
inout		          		AIC_LRCOUT;
output		          		AIC_SPI_CS;
output		          		AIC_XCLK;
input		          		CLKIN1;
output		          		CLKOUT0;
output		    [13:0]		DA;
output		    [13:0]		DB;
inout		          		FPGA_CLK_A_N;
inout		          		FPGA_CLK_A_P;
inout		          		FPGA_CLK_B_N;
inout		          		FPGA_CLK_B_P;
inout		          		J1_152;
input		          		XT_IN_N;
input		          		XT_IN_P;

//////////// HSMC I2C //////////
output		          		HSMC_SCL;
inout		          		HSMC_SDA;

// ============================================================================
//  External PLL Configuration 
// ============================================================================

//  Signal declarations
wire [ 3: 0] clk1_set_wr, clk2_set_wr, clk3_set_wr;
wire         conf_ready;
wire         counter_max;
wire  [7:0]  counter_inc;
reg   [7:0]  auto_set_counter;
reg          conf_wr;

//  Structural coding
assign clk1_set_wr = 4'd0; //Unchange MHZ
assign clk2_set_wr = 4'd0; //Unchange MHZ
assign clk3_set_wr = 4'd7; //156.25 MHZ

assign counter_max = &auto_set_counter;
assign counter_inc = auto_set_counter + 1'b1;

always @(posedge clk50MHz or negedge rstn)
	if(!rstn)
	begin
		auto_set_counter <= 0;
		conf_wr <= 0;
	end 
	else if (counter_max)
		conf_wr <= 1;
	else
		auto_set_counter <= counter_inc;


ext_pll_ctrl ext_pll_ctrl_Inst(
	.osc_50(clk50MHz), //50MHZ
	.rstn(rstn),

	// device 1 (HSMA_REFCLK)
	.clk1_set_wr(clk1_set_wr),
	.clk1_set_rd(),

	// device 2 (HSMB_REFCLK)
	.clk2_set_wr(clk2_set_wr),
	.clk2_set_rd(),

	// device 3 (PLL_CLKIN/SATA_REFCLK)
	.clk3_set_wr(clk3_set_wr),
	.clk3_set_rd(),

	// setting trigger
	.conf_wr(conf_wr), // 1T 50MHz 
	.conf_rd(), // 1T 50MHz

	// status 
	.conf_ready(conf_ready),

	// 2-wire interface 
	.max_sclk(MAX_I2C_SCLK),
	.max_sdat(MAX_I2C_SDAT)

);

// ============================================================================
//  REG/WIRE declarations
// ============================================================================
wire 						rstn;							// reset
wire						clk50MHz;						// master clock
wire						global_reset_n;					// global ethernet reset
wire						sys_clk;						// System clock (156.25 MHz)
wire						enet_reset_n;					// Ethernet reset

//// Ethernet
wire						enet_mdc;
wire						enet_mdio_in;
wire						enet_mdio_oen;
wire						enet_mdio_out;
wire						enet_refclk_125MHz;

wire						lvds_rxp;
wire						lvds_txp;

//// Master template
wire						control_done_read;
reg				[31:0]		user_buffer_data_read;
wire						user_data_available;
reg				[29:0]		address_last_complete_read;
wire						control_go_read;
reg				[29:0]		control_read_base;
reg				[29:0]		control_read_length;
wire						user_read_buffer;
wire						reading_done;
reg				[31:0]		debug_read;
reg				[2:0]		error_data;
	
wire						control_done_write;
reg				[31:0]		user_buffer_data_write;
wire						user_buffer_full;
reg				[29:0]		address_last_complete_write;
wire						control_go_write;
reg				[29:0]		control_write_base;
reg				[29:0]		control_write_length;
wire						user_write_buffer;
wire						writing_done;
reg				[31:0]		debug_write;
wire						error_full;

//// Optional logic
wire		[7:0]			clk_div_out_sig;				// PWM Fan & LED control

// ============================================================================
//  Structural coding
// ============================================================================

// Global signals
assign 	rstn 				= CPU_RESET_n;
assign	clk50MHz			= OSC_50_BANK3;

//// Ethernet
assign	ETH_RST_n			= enet_reset_n;
assign	lvds_rxp			= ETH_RX_p[0];
assign	ETH_TX_p[0]			= lvds_txp;
assign	enet_mdio_in		= ETH_MDIO[0];
assign	ETH_MDIO[0]			= !enet_mdio_oen ? enet_mdio_out : 1'bz;
assign	ETH_MDC[0]			= enet_mdc;

//// FLASH and SSRAM share bus
assign	FLASH_ADV_n			= 1'b0;							// not used
assign	FLASH_CLK			= 1'b0;							// not used
assign	FLASH_RESET_n		= global_reset_n;
//// SSRAM

// ============================================================================
// Ethernet clock PLL
// ============================================================================
pll_125 pll_125_ins (
				.inclk0(clk50MHz),
				.c0(enet_refclk_125MHz)
				);

gen_reset_n	system_gen_reset_n (
				.tx_clk(clk50MHz),
				.reset_n_in(rstn),
				.reset_n_out(global_reset_n)
				);

gen_reset_n	net_gen_reset_n(
				.tx_clk(clk50MHz),
				.reset_n_in(global_reset_n),
				.reset_n_out(enet_reset_n)
				);

///////////////////////////////////////////////////////////////////////////////
// assign for ADC control signal
assign	AD_SCLK				= 1'b0;							// (DFS)Data Format Select = binary (0)
assign	AD_SDIO				= 1'b1;							// (DCS)Duty Cycle Stabilizer ON
assign	ADA_OE				= 1'b0;							// enable ADA output (active LOW)
assign	ADA_SPI_CS			= 1'b1;							// disable serial port interface A
assign	ADB_OE				= 1'b0;							// enable ADB output (active LOW)
assign	ADB_SPI_CS			= 1'b1;							// disable serial port interface B

// Assign 50 kHz Sweep Trigger
assign	sweepTrigger		= GCLKIN;

// Assign 156.25 MHz clock PLL_CLKIN_p to sys_clk
assign	sys_clk				= PLL_CLKIN_p;
assign	FPGA_CLK_A_P		=  sys_clk;
assign	FPGA_CLK_A_N		= ~sys_clk;

// Additional logic
assign	LED[0]				= writing_done & control_done_write;
assign	LED[1]				= reading_done & control_done_read;
assign	LED[2]				= user_data_available | user_buffer_full;
assign	LED[3]				= error_full;
assign	LED[6:4]			= error_data;


system system_inst
(
	// global signals:
	.reset_n(rstn) ,										// input
	.clock_master(clk50MHz), 								// input
	
	// the ddr2
	.ddr2_aux_full_rate_clk_out() ,							// output
	.ddr2_aux_half_rate_clk_out() ,							// output
	.ddr2_phy_clk_out() ,									// output
	
	.aux_scan_clk_from_the_ddr2() ,							// output
	.aux_scan_clk_reset_n_from_the_ddr2() ,					// output
	.dll_reference_clk_from_the_ddr2() ,					// output
	.dqs_delay_ctrl_export_from_the_ddr2() ,				// output [5:0]
	
	.global_reset_n_to_the_ddr2(rstn) ,						// input
	
	.local_init_done_from_the_ddr2() ,						// output
	.local_refresh_ack_from_the_ddr2() ,					// output
	.local_wdata_req_from_the_ddr2() ,						// output
	
	.mem_addr_from_the_ddr2(M1_DDR2_addr) ,					// output [13:0]
	.mem_ba_from_the_ddr2(M1_DDR2_ba) ,						// output [2:0]
	.mem_cas_n_from_the_ddr2(M1_DDR2_cas_n) ,				// output
	.mem_cke_from_the_ddr2(M1_DDR2_cke) ,					// output
	.mem_clk_n_to_and_from_the_ddr2(M1_DDR2_clk_n) ,		// inout [1:0]
	.mem_clk_to_and_from_the_ddr2(M1_DDR2_clk) ,			// inout [1:0]
	.mem_cs_n_from_the_ddr2(M1_DDR2_cs_n) ,					// output
	.mem_dm_from_the_ddr2(M1_DDR2_dm) ,						// output [7:0]
	.mem_dq_to_and_from_the_ddr2(M1_DDR2_dq) ,				// inout [63:0]
	.mem_dqs_to_and_from_the_ddr2(M1_DDR2_dqs) ,			// inout [7:0]
	.mem_dqsn_to_and_from_the_ddr2(M1_DDR2_dqsn) ,			// inout [7:0]
	.mem_odt_from_the_ddr2(M1_DDR2_odt) ,					// output
	.mem_ras_n_from_the_ddr2(M1_DDR2_ras_n) ,				// output
	.mem_we_n_from_the_ddr2(M1_DDR2_we_n) ,					// output
	
	.oct_ctl_rs_value_to_the_ddr2() ,						// input [13:0]
	.oct_ctl_rt_value_to_the_ddr2() ,						// input [13:0]
	.reset_phy_clk_n_from_the_ddr2() ,						// output

	// ddr2 psd i2c WHERE DO I CONNECT THEM???????
//	.out_port_from_the_ddr2_i2c_scl(M1_DDR2_SCL),
//	.out_port_from_the_ddr2_i2c_sa(M1_DDR2_SA),
//	.bidir_port_to_and_from_the_ddr2_i2c_sda(M1_DDR2_SDA),
	
	// the Master Read
	.control_done_from_the_master_read(control_done_read) ,				// output
	.control_early_done_from_the_master_read() ,						// output (NC)
	.control_fixed_location_to_the_master_read(1'b0) ,					// input
	.control_go_to_the_master_read(control_go_read) ,					// input
	.control_read_base_to_the_master_read(control_read_base) ,			// input [29:0]
	.control_read_length_to_the_master_read(control_read_length) ,		// input [29:0]
	.user_buffer_output_data_from_the_master_read(user_buffer_data_read),// output [31:0]
	.user_data_available_from_the_master_read(user_data_available) ,	// output
	.user_read_buffer_to_the_master_read(user_read_buffer) ,			// input
	
	// the Master Write
	.control_done_from_the_master_write(control_done_write) ,			// output
	.control_fixed_location_to_the_master_write(1'b0) ,					// input
	.control_go_to_the_master_write(control_go_write) ,					// input
	.control_write_base_to_the_master_write(control_write_base) ,		// input [29:0]
	.control_write_length_to_the_master_write(control_write_length) ,	// input [29:0]
	.user_buffer_full_from_the_master_write(user_buffer_full) ,			// output
	.user_buffer_input_data_to_the_master_write(user_buffer_data_write),// input [31:0]
	.user_write_buffer_to_the_master_write(user_write_buffer) 			// input
);

TestRead TestRead_inst
(
	// global signals
	.RSTn(rstn) ,											// input
	.CLK48MHZ(clk50MHz) ,									// input
	
	// test read
	.control_go(control_go_read) ,							// output
	.control_read_base(control_read_base) ,					// output [23:0]
	.control_read_length(control_read_length) ,				// output [23:0]
	.control_done(control_done_read) ,						// input
	.user_buffer_data(user_buffer_data_read) ,				// input [31:0]
	.user_read_buffer(user_read_buffer) ,					// output
	.user_data_available(user_data_available) ,				// input
	.addressLastCompleteWrite(address_last_complete_write) ,// input [23:0]
	.addressLastCompleteRead(address_last_complete_read) ,	// output [23:0]
	.readingDone(reading_done) ,							// output
	
	// display error
	.debugOut(debug_read) ,									// output [31:0]
	.errorData(error_data) 									// output [2:0]
);

TestWrite TestWrite_inst
(
	// global signals
	.RSTn(rstn) ,											// input  
	.CLK48MHZ(clk50MHz) ,									// input  
	
	// test write signals
	.control_go(control_go_write) ,							// output
	.control_write_base(control_write_base) ,				// output [23:0]
	.control_write_length(control_write_length) ,			// output [23:0]
	.control_done(control_done_write) ,						// input
	.user_buffer_data(user_buffer_data_write) ,				// output [31:0]
	.user_buffer_full(user_buffer_full) ,					// input
	.user_write_buffer(user_write_buffer) ,					// output
	.addressLastCompleteWrite(address_last_complete_write) ,// output [23:0]
	.addressLastCompleteRead(address_last_complete_read) ,	// input [23:0]
	.writingDone(writing_done) ,							// output
	
	// display error
	.debugOut(debug_write) ,								// output [31:0]
	.errorFull(error_full) 									// output
);


///////////////////////////////////////////////////////////////////////////////
// Optional modules
///////////////////////////////////////////////////////////////////////////////

// Fan Control
FAN_PWM FAN_PWM_inst
(
	.clk(clk50MHz) ,										// input  clk50MHz
	.PWM_input(4'hC) ,										// input [3:0] 4'hC
	.clk_div_out(clk_div_out_sig) ,							// output [7:0] clk_div_out_sig
	.FAN(FAN_CTRL) 											// output  FAN_CTRL
);

// Heartbeat with glowing LED
LED_glow LED_glow_inst
(
	.clk(clk_div_out_sig[1]) ,								// input  clk_div_out_sig[1]
	.LED(LED[7]) 											// output  LED[7]
);

endmodule
