`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/09 17:01:33
// Design Name: 
// Module Name: RF
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


module RF(
    input wire clk,we,
    input wire [2:0] wa, ra0, ra1,
    input wire [3:0] wd, 
    output wire [3:0] rd0, rd1
    );
    reg [3:0] regfile[0:7];
    initial begin
        regfile[0]=0;
        regfile[1]=0;
        regfile[2]=0;
        regfile[3]=0;
        regfile[4]=0;
        regfile[5]=0;
        regfile[6]=0;
        regfile[7]=0;
    end
    assign  rd0 = regfile[ra0],
            rd1 = regfile[ra1];

    always @ (posedge clk)begin
        if(we)regfile[wa] <= wd;
    end
endmodule
