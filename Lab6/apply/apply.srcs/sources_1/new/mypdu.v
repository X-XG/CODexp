`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/04 15:48:55
// Design Name: 
// Module Name: sort
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


module mypdu(
    input clk,rst,
    input rx,
    output tx
    );

    wire [7:0] io_addr;
    wire [31:0] io_dout;
    wire io_we;
    reg [31:0] io_din;
    CPU cpu(
        .clk(clk),.rst(rst),
        .io_addr(io_addr),
        .io_dout(io_dout),
        .io_we(io_we),
        .io_din(io_din)
    );

    wire rx_vld;
    wire [7:0] rx_data;
    rx RX(
        .clk(clk),.rst(rst),
        .rx(rx),
        .rx_vld(rx_vld),
        .rx_data(rx_data)
    );

    reg rx_vld_delay;
    reg [2:0] cnt;
    always @(posedge clk,posedge rst) begin
        if (rst) cnt <= 0;
        else if(rx_vld) cnt<=3'd1;
        else if (cnt != 0) cnt<=cnt +1;
        else cnt <= cnt;
    end
    always @(*) begin
        if (cnt ==0 )rx_vld_delay=0;
        else rx_vld_delay=1;
    end

    reg tx_ready;
    wire tx_rd;
    reg [7:0] tx_data;
    tx TX(
        .clk(clk),.rst(rst),
        .tx(tx),
        .tx_ready(tx_ready),
        .tx_rd(tx_rd),
        .tx_data(tx_data)
    );

    reg tx_rd_delay;
    reg [2:0] cnt_tx;
    always @(posedge clk,posedge rst) begin
        if(rst) cnt_tx<= 0;
        else if(tx_rd) cnt_tx<=3'd1;
        else if (cnt_tx != 0) cnt_tx<=cnt_tx +1;
        else cnt_tx <= cnt_tx;
    end
    always @(*) begin
        if (cnt_tx ==0 )tx_rd_delay=0;
        else tx_rd_delay=1;
    end

    always @(*) begin
        case(io_addr)
            8'h00: io_din= {{31{1'b0}}, rx_vld_delay};
            8'h04: io_din= {{24{1'b0}}, rx_data};
            8'h08: io_din= {{31{1'b0}}, tx_rd_delay};
            default: io_din = 0;
        endcase
    end

    always @(posedge clk, posedge rst)begin
        if (rst) begin
            tx_ready <= 0;
        end
        else if (io_we)
            case (io_addr)
                8'h0c: tx_ready <= io_dout[0];
                8'h10: tx_data <= io_dout[7:0];
                default: ;
            endcase
        end
endmodule
