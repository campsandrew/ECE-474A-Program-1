`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Name: Andrew Camps, Jason Tran, Steve Miller
// Project: Project 1
// Create Date: 09/05/2017 11:43:58 AM 
// Description: Multiplier
//////////////////////////////////////////////////////////////////////////////////


module MUL(a, b, prod);

    parameter DATAWIDTH = 2;

    input [DATAWIDTH - 1:0] a, b;
    output reg [DATAWIDTH - 1:0] prod;
    
    always @(*) begin
    
        prod <= a * b;
    
    end
    
endmodule
