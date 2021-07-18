`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/12 16:37:35
// Design Name: 
// Module Name: Forwarding
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


module Forwarding(
    //新增rdf解决新相关
    input [4:0] ra1,ra2,rdm,rdw,rdf,
    input rf_wr_m,rf_wr_w,rf_wr_f,
    output reg [1:0] a_fwd,b_fwd
    );
    localparam Ori=2'b00,from_m=2'b01,from_w=2'b10,from_f=2'b11;
    always @(*) begin
        if(rf_wr_m && ra1 == rdm)a_fwd=from_m;
        else if(rf_wr_w && ra1 == rdw)a_fwd=from_w;
        else if(rf_wr_f && ra1 == rdf)a_fwd=from_f;
        else a_fwd=Ori;
    end
    always @(*) begin
        if(rf_wr_m && ra2 == rdm)b_fwd=from_m;
        else if(rf_wr_w && ra2 == rdw)b_fwd=from_w;
        else if(rf_wr_f && ra2 == rdf)b_fwd=from_f;
        else b_fwd=Ori;
    end
endmodule
