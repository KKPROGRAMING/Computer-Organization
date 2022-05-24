`timescale 1ns / 10ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:39:27 05/23/2022
// Design Name:   reg_module
// Module Name:   D:/new world!/ComputerComposition/4_REG/REG/reg_test.v
// Project Name:  REG
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: reg_module
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module reg_test;

	// Inputs
	reg [4:0] r_addr_a;
	reg [4:0] r_addr_b;
	reg write_reg;
	reg [4:0] w_addr;
	reg [31:0] w_data;
	
	reg clk;
	reg reset;
	
	// Outputs
	wire [31:0] r_data_a;
	wire [31:0] r_data_b;
	
	// Instantiate the Unit Under Test (UUT)
	reg_module uut (
		.r_addr_a(r_addr_a), 
		.r_addr_b(r_addr_b), 
		.write_reg(write_reg), 
		.w_addr(w_addr), 
		.w_data(w_data), 
		.r_data_a(r_data_a), 
		.r_data_b(r_data_b),
		.clk(clk),
		.reset(reset)
	);
	
	initial begin
		// Initialize Inputs
		r_addr_a = 0;
		r_addr_b = 0;
		write_reg = 0;
		w_addr = 0;
		w_data = 0;
		clk=0;
		reset=0;


		// Wait 100 ns for global reset to finish
		
		//write somthing
		#25;clk=~clk;write_reg=1;
		#25;w_addr=2;w_data=32'hffff;
		#25;clk=~clk;
		#25;w_addr=4;w_data=32'h7777;
		
		#25;clk=~clk;
		#25;w_addr=6;w_data=32'h1111;
		#25;clk=~clk;
		#25;w_addr=8;w_data=32'h3333;
	    
		//read
		#25;clk=~clk;
		#25;write_reg=0;w_addr=0;w_data=0;r_addr_a=2;r_addr_b=4;
		#25;clk=~clk;
		#25;r_addr_a=6;r_addr_b=8;
		
		//write
		#25;reset=~reset;clk=~clk;write_reg=1;
		#25;reset=~reset;w_addr=1;w_data=32'h1212;
		#25;clk=~clk;
		#25;w_addr=3;w_data=32'h8989;
		
		#25;clk=~clk;
		#25;w_addr=5;w_data=32'haaaa;
		#25;clk=~clk;
		#25;w_addr=7;w_data=32'hcccc;
		
		//read
		#25;clk=~clk;
		#25;write_reg=0;w_addr=0;w_data=0;r_addr_a=1;r_addr_b=3;
		#25;clk=~clk;
		#25;r_addr_a=5;r_addr_b=7;
		#25;clk=~clk;
		//show the function of reseting
		#25;r_addr_a=2;r_addr_b=4;
		#25;clk=~clk;
		#25;r_addr_a=6;r_addr_b=8;
		
		// Add stimulus here
		
		end
  
endmodule

