`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2017 10:17:14 AM
// Design Name: 
// Module Name: MAIN
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


module MAIN(a, b, c, d, e, f, g, h, i, j, k, l, m, n, a8_sel, o, clk, rst, p, p_amt, q, q_amt, r, s, a1, a2_gt, a2_lt, a2_eq, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
    parameter DATAWIDTH = 2;
    
    input [DATAWIDTH - 1:0] a, b; output [DATAWIDTH - 1:0] a1; // ADD args
    input [DATAWIDTH - 1:0] c, d; output a2_gt, a2_lt, a2_eq; // COMP args
    input [DATAWIDTH - 1:0] e; output [DATAWIDTH - 1:0] a3; // DEC args
    input [DATAWIDTH - 1:0] f, g; output [DATAWIDTH - 1:0] a4; // DIV args
    input [DATAWIDTH - 1:0] h; output [DATAWIDTH - 1:0] a5; // INC args
    input [DATAWIDTH - 1:0] i, j; output [DATAWIDTH - 1:0] a6; // MOD args
    input [DATAWIDTH - 1:0] k, l; output [DATAWIDTH - 1:0] a7; // MUL args
    input [DATAWIDTH - 1:0] m, n; input a8_sel; output [DATAWIDTH - 1:0] a8; // MUX2x1 args
    input [DATAWIDTH - 1:0] o; input clk, rst; output [DATAWIDTH - 1:0] a9; // REG args
    input [DATAWIDTH - 1:0] p; input [$clog2(DATAWIDTH) - 1:0] p_amt; output [DATAWIDTH - 1:0] a10; // SHL args
    input [DATAWIDTH - 1:0] q; input [$clog2(DATAWIDTH) - 1:0] q_amt; output [DATAWIDTH - 1:0] a11; // SHR args
    input [DATAWIDTH - 1:0] r, s; output [DATAWIDTH - 1:0] a12; // SUB args
    
    ADD #(DATAWIDTH) ADD_1(a, b, a1);
    COMP #(DATAWIDTH) COMP_1(c, d, a2_gt, a2_lt, a2_eq);
    DEC #(DATAWIDTH) DEC_1(e, a3);
    DIV #(DATAWIDTH) DIV_1(f, g, a4);
    INC #(DATAWIDTH) INC_1(h, a5);
    MOD #(DATAWIDTH) MOD_1(i, j, a6);
    MUL #(DATAWIDTH) MUL_1(k, l, a7);
    MUX2x1 #(DATAWIDTH) MUX2x1_1(m, n, a8_sel, a8);
    REG #(DATAWIDTH) REG_1(o, clk, rst, a9);
    SHL #(DATAWIDTH) SHL_1(p, p_amt, a10);
    SHR #(DATAWIDTH) SHR_1(q, q_amt, a11);
    SUB #(DATAWIDTH) SUB_1(r, s, a12);
endmodule
