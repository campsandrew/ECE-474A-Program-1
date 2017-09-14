`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Name: Andrew Camps, Jason Tran, Steve Miller
// Project: Project 1
// Create Date: 09/05/2017 11:43:58 AM 
// Description: Register
//////////////////////////////////////////////////////////////////////////////////


module REG(d, Clk, Rst, q);

    parameter DATAWIDTH = 64;

    input Clk, Rst;
    input [DATAWIDTH - 1:0] d;
    
    output reg [DATAWIDTH - 1:0] q;
    
    always @(posedge Clk) begin
        if(Rst)
            q <= 0;
        else
            q <= d;
    end
    
endmodule
