module topModule(
		rst,
		clk,
		SW,
		LED
    );


	input rst;
	input clk;
	input SW;
	output LED;
 
	wire[3:0] SW;
	reg[7:0] LED;
 
	wire zf,of;
 //wire[31:0] ALU_F;
	wire[7:0] abyte1 , abyte2 , abyte3 , abyte4;
	wire[7:0] mbyte1 , mbyte2 , mbyte3 , mbyte4;
 
	wire clk ,rst;
	
	R_I_CPU_module r_i_cpu (
    .rst(rst), 
    .clk(clk), 
    .zf(zf), 
    .of(of), 
    .ALU_F({abyte4[7:0],abyte3[7:0],abyte2[7:0],abyte1[7:0]}), 
    .M_R_Data({mbyte4[7:0],mbyte3[7:0],mbyte2[7:0],mbyte1[7:0]})
    );
 
	always @ (*)
	begin
	case(SW)
	0:LED = abyte1;
	1:LED[7:0] = abyte2;
	2:LED[7:0] = abyte3;
	3:LED[7:0] = abyte4;
	4:LED[7:0] = mbyte1;
	5:LED[7:0] = mbyte2;
	6:LED[7:0] = mbyte3;
	7:LED[7:0] = mbyte4;
	8:begin LED = 0; LED[7] = zf ; LED[6] = of ; end
	endcase
	end
endmodule
