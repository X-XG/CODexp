module ImmGen (
    input [31:0]instruction,
    output reg [31:0]Imm
);
    always @(*) begin
        case(instruction[6:0])
            7'b0010011: begin   //addi
                Imm[11:0] = instruction[31:20];
                if(instruction[31]==1)
                     Imm[31:12] = 20'hfffff;
                else Imm[31:12] = 20'h00000;
            end
            7'b0000011: begin   //lw
                Imm[11:0] = instruction[31:20];
                if(instruction[31]==1)
                     Imm[31:12] = 20'hfffff;
                else Imm[31:12] = 20'h00000;
            end
            7'b0100011: begin   //sw
                Imm[11:5] = instruction[31:25];
                Imm[4:0]  = instruction[11:7];
                if(instruction[31]==1)
                     Imm[31:12] = 20'hfffff;
                else Imm[31:12] = 20'h00000;
            end
            7'b1100011: begin   //beq
                Imm[11]   = instruction[31];
                Imm[9:4] = instruction[30:25];
                Imm[3:0]  = instruction[11:8];
                Imm[10]   = instruction[7];
                if(instruction[31]==1)
                     Imm[31:12] = 19'h7ffff;
                else Imm[31:12] = 19'h00000;
            end
            7'b1101111: begin   //jal
                Imm[19]   = instruction[31];
                Imm[9:0] = instruction[30:21];
                Imm[10]   = instruction[20];
                Imm[18:11]  = instruction[19:12];
                if(instruction[31]==1)
                     Imm[31:20] = 11'h7ff;
                else Imm[31:20] = 11'h000;
            end
            default: begin   
                Imm[31:0] = 32'd0;
            end
        endcase
    end
endmodule