`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Name: Andrew Camps, Jason Tran, Steve Miller
// Create Date: 09/17/2017 05:35:13 PM
// Module Name: CIRCUIT1
//////////////////////////////////////////////////////////////////////////////////


module CIRCUIT7(a, b, c, d, zero, Clk, Rst, z);
    
    input Clk, Rst;
    input [63:0] a, b, c, d, zero;

    output [63:0] z;

    wire [63:0] e, f, g, zwire;
    wire gEQz, gLTz, gGTz;  
    
    DIV #(64) div1(a, b, e);
    DIV #(64) div2(c, d, f);
    MOD #(64) mod1(a, b, g);
    COMP #(64) comp1(g, zero, gGTz, gLTz, gEQz);
    MUX2x1 #(64) mux1(f, e, gEQz, zwire);
    REG #(64) reg1(zwire, Clk, Rst, z);
    
endmodule