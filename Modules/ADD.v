`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Name: Andrew Camps, Jason Tran, Steve Miller
// Project: Project 1
// Create Date: 09/05/2017 11:43:58 AM 
// Description: Adder
//////////////////////////////////////////////////////////////////////////////////


module ADD(a, b, sum);

    parameter DATAWIDTH = 8;

    input [DATAWIDTH - 1:0] a, b;
    output reg [DATAWIDTH - 1:0] sum;

    always @(*) begin
    
        sum <= a + b;
    
    end

endmodule