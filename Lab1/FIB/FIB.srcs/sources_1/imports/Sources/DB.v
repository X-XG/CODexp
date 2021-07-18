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
    input x,clk,
    output reg yl
    );
    localparam s0=2'b00,s1=2'b01,s2=2'b10,s3=2'b11;
    reg[1:0] state;
    wire td;
    reg st;
    Timer #(DELAY)t1(st,clk,td);
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
    
endmodule
