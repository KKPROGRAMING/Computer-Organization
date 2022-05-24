`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:169:05 016/016/2022
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
	reg [15:0] a;
	reg [15:0] b;
	reg c0;
	
	// Outputs
	wire [15:0] f;
	wire c;
	
	// Instantiate the Unit Under Test (UUT)
	AheadAdder16bit_module uut (
		.a(a), 
		.b(b), 
		.c0(c0), 
		.f(f), 
		.c(c)
	);
	
	initial begin
		// Initialize Inputs
		a = 16'h0000; b = 16'h0000; c0 = 0;
	
		// Wait 25 ns for global reset to finish
		#25; a = 16'h1111; b = 16'h1111; c0 = 0;
		#25; a = 16'h3333; b = 16'h3333; c0 = 0;
		#25; a = 16'h5555; b = 16'h5555; c0 = 0;
		#25; a = 16'h7777; b = 16'h7777; c0 = 0;
		#25; a = 16'h9999; b = 16'h9999; c0 = 0;	
		#25; a = 16'hbbbb; b = 16'hbbbb; c0 = 0;
		#25; a = 16'hdddd; b = 16'hdddd; c0 = 0;
		#25; a = 16'hffff; b = 16'hffff; c0 = 0;
		
		#25; a = 16'h1111; b = 16'h1111; c0 = 1;
		#25; a = 16'h3333; b = 16'h3333; c0 = 1;
		#25; a = 16'h5555; b = 16'h5555; c0 = 1;
		#25; a = 16'h7777; b = 16'h7777; c0 = 1;
		#25; a = 16'h9999; b = 16'h9999; c0 = 1;	
		#25; a = 16'hbbbb; b = 16'hbbbb; c0 = 1;
		#25; a = 16'hdddd; b = 16'hdddd; c0 = 1;
		#25; a = 16'hffff; b = 16'hffff; c0 = 1;
	
		#25; a = 16'h1111; b = 16'h3333; c0 = 0;
		#25; a = 16'h3333; b = 16'h5555; c0 = 0;
		#25; a = 16'h5555; b = 16'h7777; c0 = 0;
		#25; a = 16'h7777; b = 16'h9999; c0 = 0;
		#25; a = 16'h9999; b = 16'hbbbb; c0 = 0;	
		#25; a = 16'hbbbb; b = 16'hdddd; c0 = 0;
		#25; a = 16'hdddd; b = 16'hffff; c0 = 0;
		
		#25; a = 16'h1111; b = 16'h3333; c0 = 1;
		#25; a = 16'h3333; b = 16'h5555; c0 = 1;
		#25; a = 16'h5555; b = 16'h7777; c0 = 1;
		#5; a = 16'h7777; b = 16'h9999; c0 = 1;
		#25; a = 16'h9999; b = 16'hbbbb; c0 = 1;	
		#25; a = 16'hbbbb; b = 16'hdddd; c0 = 1;
		#25; a = 16'hdddd; b = 16'hffff; c0 = 1;
	
		#25; a = 16'h0101; b = 16'h1010; c0 = 0;
		#25; a = 16'h0303; b = 16'h3030; c0 = 0;
		#25; a = 16'h0505; b = 16'h5050; c0 = 0;
		#25; a = 16'h0707; b = 16'h7070; c0 = 0;
		#25; a = 16'h0909; b = 16'h9090; c0 = 0;	
		#25; a = 16'h0b0b; b = 16'hb0b0; c0 = 0;
		#25; a = 16'h0d0d; b = 16'hd0d0; c0 = 0;
		#25; a = 16'h0f0f; b = 16'hf0f0; c0 = 0;
	    
		// Add stimulus here
	
	end

endmodule

