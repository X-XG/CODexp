`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/31 20:25:54
// Design Name: 
// Module Name: ALU_1
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
module MUX8_4(
  input wire[3:0] a0,a1,a2,a3,a4,a5,a6,a7,
  input wire[2:0] sel,
  output reg[3:0] y
  );
  always @(*)
  case(sel)
    3'b000: y=a0;
    3'b001: y=a1;
    3'b010: y=a2;
    3'b011: y=a3;
    3'b100: y=a4;
    3'b101: y=a5;
    3'b110: y=a6;
    3'b111: y=a7;
  endcase
endmodule

module adder4a(
  input wire[3:0] a,b,
  input wire c_1,
  output wire[3:0] y,
  output wire cf
  );
  wire[4:0] c;
  assign c[0]=c_1;
  assign y=a ^ b ^ c[3:0];
  assign c[4:1]=a & b | c[3:0] & (a ^ b);
  assign cf=c[4];
endmodule

module ALU_1(
  input wire[3:0] a,
  input wire[3:0] b,
  input wire[2:0] s,
  output wire[3:0] y,
  output wire cf,
  output wire of,
  output wire zf
  );
  wire[3:0] temp;
  wire[3:0] y1,y2,y3,y4,y5,y6;
  wire cf_;
      assign temp=b ^ {s[0],s[0],s[0],s[0]};
      adder4a addminus(a,temp,s[0],y1,cf_);
      assign cf=(s[0] ^ cf_) & (~(s[2] | s[1]));
      assign of= (a[3] ~^ temp[3]) & (y1[3] ^ a[3]) & (~(s[2] | s[1]));
      assign y2= a & b;
      assign y3= a | b;
      assign y4= a ^ b;    
      assign y5= ~a;
      assign y6=3'b000;
      MUX8_4 M(y1,y1,y2,y3,y4,y5,y6,y6,s,y);
      assign zf= ~(|y);
endmodule
