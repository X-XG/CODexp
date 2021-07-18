`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/13 09:08:34
// Design Name: 
// Module Name: Hazard
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


module Hazard(
    input m_rd_idex,m_wr_ifid,
    input [4:0]rd,ra1,ra2,
    input zero,beq_d,jal_d,beq,jal,
    input a_sel, b_sel,
    output reg PC_en,Regs1_en,Regs2_en,Regs1_clr,Regs2_clr
    );
    //分支预测失败
    always @(*) begin
        /*if(beq_d || jal_d)begin
            PC_en=0;
            Regs1_clr=1;
            Regs1_en=0;
            Regs2_en=1;
            Regs2_clr=0;
        end*/
        //else 
        if(jal|| (zero && beq))begin
            PC_en=1;
            Regs1_clr=1;
            Regs1_en=0;
            Regs2_en=0;
            Regs2_clr=1;
        end
        else if( m_rd_idex && ( (a_sel && rd==ra1) || ((b_sel || m_wr_ifid ) && rd == ra2) ) )begin
            PC_en=0;
            Regs1_clr=0;
            Regs1_en=0;
            Regs2_en=0;
            Regs2_clr=1;
        end
        else begin
            PC_en=1;
            Regs1_clr=0;
            Regs1_en=1;
            Regs2_en=1;
            Regs2_clr=0;
        end
    end
endmodule
