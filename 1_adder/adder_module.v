`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:14:39 04/02/2022 
// Design Name: 
// Module Name:    adder_module 
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
module adder_module(a,b,c,f,cplus);
	input a;
   input b;
   input c;
   output f;
   output cplus;
	 

	wire a,b,c,f,cplus ;
	wire d,e,g;
	
	xor u1(d,a,b);
	xor u2(f,c,d);
	and u3(e,a,b);
	and u4(g,c,d);
	or u5(cplus,g,e);
	
	//data stream
	//assign f = a ^ b ^ c ;
	//assign cplus = (a & b) || ((a ^ b) & c) ;

endmodule
