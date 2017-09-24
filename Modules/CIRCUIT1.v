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


module CIRCUIT1(a, b, c, x, z, Clk, Rst);
    
    input Clk, Rst;
    input [7:0] a, b, c;
    output [7:0] z;
    output [15:0] x;
    
    wire [7:0] d, e;
    wire [15:0] f, g_lt, g_gt, g_eq, xwire;
    
    ADD #(8) ADD_1(a, b, d);
    ADD #(8) ADD_2(a, c, e);
    COMP #(8) COMP_1(d, e, g_gt, g_lt, g_eq);
    MUX2x1 #(8) MUX2x1_1(e, d, g_gt, z);
    MUL #(16) MUL_1(a, c, f);
    SUB #(16) SUB_1(f, d, xwire);
    REG #(16) REG_1(xwire, Clk, Rst, x);

endmodule
