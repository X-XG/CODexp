`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/16 10:56:31
// Design Name: 
// Module Name: MUX8_4
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


module MUX8
    #(parameter Width = 4)(
    input [Width-1:0] i0,i1,i2,i3,i4,i5,i6,i7,
    input [2:0] sel,
    output reg[Width-1:0] out
    );
    always @(*)begin
        case(sel)
            3'd0:out=i0;
            3'd1:out=i1;
            3'd2:out=i2;
            3'd3:out=i3;
            3'd4:out=i4;
            3'd5:out=i5; 
            3'd6:out=i6;
            default:out=i7;   
        endcase        
    end
endmodule
