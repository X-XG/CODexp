`timescale 1ns / 1ps

module Timer
    #(parameter n = 10000)(
    //input [3:0] n,
    input st,clk,
    output reg td
    );
    integer count;
    reg[1:0] state;
    localparam s0=2'b00,s1=2'b01,s2=2'b10,s3=2'b11;

    always @(posedge clk) begin
            case(state)
                s0: begin
                    if(st==1)begin
                        state<=s0;
                    end
                    else state<=s3;
                end
                s1: begin
                    if(count==0)state=s0;
                    else if(st==1)begin
                        state<=s1;
                        count<=count-1;
                        end
                    else begin
                        state<=s2;
                        count<=count-1;
                    end
                end
                s2: begin
                    if(count==0)state=s0;
                    else if(st==1)begin
                        state<=s1;
                        count<=n-1;
                    end
                    else begin
                        state<=s2;
                        count<=count-1;
                    end
                end
                s3: begin
                    if(st==1)begin
                        state<=s1;
                        count<=n-1;
                    end
                    else state<=s3;
                end
            endcase
    end
    always @(state)begin
        if(state==s0 || state==s3)td=1;
        else td=0;
    end
endmodule
