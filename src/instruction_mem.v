`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/2026 02:44:27 PM
// Design Name: 
// Module Name: instruction_mem
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


module instruction_mem(
input [3:0] addr,
output [15:0] instr
    );
    
    reg [15:0] mem [0:15];
    assign instr = mem[addr];
initial begin
    mem[0]  = 16'h0880; // XOR R2, R0, R0  -> zero
    mem[1]  = 16'h1604; // test BZ 
    mem[2]  = 16'h01F5; // ADD R7, R6, R5  -> carry + zero, preserves R6/R5
    mem[3]  = 16'h0065; // ADD R1, R4, R5  -> overflow + negative, preserves R4/R5
    mem[4]  = 16'h0000;
    mem[5]  = 16'h0000;
    mem[6]  = 16'h0000;
    mem[7]  = 16'h0000;
    mem[8]  = 16'h0000;
    mem[9]  = 16'h0000;
    mem[10] = 16'h0000;
    mem[11] = 16'h0000;
    mem[12] = 16'h0000;
    mem[13] = 16'h0000;
    mem[14] = 16'h0000;
    mem[15] = 16'h0000;
end
endmodule
