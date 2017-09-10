`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Name: Andrew Camps, Jason Tran, Steve Miller
// Project: Project 1
// Create Date: 09/05/2017 11:43:58 AM 
// Description: Returns a - 1
//////////////////////////////////////////////////////////////////////////////////


module DEC(a, d);

    parameter DATAWIDTH = 8;

    input [DATAWIDTH - 1:0] a;
    output reg [DATAWIDTH - 1:0] d;
    
    always @(*) begin
    
        d <= a - 1;
    
    end
    
endmodule