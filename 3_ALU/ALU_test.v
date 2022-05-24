`timescale 1ns / 10ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:37:40 010/09/2022
// Design Name:   ALU_module
// Module Name:   D:/ALU/ALU_test.v
// Project Name:  ALU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU_module
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALU_test;

	// Inputs
	reg [2:0] alu_op;
	reg [2:0] ab_sw;
	reg [2:0] c_led_sw;
	
	// Outputs
	wire [7:0] led;
	
	// Instantiate the Unit Under Test (UUT)
	ALU_module uut (
		.alu_op(alu_op), 
		.ab_sw(ab_sw), 
		.c_led_sw(c_led_sw), 
		.led(led)
	);
	
	initial begin
		// Initialize Inputs
		alu_op = 3'b000; ab_sw = 3'b000; c_led_sw = 3'b100;
	
		// Wait 10 ns for global reset to finish
		//and , parameters had been initialized , but if not change anyone of the params , the result will not change or show
		//#10;	alu_op = 3'b000 ; ab_sw = 3'b000 ; c_led_sw = 3'b000 ;
		#10;  alu_op = 3'b000; ab_sw = 3'b000; c_led_sw = 3'b000;
		#10;	ab_sw = 3'b001 ; #10;  c_led_sw = 3'b100 ;
		#10;	c_led_sw = 3'b000; ab_sw = 3'b010 ; #1;  c_led_sw = 3'b001;#1;  c_led_sw = 3'b010;#1;  c_led_sw = 3'b011;#2;  c_led_sw = 3'b100;
		#10;	c_led_sw = 3'b000; ab_sw = 3'b011 ; #1;  c_led_sw = 3'b001;#1;  c_led_sw = 3'b010;#1;  c_led_sw = 3'b011;#2;  c_led_sw = 3'b100;
		#10;	c_led_sw = 3'b000; ab_sw = 3'b100 ; #1;  c_led_sw = 3'b001;#1;  c_led_sw = 3'b010;#1;  c_led_sw = 3'b011;#2;  c_led_sw = 3'b100;
		#10;	c_led_sw = 3'b000; ab_sw = 3'b101 ; #1;  c_led_sw = 3'b001;#1;  c_led_sw = 3'b010;#1;  c_led_sw = 3'b011;#2;  c_led_sw = 3'b100;
		#10;	c_led_sw = 3'b000; ab_sw = 3'b110 ; #1;  c_led_sw = 3'b001;#1;  c_led_sw = 3'b010;#1;  c_led_sw = 3'b011;#2;  c_led_sw = 3'b100;
		#10;	c_led_sw = 3'b000; ab_sw = 3'b111 ; #1;  c_led_sw = 3'b001;#1;  c_led_sw = 3'b010;#1;  c_led_sw = 3'b011;#2;  c_led_sw = 3'b100;
		
		//or
		#10;  alu_op = 3'b001; ab_sw = 3'b000; c_led_sw = 3'b000;
		#10;	ab_sw = 3'b001 ; #10;  c_led_sw = 3'b100 ;
		#10;	c_led_sw = 3'b000; ab_sw = 3'b010 ; #1;  c_led_sw = 3'b001;#1;  c_led_sw = 3'b010;#1;  c_led_sw = 3'b011;#2;  c_led_sw = 3'b100;
		#10;	c_led_sw = 3'b000; ab_sw = 3'b011 ; #1;  c_led_sw = 3'b001;#1;  c_led_sw = 3'b010;#1;  c_led_sw = 3'b011;#2;  c_led_sw = 3'b100;
		#10;	c_led_sw = 3'b000; ab_sw = 3'b100 ; #1;  c_led_sw = 3'b001;#1;  c_led_sw = 3'b010;#1;  c_led_sw = 3'b011;#2;  c_led_sw = 3'b100;
		#10;	c_led_sw = 3'b000; ab_sw = 3'b101 ; #1;  c_led_sw = 3'b001;#1;  c_led_sw = 3'b010;#1;  c_led_sw = 3'b011;#2;  c_led_sw = 3'b100;
		#10;	c_led_sw = 3'b000; ab_sw = 3'b110 ; #1;  c_led_sw = 3'b001;#1;  c_led_sw = 3'b010;#1;  c_led_sw = 3'b011;#2;  c_led_sw = 3'b100;
		#10;	c_led_sw = 3'b000; ab_sw = 3'b111 ; #1;  c_led_sw = 3'b001;#1;  c_led_sw = 3'b010;#1;  c_led_sw = 3'b011;#2;  c_led_sw = 3'b100;
		
		//xor
		#10;  alu_op = 3'b010; ab_sw = 3'b000; c_led_sw = 3'b000;
		#10;	ab_sw = 3'b001 ; #10;  c_led_sw = 3'b100 ;
		#10;	c_led_sw = 3'b000; ab_sw = 3'b010 ; #1;  c_led_sw = 3'b001;#1;  c_led_sw = 3'b010;#1;  c_led_sw = 3'b011;#2;  c_led_sw = 3'b100;
		#10;	c_led_sw = 3'b000; ab_sw = 3'b011 ; #1;  c_led_sw = 3'b001;#1;  c_led_sw = 3'b010;#1;  c_led_sw = 3'b011;#2;  c_led_sw = 3'b100;
		#10;	c_led_sw = 3'b000; ab_sw = 3'b100 ; #1;  c_led_sw = 3'b001;#1;  c_led_sw = 3'b010;#1;  c_led_sw = 3'b011;#2;  c_led_sw = 3'b100;
		#10;	c_led_sw = 3'b000; ab_sw = 3'b101 ; #1;  c_led_sw = 3'b001;#1;  c_led_sw = 3'b010;#1;  c_led_sw = 3'b011;#2;  c_led_sw = 3'b100;
		#10;	c_led_sw = 3'b000; ab_sw = 3'b110 ; #1;  c_led_sw = 3'b001;#1;  c_led_sw = 3'b010;#1;  c_led_sw = 3'b011;#2;  c_led_sw = 3'b100;
		#10;	c_led_sw = 3'b000; ab_sw = 3'b111 ; #1;  c_led_sw = 3'b001;#1;  c_led_sw = 3'b010;#1;  c_led_sw = 3'b011;#2;  c_led_sw = 3'b100;
		
		//nor
		#10;  alu_op = 3'b011; ab_sw = 3'b000; c_led_sw = 3'b000;
		#10;	ab_sw = 3'b001 ; #10;  c_led_sw = 3'b100 ;
		#10;	c_led_sw = 3'b000; ab_sw = 3'b010 ; #1;  c_led_sw = 3'b001;#1;  c_led_sw = 3'b010;#1;  c_led_sw = 3'b011;#2;  c_led_sw = 3'b100;
		#10;	c_led_sw = 3'b000; ab_sw = 3'b011 ; #1;  c_led_sw = 3'b001;#1;  c_led_sw = 3'b010;#1;  c_led_sw = 3'b011;#2;  c_led_sw = 3'b100;
		#10;	c_led_sw = 3'b000; ab_sw = 3'b100 ; #1;  c_led_sw = 3'b001;#1;  c_led_sw = 3'b010;#1;  c_led_sw = 3'b011;#2;  c_led_sw = 3'b100;
		#10;	c_led_sw = 3'b000; ab_sw = 3'b101 ; #1;  c_led_sw = 3'b001;#1;  c_led_sw = 3'b010;#1;  c_led_sw = 3'b011;#2;  c_led_sw = 3'b100;
		#10;	c_led_sw = 3'b000; ab_sw = 3'b110 ; #1;  c_led_sw = 3'b001;#1;  c_led_sw = 3'b010;#1;  c_led_sw = 3'b011;#2;  c_led_sw = 3'b100;
		#10;	c_led_sw = 3'b000; ab_sw = 3'b111 ; #1;  c_led_sw = 3'b001;#1;  c_led_sw = 3'b010;#1;  c_led_sw = 3'b011;#2;  c_led_sw = 3'b100;
		
		//add
		#10;  alu_op = 3'b100; ab_sw = 3'b000; c_led_sw = 3'b000;
		#10;	ab_sw = 3'b001 ; #10;  c_led_sw = 3'b100 ;
		#10;	c_led_sw = 3'b000; ab_sw = 3'b010 ; #1;  c_led_sw = 3'b001;#1;  c_led_sw = 3'b010;#1;  c_led_sw = 3'b011;#2;  c_led_sw = 3'b100;
		#10;	c_led_sw = 3'b000; ab_sw = 3'b011 ; #1;  c_led_sw = 3'b001;#1;  c_led_sw = 3'b010;#1;  c_led_sw = 3'b011;#2;  c_led_sw = 3'b100;
		#10;	c_led_sw = 3'b000; ab_sw = 3'b100 ; #1;  c_led_sw = 3'b001;#1;  c_led_sw = 3'b010;#1;  c_led_sw = 3'b011;#2;  c_led_sw = 3'b100;
		#10;	c_led_sw = 3'b000; ab_sw = 3'b101 ; #1;  c_led_sw = 3'b001;#1;  c_led_sw = 3'b010;#1;  c_led_sw = 3'b011;#2;  c_led_sw = 3'b100;
		#10;	c_led_sw = 3'b000; ab_sw = 3'b110 ; #1;  c_led_sw = 3'b001;#1;  c_led_sw = 3'b010;#1;  c_led_sw = 3'b011;#2;  c_led_sw = 3'b100;
		#10;	c_led_sw = 3'b000; ab_sw = 3'b111 ; #1;  c_led_sw = 3'b001;#1;  c_led_sw = 3'b010;#1;  c_led_sw = 3'b011;#2;  c_led_sw = 3'b100;
		
		//sub
		#10;  alu_op = 3'b101; ab_sw = 3'b000; c_led_sw = 3'b000;
		#10;	ab_sw = 3'b001 ; #10;  c_led_sw = 3'b100 ;
		#10;	c_led_sw = 3'b000; ab_sw = 3'b010 ; #1;  c_led_sw = 3'b001;#1;  c_led_sw = 3'b010;#1;  c_led_sw = 3'b011;#2;  c_led_sw = 3'b100;
		#10;	c_led_sw = 3'b000; ab_sw = 3'b011 ; #1;  c_led_sw = 3'b001;#1;  c_led_sw = 3'b010;#1;  c_led_sw = 3'b011;#2;  c_led_sw = 3'b100;
		#10;	c_led_sw = 3'b000; ab_sw = 3'b100 ; #1;  c_led_sw = 3'b001;#1;  c_led_sw = 3'b010;#1;  c_led_sw = 3'b011;#2;  c_led_sw = 3'b100;
		#10;	c_led_sw = 3'b000; ab_sw = 3'b101 ; #1;  c_led_sw = 3'b001;#1;  c_led_sw = 3'b010;#1;  c_led_sw = 3'b011;#2;  c_led_sw = 3'b100;
		#10;	c_led_sw = 3'b000; ab_sw = 3'b110 ; #1;  c_led_sw = 3'b001;#1;  c_led_sw = 3'b010;#1;  c_led_sw = 3'b011;#2;  c_led_sw = 3'b100;
		#10;	c_led_sw = 3'b000; ab_sw = 3'b111 ; #1;  c_led_sw = 3'b001;#1;  c_led_sw = 3'b010;#1;  c_led_sw = 3'b011;#2;  c_led_sw = 3'b100;
		
		//slt
		#10;  alu_op = 3'b110; ab_sw = 3'b000; c_led_sw = 3'b000;
		#10;	ab_sw = 3'b001 ; #10;  c_led_sw = 3'b100 ;
		#10;	c_led_sw = 3'b000; ab_sw = 3'b010 ; #1;  c_led_sw = 3'b001;#1;  c_led_sw = 3'b010;#1;  c_led_sw = 3'b011;#2;  c_led_sw = 3'b100;
		#10;	c_led_sw = 3'b000; ab_sw = 3'b011 ; #1;  c_led_sw = 3'b001;#1;  c_led_sw = 3'b010;#1;  c_led_sw = 3'b011;#2;  c_led_sw = 3'b100;
		#10;	c_led_sw = 3'b000; ab_sw = 3'b100 ; #1;  c_led_sw = 3'b001;#1;  c_led_sw = 3'b010;#1;  c_led_sw = 3'b011;#2;  c_led_sw = 3'b100;
		#10;	c_led_sw = 3'b000; ab_sw = 3'b101 ; #1;  c_led_sw = 3'b001;#1;  c_led_sw = 3'b010;#1;  c_led_sw = 3'b011;#2;  c_led_sw = 3'b100;
		#10;	c_led_sw = 3'b000; ab_sw = 3'b110 ; #1;  c_led_sw = 3'b001;#1;  c_led_sw = 3'b010;#1;  c_led_sw = 3'b011;#2;  c_led_sw = 3'b100;
		#10;	c_led_sw = 3'b000; ab_sw = 3'b111 ; #1;  c_led_sw = 3'b001;#1;  c_led_sw = 3'b010;#1;  c_led_sw = 3'b011;#2;  c_led_sw = 3'b100;
		
		//sll
		#10;  alu_op = 3'b111; ab_sw = 3'b000; c_led_sw = 3'b000;
		#10;	ab_sw = 3'b001 ; #10;  c_led_sw = 3'b100 ;
		#10;	c_led_sw = 3'b000; ab_sw = 3'b010 ; #1;  c_led_sw = 3'b001;#1;  c_led_sw = 3'b010;#1;  c_led_sw = 3'b011;#2;  c_led_sw = 3'b100;
		#10;	c_led_sw = 3'b000; ab_sw = 3'b011 ; #1;  c_led_sw = 3'b001;#1;  c_led_sw = 3'b010;#1;  c_led_sw = 3'b011;#2;  c_led_sw = 3'b100;
		#10;	c_led_sw = 3'b000; ab_sw = 3'b100 ; #1;  c_led_sw = 3'b001;#1;  c_led_sw = 3'b010;#1;  c_led_sw = 3'b011;#2;  c_led_sw = 3'b100;
		#10;	c_led_sw = 3'b000; ab_sw = 3'b101 ; #1;  c_led_sw = 3'b001;#1;  c_led_sw = 3'b010;#1;  c_led_sw = 3'b011;#2;  c_led_sw = 3'b100;
		#10;	c_led_sw = 3'b000; ab_sw = 3'b110 ; #1;  c_led_sw = 3'b001;#1;  c_led_sw = 3'b010;#1;  c_led_sw = 3'b011;#2;  c_led_sw = 3'b100;
		#10;	c_led_sw = 3'b000; ab_sw = 3'b111 ; #1;  c_led_sw = 3'b001;#1;  c_led_sw = 3'b010;#1;  c_led_sw = 3'b011;#2;  c_led_sw = 3'b100;
   
		// Add stimulus here
	
	end

endmodule

