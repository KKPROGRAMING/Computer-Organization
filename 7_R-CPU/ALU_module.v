`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:40:48 05/09/2022 
// Design Name: 
// Module Name:    ALU_module 
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
module ALU_module(
	rst,//reset zf=0 , of=0
	alu_op,
	data_a,
	data_b,
	result,
	zf,
	of);

	input rst;
	input alu_op;
	input data_a;
	input data_b;
	
	output result;
	output zf;
	output of;
	
	wire rst;
	wire[2:0] alu_op;
	wire[31:0] data_a , data_b;
	
	reg[31:0] result;
	reg zf , of ;
	
	always @ (*)
	begin
			if(rst)
				begin
					zf = 0 ;
					of = 0 ;
				end
			
			case(alu_op)
				3'b000 : result = data_a & data_b ;
				3'b001 : result = data_a | data_b ;
				3'b010 : result = data_a ^ data_b ;
				3'b011 : result = ~ (data_a | data_b) ;
				3'b100 : result = data_a + data_b ;
				3'b101 : result = data_a - data_b ;
				3'b110 : 
					begin
					if(data_a<data_b)	result = 1 ;
					else if(data_a>=data_b) result = 0 ;
					end
				3'b111 : result = data_b << data_a ;
				default : result = 0 ;
			endcase	
			
			if(result==32'h0000_0000)	zf = 1 ;
			else	zf = 0 ;
			
			if(result<32'h0000_0000 || result>32'hffff_ffff)	of = 1 ;
			else	of = 0 ;
	end	

endmodule
