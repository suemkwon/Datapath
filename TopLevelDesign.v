`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/31/2023 11:00:26 AM
// Design Name: 
// Module Name: TopLevelDesign
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


module TopLevelDesign(Clk, Reset, out7, en_out);
    input Clk;
    input Reset;
    output [6:0] out7;
    output [7:0] en_out;
        wire [31:0] numA, numB;

    // ClkDiv(Clk, Rst, ClkOut)
    ClkDiv d(Clk, 0, ClkOut);
    
    // InstructionFetchUnit(Instruction, PCResult, Reset, Clk)
    InstructionFetchUnit e(numA, numB, Reset, ClkOut);
    
    // Two4DigitDisplay(Clk, NumberA, NumberB, out7, en_out)
    Two4DigitDisplay f(Clk, numA[15:0], numB[15:0], out7, en_out);

endmodule
