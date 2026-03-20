`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/17/2026 05:33:48 PM
// Design Name: 
// Module Name: register_file_tb
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


module register_file_tb;

    reg clk, we;
    reg [2:0] waddr, raddr1, raddr2;
    reg [15:0] wdata;
    wire [15:0] rdata1, rdata2;

    register_file uut (
        .clk(clk),
        .we(we),
        .waddr(waddr),
        .raddr1(raddr1),
        .raddr2(raddr2),
        .wdata(wdata),
        .rdata1(rdata1),
        .rdata2(rdata2)
    );

    // clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        $display("time clk we waddr wdata  raddr1 rdata1  raddr2 rdata2");
        $monitor("%4t  %b   %b   %d   %h    %d     %h    %d     %h",
                 $time, clk, we, waddr, wdata, raddr1, rdata1, raddr2, rdata2);

        // initial values
        we = 0;
        waddr = 3'b000;
        wdata = 16'h0000;
        raddr1 = 3'b000;
        raddr2 = 3'b000;

        // wait a little
        #10;

        // write 0x1234 to register 3
        we = 1;
        waddr = 3'b011;
        wdata = 16'h1234;
        #10;

        // stop writing, read register 3 on port 1
        we = 0;
        raddr1 = 3'b011;
        #10;

        // write 0xABCD to register 5
        we = 1;
        waddr = 3'b101;
        wdata = 16'hABCD;
        #10;

        // stop writing, read register 5 on port 2
        we = 0;
        raddr2 = 3'b101;
        #10;

        // read both registers at once
        raddr1 = 3'b011;
        raddr2 = 3'b101;
        #10;

        // attempt no-write with we = 0
        waddr = 3'b001;
        wdata = 16'hFFFF;
        we = 0;
        #10;

        // check register 1 stayed unchanged
        raddr1 = 3'b001;
        #10;

        $finish;
    end

endmodule
