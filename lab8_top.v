/****************************** C E C S  3 0 1 ******************************
 * 
 * File Name:  lab8_top.v
 * Project:    Lab Project 8: 16-Bit RISC Processor
 * Designer 1: Michael Rios
 * Email:      riosmichael28@ymail.com
 * Designer 2: Yuliana Uriostegui
 * Email: 		yulove613@gmail.com
 * Rev. No.:   Version 1.1
 * Rev. Date:  November 18, 2016  
 *
 * Purpose: 
 *         
 * Notes: ram is loaded with 8A COE-file. 
 *
 ****************************************************************************/ 
`timescale 1ns / 1ps

module lab8_top( clk, reset, leds  );

	input clk, reset; 
	output [8:0]leds; 
	
	//wires:
	wire clk_500Hz, db_step; 
	wire 	[15:0] D_out, Address, D_in; 
	wire 	mw_en; 
	
	clk_500_Hz 			u0 ( .clk_in(clk), .reset(reset), .clk_out(clk_500Hz)); 
	debounce 			u1 ( .clk_in(clk_500Hz), .reset(reset), .D_in(step), .D_out(db_step)); 
	
	RISC_Processor 	u2 ( .clk(db_step), .reset(reset), .D_out(D_out), .Address(Address), .D_in(D_in), .mw_en(mw_en), .status(leds)); 
	ram1 					u3 ( .clk(clk), .we(), .addr(), .din(), .dout()); 
	MemDumpCounter	
	Display_Controller

endmodule
