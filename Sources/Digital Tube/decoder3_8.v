`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/16 10:24:33
// Design Name: 
// Module Name: decoder3_8
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


module decoder3_8(
    input [2:0]code,
    output reg[7:0] out
    );
    always @(*)begin
        case(code)
            3'd0:out=8'h01;
            3'd1:out=8'h02;
            3'd2:out=8'h04;
            3'd3:out=8'h08;
            3'd4:out=8'h10;
            3'd5:out=8'h20;
            3'd6:out=8'h40;
            default:out=8'h80;
        endcase
    end
endmodule
