// megafunction wizard: %NCO v7.2%
// GENERATION: XML

// ============================================================
// Megafunction Name(s):
// 			nco_1mhz_st
// ============================================================
// Generated by NCO 7.2 [Altera, IP Toolbench 1.3.0 Build 205]
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
// ************************************************************
// Copyright (C) 1991-2008 Altera Corporation
// Any megafunction design, and related net list (encrypted or decrypted),
// support information, device programming or simulation file, and any other
// associated documentation or information provided by Altera or a partner
// under Altera's Megafunction Partnership Program may be used only to
// program PLD devices (but not masked PLD devices) from Altera.  Any other
// use of such megafunction design, net list, support information, device
// programming or simulation file, or any other related documentation or
// information is prohibited for any other purpose, including, but not
// limited to modification, reverse engineering, de-compiling, or use with
// any other silicon devices, unless such use is explicitly licensed under
// a separate agreement with Altera or a megafunction partner.  Title to
// the intellectual property, including patents, copyrights, trademarks,
// trade secrets, or maskworks, embodied in any such megafunction design,
// net list, support information, device programming or simulation file, or
// any other related documentation or information provided by Altera or a
// megafunction partner, remains with Altera, the megafunction partner, or
// their respective licensors.  No other licenses, including any licenses
// needed under any third party's intellectual property, are provided herein.


module nco_1mhz (
	phi_inc_i,
	clk,
	reset_n,
	clken,
	fsin_o,
	out_valid);


	input	[31:0]	phi_inc_i;
	input		clk;
	input		reset_n;
	input		clken;
	output	[12:0]	fsin_o;
	output		out_valid;


	nco_1mhz_st	nco_1mhz_st_inst(
		.phi_inc_i(phi_inc_i),
		.clk(clk),
		.reset_n(reset_n),
		.clken(clken),
		.fsin_o(fsin_o),
		.out_valid(out_valid));
endmodule

// =========================================================
// NCO Wizard Data
// ===============================
// DO NOT EDIT FOLLOWING DATA
// @Altera, IP Toolbench@
// Warning: If you modify this section, NCO Wizard may not be able to reproduce your chosen configuration.
// 
// Retrieval info: <?xml version="1.0"?>
// Retrieval info: <MEGACORE title="NCO"  version="7.2"  build="205"  iptb_version="1.3.0 Build 205"  format_version="120" >
// Retrieval info:  <NETLIST_SECTION active_core="nco_1mhz_st" >
// Retrieval info:   <STATIC_SECTION>
// Retrieval info:    <PRIVATES>
// Retrieval info:     <NAMESPACE name = "parameterization">
// Retrieval info:      <PRIVATE name = "use_mem" value="1"  type="BOOLEAN"  enable="1" />
// Retrieval info:      <PRIVATE name = "mem_type" value="M512"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "RAW" value="16"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "MAX" value="256"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "rfs1" value="xxx.hex"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "devicefamily" value="Stratix III"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "DPRI" value="5"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "DEVICE" value="StratixIII"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "ACCUM_SCLR" value="0"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "ARCH" value="TRIG_ARCH"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "TARGET" value="StratixIII"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "WANT_DITHER" value="NO"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "APRP" value="16"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "APRF" value="32"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "CK_VALUE" value="10"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "CK_UNIT" value="ns"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "CK_MULT" value="e-9"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "FSAMP_VALUE" value="100"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "FREQ_VALUE" value="1.001"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "MPR" value="13"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "APR" value="32"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "APRI" value="16"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "FSAMP_UNIT" value="MHz"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "FSAMP_MULT" value="1e6"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "FREQ_UNIT" value="MHz"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "FREQ_MULT" value="1e6"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "DUAL_NOT_SGL_OP" value="WANT_SIN_ONLY"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "FMOD_PIPELINE" value="1"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "PMOD_PIPELINE" value="1"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "MULT_TYPE" value="DEDICATED"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "CORDIC_TYPE" value="PARALLEL"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "CORDIC_PIPE" value="2"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "THROUGHPUT" value="1"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "NUMCH" value="1"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "WANT_VLOG_SIM" value="YES"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "WANT_VHDL_SIM" value="YES"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "WANT_MATLAB" value="YES"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "WANT_VEC" value="YES"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "PHI_INC" value="42992623"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "WANT_FMOD" value="NO"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "WANT_PMOD" value="NO"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "MODULE_NAME" value="nco_1mhz_st"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "NETLIST_FILE_NAME" value="nco_1mhz_st.v"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "PHASE_INC" value="4096"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "FREQ_INC" value="268435456"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "RCFC" value="nco_1mhz_cos_c.mif"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "RCVC" value="nco_1mhz_cos_c.v"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "RCHC" value="nco_1mhz_cos_c.hex"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "RCFF" value="nco_1mhz_cos_f.mif"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "RCVF" value="nco_1mhz_cos_f.v"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "RCHF" value="nco_1mhz_cos_f.hex"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "RSFC" value="nco_1mhz_sin_c.mif"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "RSVC" value="nco_1mhz_sin_c.v"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "RSHC" value="nco_1mhz_sin_c.hex"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "RSFF" value="nco_1mhz_sin_f.mif"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "RSVF" value="nco_1mhz_sin_f.v"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "RSHF" value="nco_1mhz_sin_f.hex"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "MAXC" value="3328"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "MAXF" value="3328"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "RAWC" value="8"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "RAWF" value="8"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "RNWC" value="256"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "RNWF" value="256"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "RDW" value="13"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "NUM_LCELLS" value="192"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "NUM_MEM_BITS" value="9984"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "NUM_EABS" value="2"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "NUM_DSP_BLOCKS" value="4"  type="STRING"  enable="1" />
// Retrieval info:     </NAMESPACE>
// Retrieval info:     <NAMESPACE name = "simgen_enable">
// Retrieval info:      <PRIVATE name = "language" value="Verilog HDL"  type="STRING"  enable="1" />
// Retrieval info:     </NAMESPACE>
// Retrieval info:     <NAMESPACE name = "simgen">
// Retrieval info:      <PRIVATE name = "filename" value="nco_1mhz.vo"  type="STRING"  enable="1" />
// Retrieval info:     </NAMESPACE>
// Retrieval info:     <NAMESPACE name = "greybox">
// Retrieval info:      <PRIVATE name = "filename" value="nco_1mhz_gb.v"  type="STRING"  enable="1" />
// Retrieval info:     </NAMESPACE>
// Retrieval info:     <NAMESPACE name = "quartus_settings">
// Retrieval info:      <PRIVATE name = "DEVICE" value="EP3SL150F1152C2"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "FAMILY" value="Stratix III"  type="STRING"  enable="1" />
// Retrieval info:     </NAMESPACE>
// Retrieval info:     <NAMESPACE name = "serializer"/>
// Retrieval info:    </PRIVATES>
// Retrieval info:    <FILES/>
// Retrieval info:    <PORTS>
// Retrieval info:     <PORT name = "phi_inc_i" direction="INPUT"  connect_to="phi_inc_i"  default="NODEFVAL"  high_width="31"  low_width="0"  description="" />
// Retrieval info:     <PORT name = "fsin_o" direction="OUTPUT"  connect_to="fsin_o"  default="NODEFVAL"  high_width="12"  low_width="0"  description="" />
// Retrieval info:     <PORT name = "clk" direction="INPUT"  connect_to="clk"  default="NODEFVAL"  width="1"  description="" />
// Retrieval info:     <PORT name = "reset_n" direction="INPUT"  connect_to="reset_n"  default="NODEFVAL"  width="1"  description="" />
// Retrieval info:     <PORT name = "clken" direction="INPUT"  connect_to="clken"  default="NODEFVAL"  width="1"  description="" />
// Retrieval info:     <PORT name = "out_valid" direction="OUTPUT"  connect_to="out_valid"  default="NODEFVAL"  width="1"  description="" />
// Retrieval info:    </PORTS>
// Retrieval info:    <LIBRARIES/>
// Retrieval info:   </STATIC_SECTION>
// Retrieval info:  </NETLIST_SECTION>
// Retrieval info: </MEGACORE>
// =========================================================
