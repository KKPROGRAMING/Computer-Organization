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
	
	Inst_ROM inst_memory (
  .clka(clk), // input clka
  .addra(PC[7:2]), // input [5 : 0] addra
  .douta(inst_code) // output [31 : 0] douta
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
