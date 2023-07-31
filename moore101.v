`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:35:57 05/29/2023 
// Design Name: 
// Module Name:    moore101 
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
module moore101(
	input x,clk,reset,
	output reg y
    );
	 
	 reg [1:0] cst,nst;
	 
	 parameter s0=2'b00, s1=2'b01, s2=2'b10, s3=2'b11;
	 
	 always@(cst or x) begin
		case(cst)
		s0: begin
				y=0;
				if(x)
					nst=s1;
				else
					nst=cst;
			end	
		s1: begin
				y=0;
				if(~x)
					nst=s2;
				else
					nst=cst;
			end
		s2: begin
				y=0;
				if(x)
					nst=s3;
				else
					nst=s0;
			end
		s3: begin
				y=1;
				if(x)
					nst=s1;
				else
					nst=s2;
			end
		default: nst=s0;
	endcase
	
	end
	
	always@(posedge clk) begin
		if(reset)
			cst <= s0;
		else
			cst <= nst;
	end
	
		//assign y=(cst==s3)
endmodule
