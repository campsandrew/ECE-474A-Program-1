`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Name: Andrew Camps, Jason Tran, Steve Miller
// Project: Project 1
// Create Date: 09/05/2017 11:43:58 AM 
// Description: Subtractor
//////////////////////////////////////////////////////////////////////////////////


module SUB(a, b, diff);

    parameter DATAWIDTH = 8;

    input [DATAWIDTH - 1:0] a, b;
    output reg [DATAWIDTH - 1:0] diff;
    
    always @(*) begin
    
        diff <= a - b;
    
    end
    
endmodule