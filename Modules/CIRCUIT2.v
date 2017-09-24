`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Name: Andrew Camps, Jason Tran, Steve Miller
// Create Date: 09/17/2017 05:47:12 PM
// Module Name: CIRCUIT2
//////////////////////////////////////////////////////////////////////////////////


module CIRCUIT2(a, b, c, x, z, Clk, Rst);
    input [31:0] a, b, c;
    input Clk, Rst;
    output [31:0] x, z;
    
    wire [31:0] d, e, f, g, h;
    wire dLTe, dEQe, dGTe;
    wire [31:0] xwire, zwire;
    
    ADD #(32) ADD_1(a, b, d);
    ADD #(32) ADD_2(a, c, e);
    SUB #(32) SUB_1(a, b, f);
    COMP #(32) COMP_1(d, e, dGTe, dLTe, dEQe);
    MUX2x1 #(32) MUX2x1_1(e, d, dLTe, g);
    MUX2x1 #(32) MUX2x1_2(f, g, dEQe, h);
    SHL #(32) SHL_1(g, dLTe, xwire);
    SHR #(32) SHR_1(h, dEQe, zwire);
    REG #(32) REG_1(xwire, Clk, Rst, x);
    REG #(32) REG_2(zwire, Clk, Rst, z);
endmodule
