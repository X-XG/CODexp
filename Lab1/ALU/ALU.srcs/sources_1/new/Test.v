`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/01 23:47:51
// Design Name: 
// Module Name: Test
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


module Test(
    input [5:0]x,
    input en,
    input [1:0]sel,
    input clk,
    output reg z,
    output reg[5:0] y
    );
    wire [3:0] eout;
    wire ef,ea,eb,z1;
    wire [5:0]y1;
    decoder2_4(sel,eout);
    assign ef = eout[0] & en;
    assign ea = eout[1] & en;
    assign eb = eout[2] & en;

    reg [5:0]F,A,B;
    alu #(6)alu1(A,B,F[2:0],y1,z1);

    always@(posedge clk)begin
        y<=y1;
        z<=z1;
    end

    always @(posedge clk) begin
        if(ef)F<=x;
        if(ea)A<=x;
        if(eb)B<=x;
    end
endmodule
