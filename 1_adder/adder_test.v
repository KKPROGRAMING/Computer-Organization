`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:26:30 04/02/2022
// Design Name:   adder_module
// Module Name:   E:/ADDER/adder_test.v
// Project Name:  ADDER
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: adder_module
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module adder_test;

	// Inputs
	reg a;
	reg b;
	reg c;
	//reg F;
	//reg CPLUS;
	
	// Outputs
	//wire f;
	//wire cplus;
	wire f;
	wire cplus;
	
	// Instantiate the Unit Under Test (UUT)
	adder_module uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.f(f), 
		.cplus(cplus)
	);
	
	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c = 0;
	
		// Wait 100 ns for global reset to finish
		#100; a = 1 ; b = 0 ; c = 0 ;
		#100; a = 0 ; b = 1 ; c = 0 ;
		#100; a = 0 ; b = 0 ; c = 1 ;
		#100; a = 1 ; b = 1 ; c = 0 ;
		#100; a = 1 ; b = 0 ; c = 1 ;
		#100; a = 0 ; b = 1 ; c = 1 ;
		#100; a = 1 ; b = 1 ; c = 1 ;        

		// Add stimulus here
	
	end

endmodule

