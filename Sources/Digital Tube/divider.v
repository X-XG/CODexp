`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/16 10:46:49
// Design Name: 
// Module Name: divider
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


module divider
    #(parameter N = 10000)(
    input clk,
    output reg out
    );
    integer cnt;
    always @(posedge clk)begin
        if(cnt==0)begin
            cnt=N/2-1;
            out<=~out;
        end
        else cnt<=cnt-1;
    end
endmodule
