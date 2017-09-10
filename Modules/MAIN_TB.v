`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2017 10:38:46 AM
// Design Name: 
// Module Name: MAIN_TB
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


module MAIN_TB();
    reg a, b; wire a1; // ADD args
    reg c, d; wire a2_gt, a2_lt, a2_eq; // COMP args
    reg e; wire a3; // DEC args
    reg f, g; wire a4; // DIV args
    reg h; wire a5; // INC args
    reg i, j; wire a6; // MOD args
    reg k, l; wire a7; // MUL args
    reg m, n, a8_sel; wire a8; // MUX2x1 args
    reg o, clk, rst; wire a9; // REG args
    reg p, p_amt; wire a10; // SHL args
    reg q, q_amt; wire a11; // SHR args
    reg r, s; wire a12; // SUB args

    MAIN MAIN_1(a, b, c, d, e, f, g, h, i, j, k, l, m, n, a8_sel, o, clk, rst, p, p_amt, q, q_amt, r, s, a1, a2_gt, a2_lt, a3_eq, a4, a5, a6, a7, a8, a9, a10, a11, a12);

    always
        #10 clk <= ~clk;    // clock functionality
    
    initial begin
    
    end
endmodule
