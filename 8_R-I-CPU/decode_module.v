module decode_module(
		op,
		func,
		rd_rt_s,
		imm_s,
		write_reg,
		alu_mem_s,
		rt_imm_s,
		alu_op,
		mem_write
    );
	
	 input op;
	 input func;
	 
	 output rd_rt_s;
	 output imm_s;
	 output write_reg;
	 output alu_mem_s;
	 output rt_imm_s;
	 output alu_op;
	 output mem_write;
	 
	 wire[5:0] op;
	 wire[5:0] func;
	 
	 reg rd_rt_s;
	 reg imm_s;
	 reg write_reg;
	 reg alu_mem_s;
	 reg rt_imm_s;
	 reg mem_write;
	 reg[2:0] alu_op;
	 
	 always @ (*)
	 begin
		if(op==6'b000000)
		begin
		rd_rt_s = 0;
		imm_s = 0;//no use
		write_reg = 1;
		alu_mem_s =0;
		rt_imm_s = 0;
		mem_write = 0;
		case(func)
		6'b100000:alu_op = 3'b100;//add
		6'b100010:alu_op = 3'b101;//sub
		6'b100100:alu_op = 3'b000;//and
		6'b100101:alu_op = 3'b001;//or
		6'b100110:alu_op = 3'b010;//xor
		6'b100111:alu_op = 3'b011;//nor
		6'b101011:alu_op = 3'b110;//sltu
		6'b000100:alu_op = 3'b111;//sllv
		default:write_reg = 0;//not allow writing
		endcase
		end
		
		else if(op==6'b001000)// rs + imm -> rt
		begin
		rd_rt_s = 1;
		imm_s = 1;
		write_reg = 1;
		alu_mem_s =0;
		rt_imm_s = 1;
		mem_write = 0;
		alu_op = 3'b100;//add
		end
		
		else if(op==6'b001100)//rs & imm -> rt
		begin
		rd_rt_s = 1;
		imm_s = 0;
		write_reg = 1;
		alu_mem_s =0;
		rt_imm_s = 1;
		mem_write = 0;
		alu_op = 3'b000;//and
		end
		
		else if(op==6'b001110)//rs xor imm -> rt
		begin
		rd_rt_s = 1;
		imm_s = 0;
		write_reg = 1;
		alu_mem_s =0;
		rt_imm_s = 1;
		mem_write = 0;
		alu_op = 3'b010;//xor
		end
		
		else if(op==6'b001011)//if(rs<imm)rt=1 alse rt=0
		begin
		rd_rt_s = 1;
		imm_s = 0;
		write_reg = 1;
		alu_mem_s =0;
		rt_imm_s = 1;
		mem_write = 0;
		alu_op = 3'b110;//sltu
		end
		
		else if(op==6'b100011)//load word
		begin
		rd_rt_s = 1;
		imm_s = 1;
		write_reg = 1;
		alu_mem_s =1;
		rt_imm_s = 1;
		mem_write = 0;
		alu_op = 3'b100;//add
		end
		
		else if(op==6'b101011)//save word
		begin
		rd_rt_s = 0;//no use
		imm_s = 1;
		write_reg = 0;
		alu_mem_s =0;//no use
		rt_imm_s = 1;
		mem_write = 1;
		alu_op = 3'b100;//add
		end
		
	 end
	 

endmodule
