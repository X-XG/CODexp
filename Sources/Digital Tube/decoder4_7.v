`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/16 11:07:36
// Design Name: 
// Module Name: decoder4_7
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


module decoder4_7(
    input [3:0]in,
    output reg ca,cb,cc,cd,ce,cf,cg
    );
    always @(*)begin
        case(in)
            4'h1:begin
                cb=0;
                cc=0;
                ca=1;
                cd=1;
                ce=1;
                cf=1;
                cg=1;
            end
            4'h2:begin
                ca=0;
                cb=0;
                cg=0;
                ce=0;
                cd=0;
                cc=1;
                cf=1;
            end
            4'h3:begin
                ca=0;
                cb=0;
                cg=0;
                cc=0;
                cd=0;
                ce=1;
                cf=1;
            end
            4'h4:begin
                cb=0;
                cc=0;
                cg=0;
                cf=0;
                ca=1;
                cd=1;
                ce=1;
            end
            4'h5:begin
                ca=0;
                cf=0;
                cg=0;
                cc=0;
                cd=0;
                cb=1;
                ce=1;
            end
            4'h6:begin
                ca=0;
                cf=0;
                ce=0;
                cg=0;
                cd=0;
                cc=0;
                cb=1;
            end
            4'h7:begin
                ca=0;
                cb=0;
                cc=0;
                cd=1;
                ce=1;
                cf=1;
                cg=1;
            end
            4'h8:begin
                ca=0;
                cb=0;
                cc=0;
                cd=0;
                ce=0;
                cf=0;
                cg=0;
            end
            4'h9:begin
                ca=0;
                cb=0;
                cc=0;
                cd=0;
                cf=0;
                cg=0; 
                ce=1;               
            end
            4'ha:begin
                ca=0;
                cb=0;
                cc=0;
                cd=0;
                ce=0;
                cf=0;
                cg=1;
            end
            default:begin
                ca=1;
                cb=1;
                cc=1;
                cd=1;
                ce=1;
                cf=1;
                cg=1;
            end
        endcase
    end
endmodule
