`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/05 11:19:49
// Design Name: 
// Module Name: test_tx
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


module test_tx();

reg clk,rst;
wire tx;
reg rx;
sort s(
    .clk(clk),.rst(rst),
    .rx(rx),.tx(tx)
    );

    initial begin
        rx =0;
        clk = 0;
        rst =0;
        #1 rst =1;
        #2 rst =0;
    end

    always #5 clk = ~clk;
    always #8680 rx = ~rx;
endmodule
