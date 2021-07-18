`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/09 13:33:45
// Design Name: 
// Module Name: cache
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


module cache(
    input clk,rst,
    input [31:0]pc,
    input br,isPCjmp,jtype,
    input [31:0]pce,
    input [31:0]PCjmp,
    output reg [31:0] PCN,
    output reg fail
    );

    reg [7:0] valid;
    reg [31:0] value [0:7];
    reg [26:0] tag [0:7];
    wire [2:0] index;
    wire [2:0] index2;
    wire hitted;
    wire hit;
    assign index = pc[4:2];
    assign index2 = pce[4:2];
    assign hit = valid[index] & (pc[31:5]==tag[index]);
    assign hitted = valid[index2] & (pce[31:5]==tag[index2]);
    //assign pc_br = value[index];
    //assign predict = valid[index] & (pc[31:5]==tag[index]);
    
    always @(*) begin
        if(jtype)fail=1;
        else if(isPCjmp && !hitted)fail = 1;
        else if(br && !isPCjmp && hitted) fail =1;
        else fail=0;
    end

    always @(*) begin
        if (jtype)PCN=PCjmp;
        else if(isPCjmp && !hitted)PCN=PCjmp;
        else if(br && !isPCjmp && hitted) PCN=pce +4;
        else if(valid[index] && (tag[index]==pc[31:5]))PCN=value[index];
        else PCN=pc+4;
    end

    always @(posedge clk,posedge rst) begin
        if(rst)valid<=0;
        else begin
            if(isPCjmp && !hitted)begin
                valid[index2]<=1;
                tag[index2]<=pce[31:5];
                value[index2]<=PCjmp;
            end
            else if(br && !isPCjmp && hitted)begin
                valid[index2]<=0;
            end 
        end
    end
endmodule
