`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/26 10:21:24
// Design Name: 
// Module Name: debug
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


module debug();
reg clk,rst;
//IO_BUS
wire [7:0] io_addr;
wire [31:0] io_dout;
wire io_we;         
reg [31:0] io_din;
//Debug_BUS
reg [7:0] m_rf_addr;
wire [31:0] rf_data;
wire [31:0] m_data;
wire [31:0] pc;

CPU cpu(
.clk(clk),
.rst(rst),
.io_addr(io_addr),
.io_dout(io_dout),
.io_we(io_we),
.io_din(io_din),
.m_rf_addr(m_rf_addr),
.rf_data(rf_data),
.m_data(m_data),
.pc(pc)
);

initial begin
    clk=0;
    rst=0;
    io_din=0;
    m_rf_addr=8'h03;
end

always #5 clk = ~clk;

/*always begin
    #10 m_rf_addr = 
end*/

endmodule
