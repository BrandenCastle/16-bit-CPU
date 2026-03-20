`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/17/2026 04:48:11 PM
// Design Name: 
// Module Name: CPU_top_tb
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


module CPU_top_tb;

    reg clk;
    reg rst;
    wire [15:0] r;
    wire z, n, c, o;

    CPU_top uut (
        .clk(clk),
        .rst(rst),
        .r(r),
        .z(z),
        .n(n),
        .c(c),
        .o(o)
    );

    // clock
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        $display("time clk rst pc instr alu btgt we pc_en br_taken r z n c o");
        $monitor("%4t  %b   %b   %h  %h  %h   %h    %b   %b     %b      %h %b %b %b %b",
                 $time,
                 clk,
                 rst,
                 uut.pc,
                 uut.instr,
                 uut.alu_op,
                 uut.branch_target,
                 uut.we,
                 uut.pc_en,
                 uut.branch_taken,
                 r,
                 z, n, c, o);

        rst = 1'b1;
        #12;
        rst = 1'b0;

        #250;
        $finish;
    end

endmodule
