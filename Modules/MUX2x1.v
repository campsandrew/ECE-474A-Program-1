`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Name: Andrew Camps, Jason Tran, Steve Miller
// Project: Project 1
// Create Date: 09/05/2017 11:43:58 AM 
// Description: Multiplexor
//////////////////////////////////////////////////////////////////////////////////


module MUX2x1(a, b, sel, d);

    parameter DATAWIDTH = 2;

    input [DATAWIDTH - 1:0] a, b;
    input sel;
    
    output reg [DATAWIDTH - 1:0] d;
    
    always @(*) begin
        
        if(sel == 0)
            d <= a;
        else
            d <= b;
    
    end
    
endmodule