`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// ECE369A - Computer Architecture
// Laboratory 1
// Module - ProgramCounter_tb.v
// Description - Test the 'ProgramCounter.v' module.
////////////////////////////////////////////////////////////////////////////////

module ProgramCounter_tb(); 

	reg [31:0] Address; //32-Bit reg
	reg Reset, Clk; //1-Bit reg

	wire [31:0] PCResult; //[32-Bit wire

    //Instantiate ProgramCounter
    ProgramCounter u0(
        .Address(Address), 
        .PCResult(PCResult), 
        .Reset(Reset), 
        .Clk(Clk)
    );

	initial begin
		Clk <= 1'b0;
		forever #10 Clk <= ~Clk;
	end

	initial begin
	
	//Test Cases
    Address <= 32'h00000000;
    Reset <= 1'b0;
    
    Address <= 32'h00000000;
    Reset <= 1'b0;
    
    Address <= 32'h00000000;
    Reset <= 1'b0;
	
	end

endmodule

