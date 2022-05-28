`timescale 1ns / 100ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:55:52 05/27/2022 
// Design Name: 
// Module Name:    getIns_module 
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
module getIns_module(
		rst,//reseting
		clk,//clock signal
		inst_code
    );
	 

	 input rst;
	 input clk;
	 output inst_code;
	 
	 wire rst,clk;
	 wire[31:0] inst_code;
	 
	 reg[31:0] PC,PC_new;
	 
	 initial begin PC = 0 ; PC_new = 0 ; end
	
	RAM_instruction inst_memory (
		.clka(clk), // input clka
		.wea(1), // always read, put zero into we
		.addra(PC[7:2]), // input [5 : 0] addra
		.dina(0), // no write
		.douta(inst_code) // inst_code
	);
	
	always @ (*)
	begin
	if(rst)
		begin 
		PC = 0 ; 
		PC_new = 0 ; 
		end
	else if(rst==0 && clk==1)//posedge
		PC_new = PC + 4 ;
	else if(rst==0 && clk==0)//negedge
		PC = PC_new ;
	end

endmodule
