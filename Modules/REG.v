`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Name: Andrew Camps, Jason Tran, Steve Miller
// Project: Project 1
// Create Date: 09/05/2017 11:43:58 AM 
// Description: Register
//////////////////////////////////////////////////////////////////////////////////


module REG(d, Clk, Rst, q);

    parameter DATAWIDTH = 8;

    input Clk, Rst;
    input [DATAWIDTH - 1:0] d;
    
    reg [DATAWIDTH - 1:0] register;
    
    output reg [DATAWIDTH - 1:0] q;
    
    initial begin
        register <= 0;
    end
    
    always @(posedge Clk) begin
    
        register <= d;
    
    end
    
    always @(negedge Clk) begin
    
        q <= register;
    
    end
    
    always @(posedge Clk) begin
    
        
    
    end 
    
    always @(Rst) begin
    
        register <= 0;
    
    end
    
endmodule
