`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Name: Andrew Camps, Jason Tran, Steve Miller
// Project: Project 1
// Create Date: 09/05/2017 11:43:58 AM 
// Description: Determines if a > b, a < b, and a == b
//////////////////////////////////////////////////////////////////////////////////


module COMP(a, b, gt, lt, eq);

    parameter DATAWIDTH = 2;

    input [DATAWIDTH - 1:0] a, b;
    output reg gt, lt, eq;
    
    initial begin
        gt <= 0; lt <= 0; eq <= 0;
    end
    
    always @(*) begin
        gt <= 0; lt <= 0; eq <= 0;
    
        if($signed(a) > $signed(b))
            gt <= 1;
        else if($signed(a) < $signed(b))
            lt <= 1;
        else
            eq <= 1;
    
    end
    
endmodule