`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:40:48 05/09/2022 
// Design Name: 
// Module Name:    ALU_module 
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
module ALU_module(alu_op,ab_sw,c_led_sw,led);

	input alu_op ;
	input ab_sw ;
	input c_led_sw ;
	
	output led ;
	
	reg[31:0] a , b , c ;
	
	wire[2:0] alu_op ;
	wire[2:0] ab_sw ;
	wire[2:0] c_led_sw ;
	reg[7:0] led ;
	
	reg zf , of ;
	
	always @ (*)
	begin
	
		case(ab_sw)
				3'b000 : begin a = 32'h0000_0000;	b = 32'h0000_0000;	end
				3'b001 : begin a = 32'h0000_0003;	b = 32'h0000_0607;	end
				3'b010 : begin a = 32'h8000_0000;	b = 32'h8000_0000;	end
				3'b011 : begin a = 32'h7fff_ffff;	b = 32'h7fff_7777;	end
				3'b100 : begin a = 32'hffff_ffff;	b = 32'hffff_ffff;	end
				3'b101 : begin a = 32'h8000_0000;	b = 32'hffff_ffff;	end
				3'b110 : begin a = 32'hffff_ffff;	b = 32'h8000_0000;	end
				3'b111 : begin a = 32'h1234_5678;	b = 32'h3333_2222;	end
				default : begin a = 32'h9abc_def0;	b = 32'h1111_2222;	end
			endcase
			
			case(alu_op)
				3'b000 : c = a & b ;
				3'b001 : c = a | b ;
				3'b010 : c = a ^ b ;
				3'b011 : c = ~ (a | b) ;
				3'b100 : c = a + b ;
				3'b101 : c = a - b ;
				3'b110 : 
					begin
					if(a<b)	c = 1 ;
					else if(a>=b) c = 0 ;
					end
				3'b111 : c = b << a ;
				default : c = 0 ;
			endcase
			
			case(c_led_sw)
				3'b000 : led = c[7:0] ;
				3'b001 : led = c[15:8] ;
				3'b010 : led = c[23:16] ;
				3'b011 : led = c[31:24] ;
				default : begin led[7] = zf ; led[0] = of ; led[6:1] = 6'b0 ;	end
				//button down , means c_led_sw = 1 ,then shows zf and of
				//button up , shows the result
			endcase


​			

			if(c==32'h0000)	zf = 1 ;
			else	zf = 0 ;
			
			if(c<32'h0000 || c>32'hFFFF)	of = 1 ;
			else	of = 0 ;
	end	

endmodule
