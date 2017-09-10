`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Name: Andrew Camps, Jason Tran, Steve Miller
// Project: Project 1
// Create Date: 09/05/2017 11:43:58 AM 
// Description: returns remainder of a / b
//////////////////////////////////////////////////////////////////////////////////


module MOD(a, b, rem);

    parameter DATAWIDTH = 8;

    input [DATAWIDTH - 1:0] a, b;
    output reg [DATAWIDTH - 1:0] rem;
    
    always @(*) begin
    
        rem <= a % b;
    
    end

endmodule