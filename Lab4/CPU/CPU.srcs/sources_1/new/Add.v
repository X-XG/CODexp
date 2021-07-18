module Add
    #(parameter Width = 32)(
    input [Width-1:0] a,b,
    output [Width-1:0] sum
    );
    assign sum = a + b;
endmodule