`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/21 13:53:33
// Design Name: 
// Module Name: ALU
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


module  ALU
    #(parameter WIDTH = 32)(
    input [WIDTH -1: 0]  a, b,
    input [2:0] s,
    output reg[WIDTH -1: 0] y,
    output zf
    );
    reg[WIDTH:0] temp;
    localparam ADD=3'd0,SUB=3'd1,AND=3'd2,OR=3'd3,XOR=3'd4;
    always @(*)begin
        case(s)
            ADD:temp={0,a} + {0,b};
            SUB:temp={0,a} - {0,b};
            AND:temp={0,a} & {0,b};
            OR: temp={0,a} | {0,b};
            XOR:temp={0,a} ^ {0,b};
            default:temp=0;
        endcase
        y[WIDTH -1:0]=temp[WIDTH -1:0];
    end

    assign zf = ~|y;
endmodule
