`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Name: Andrew Camps, Jason Tran
// Create Date: 09/17/2017 05:35:13 PM
// Module Name: CIRCUIT1
//////////////////////////////////////////////////////////////////////////////////


module CIRCUIT6(a, b, c, d, e, f, g, h, num, Clk, Rst, avg);
    
    input Clk, Rst;
    input [15:0] a, b, c, d, e, f, g, h, num;

    output [15:0] avg;

    wire [15:0] r1, r2, r3, r4, r5, r6, r7;

    wire [15:0] avgwire;
    wire [31:0] t1, t2, t3, t4, t5, t6, t7;
    
    ADD #(32) add1(a, b, t1);
    REG #(32) reg1(t1, Clk, Rst, r1);
    ADD #(32) add2(r1, c, t2);
    REG #(32) reg2(t2, Clk, Rst, r2);
    ADD #(32) add3(r2, d, t3);
    REG #(32) reg3(t3, Clk, Rst, r3);
    ADD #(32) add4(r3, e, t4);
    REG #(32) reg4(t4, Clk, Rst, r4);
    ADD #(32) add5(r4, f, t5);
    REG #(32) reg5(t5, Clk, Rst, r5);
    ADD #(32) add6(r5, g, t6);
    REG #(32) reg6(t6, Clk, Rst, r6);
    ADD #(32) add7(r6, h, t7);
    REG #(32) reg7(t7, Clk, Rst, r7);
    
    DIV #(16) div1(r7, num, avgwire);
    REG #(16) reg8(avgwire, Clk, Rst, avg);

endmodule