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
    input [3:0] s,
    output reg[WIDTH -1: 0] y,
    output reg cf,of,
    output zf
    );
    reg[WIDTH:0] temp;
    localparam ADD=4'b0010,SUB=4'b0110,AND=4'b0000,OR=4'b0001,XOR=4'b1111,LSHIF=4'b1000;
    always @(*)begin
        case(s)
            ADD:temp={1'b0,a} + {1'b0,b};
            SUB:temp={1'b0,a} - {1'b0,b};
            AND:temp={1'b0,a} & {1'b0,b};
            OR: temp={1'b0,a} | {1'b0,b};
            XOR:temp={1'b0,a} ^ {1'b0,b};
            LSHIF: temp={1'b0,a} << b[4:0];
            default:temp=0;
        endcase
        y[WIDTH -1:0]=temp[WIDTH -1:0];
        cf=temp[WIDTH];
        if(s==ADD && a[WIDTH -1]==b[WIDTH -1] && a[WIDTH -1]!=y[WIDTH -1])
            of=1;
        else if(s==SUB && a[WIDTH -1]!=b[WIDTH -1] && a[WIDTH -1]!=y[WIDTH -1])
            of=1;
        else of=0;
    end

    assign zf = ~|y;
endmodule
