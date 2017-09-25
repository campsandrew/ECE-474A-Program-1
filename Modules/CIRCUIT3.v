`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Name: Andrew Camps, Jason Tran, Steve Miller 
// Create Date: 09/17/2017 05:58:17 PM
// Module Name: CIRCUIT3
//////////////////////////////////////////////////////////////////////////////////


module CIRCUIT3(a, b, c, d, e, f, g, h, sa, avg, Clk, Rst);
    input Clk, Rst;
    input [15:0] a, b, c, d, e, f, g, h;
    input [7:0] sa;
    
    output [15:0] avg;
    
    wire [31:0] l00, l01, l02, l03, l10, l11, l2, l2div2, l2div4, l2div8;
    
    ADD #(16) ADD_1(a, b, l00);
    ADD #(16) ADD_2(c, d, l01);
    ADD #(16) ADD_3(e, f, l02);
    ADD #(16) ADD_4(g, h, l03);
    ADD #(32) ADD_5(l00, l01, l10);
    ADD #(32) ADD_6(l02, l03, l11);
    ADD #(32) ADD_7(l10, l11, l2);
    SHR #(32) SHR_1(l2, sa, l2div2);
    SHR #(32) SHR_2(l2div2, sa, l2div4);
    SHR #(32) SHR_3(l2div4, sa, l2div8);
    REG #(32) REG_1(l2div8, Clk, Rst, avg);

endmodule
