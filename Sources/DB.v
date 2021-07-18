`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/20 20:52:01
// Design Name: 
// Module Name: DB
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


module DB
    #(parameter DELAY = 1000000)(
    input x,rst,clk,
    output reg yl,
    output yp,yn
    );
    localparam s0=2'b00,s1=2'b01,s2=2'b10,s3=2'b11;
    reg[1:0] state;
    wire td,td2,td3;
    reg st;
    wire st2,st3;
    Timer #(DELAY)t1(st,rst,clk,td);
    always @(posedge clk)begin
        case(state)
            s0: begin
                if(x==1)begin
                    state<=s2;
                    st<=1;
                end
                else begin
                    state<=s0;
                    st<=0;
                end
            end
            s1: begin
                if(x==0)begin
                    state<=s3;
                    st<=1;
                end
                else begin
                    state<=s1;
                    st<=0;
                end
            end
            s2: begin
                if(td==1)begin
                    state<=s1;
                    st<=0;
                end
                else begin
                    state<=s2;
                end
            end
            default: begin
                if(td==1)begin
                    state<=s0;
                    st<=0;
                end
                else begin
                    state<=s3;
                end
            end
        endcase
    end
    always @(state)begin
        if(state==s0 ||state==s2)yl=0;
        else yl=1;
    end
    
    Timer #(100000000)t2(st2,rst,clk,td2);
    assign st2=yl;
    assign yp=~td2;
    
    Timer #(100000000)t3(st3,rst,clk,td3);
    assign st3=~yl;
    assign yn=~td3;
endmodule
