module R_I_CPU_module(
		rst,
		clk,
		zf,
		of,
		ALU_F,
		M_R_Data
    );
	 
	 input rst;
	 input clk;
	 
	 output zf;
	 output of;
	 output ALU_F;
	 output M_R_Data;
	 
	 wire rst,clk;
	 wire zf,of;
	 wire[31:0] ALU_F,M_R_Data;
	 
	 wire[31:0] inst_code;
	 
	 wire rd_rt_s ;
	 wire imm_s;
	 wire write_reg;
	 wire alu_mem_s;
	 wire rt_imm_s;
	 wire mem_write;
	 wire[5:0] alu_op;
	 
	 wire[5:0] w_addr;
	 wire[31:0] w_data;
	 wire[31:0] imm_data;
	 
	 wire[31:0] data_a;
	 wire[31:0] data_b;
	 
	 wire[31:0] r_data_b;
	 
	 wire[5:0] mem_addr;
	 wire[31:0] M_W_Data;
	 
	 wire[5:0] rt , rd;
	 wire[15:0] imm;
	 
	 getIns_module getIns (
    .rst(rst), 
    .clk(clk), 
    .inst_code(inst_code)
    );
	 
	 decode_module decode (
    .op(inst_code[31:26]), 
    .func(inst_code[5:0]), 
    .rd_rt_s(rd_rt_s), 
    .imm_s(imm_s), 
    .write_reg(write_reg), 
    .alu_mem_s(alu_mem_s), 
    .rt_imm_s(rt_imm_s), 
    .alu_op(alu_op), 
    .mem_write(mem_write)
    );
	 
	 assign rt = inst_code[20:16];
	 assign rd = inst_code[15:11];
	 assign imm = inst_code[15:0];
	 
	 assign w_addr = (rd_rt_s)? rt : rd;
	 assign imm_data = (imm_s)? {{16{imm[15]}},imm} : {{16{1'b0}},imm};
	 assign data_b = (rt_imm_s)? imm_data : r_data_b;
	 
	 assign mem_addr = ALU_F;
	 assign w_data = alu_mem_s?M_R_Data:ALU_F;
	 assign M_W_Data = r_data_b;
	 
	 REG_module REG (
    .r_addr_a(inst_code[25:21]), 
    .r_addr_b(inst_code[20:16]), 
    .write_reg(write_reg), 
    .w_addr(w_addr), 
    .w_data(w_data), 
    .clk(clk), 
    .rst(rst), 
    .r_data_a(data_a), 
    .r_data_b(r_data_b)
    );
	 
	 ALU_module ALU (
    .rst(rst), 
    .alu_op(alu_op), 
    .data_a(data_a), 
    .data_b(data_b), 
    .result(ALU_F), 
    .zf(zf), 
    .of(of)
    );
	 
	 Data_RAM data_memory(
	.clka(clk), // input clka
	.wea(mem_write), // input [0 : 0] wea
	.addra(mem_addr), // input [5 : 0] addra
	.dina(M_W_Data), // input [31 : 0] dina
	.douta(M_R_Data) // output [31 : 0] douta
	);

endmodule
