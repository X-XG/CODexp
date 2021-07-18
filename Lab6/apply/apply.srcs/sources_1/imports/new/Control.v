`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/11 21:18:01
// Design Name: 
// Module Name: Control
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


module Control(
    input [31:0] ir,
    output reg[31:0] control
    );
    localparam ALUresult = 2'b01, DataMem=2'b10, PCadd4=2'b11,IDIE=2'b00;
    wire [6:0] opcode;
    assign opcode = ir[6:0];

    always @(*) begin
        control[25:24]=0;
        control[21:20]=0;
        control[31:26]=0;
        control[23:22]=0;
        control[19]=0;
        control[15:14]=0;
        control[11:10]=0;
        control[7:6]=0;
        case(opcode)
            7'b0110011: begin   //R-tpye
                case(ir[14:12])
                    3'b000:control[3:0]=4'b0010;    //add
                    3'b110:control[3:0]=4'b0001;    //or
                    3'b100:control[3:0]=4'b1111;    //xor
                    3'b111:control[3:0]=4'b0000;    //and
                    3'b001:control[3:0]=4'b1000;    //lshift
                    default: control[3:0]=4'b0000;
                endcase
                control[5:4]=2'b11;
                control[9:8]=2'b00;
                control[13:12]=2'b00;
                control[18]=1;
                control[17:16]=ALUresult;
            end
            7'b0010011: begin   //I-tpye
                case(ir[14:12])
                    3'b000:control[3:0]=4'b0010;    //add
                    3'b110:control[3:0]=4'b0001;    //or
                    3'b100:control[3:0]=4'b1111;    //xor
                    3'b111:control[3:0]=4'b0000;    //and
                    default: control[3:0]=4'b0000;
                endcase
                control[5:4]=2'b10;
                control[9:8]=2'b00;
                control[13:12]=2'b00;
                control[18]=1;
                control[17:16]=ALUresult;
            end
            7'b0000011: begin   //lw
                control[3:0]=4'b0010;
                control[5:4]=2'b10;
                control[9:8]=2'b00;
                control[13:12]=2'b10;
                control[18]=1;
                control[17:16]=DataMem;
            end
            7'b0100011: begin   //sw
                control[3:0]=4'b0010;
                control[5:4]=2'b10;
                control[9:8]=2'b00;
                control[13:12]=2'b01;
                control[18]=0;
                control[17:16]=IDIE;
            end
            7'b1100011: begin   //beq
                control[3:0]=4'b0110;
                control[5:4]=2'b11;
                control[9:8]=2'b01;
                control[13:12]=2'b00;
                control[18]=0;
                control[17:16]=IDIE;
            end
            7'b1101111: begin   //jal
                control[3:0]=4'b0010;
                control[5:4]=2'b00;
                control[9:8]=2'b10;
                control[13:12]=2'b00;
                control[18]=1;
                control[17:16]=PCadd4;
            end
            7'b1100111: begin //jalr
                control[3:0]=4'b0010;
                control[5:4]=2'b10;
                control[9:8]=2'b10;
                control[13:12]=2'b00;
                control[18]=1;
                control[17:16]=PCadd4;
            end
            default: begin   
                control[3:0]=4'b0000;
                control[5:4]=2'b00;
                control[9:8]=2'b00;
                control[13:12]=2'b00;
                control[18]=0;
                control[17:16]=IDIE;
            end
        endcase
    end
endmodule
