`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:38:14 05/29/2023 
// Design Name: 
// Module Name:    mealy101 
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
module mealy101(
	input x,clk,reset,
	output reg y
    );
	 
	 reg [1:0] cst,nst;
	 
	 parameter s0=2'b00, s1=2'b01, s2=2'b10;
	 
	 always@(cst or x) begin
		case(cst)
		s0: begin
				if(x) begin
					nst=s1;
					y=0;
					end
				else begin
					nst=cst;
					y=0;
					end
			end	
		s1: begin
				if(~x) begin
					nst=s2;
					y=0;
					end
				else begin
					nst=cst;
					y=0;
					end
			end
		s2: begin
				if(x) begin
					nst=s1;
					y=1;
					end
				else begin
					nst=s0;
					y=0;
					end
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
		
	//assign y=(cst==s2)&x    output depends on current state as well input in mealy
endmodule
