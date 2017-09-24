`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Name: Andrew Camps, Jason Tran, Steve Miller
// Project: Project 1
// Create Date: 09/05/2017 11:43:58 AM 
// Description: Divider
//////////////////////////////////////////////////////////////////////////////////


module DIV(a, b, quot);

    parameter DATAWIDTH = 2;

    input [DATAWIDTH - 1:0] a, b;
    output reg [DATAWIDTH - 1:0] quot;
    
    always @(*) begin
    
        quot <= a / b;
    
    end
    
endmodule