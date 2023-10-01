`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Team Members: Justyn Arnold, George Colloias, Sue Min Kwon
// Overall percent effort of each team member: Justyn (33%), George (33%), Sue (33%)
// 
// ECE369A - Computer Architecture
// Laboratory 3 (PostLab)
// Module - InstructionFetchUnit.v
// Description - Fetches the instruction from the instruction memory based on 
//               the program counter (PC) value.
// INPUTS:-
// Reset: 1-Bit input signal. 
// Clk: Input clock signal.
//
// OUTPUTS:-
// Instruction: 32-Bit output instruction from the instruction memory. 
//              Decimal value diplayed 
//
// FUNCTIONALITY:-
// Please connect up the following implemented modules to create this
// 'InstructionFetchUnit':-
//   (a) ProgramCounter.v
//   (b) PCAdder.v
//   (c) InstructionMemory.v
// Connect the modules together in a testbench so that the instruction memory
// outputs the contents of the next instruction indicated by the memory location
// in the PC at every clock cycle. Please initialize the instruction memory with
// some preliminary values for debugging purposes.
//
// @@ The 'Reset' input control signal is connected to the program counter (PC) 
// register which initializes the unit to output the first instruction in 
// instruction memory.
// @@ The 'Instruction' output port holds the output value from the instruction
// memory module.
// @@ The 'Clk' input signal is connected to the program counter (PC) register 
// which generates a continuous clock pulse into the module.
////////////////////////////////////////////////////////////////////////////////

module InstructionFetchUnit(Instruction, PCResult, Reset, Clk);

    wire [31:0] Instruction; //32-Bit wire (connected to outport during module initialization)
    
    input Reset, Clk; //1-Bit input signals, input clock signal
    
    output [31:0] Instruction; //32-Bit output instruction from the instruction memory
    output [31:0] PCResult; //32-Bit output instruction from the program counter
    wire [31:0] PCNext;
    
    //Connect implemented modules (1)ProgramCouter.v (2)PCAdder.v (3)InstructionMemory.v
    //Outputs contents of next instruction indicated by memory location in PC at every clock cycle
    
    // PCAdder(PCResult, PCAddResult)
    PCAdder a(PCResult, PCNext);
    
    // ProgramCounter(Address, PCResult, Reset, Clk)
    ProgramCounter b(PCNext, PCResult, Reset, Clk);
    
    // InstructionMemory(Address, Instruction)
    InstructionMemory c(PCResult, Instruction);
    
endmodule

