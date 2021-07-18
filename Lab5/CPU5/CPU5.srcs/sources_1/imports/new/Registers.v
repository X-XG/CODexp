module Registers(
    input wire clk,we,
    input wire [4:0] wa, ra0, ra1, ra2,
    input wire [31:0] wd, 
    output wire [31:0] rd0, rd1, rd2
    );
    reg [31:0] regfile[0:31];

    initial begin
        regfile[0]=0;   
    end
    
    assign  rd0 = regfile[ra0],
            rd1 = regfile[ra1],
            rd2 = regfile[ra2];

    always @ (posedge clk)begin
        if(we && wa != 0)regfile[wa] <= wd;
    end
endmodule
