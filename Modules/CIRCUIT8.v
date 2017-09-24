`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2017 05:35:13 PM
// Design Name: 
// Module Name: CIRCUIT1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module CIRCUIT8(a, b, c, zero, Clk, Rst, z);
    
    input Clk, Rst;
    input [63:0] a, b, c, zero;

    output [63:0] z;

    wire [63:0] e, f, g, zwire;
    wire gEQz, gLTz, gEQz;  
    
    DEC #(64) dec1(a, e);
    INC #(64) inc1(c, f);
    MOD #(64) mod1(a, c, g);
    COMP #(64) comp1(g, zero, gGTz, gLTz, gEQz);
    MUX2x1 #(64) mux1(f, e, gEQz, zwire);
    REG #(64) reg1(zwire, Clk, Rst, z);
    

endmodule