`timescale 1ns / 100ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:28:47 05/28/2022
// Design Name:   R_CPU
// Module Name:   D:/new world!/ComputerOrganization/7_R/decode/R_CPU_test.v
// Project Name:  decode
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: R_CPU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module R_CPU_test;

	// Inputs
	reg rst;
	reg clk;
	
	// Outputs
	wire zf;
	wire of;
	wire [31:0] ALU_F;
	
	// Instantiate the Unit Under Test (UUT)
	R_CPU uut (
		.rst(rst), 
		.clk(clk), 
		.zf(zf), 
		.of(of), 
		.ALU_F(ALU_F)
	);
	
	initial begin
		// Initialize Inputs
		rst = 1;
		clk = 0;
	
		// Wait 100 ns for global reset to finish
		#15;rst=0;clk=~clk;
		#15;clk=~clk;
		#15;clk=~clk;
		#15;clk=~clk;
		#15;clk=~clk;
		#15;clk=~clk;
		#15;clk=~clk;
		#15;clk=~clk;
		#15;clk=~clk;
		#15;clk=~clk;
		
		#15;clk=~clk;
		#15;clk=~clk;
		#15;clk=~clk;
		#15;clk=~clk;
		#15;clk=~clk;
		#15;clk=~clk;
		#15;clk=~clk;
		#15;clk=~clk;
		#15;clk=~clk;
		#15;clk=~clk;
		
		#15;clk=~clk;
		#15;clk=~clk;
		#15;clk=~clk;
		#15;clk=~clk;
		#15;clk=~clk;
		#15;clk=~clk;
		#15;clk=~clk;
		#15;clk=~clk;
		#15;clk=~clk;
		#15;clk=~clk;
		
		#15;clk=~clk;
		#15;clk=~clk;
		#15;clk=~clk;
		#15;clk=~clk;
		#15;clk=~clk;
		#15;clk=~clk;
		#15;clk=~clk;
		#15;clk=~clk;
		#15;clk=~clk;
		#15;clk=~clk;
		
		#15;clk=~clk;
		#15;clk=~clk;
		#15;clk=~clk;
		#15;clk=~clk;
		#15;clk=~clk;
		#15;clk=~clk;
		#15;clk=~clk;
		#15;clk=~clk;
		#15;clk=~clk;
		#15;clk=~clk;
		
		#15;clk=~clk;
		#15;clk=~clk;
		#15;clk=~clk;
		#15;clk=~clk;
		#15;clk=~clk;
		#15;clk=~clk;
		#15;clk=~clk;
		#15;clk=~clk;
		#15;clk=~clk;
		#15;clk=~clk;
		
		#15;clk=~clk;
		#15;clk=~clk;
		#15;clk=~clk;
		#15;clk=~clk;
		#15;clk=~clk;
		#15;clk=~clk;
		#15;clk=~clk;
		#15;clk=~clk;
		#15;clk=~clk;
		#15;clk=~clk;
	    
		// Add stimulus here
	
	end

endmodule

