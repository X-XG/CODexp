module MUX
    #(parameter Width = 32)(
    input [Width-1:0] i0,i1,i2,
    input [1:0] sel,
    output reg[Width-1:0] out
    );
    always @(*)begin
        case(sel)
            2'b00:out=i0;
            2'b01:out=i1;
            2'b10:out=i2;
            default:out=0;   
        endcase        
    end
endmodule