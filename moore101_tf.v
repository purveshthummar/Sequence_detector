`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:39:27 05/29/2023
// Design Name:   moore101
// Module Name:   E:/xilinx project/Sequence Detector/seqdet101/moore101_tf.v
// Project Name:  seqdet101
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: moore101
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module moore101_tf;

	// Inputs
	reg x;
	reg clk;
	reg reset;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	moore101 uut (
		.x(x), 
		.clk(clk), 
		.reset(reset), 
		.y(y)
	);
	
	reg [19:0] data;
	integer k;
	
	initial begin
		data=20'b10100101010010101010;
		k=0;
		reset=1; #40;
		reset=0; #170;
		$finish;
	end
	
	initial begin
		clk=0;
		forever begin
			#5;
			clk=~clk;
		end
	end

	always@(posedge clk) begin
		x=data>>k;
		k=k+1;
	end
	
	//x = 01010101001010100101
	//y = 00010101000010100001
	
endmodule

