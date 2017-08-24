`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:09:14 12/01/2016 
// Design Name: 
// Module Name:    RISC_Processor 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module RISC_Processor( clk, reset, D_out, Address, D_in, mw_en, status);
	input 	clk, reset; 
	input 	[15:0] D_in; 
	output 	[15:0] D_out, Address;
	output 	[7:0] status; 
	output 	mw_en; 
	
	//wires: 
	wire 	[15:0] ir_out; 
	wire 	N, Z, C; 
	wire 	[2:0] W_Adr, R_Adr, S_Adr; 
	wire 	adr_sel, s_sel; 
	wire 	pc_ld, pc_inc, pc_sel, ir_ld; 
	wire 	rw_en; 
	wire	[3:0] Alu_Op; 
	
	
	cu		u0 ( .clk(clk), .reset(reset), .IR(ir_out), .N(N), .Z(Z), .C(C),.W_Adr(W_Adr), .R_Adr(R_Adr), .S_Adr(S_Adr), 						 
					.adr_sel(adr_sel), .s_sel(s_sel), 							
					.pc_ld(pc_ld), .pc_inc(pc_inc), .pc_sel(pc_sel), .ir_ld(ir_ld), 	
					.mw_en(mw_en), .rw_en(rw_en), .alu_op(Alu_Op), .status(status)); 
			 
			 
	CPU_EU u1 ( .clk(clk), .reset(reset), .pc_ld(pc_ld), .pc_sel(pc_sel), .pc_inc(pc_inc), .ir_ld(ir_ld), 
					.adr_sel(adr_sel), .W_En(rw_en), .S_Sel(s_sel), 
					.address(Address), .D_out(D_out), .D_in(D_in), .C(C), .N(N), .Z(Z)); 


endmodule
