`timescale 1ns / 1ps

module MemDumpCounter( clk, reset, addr );
	input clk, reset; 
	output reg [15:0] addr; 
	
	always @ (posedge clk or posedge reset)
	begin 
		if (reset == 1'b1) 
		addr = 16'H0; 
		else 
		addr = addr + 16'H1; 
	end 

endmodule
