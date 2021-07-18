`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/02 16:50:12
// Design Name: 
// Module Name: register
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module  register
# ( parameter N = 4, RST_VALUE = 0 ) (
input  clk, rst, en, 
input  [N-1 : 0]  in,
output reg  [N-1 : 0] out
);
always @(posedge clk, posedge rst)
	if (rst) out <= RST_VALUE;
	else	 if (en)
		out <= in;
endmodule


