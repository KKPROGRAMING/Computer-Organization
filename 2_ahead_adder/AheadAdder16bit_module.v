`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:56:13 04/19/2022 
// Design Name: 
// Module Name:    AheadAdder16bit_module 
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
module AheadAdder16bit_module(a,b,c0,f,c);

	input a , b ;
	input c0 ;
	
	output f ;
	output c ;
	
	wire[15:0] a , b , f ;
	wire c1 , c2 , c3 , c4 ,c;


	//the following different parts process in the same time !
	AheadAdder_module aa1(
		.a(a[3:0]),
		.b(b[3:0]),
		.c0(0),
		.f(),
		.c4(c1)
	);
	
	AheadAdder_module aa2(
		.a(a[7:4]),
		.b(b[7:4]),
		.c0(0),
		.f(),
		.c4(c2)
	);
	
	AheadAdder_module aa3(
		.a(a[11:8]),
		.b(b[11:8]),
		.c0(0),
		.f(),
		.c4(c3)
	);
	
	AheadAdder_module aa4(
		.a(a[15:12]),
		.b(b[15:12]),
		.c0(0),
		.f(),
		.c4(c4)
	);
	
	AheadAdder_module aa11(
		.a(a[3:0]),
		.b(b[3:0]),
		.c0(c0),
		.f(f[3:0]),
		.c4()
	);
	
	AheadAdder_module aa22(
		.a(a[7:4]),
		.b(b[7:4]),
		.c0(c1),
		.f(f[7:4]),
		.c4()
	);
	
	AheadAdder_module aa33(
		.a(a[11:8]),
		.b(b[11:8]),
		.c0(c2),
		.f(f[11:8]),
		.c4()
	);
	
	AheadAdder_module aa44(
		.a(a[15:12]),
		.b(b[15:12]),
		.c0(c3),
		.f(f[15:12]),
		.c4(c)
	);

endmodule
