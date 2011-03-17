//	Copyright (C) 1988-2007 Altera Corporation

//	Any megafunction design, and related net list (encrypted or decrypted),
//	support information, device programming or simulation file, and any other
//	associated documentation or information provided by Altera or a partner
//	under Altera's Megafunction Partnership Program may be used only to
//	program PLD devices (but not masked PLD devices) from Altera.  Any other
//	use of such megafunction design, net list, support information, device
//	programming or simulation file, or any other related documentation or
//	information is prohibited for any other purpose, including, but not
//	limited to modification, reverse engineering, de-compiling, or use with
//	any other silicon devices, unless such use is explicitly licensed under
//	a separate agreement with Altera or a megafunction partner.  Title to
//	the intellectual property, including patents, copyrights, trademarks,
//	trade secrets, or maskworks, embodied in any such megafunction design,
//	net list, support information, device programming or simulation file, or
//	any other related documentation or information provided by Altera or a
//	megafunction partner, remains with Altera, the megafunction partner, or
//	their respective licensors.  No other licenses, including any licenses
//	needed under any third party's intellectual property, are provided herein.

//   NCO ver 7.2 VERILOG HDL TESTBENCH
`timescale 1ps / 1ps
module nc0_10mhz_tb;
wire [12:0] sin_val;
reg [31:0] phi;
wire out_valid;
reg reset_n;
wire reset; 
assign reset = !reset_n;
reg clken;
reg clk;

initial
  begin
    $dumpvars;
    #0 clk = 1'b0;
    #0 reset_n = 1'b0;
    #0 clken = 1'b1;
    #0 phi = 32'b00011001101000000010011101010010;
    #69999 reset_n = 1'b1;
  end

always
  begin
    #5000 clk = 1;
    #5000 clk = 0;
  end

integer sin_ch, sin_print;
initial
  begin
    sin_ch = $fopen ("fsin_o_ver_nc0_10mhz.txt");
  end

always @(posedge clk)
  begin
    if(reset_n==1'b1 & out_valid==1'b1)
      begin
        if (sin_val[12:0] < (1<<12))
          sin_print = sin_val[12:0];
        else
          sin_print =  sin_val[12:0] - (1<<13);

    $fdisplay (sin_ch, "%d", sin_print);
      end
end

nc0_10mhz i_nc0_10mhz (
    .out_valid(out_valid),
    .fsin_o(sin_val[12:0]),
    .phi_inc_i(phi[31:0]),
    .reset_n(reset_n),
    .clken(clken),
    .clk(clk)
    );

endmodule
