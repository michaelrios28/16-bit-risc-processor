/****************************** C E C S  3 0 1 ******************************
 * 
 * File Name:  ram1.v
 * Project:    Lab Project 8: CPU Execution Unit
 * Designer 1: Michael Rios
 * Email:      riosmichael28@ymail.com
 * Designer 2: Yuliana Uriostegui
 * Email: 		yulove613@gmail.com
 * Rev. No.:   Version 1.1
 * Rev. Date:  November 11, 2016  
 *
 * Purpose: This module represents the memory which is a 256x16 memory. This 
 memory is used in order to store the data executed by the CPU_EU unit and store
 this data into certain memory location. 
 *         
 * Notes: This module uses CoreGen memory generated with the ram_256x16_lab8a.coe.
 Therefore this module instantiates this created CoreGen memory. 
 *
 ****************************************************************************/ 
`timescale 1ns / 1ps

module ram1( clk, we, addr, din, dout );
	
	input 	clk , we; 
	input 	[7:0] addr; 
	input 	[15:0] din; 
	output 	[15:0] dout; 
	
	ram_256x16 ram (
	  .clka(clk), // input clka
	  .wea(we), // input [0 : 0] wea
	  .addra(addr), // input [7 : 0] addra
	  .dina(din), // input [15 : 0] dina
	  .douta(dout) // output [15 : 0] douta
	);

endmodule

