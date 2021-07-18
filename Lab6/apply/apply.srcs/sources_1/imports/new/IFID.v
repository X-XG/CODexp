`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/11 20:40:34
// Design Name: 
// Module Name: IFID
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


module IFID(
    input clk,Regs1_en,Regs1_clr,
    input [31:0] PC,PCadd4,instruction,
    output reg [31:0] pcd,pcin,ir
    );
    initial begin
        ir=0;
    end
    always @(posedge clk) begin
        if (Regs1_clr)begin
            ir <= 0;
            pcd <= 0;
            pcin <= 0;
        end 
        else if(Regs1_en)begin
            ir <= instruction;
            pcd <= PC;
            pcin <= PCadd4;
        end 
        else begin 
            ir <= ir;
            pcd <= pcd;
            pcin <= pcin;
        end
    end
endmodule
