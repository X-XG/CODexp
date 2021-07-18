`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/01 23:54:55
// Design Name: 
// Module Name: decoder2_4
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


module decoder2_4(
    input [1:0]code,
    output reg[3:0] out
    );
    always @(*)begin
        case(code)
            2'd0:out=4'h1;
            2'd1:out=4'h2;
            2'd2:out=4'h4;
            2'd3:out=4'h8;
        endcase
    end
endmodule
