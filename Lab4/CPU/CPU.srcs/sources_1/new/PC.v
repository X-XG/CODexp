`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/21 16:28:58
// Design Name: 
// Module Name: PC
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


module PC(
    input clk,rst,
    input [9:0]PCN,
    output [7:0]PC0,
    output [9:0]PC4
    );

    reg [9:0]PC;
    initial begin
        PC=0;
    end
    always @(posedge clk, posedge rst) begin
        if(rst) PC <= 0;
        else PC <= PCN;
    end

    assign PC4 = PC;
    assign PC0 = PC >> 2;
endmodule
