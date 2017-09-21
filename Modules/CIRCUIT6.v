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


module CIRCUIT6(a, b, c, d, e, f, g, h, num, avg);
    
    input [15:0] a, b, c, d, e, f, g, h, num;

    output [15:0] avg;

    reg [15:0] r1, r2, r3, r4, r5, r6, r7;

    wire [15:0] avgwire;
    wire [31:0] t1, t2, t3, t4, t5, t6, t7;

endmodule