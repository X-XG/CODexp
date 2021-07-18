module MEMWB(
    input clk,
    input [4:0] rdm,
    input [31:0] y,ReadData,ctrlm,pcin3,
    output reg [31:0] yw,mdr,ctrlw,pcin4,
    output reg [4:0] rdw
    );
    always @(posedge clk) begin
        rdw <= rdm;
        yw <= y;
        mdr <= ReadData;
        ctrlw <= ctrlm;
        pcin4 <= pcin3;
    end
endmodule