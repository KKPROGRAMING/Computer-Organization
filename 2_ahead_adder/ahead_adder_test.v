`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:49:05 04/04/2022
// Design Name:   AheadAdder_module
// Module Name:   C:/Users/bonjour/Desktop/ComputerComposition/Two_AheadAdder/AheadAdder/ahead_adder_test.v
// Project Name:  AheadAdder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: AheadAdder_module
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ahead_adder_test;

	// Inputs
	reg [7:0] a;
	reg [7:0] b;
	reg c0;
	
	// Outputs
	wire [7:0] f;
	wire c8;
	
	// Instantiate the Unit Under Test (UUT)
	AheadAdder_module uut (
		.a(a), 
		.b(b), 
		.c0(c0), 
		.f(f), 
		.c8(c8)
	);
	
	initial begin
		// Initialize Inputs
		a = 00000000; b = 00000000; c0 = 0;
	
		// Wait 100 ns for global reset to finish
		#100; a = 00010001; b = 00010001; c0 = 0;
		#100; a = 00110011; b = 00110011; c0 = 0;
		#100; a = 01110111; b = 01110111; c0 = 0;
		#100; a = 11111111; b = 11111111; c0 = 0;	
		#100; a = 10011001; b = 10011001; c0 = 0;
		
		#100; a = 00110011; b = 11001100; c0 = 1;
		#100; a = 10101010; b = 01010101; c0 = 1;
		
		#100; a = 00010001; b = 00000000; c0 = 1;
		#100; a = 00110011; b = 00000000; c0 = 1;
		#100; a = 01110111; b = 00000000; c0 = 1;
		#100; a = 11111111; b = 00000000; c0 = 1;
		
		#100; a = 00010001; b = 00010001; c0 = 1;
		#100; a = 00110011; b = 00110011; c0 = 1;
		#100; a = 11110011; b = 00111111; c0 = 1;
		#100; a = 11111111; b = 11111111; c0 = 1;
	    
		// Add stimulus here
	
	end

endmodule

