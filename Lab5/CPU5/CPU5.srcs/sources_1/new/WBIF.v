`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/12 22:57:17
// Design Name: 
// Module Name: WBIF
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


module WBIF(
    input clk,
    input [4:0] rdw,
    input [31:0] WriteData,
    input rf_wr_w,
    output reg[4:0] rdf,
    output reg[31:0] LastWriteData,
    output reg rf_wr_f
    );
    always @(posedge clk) begin
        rdf <= rdw;
        LastWriteData <= WriteData;
        rf_wr_f <= rf_wr_w;
    end
endmodule
