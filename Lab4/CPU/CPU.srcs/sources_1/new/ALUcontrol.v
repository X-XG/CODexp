`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/21 13:58:07
// Design Name: 
// Module Name: ALUcontrol
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


module ALUcontrol(
    input [1:0]ALUop,
    output reg [2:0]ALUfinal_op
    );
    always @(*) begin
        case (ALUop)
            2'b01: ALUfinal_op=3'd1;
            default: ALUfinal_op=3'd0;
        endcase   
    end

endmodule
