`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:58:54 05/27/2022 
// Design Name: 
// Module Name:    decode_module 
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
module decode_module(
		op,
		func,
		alu_op,
		write_reg
    );
	 

	 input op;
	 input func;
	 output alu_op;
	 output write_reg;
	 
	 wire[5:0] op;
	 wire[5:0] func;
	 reg[2:0] alu_op;
	 reg write_reg;//write or read control signal
	 
	 always @ (*)
	 begin
	 if(op==6'b000000)
		begin
		case(func)
		6'b100000:begin alu_op = 3'b100; write_reg = 1; end//add
		6'b100010:begin alu_op = 3'b101; write_reg = 1; end//sub
		6'b100100:begin alu_op = 3'b000; write_reg = 1;end//and
		6'b100101:begin alu_op = 3'b001; write_reg = 1; end//or
		6'b100110:begin alu_op = 3'b010; write_reg = 1; end//xor
		6'b100111:begin alu_op = 3'b011; write_reg = 1; end//nor
		6'b101011:begin alu_op = 3'b110; write_reg = 1; end//sltu
		6'b000100:begin alu_op = 3'b111; write_reg = 1;end//sllv
		default:write_reg = 0;//not allow writing
		endcase
		end
	 end

endmodule
