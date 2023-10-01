`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// ECE369A - Computer Architecture
// Laboratory 1 
// Module - PCAdder_tb.v
// Description - Test the 'PCAdder.v' module.
////////////////////////////////////////////////////////////////////////////////

module PCAdder_tb();

    reg [31:0] PCResult; //32-Bit reg

    wire [31:0] PCAddResult; //32-Bit wire

    //Instantiate PCAdder
    PCAdder u0(
        .PCResult(PCResult), 
        .PCAddResult(PCAddResult)
    );

	initial begin
	
	//Test Cases
    #100
    PCResult <= 32'h00000000; //Test Value Needed
    #20
    $display("Result: %h", PCAddResult);
    
    #100 
    PCResult <= 32'h00000000; //Test Value Needed
    #20 
    $display("Result: %h", PCAddResult);
    
    #100
    PCResult <= 32'h00000000; //Test Value Needed
    #20
    $display("Result: %h", PCAddResult);
    
    #100
    PCResult <= 32'h00000000; //Test Value Needed
    #20
    $display("Result: %h", PCAddResult);
    
    #100
    PCResult <= 32'h00000000; //Test Value Needed
    #20
    $display("Result: %h", PCAddResult);
	
	end

endmodule

