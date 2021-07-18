`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/09 17:05:04
// Design Name: 
// Module Name: testbench
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


module testbench();
reg we;
reg [3:0] wd;
reg [2:0] wa,ra0,ra1;
wire [3:0] rd0,rd1;
reg clk;


RF rf(
    .clk(clk),
    .we(we),
    .wa(wa),
    .ra0(ra0),
    .ra1(ra1),
    .rd0(rd0),
    .rd1(rd1),
    .wd(wd)
    );

initial
begin 
    clk = 0;
    we = 0;
    #5 we = 1;
end
always #5 
    clk = ~clk;
always #69
    we = ~we;
always @(posedge clk)
begin
    ra0<=$random%8;
    ra1<=$random%8;
    wa<=$random%8;
    wd<=$random%16;
end

endmodule

