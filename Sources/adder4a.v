`timescale 1ns / 1ps

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