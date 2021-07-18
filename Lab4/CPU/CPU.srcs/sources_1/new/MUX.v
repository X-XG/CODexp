module MUX
    #(parameter Width = 32)(
    input [Width-1:0] i0,i1,
    input sel,
    output reg[Width-1:0] out
    );
    always @(*)begin
        case(sel)
            1'b0:out=i0;
            default:out=i1;   
        endcase        
    end
endmodule