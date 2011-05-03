
//=======================================================
//  This code is generated by Terasic System Builder
//=======================================================

module OCT_acq02(

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
	HSMC_SDA 
);

//=======================================================
//  PARAMETER declarations
//=======================================================
parameter	NSAMPLES		= 1170;			// Number of samples per A-line

//=======================================================
//  PORT declarations
//=======================================================

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

//////////// Ethernet x 4 //////////
input		     [3:0]		ETH_INT_n;
output		     [3:0]		ETH_MDC;
inout		     [3:0]		ETH_MDIO;
output		          		ETH_RST_n;
input		     [3:0]		ETH_RX_p;
output		     [3:0]		ETH_TX_p;

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

//////////// HSMC-B, HSMC-B connect to None //////////
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


//=======================================================
//  REG/WIRE declarations
//=======================================================

wire						reset_n;
wire						sys_clk;
//wire						sys_clk_90deg;
//wire						sys_clk_180deg;
//wire						sys_clk_270deg;
//wire						pll_locked;
//
//wire		[12:0]			i_sine1;
//wire		[12:0]			i_sine10;
//wire		[12:12]			t_sine1;
//wire		[12:12]			t_sine10;
//reg			[12:0]			is_sine1;
//reg			[12:0]			is_sine10;
//reg			[12:0]			iu_sine1;
//reg			[12:0]			iu_sine10;
//
//wire		[13:0]			o_sine;
//reg			[13:0]			o_sine_p;
//reg			[13:0]			o_sine_n;

reg			[13:0]			per_a2da_d;
//reg			[13:0]			per_a2db_d;
reg			[13:0]			a2da_data;
reg			[13:0]			a2db_data;

wire						heartbeat;

// A-line of 1170 Elements, each 14 bits wide
reg 		[13:0] 			A_line 			[0:NSAMPLES-1];  
wire						sweepTrigger;
reg			[31:0]			heartBeatCounter;			// Count for heartbeat
wire		[10:0]			sample_position;// Position of the ADC sample in the A-line



//=======================================================
//  External PLL Configuration ==========================
//=======================================================

//  Signal declarations
wire [ 3: 0] clk1_set_wr, clk2_set_wr, clk3_set_wr;
wire         rstn;
wire         conf_ready;
wire         counter_max;
wire  [7:0]  counter_inc;
reg   [7:0]  auto_set_counter;
reg          conf_wr;

//  Structural coding
//assign clk1_set_wr = 4'd12; //625 MHZ
//assign clk2_set_wr = 4'd12; //625 MHZ
//assign clk3_set_wr = 4'd12; //625 MHZ

assign clk1_set_wr = 4'd6; //150 MHZ
assign clk2_set_wr = 4'd6; //150 MHZ
assign clk3_set_wr = 4'd6; //150 MHZ

assign rstn = CPU_RESET_n;
assign counter_max = &auto_set_counter;
assign counter_inc = auto_set_counter + 1'b1;

always @(posedge OSC_50_BANK2 or negedge rstn)
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
	.osc_50(OSC_50_BANK2), //50MHZ
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


//=======================================================
//  Structural coding
//=======================================================

//--- globa signal assign
assign	reset_n			= CPU_RESET_n;

assign	FAN_CTRL		= 1'bz;

//assign	FPGA_CLK_A_P	=  sys_clk_180deg;
//assign	FPGA_CLK_A_N	= ~sys_clk_180deg;
//assign	FPGA_CLK_B_P	=  sys_clk_270deg;
//assign	FPGA_CLK_B_N	= ~sys_clk_270deg;
assign	FPGA_CLK_A_P	=  sys_clk;
assign	FPGA_CLK_A_N	= ~sys_clk;

// Assign for indicators
//assign	LED[0]			= ~pll_locked;		// pll locked
assign	LED[1]			= ~SLIDE_SW[0];		// (DFS)Data Format Select indicator
assign	LED[2]			= ~SLIDE_SW[1];		// (DCS)Duty Cycle Stabilizer Select indicator
assign	LED[3]			= ~ADA_OR;			// Out-of-Range indicator
assign	LED[4]			= BUTTON[0];		// reset 1MHz NCO output indicator
assign	LED[5]			= BUTTON[1];		// reset 10MHz NCO output indicator
//assign	LED[6] 			= ~SLIDE_SW[3];		// channel A or B indicator
assign	heartbeat		= heartBeatCounter[15];		// heartbeat (bit15)
assign	LED[7] 			= heartbeat;		// heartbeat wire

// assign for ADC control signal
assign	AD_SCLK			= SLIDE_SW[0];		// (DFS)Data Format Select
assign	AD_SDIO			= SLIDE_SW[1];		// (DCS)Duty Cycle Stabilizer Select
assign	ADA_OE			= 1'b0;				// enable ADA output
assign	ADA_SPI_CS		= 1'b1;				// disable ADA_SPI_CS (CSB)
assign	ADB_OE			= 1'b0;				// enable ADB output
assign	ADB_SPI_CS		= 1'b1;				// disable ADB_SPI_CS (CSB)

// assign for DAC output data
//assign	DA 				= o_sine_p;			// Output sine to DAC channel A
assign 	DB 				= a2da_data;		// Map ADC channel A to DAC channel B

// Assign 50 kHz Sweep Trigger
assign	sweepTrigger	= GCLKIN;

// Assign 625 MHz clock PLL_CLKIN_p to sys_clk
assign	sys_clk			= PLL_CLKIN_p;

// 7 Segment Display dot
assign	SEG0_DP 		= ~heartbeat;		// LED[7] inverted
assign	SEG1_DP 		= 1'b1;				// Segment 1 dot OFF = 1

// 7 segment displays
assign	SEG0_D			= 7'b1111111;
assign	SEG1_D			= 7'b1111111;

//--- analog to digital converter capture and sync
	//--- Channel A
always @(negedge reset_n or posedge ADA_DCO)
begin
	if (!reset_n) begin
		per_a2da_d	<= 14'd0;
	end
	else begin
		per_a2da_d	<= ADA_D;
		// Indexing samples in the A-line array
		A_line[sample_position] <= a2da_data;
	end
end

always @(negedge reset_n or posedge sys_clk)
begin
	if (!reset_n) begin
		a2da_data	<= 14'd0;
	end
	else begin
		a2da_data	<= per_a2da_d;
	end
end

// Synchronization of sampling with sweep trigger
sample_addressing	sample_addressing_inst (
	.clock ( ADA_DCO ),						// k-clock (positive edge)
	.sclr ( ~sweepTrigger ),				// When Sweep Trigger = 0, counter is cleared
	.q ( sample_position )					// Indicates position of the sample in the A-line
	);
	
	//--- count for Heartbeat
always @(negedge reset_n or posedge sweepTrigger)
// 50 kHz A-line (sweep) Trigger
begin
	if (!reset_n) begin
		heartBeatCounter	<= 0;
	end
	else begin
		heartBeatCounter	<= heartBeatCounter + 1'b1;
	end
end

endmodule
