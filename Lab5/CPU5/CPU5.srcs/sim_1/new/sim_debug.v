`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/12 17:42:01
// Design Name: 
// Module Name: sim_debug
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


module sim_debug();
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
//增加流水线寄存器调试接口
wire [31:0] pcin, pc, pcd, pce;
wire [31:0] ir, imm, mdr;
wire [31:0] a, b, y, bm, yw;
wire [4:0]  rd, rdm, rdw;
wire [31:0] ctrl, ctrlm, ctrlw;

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
.pc(pc),
.pcin(pcin),
.pcd(pcd),
.pce(pce),
.ir(ir),
.imm(imm),
.mdr(mdr),
.a(a),
.b(b),
.y(y),
.bm(bm),
.yw(yw),
.rd(rd),
.rdm(rdm),
.rdw(rdw),
.ctrl(ctrl),
.ctrlm(ctrlm),
.ctrlw(ctrlw)
);

initial begin
    clk=0;
    rst=0;
    io_din=3;
    m_rf_addr=8'h03;
    #1 rst=1;
    #2 rst=0;
end

always #5 clk = ~clk;
//always #100 io_din=io_din^1;

/*always begin
    #10 m_rf_addr = 
end*/

endmodule
