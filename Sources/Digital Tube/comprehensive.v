`timescale 1ns / 1ps

module comprehensive(
    input rst,clk,clk1,
    input [3:0] d,dsr,dsl,
    input [1:0] s,
    input [2:0] address,
    input p,psr,psl,
    input [1:0] ps,
    input [2:0] paddress,
    output [7:0] an,
    output ca,cb,cc,cd,ce,cf,cg,
    output dp
    );
    wire[3:0] q[0:7];
    wire[7:0] po;
    wire dp1;
    regSRL #(4)rf_c(clk1,rst,d,dsr,dsl,s,address,q[7],q[6],q[5],q[4],q[3],q[2],q[1],q[0]);
    reg8_dp #(8'h00)rf_dp(clk1,rst,p,psr,psl,ps,paddress,po[7],po[6],po[5],po[4],po[3],po[2],po[1],po[0]);
    wire[3:0] display;
    wire clkn;
    wire[2:0] counted;
    wire[7:0] an1;
    divider #(10000)dv(clk,clkn);
    counter8 ct(clkn,rst,counted);
    decoder3_8 dc(counted,an1);
    assign an=~an1;
    MUX8 #(4)m8_4(q[0],q[1],q[2],q[3],q[4],q[5],q[6],q[7],counted,display);
    MUX8 #(1)m8_1(po[0],po[1],po[2],po[3],po[4],po[5],po[6],po[7],counted,dp1);
    assign dp=~dp1;
    decoder4_7 d47(display,ca,cb,cc,cd,ce,cf,cg);
endmodule