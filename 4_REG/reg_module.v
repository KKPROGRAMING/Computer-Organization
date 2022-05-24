`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:14:59 05/23/2022 
// Design Name: 
// Module Name:    reg_module 
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
module reg_module(
	r_addr_a,//read address a
	r_addr_b,//read address b
	write_reg,//signal for contraling write
	w_addr,//write address
	w_data,//write data
	clk,//time signal
	reset,//time signal for reseting
	

	r_data_a,//read data a
	r_data_b//read data b


    );
     
     input r_addr_a;
     input r_addr_b;
     input write_reg;
     input w_addr;
     input w_data;
     
     input clk;
     input reset;
     
     output r_data_a;
     output r_data_b;
     
     wire write_reg;
     wire[4:0] r_addr_a,r_addr_b,w_addr;
     wire[31:0] w_data,r_data_a,r_data_b;
     
     reg[31:0] REG_Files[0:31];
     
     reg[31:0] i;//2^5=32 regs,but add a bit to avoid the never false condition
     
     wire clk,reset;
     
     //read
     assign r_data_a = REG_Files[r_addr_a];
     assign r_data_b = REG_Files[r_addr_b];
     
     //write
     always @ (clk or reset)
    	begin
    	if(reset)
    		//initialize regs
    		begin
    		for(i=0;i<=31;i=i+1)
    			REG_Files[i] = 0;
    		end
    	else
    		//write data into regs
    		begin
    		if(write_reg)
    		REG_Files[w_addr] = w_data;
    		end
    	end



endmodule
