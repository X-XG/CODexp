`timescale 1ns / 1ps

module regSRL
    #(parameter Width = 4)(
    input clk,rst,
    input[Width-1:0] d,dsr,dsl,
    input[1:0] s,
    input[2:0] a,
    output[Width-1:0] q7,q6,q5,q4,q3,q2,q1,q0
    );
    reg[Width-1:0] ary[0:7];
    wire[7:0] sel;
    integer i;
    decoder3_8 dc1(a,sel);

    always @(posedge clk,posedge rst)begin
        if(rst)begin
            for(i=0;i<8;i=i+1)begin
                ary[i]<=0;
            end
        end
        else begin
            case(s)
                2'b11: begin
                    for(i=0;i<8;i=i+1)begin
                        if(sel[i]==1)begin
                            ary[i]<=d;
                        end
                    end
                end
                2'b10: begin//右移
                    for(i=0;i<7;i=i+1)begin
                        ary[i]<=ary[i+1];
                    end
                    ary[7]<=dsr;
                end
                2'b01: begin//左移
                    for(i=0;i<7;i=i+1)begin
                        ary[i+1]<=ary[i];
                    end
                    ary[0]<=dsl;
                end
                default:;
            endcase
        end
    end

    assign q7=ary[7];
    assign q6=ary[6];
    assign q5=ary[5];
    assign q4=ary[4];
    assign q3=ary[3];
    assign q2=ary[2];
    assign q1=ary[1];
    assign q0=ary[0];
    
endmodule