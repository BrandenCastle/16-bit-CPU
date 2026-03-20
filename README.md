# 16-bit-CPU
This is a CPU that I built in Vivado using verilog. It has a 16-bit instruction set and is complete with a 4-bit alu, file register, a Program counter, branches, a detailed instruction set, and and an FSM that has Fetch, execute, and write states

16-bit CPU in Verilog (Vivado)
-Overview
-This project is a custom CPU designed in Verilog using Xilinx Vivado. It features a 16-bit instruction
format and a 3-stage execution cycle.
-Core Features
- 16-bit instruction set- 4-bit ALU opcode- 8-register file- Program Counter with branching- FSM control unit Architecture
-Modules include ALU, Register File, Program Counter, FSM, and Instruction Memory.
-Execution Cycle
-FETCH → EXECUTE → WRITE
-Instruction Format
-[15:13] Reserved
-[12:9] ALU Opcode
-[8:6] Destination Register
-[5:3] Source Register 1
-[2:0] Source Register 2
-Branch Instruction
-[3:0] Branch Target Address
-ALU Operations
-ADD, SUB, XOR, NOT, PASS A/B, SHIFT LEFT/RIGHT, BZ
-Flags
-Z (Zero), N (Negative), C (Carry), O (Overflow)
-Register File
-8 registers, 2 reads, 1 write. Writes occur during WRITE stage.
-Program Counter
-Increments normally or loads branch target if branch is taken.
-FSM
-States: FETCH (00), EXECUTE (01), WRITE (10). Controls execution flow.
-Branching
-If opcode is BZ and Z flag is set, PC jumps to branch target.
-Testing
-Verified using Vivado simulation and deployed on FPGA hardware.
-Future Work
-GPU, sound chip, assembler, UART loading, and game console features.
-Key Takeaways
-Demonstrates CPU architecture, FSM control, FPGA deployment, and instruction design.
