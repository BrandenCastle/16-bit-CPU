# 16-bit-CPU
Overview

Overview

This project is a custom CPU designed in Verilog using Xilinx Vivado. It features a 16-bit instruction format and a 3-stage execution cycle.

The CPU includes a 4-bit ALU, register file, program counter, branching logic, and an FSM-based control unit with Fetch, Execute, and Write states.

Core Features
16-bit instruction set
4-bit ALU opcode
8-register file
Program Counter with branching support
FSM-based control unit
Architecture

The CPU is composed of the following modules:

ALU
Register File
Program Counter
FSM (Control Unit)
Instruction Memory
Execution Cycle

The processor operates using a 3-stage cycle:

FETCH → Instruction is loaded from memory
EXECUTE → Instruction is decoded and processed
WRITE → Results are written back to the register file
Instruction Format
[15:13] Reserved
[12:9]  ALU Opcode
[8:6]   Destination Register
[5:3]   Source Register 1
r[2:0]   Source Register 2
Branch Instruction
[3:0] Branch Target Address

ALU Operations:
ADD
SUB
XOR
NOT
PASS A
PASS B
SHIFT LEFT
SHIFT RIGHT
BZ (Branch if Zero)
Flags
Z (Zero)
N (Negative)
C (Carry)
O (Overflow)

Register File:
8 registers
2 read ports
1 write port
Writes occur during the WRITE stage
Program Counter
Increments sequentially during normal execution
Loads branch target address when a branch is taken
FSM (Control Unit)
FETCH (00)
EXECUTE (01)
WRITE (10)

The FSM controls the overall execution flow of the CPU.

Branching
If the opcode is BZ and the Zero (Z) flag is set:
The Program Counter jumps to the branch target address
Testing
Verified using Vivado simulation
Successfully deployed on FPGA hardware

Future Work
GPU integration
Sound chip implementation
Assembler development
UART-based program loading
Expansion into a game console system
Key Takeaways
Demonstrates CPU architecture design
Implements FSM-based control logic
Validated through simulation and FPGA deployment
Includes custom instruction set design
