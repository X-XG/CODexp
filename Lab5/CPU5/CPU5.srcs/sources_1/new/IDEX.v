`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/11 21:04:39
// Design Name: 
// Module Name: IDEX
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


module IDEX(
    input clk,Regs2_en,Regs2_clr,//新增Regs2_clr
    input [31:0] control,
    input [31:0] pcin,pcd,
    input [31:0] rs1,rs2,
    input [31:0] ir,Imm,
    output reg[31:0] ctrl,
    output reg[31:0] pce,pcin2,
    output reg[31:0] a,b,
    output reg[31:0] imm,
    output reg[4:0] rd,ra1,ra2
    );
    initial begin
        ctrl=0;
        a=0;
        b=0;
    end
    always @(posedge clk) begin
        if(Regs2_clr)begin
            ctrl  <= 0;
            pcin2 <= 0;
            pce   <= 0;
            a     <= 0;
            b     <= 0;
            imm   <= 0;
            rd    <= 0;
            ra1   <= 0;
            ra2   <= 0;
        end 
        else if(Regs2_en)begin
            ctrl  <= control;
            pcin2 <= pcin;
            pce   <= pcd;
            a     <= rs1;
            b     <= rs2;
            imm   <= Imm;
            rd    <= ir[11:7];
            ra1   <= ir[19:15];
            ra2   <= ir[24:20];
        end 
        else begin
            ctrl  <= ctrl ;
            pcin2 <= pcin2;
            pce   <= pce  ;
            a     <= a    ;
            b     <= b    ;
            imm   <= imm  ;
            rd    <= rd   ;
            ra1   <= ra1  ;
            ra2   <= ra2  ;
        end 
    end
endmodule
