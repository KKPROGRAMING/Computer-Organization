`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:31:15 04/03/2022 
// Design Name: 
// Module Name:    AheadAdder_module 
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
module AheadAdder_module(a,b,c0,f,c4);
	

	input a , b ;
	input c0 ;
	
	output f ;
	output c4 ;
	
	wire[3:0] a , b , f ;
	wire c1 , c2 , c3 , c4 ;
	//, c5 , c6 , c7 , c8 ;
	
	//data stream
	assign c1 = (a[0] && b[0]) || ((a[0] || b[0]) && c0) ;
	assign c2 = (a[1] && b[1]) || ((a[1] || b[1]) && (a[0] && b[0])) ||  ((a[1] || b[1]) && (a[0] || b[0]) && c0) ;
	assign c3 = (a[2] && b[2]) || ((a[2] || b[2]) && (a[1] && b[1])) || ((a[2] || b[2]) && (a[1] || b[1]) && (a[0] && b[0])) 
						|| ((a[2] || b[2]) && (a[1] || b[1]) && (a[0] || b[0]) && c0) ;
	assign c4 = (a[3] && b[3]) || ((a[3] || b[3]) && (a[2] && b[2])) ||  ((a[3] || b[3]) && (a[2] || b[2]) && (a[1] && b[1])) 
						|| ((a[3] || b[3]) && (a[2] || b[2]) && (a[1] || b[1]) && (a[0] && b[0])) 
						|| ((a[3] || b[3]) && (a[2] || b[2]) && (a[1] || b[1]) && (a[0] || b[0]) && c0) ;
	/*assign c5 = (a[4] && b[4]) || ((a[4] || b[4]) && (a[3] && b[3])) || ((a[4] || b[4]) && (a[3] || b[3]) && (a[2] && b[2]))
						|| ((a[4] || b[4]) && (a[3] || b[3]) && (a[2] || b[2]) && (a[1] && b[1])) 
						|| ((a[4] || b[4]) && (a[3] || b[3]) && (a[2] || b[2]) && (a[1] || b[1]) && (a[0] && b[0]))
						|| ((a[4] || b[4]) && (a[3] || b[3]) && (a[2] || b[2]) && (a[1] || b[1]) && (a[0] || b[0]) && c0) ;
	assign c6 = (a[5] && b[5]) || ((a[5] || b[5]) && (a[4] && b[4])) || ((a[5] || b[5]) && (a[4] || b[4]) && (a[3] && b[3]))
						|| ((a[5] || b[5]) && (a[4] || b[4]) && (a[3] || b[3]) && (a[2] && b[2])) 
						|| ((a[5] || b[5]) && (a[4] || b[4]) && (a[3] || b[3]) && (a[2] || b[2]) && (a[1] && b[1]))
						|| ((a[5] || b[5]) && (a[4] || b[4]) && (a[3] || b[3]) && (a[2] || b[2]) && (a[1] || b[1]) && (a[0] && b[0]))
						|| ((a[5] || b[5]) && (a[4] || b[4]) && (a[3] || b[3]) && (a[2] || b[2]) && (a[1] || b[1]) && (a[0] || b[0]) && c0) ;
	assign c7 = (a[6] && b[6]) || ((a[6] || b[6]) && (a[5] && b[5])) || ((a[6] || b[6]) && (a[5] || b[5]) && (a[4] && b[4]))
						|| ((a[6] || b[6]) && (a[5] || b[5]) && (a[4] || b[4]) && (a[3] && b[3]))
						|| ((a[6] || b[6]) && (a[5] || b[5]) && (a[4] || b[4]) && (a[3] || b[3]) && (a[2] && b[2]))
						|| ((a[6] || b[6]) && (a[5] || b[5]) && (a[4] || b[4]) && (a[3] || b[3]) && (a[2] || b[2]) && (a[1] && b[1]))
						|| ((a[6] || b[6]) && (a[5] || b[5]) && (a[4] || b[4]) && (a[3] || b[3]) && (a[2] || b[2]) && (a[1] || b[1]) && (a[0] && b[0]))
						|| ((a[6] || b[6]) && (a[5] || b[5]) && (a[4] || b[4]) && (a[3] || b[3]) && (a[2] || b[2]) && (a[1] || b[1]) && (a[0] || b[0]) && c0) ;
	assign c8 = (a[7] && b[7]) || ((a[7] || b[7]) && (a[6] && b[6])) || ((a[7] || b[7]) && (a[6] || b[6]) && (a[5] && b[5]))
						|| ((a[7] || b[7]) && (a[6] || b[6]) && (a[5] || b[5]) && (a[4] && b[4]))
						|| ((a[7] || b[7]) && (a[6] || b[6]) && (a[5] || b[5]) && (a[4] || b[4]) && (a[3] && b[3]))
						|| ((a[7] || b[7]) && (a[6] || b[6]) && (a[5] || b[5]) && (a[4] || b[4]) && (a[3] || b[3]) && (a[2] && b[2]))
						|| ((a[7] || b[7]) && (a[6] || b[6]) && (a[5] || b[5]) && (a[4] || b[4]) && (a[3] || b[3]) && (a[2] || b[2]) && (a[1] && b[1]))
						|| ((a[7] || b[7]) && (a[6] || b[6]) && (a[5] || b[5]) && (a[4] || b[4]) && (a[3] || b[3]) && (a[2] || b[2]) && (a[1] || b[1]) && (a[0] && b[0]))
						|| ((a[7] || b[7]) && (a[6] || b[6]) && (a[5] || b[5]) && (a[4] || b[4]) && (a[3] || b[3]) && (a[2] || b[2]) && (a[1] || b[1]) && (a[0] || b[0]) && c0) ;
	*/
	
	//the following different parts process in the same time !
	adder_module adder_1(
		.a(a[0]),
		.b(b[0]),
		.c(c0),
		.f(f[0]),
		.cplus()
		);
	
	adder_module adder_2(
		.a(a[1]),
		.b(b[1]),
		.c(c1),
		.f(f[1]),
		.cplus()
		);
		
	adder_module adder_3(
		.a(a[2]),
		.b(b[2]),
		.c(c2),
		.f(f[2]),
		.cplus()
		);
		
	adder_module adder_4(
		.a(a[3]),
		.b(b[3]),
		.c(c3),
		.f(f[3]),
		.cplus()
		);
		
	/*adder_module adder_5(
		.a(a[4]),
		.b(b[4]),
		.c(c4),
		.f(f[4]),
		.cplus()
		);
		
	adder_module adder_6(
		.a(a[5]),
		.b(b[5]),
		.c(c5),
		.f(f[5]),
		.cplus()
		);
		
	adder_module adder_7(
		.a(a[6]),
		.b(b[6]),
		.c(c6),
		.f(f[6]),
		.cplus()
		);
		
	adder_module adder_8(
		.a(a[7]),
		.b(b[7]),
		.c(c7),
		.f(f[7]),
		.cplus()
		);
		*/

endmodule
