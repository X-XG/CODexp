`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/13 15:27:12
// Design Name: 
// Module Name: Run
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


module Run(
    input clk,rst,
    input run,step,
    input valid,
    input [4:0] in,
    output [1:0] check,
    output [4:0] out0,
    output [7:0] an,
    output ca,cb,cc,cd,ce,cf,cg,
    output ready
    );

    //IO_BUS
    wire [7:0] io_addr;      //led和seg的地址
    wire [31:0] io_dout;     //输出led和seg的数据
    wire io_we;                 //输出led和seg数据时的使能信号
    wire [31:0] io_din;          //来自sw的输入数据  

    //Debug_BUS
    wire [7:0] m_rf_addr;   //存储器(MEM)或寄存器堆(RF)的调试读口地址
    wire [31:0] rf_data;    //从RF读取的数据
    wire [31:0] m_data;    //从MEM读取的数据
    wire [31:0] pc;             //PC的内容

    //增加流水线寄存器调试接口
    wire [31:0] pcin, pcd, pce;
    wire [31:0] ir, imm, mdr;
    wire [31:0] a, b, y, bm, yw;
    wire [4:0]  rd, rdm, rdw;
    wire [31:0] ctrl, ctrlm, ctrlw;

    wire clk_cpu;

    wire [2:0] an_temp;
    wire [3:0] seg_temp;

    //wire clk_out;
    //divider #(2)for_clk(clk,clk_out);   

    CPU cpu(
        .clk(clk_cpu),
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

    pdu debug(
        .clk(clk),
        .rst(rst),

        .run(run),
        .step(step),
        .clk_cpu(clk_cpu),

        .valid(valid),
        .in(in),

        .check(check),
        .out0(out0),
        .an(an_temp), 
        .seg(seg_temp),
        .ready(ready),

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

    wire [7:0] an_temp_2;
    decoder3_8 forAn(
        .code(an_temp),
        .out(an_temp_2)
    );
    assign an = ~an_temp_2;

    decoder4_7 forSeg(
        .in(seg_temp),
        .ca(ca),
        .cb(cb),
        .cc(cc),
        .cd(cd),
        .ce(ce),
        .cf(cf),
        .cg(cg)
    );
endmodule
