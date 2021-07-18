`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/16 09:29:37
// Design Name: 
// Module Name: encoder
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


module encoder(
    input d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,
    output reg[3:0] out
    );
    always @(*)begin
        if(d9)out=4'h9;
        else if(d8)out=4'h8;
        else if(d7)out=4'h7;
        else if(d6)out=4'h6;
        else if(d5)out=4'h5;
        else if(d4)out=4'h4;
        else if(d3)out=4'h3;
        else if(d2)out=4'h2;
        else if(d1)out=4'h1;
        else if(d0)out=4'hA;
        else out=4'h0;
    end
endmodule
