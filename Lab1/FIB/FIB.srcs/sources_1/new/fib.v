`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/03/31 17:42:07
// Design Name: 
// Module Name: fib
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


module fib(
    input clk,
    input rst,
    input en,
    input wire[6:0] d,
    output reg[6:0] f
    );
    reg[6:0] f_1;
    parameter s0 = 3'd0, s1 = 3'd1, s2 = 3'd2, s3 = 3'd3, s4 = 3'd4, s5 = 3'd5, s6 = 3'd6;
    reg[2:0] state;
    wire[6:0] y;

    DB #(1000000)dd(en,clk,en2);
    alu #(7)ALU(f, f_1, 3'd0, y, );

    always @(posedge clk) begin
        if(rst)state <= s0;
        else begin
            case (state)
                s0: begin
                    if(en2)state <= s1;
                    else state <= s0;
                end
                s1: begin
                    if(en2)state <= s1;
                    else state <= s2;
                end
                s2: begin
                    if(en2)state <= s3;
                    else state <= s2;
                end
                s3: begin
                    if(en2)state <= s3;
                    else state <= s4;
                end
                s4: begin
                    if(en2)state <= s5;
                    else state <= s4;
                end
                s5: state <= s6;
                s6: begin
                    if(en2)state <= s6;
                    else state <= s4;
                end              
            endcase
        end
    end

    always @(posedge clk) begin
        case (state)
            s0: f_1 <= 0;
            s1: f_1 <= d;
            s5: f_1 <= f;
            default: f_1 <= f_1;
        endcase
    end

    always @(posedge clk) begin
        case (state)
            s0: f <= 0;
            s1: f <= d;
            s3: f <= d;
            s5: f <= y;
            default: f <= f;
        endcase
    end
endmodule
