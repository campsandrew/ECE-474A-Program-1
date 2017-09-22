`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Names: Andrew Camps, Jason Tran
// Create Date: 09/17/2017 05:35:13 PM
// Module Name: CIRCUIT1
//////////////////////////////////////////////////////////////////////////////////


module CIRCUIT4(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, Clk, Rst, final);
    
    input Clk, Rst;
    input [7:0] a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p;
    output [31:0] final;
    
    wire [31:0] t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12, t13, t14;
    
    ADD #(32) add1(a, b, t1);
    ADD #(32) add2(t1, c, t2);
    ADD #(32) add3(t2, d, t3);
    ADD #(32) add4(t3, e, t4);
    ADD #(32) add5(t4, f, t5);
    ADD #(32) add6(t5, g, t6);
    ADD #(32) add7(t6, h, t7);
    ADD #(32) add8(t7, i, t8);
    ADD #(32) add9(t8, j, t9);
    ADD #(32) add10(t9, l, t10);
    ADD #(32) add11(t10, m, t11);
    ADD #(32) add12(t11, n, t12);
    ADD #(32) add13(t12, o, t13);
    ADD #(32) add14(t13, p, t14);
    
    REG #(32) reg1(t14, Clk, Rst, final);

endmodule