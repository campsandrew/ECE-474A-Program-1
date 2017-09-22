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


module CIRCUIT5(a, b, c, x, z);
    
    input [63:0] a, b, c;
    output [31:0] x, z;
    
    wire [63:0] d, e, f, g, h; 
    wire dLTe, dEQe, dGTe;
    wire [63:0] xrin, zrin;
    
    reg [63:0] greg, hreg;
    
    ADD #() add1(a, b, d);
    ADD #() add2(a, c, e);
    SUB #() sub1(a, b, f);
    COMP #() comp1(d, e, dGTe, dLTe, dEQe);
    COMP #() comp2(d, e, dGTe, dLTe, dEQe);
    MUX #() mux1(e, d, dLTe, g);
    MUX #() mux2(f, g, dEQe, h);
    SHL #() shl1();
    SHR #() shr1();
    
    REG #() reg1();
    REG #() reg2();
    
    always @(g, h) begin
        greg <= g; hreg <= h;
    end
    
    d = a + b
    e = a + c
    f = a - b  
    dEQe = d == e
    dLTe = d < e
    g = dLTe ? d : e 
    h = dEQe ? g : f 
    greg = g
    hreg = h
    xrin = hreg << dLTe
    zrin = greg >> dEQe
    x = xrin
    z = zrin
    
endmodule