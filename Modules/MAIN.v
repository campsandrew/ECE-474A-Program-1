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
    input a, b; output wire a1; // ADD args
    input c, d; output wire a2_gt, a2_lt, a2_eq; // COMP args
    input e; output wire a3; // DEC args
    input f, g; output wire a4; // DIV args
    input h; output wire a5; // INC args
    input i, j; output wire a6; // MOD args
    input k, l; output wire a7; // MUL args
    input m, n, a8_sel; output wire a8; // MUX2x1 args
    input o, clk, rst; output wire a9; // REG args
    input p, p_amt; output wire a10; // SHL args
    input q, q_amt; output wire a11; // SHR args
    input r, s; output wire a12; // SUB args
    
    ADD ADD_1(a, b, a1);
    COMP COMP_1(c, d, a2_gt, a2_lt, a2_eq);
    DEC DEC_1(e, a3);
    DIV DIV_1(f, g, a4);
    INC INC_1(h, a5);
    MOD MOD_1(i, j, a6);
    MUL MUL_1(k, l, a7);
    MUX2x1 MUX2x1_1(m, n, a8_sel, a8);
    REG REG_1(o, clk, rst, a9);
    SHL SHL_1(p, p_amt, a10);
    SHR SHR_1(q, q_amt, a11);
    SUB SUB_1(r, s, a12);
endmodule
