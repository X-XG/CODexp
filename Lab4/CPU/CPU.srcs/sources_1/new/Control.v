module Control (
    input [6:0] opcode,
    output reg  Branch,
                MemtoReg,
                MemWrite,
                ALUSrc,
                RegWrite,
                Jal,
    output reg [1:0] ALUop
);

    always @(*) begin
        case(opcode)
            7'b0110011: begin   //add
                ALUop    = 2'b10;
                Branch   = 0;
                MemtoReg = 0;
                MemWrite = 0;
                RegWrite = 1;
                ALUSrc   = 0;
                Jal      = 0;
            end
            7'b0010011: begin   //addi
                ALUop    = 2'b10;
                Branch   = 0;
                MemtoReg = 0;
                MemWrite = 0;
                RegWrite = 1;
                ALUSrc   = 1;
                Jal      = 0;
            end
            7'b0000011: begin   //lw
                ALUop    = 2'b00;
                Branch   = 0;
                MemtoReg = 1;
                MemWrite = 0;
                RegWrite = 1;
                ALUSrc   = 1;
                Jal      = 0;
            end
            7'b0100011: begin   //sw
                ALUop    = 2'b00;
                Branch   = 0;
                MemtoReg = 0;
                MemWrite = 1;
                RegWrite = 0;
                ALUSrc   = 1;
                Jal      = 0;
            end
            7'b1100011: begin   //beq
                ALUop    = 2'b01;
                Branch   = 1;
                MemtoReg = 0;
                MemWrite = 0;
                RegWrite = 0;
                ALUSrc   = 0;
                Jal      = 0;
            end
            7'b1101111: begin   //jal
                ALUop    = 2'b00;
                Branch   = 1;
                MemtoReg = 0;
                MemWrite = 0;
                RegWrite = 1;
                ALUSrc   = 1;
                Jal      = 1;
            end
            default: begin   
                ALUop    = 2'b00;
                Branch   = 0;
                MemtoReg = 0;
                MemWrite = 0;
                RegWrite = 0;
                ALUSrc   = 0;
                Jal      = 0;
            end
        endcase
    end
endmodule