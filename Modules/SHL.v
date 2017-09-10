`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Name: Andrew Camps, Jason Tran, Steve Miller
// Project: Project 1
// Create Date: 09/05/2017 11:43:58 AM 
// Description: Logically shifts input sh_amt positions to the left
//////////////////////////////////////////////////////////////////////////////////


module SHL(a, sh_amt, d);

    parameter DATAWIDTH = 8;
    
    input [DATAWIDTH - 1:0] a;
    input [$clog2(DATAWIDTH) - 1:0] sh_amt;
    
    output reg [DATAWIDTH - 1:0] d;
    
    always @(*) begin
    
        d <= a << sh_amt;
    
    end

endmodule