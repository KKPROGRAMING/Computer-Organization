`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:38:23 05/27/2022 
// Design Name: 
// Module Name:    R_CPU 
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
module R_CPU(
		rst,
		clk,
		zf,
		of,
		ALU_F
    );
	 

	 input rst;
	 input clk;
	 
	 output zf;
	 output of;
	 output ALU_F;
	 
	 wire rst,clk;
	 wire zf,of;
	 wire[31:0] ALU_F;
	 
	 wire[31:0] inst_code;
	 
	 wire[2:0] alu_op;
	 wire write_reg;//signal for write or read controlling
	 
	 wire[31:0] rs_data,rt_data;
	 
		getIns_module getIns (
		.rst(rst), 
		.clk(clk), 
		.inst_code(inst_code)
		);
		
		decode_module decode (
		.op(inst_code[31:26]), 
		.func(inst_code[5:0]), 
		.alu_op(alu_op), 
		.write_reg(write_reg)
		);
		
		REG_module REG (
		.r_addr_a(inst_code[25:21]), //rs
		.r_addr_b(inst_code[20:16]), //rt
		.write_reg(write_reg), 
		.w_addr(inst_code[15:11]), //rd
		.w_data(ALU_F), 
		.clk(clk), 
		.rst(rst), 
		.r_data_a(rs_data), 
		.r_data_b(rt_data)
		);
		
		ALU_module ALU (
		.rst(rst), 
		.alu_op(alu_op), 
		.data_a(rs_data), 
		.data_b(rt_data), 
		.result(ALU_F), 
		.zf(zf), 
		.of(of)
		);

endmodule
