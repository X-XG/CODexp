`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/21 14:21:49
// Design Name: 
// Module Name: CPU
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


module CPU(
    input clk,rst,
    
    //IO_BUS
    output [7:0] io_addr,      //led和seg的地址
    output [31:0] io_dout,     //输出led和seg的数据
    output io_we,                 //输出led和seg数据时的使能信号
    input [31:0] io_din,          //来自sw的输入数据  

    //Debug_BUS
    input [7:0] m_rf_addr,   //存储器(MEM)或寄存器堆(RF)的调试读口地址
    output [31:0] rf_data,    //从RF读取的数据
    output [31:0] m_data,    //从MEM读取的数据
    output [31:0] pc             //PC的内容
    );

    wire [9:0]PCN;
    wire [7:0]PC;
    wire [9:0]PC4;
    PC PC0(
        .clk(clk),
        .rst(rst),
        .PCN(PCN),
        .PC0(PC),
        .PC4(PC4)
    );
    assign pc ={22'b0 ,PC4};

    wire [31:0] instruction;
    Instruction_memory IM(
        .a(PC),
        .d(0),
        .dpra(0),
        .clk(clk),
        .we(0),
        .spo(instruction),
        .dpo()
    );

    wire  Branch, MemtoReg, MemWrite, ALUSrc, RegWrite, Jal;
    wire [1:0]ALUop;
    Control Control(
        .opcode(instruction[6:0]),
        .Branch(Branch),
        .MemtoReg(MemtoReg),
        .MemWrite(MemWrite),
        .ALUSrc(ALUSrc),
        .RegWrite(RegWrite),
        .ALUop(ALUop),
        .Jal(Jal)
    );

    wire [31:0]rs1, rs2, WriteData;
    Registers RF(
        .clk(clk),
        .we(RegWrite),
        .wa(instruction[11:7]),
        .ra0(instruction[19:15]),
        .ra1(instruction[24:20]),
        .ra2(m_rf_addr),
        .rd0(rs1),
        .rd1(rs2),
        .rd2(rf_data),
        .wd(WriteData)
    );

    wire [31:0]Imm;
    ImmGen ImmGen(instruction,Imm);

    wire [31:0]ALUin2;
    MUX #(32)MuxAlu(
        .i0(rs2),
        .i1(Imm),
        .sel(ALUSrc),
        .out(ALUin2)
    );

    wire [2:0] ALUcontrol;
    wire [31:0] ALUresult;
    wire zero;
    ALU #(32)ALU(
        .a(rs1),
        .b(ALUin2),
        .s(ALUcontrol),
        .y(ALUresult),
        .zf(zero)
    );

    wire [31:0] ReadData;

    
    // memory address >>2
    wire [7:0] DM_a_in;
    assign DM_a_in = ALUresult[9:0] >> 2;
    Data_memory DM(
        .a(DM_a_in),
        .d(rs2),
        .dpra(m_rf_addr),
        .clk(clk),
        .we(MemWrite),
        .spo(ReadData),
        .dpo(m_data)
    );

    //memory map device
    assign io_addr = ALUresult[7:0];
    assign io_dout = ReadData;
    assign io_we = MemWrite;
    reg [31:0] mem_data_out;
    always @(*) begin
        if(io_addr==8'h0c || io_addr==8'h10)mem_data_out=io_din;
        else mem_data_out=ReadData;
    end
    //
    
    wire [31:0] WriteDataBefore;
    MUX #(32)MuxRegWrite(
        .i0(ALUresult),
        .i1(mem_data_out),  //改为mem_data_out
        .sel(MemtoReg),
        .out(WriteDataBefore)
    );

    wire [9:0] Br_add2;
    Shiftleft Shfitleft1(Imm, Br_add2);

    wire [9:0] sum_b;
    Add #(10)Add_b(PC4, Br_add2, sum_b);

    wire [9:0] PCadd4;
    Add #(10)Add_a(PC4, 10'd4, PCadd4);

    wire Branch2;
    wire [9:0]PCtemp;
    MUX #(10)MuxBranch(
        .i0(PCadd4),
        .i1(sum_b),
        .sel(Branch2),
        .out(PCtemp)
    );

    assign Branch2 = Branch & zero;

    ALUcontrol ALUcontroler(ALUop,ALUcontrol);

    MUX #(10)MUXjal(
        .i0(PCtemp),
        .i1(sum_b),
        .sel(Jal),
        .out(PCN)
    );

    MUX #(32)MUXjal_reg(
        .i0(WriteDataBefore),
        .i1({22'b0,PCadd4}),
        .sel(Jal),
        .out(WriteData)
    );
endmodule
