`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2017 05:47:12 PM
// Design Name: 
// Module Name: CIRCUIT2
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


module CIRCUIT2(a, b, c, x, z, Clk, Rst);
    input [31:0] a, b, c;
    input Clk, Rst;
    output [31:0] x, z;
    
    wire [31:0] d, e, f, g, h;
    wire dLTe, dEQe, dGTe;
    wire [31:0] xwire, zwire;
    
    ADD ADD_1(a, b, d);
    ADD ADD_2(a, c, e);
    SUB SUB_1(a, b, f);
    COMP COMP_1(d, e, dGTe, dLTe, dEQe);
    MUX2x1 MUX2x1_1(d, e, dLTe, g);
    MUX2x1 MUX2x1_2(g, f, dEQe, h);
    SHL SHL_1(g, dLTe, xwire);
    SHR SHR_1(h, dEQe, zwire);
    REG REG_1(x, Clk, Rst, xwire);
    REG REG_2(z, Clk, Rst, zwire);
endmodule
