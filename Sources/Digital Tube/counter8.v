`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/16 10:18:27
// Design Name: 
// Module Name: counter8
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


module counter8(
    input clk,rst,
    output reg[2:0]q
    );
    always @(posedge clk,posedge rst)begin
        if(rst)q<=0;
        else q<=q+1;
    end
endmodule
