`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2017 05:58:17 PM
// Design Name: 
// Module Name: CIRCUIT3
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


module CIRCUIT3(a, b, c, d, e, f, g, h, sa, avg);
    input [15:0] a, b, c, d, e, f, g, h;
    input [7:0] sa;
    
    output [15:0] avg;
    
    wire [31:0] l00, l01, l02, l03, l10, l11, l2, l2div2, l2div4, l2div8;
    
    ADD ADD_1(a, b, l00);
    ADD ADD_2(c, d, l01);
    ADD ADD_3(e, f, l02);
    ADD ADD_4(g, h, l03);
    ADD ADD_5(l00, l01, l10);
    ADD ADD_6(l02, l03, l11);
    ADD ADD_7(l10, l11, l2);
    SHR SHR_1(l2, sa, l2div2);
    SHR SHR_2(l2div2, sa, l2div4);
    SHR SHR_3(l2div4, sa, l2div8);
    REG REG_1(l2div8, avg);

endmodule
