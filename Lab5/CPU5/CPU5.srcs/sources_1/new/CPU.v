`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/11 20:16:29
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
    input clk, rst,

    //IO_BUS
    output [7:0] io_addr,
    output [31:0] io_dout,
    output io_we,
    input [31:0] io_din,

    //Debug_BUS
    input [7:0] m_rf_addr,
    output [31:0] rf_data,
    output [31:0] m_data,

    //增加流水线寄存器调试接口
    output [31:0] pcin, pc, pcd, pce,
    output [31:0] ir, imm, mdr,
    output [31:0] a, b, y, bm, yw,
    output [4:0]  rd, rdm, rdw,
    output [31:0] ctrl, ctrlm, ctrlw 
    );

    reg [31:0] PC;
    assign pc = PC;
    wire [31:0] PCN;
    wire PC_en; 
    always @(posedge clk, posedge rst) begin
        if(rst)PC<=0;
        else if(PC_en)PC<=PCN;
        else PC<=PC;
    end

    wire [31:0] instruction;
    instruction_mem IM(
        .a(PC[9:2]),
        .spo(instruction)
    );

    wire [31:0] PCadd4;
    assign PCadd4 = PC + 4;

    wire [31:0] PCjmp;
    wire isPCjmp;
    assign PCN = isPCjmp?PCjmp:PCadd4;

    wire Regs1_en,Regs1_clr;
    IFID Reg1(
        .clk(clk),
        .PC(PC),
        .PCadd4(PCadd4),
        .instruction(instruction),
        .pcin(pcin),
        .pcd(pcd),
        .ir(ir),
        .Regs1_en(Regs1_en),
        .Regs1_clr(Regs1_clr)
    );

    wire [31:0]rs1, rs2;
    reg [31:0] WriteData;
    Registers RF(
        .clk(clk),
        .we(ctrlw[18]), //修改标记
        .wa(rdw),
        .ra0(ir[19:15]),
        .ra1(ir[24:20]),
        .ra2(m_rf_addr),
        .rd0(rs1),
        .rd1(rs2),
        .rd2(rf_data),
        .wd(WriteData)
    );

    wire [31:0]Imm;
    ImmGen ImmGen(ir,Imm);

    wire [31:0] control,pcin2;
    wire [4:0] ra1,ra2;

    //新增Regs2_clr进行分支预测失败
    wire Regs2_en,Regs2_clr;
    wire [31:0] pcin3;
    IDEX Regs2(
        .clk(clk),
        .control(control),.ctrl(ctrl),
        .rs1(rs1),.a(a),
        .rs2(rs2),.b(b),
        .Imm(Imm),.imm(imm),
        .ir(ir),.rd(rd),
        .pcin(pcin),.pcin2(pcin2),
        .pcd(pcd),.pce(pce),
        .ra1(ra1),.ra2(ra2),
        .Regs2_en(Regs2_en),
        .Regs2_clr(Regs2_clr)
    );

    wire [1:0] a_fwd,b_fwd;
    Control Controler(ir[6:0],a_fwd,b_fwd,control);

    reg [31:0] op1;
    wire [31:0] op2;
    wire [31:0] ALUresult;
    wire zero;
    ALU #(32)alu(
        .a(op1),
        .b(op2),
        .s(ctrl[3:0]),
        .y(ALUresult),
        .zf(zero)
    );
    //注意op2和bm,修改了op2为op2_temp
    reg [31:0] op2_temp;
    EXMEM Regs3(
        .clk(clk),
        .ALUresult(ALUresult),.y(y),
        .op2(op2_temp),.bm(bm),
        .ctrl(ctrl),.ctrlm(ctrlm),
        .rd(rd),.rdm(rdm),
        .pcin2(pcin2),.pcin3(pcin3)
    );
    
    wire [31:0] ReadData_temp;//map device
    wire DM_we;
    wire [31:0] ReadData;
    data_mem DM(
        .a(y[9:2]),
        .d(bm),
        .dpra(m_rf_addr),
        .clk(clk),
        .we(DM_we),//ctrlm[12]
        .spo(ReadData_temp),
        .dpo(m_data)
    );

    //memory map device
    assign DM_we=ctrlm[12]&(~y[10]);
    assign io_addr = y[7:0];
    assign io_dout = bm;
    assign io_we = ctrlm[12];
    assign ReadData = y[10]?io_din:ReadData_temp;
    /*always @(*) begin
        if(io_addr==8'h0c || io_addr==8'h10)ReadData=io_din;
        else ReadData=ReadData_temp;
    end*/
    //

    wire [31:0] pcin4;
    MEMWB Regs4(
        .clk(clk),
        .rdm(rdm),.rdw(rdw),
        .y(y),.yw(yw),
        .ctrlm(ctrlm),.ctrlw(ctrlw),
        .ReadData(ReadData),.mdr(mdr),
        .pcin3(pcin3),.pcin4(pcin4)
    );
    
    wire [31:0] LastWriteData;
    wire [4:0] rdf;
    wire rf_wr_f;

    Forwarding forwarding_unit(
        .a_fwd(a_fwd),.b_fwd(b_fwd),
        .ra1(ra1),.ra2(ra2),
        .rdm(rdm),.rdw(rdw),.rdf(rdf),
        .rf_wr_m(ctrlm[18]),
        .rf_wr_w(ctrlw[18]),
        .rf_wr_f(rf_wr_f)
    );

    always @(*) begin
        case(ctrlw[17:16])
            2'b01:WriteData=yw;     //ALUresult
            2'b10:WriteData=mdr;    //DataMem
            2'b11:WriteData=pcin4;  //PCadd4
            default:WriteData=0;
        endcase
    end

    always @(*) begin
        case (control[25:24])
            2'b00:op1=a;
            2'b01:op1=y;
            2'b10:op1=WriteData; 
            default:op1=LastWriteData; 
        endcase
    end
    always @(*) begin
        case (control[21:20])
            2'b00:op2_temp=b;
            2'b01:op2_temp=y;
            2'b10:op2_temp=WriteData;
            default:op2_temp=LastWriteData; 
        endcase
    end
    assign op2 = ctrl[4]?op2_temp:imm;

    assign PCjmp = (imm << 1) + pce;
    assign isPCjmp = ctrl[9] | (zero & ctrl[8]);

    //注意，sw输入数据(reg bm)可能还有问题，写reg时隔两个circle有相关
    //下面,新加寄存器和旁路解决相关,从155row添线
    
    WBIF regs5(
        .clk(clk),
        .WriteData(WriteData),
        .LastWriteData(LastWriteData),
        .rdw(rdw),
        .rdf(rdf),
        .rf_wr_w(ctrlw[18]),
        .rf_wr_f(rf_wr_f)
    );

    Hazard HazardUnit(
        .m_rd_idex(ctrl[13]),
        .m_wr_ifid(control[12]),
        .zero(zero),
        .beq_d(control[8]),
        .jal_d(control[9]),
        .beq(ctrl[8]),
        .jal(ctrl[9]),
        .a_sel(control[5]),
        .b_sel(control[4]),
        .rd(rd),
        .ra1(ir[19:15]),
        .ra2(ir[24:20]),
        .PC_en(PC_en),
        .Regs1_en(Regs1_en),
        .Regs1_clr(Regs1_clr),
        .Regs2_en(Regs2_en),
        .Regs2_clr(Regs2_clr)
    );
endmodule
