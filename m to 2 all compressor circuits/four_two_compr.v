`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 04/07/2026 10:09:06 PM
// Design Name: KOTHAPALLI MAHITH VATHSAV 
// Module Name: four_two_compr
// Project Name: 4 to 2 compressor circuit  
//////////////////////////////////////////////////////////////////////////////////
`include "fulladder.v"

module four_two_compr(
input b1,b2,b3,b4,
input carryin1,
output sum1,
output cout01,
output carryout1

    );
    
    wire m1; 
    
    fulladder f1(.A(m1), .B(b1), .CIN(carryin1), .SUM(sum1), .COUT(cout01)); 
    fulladder f2(.A(b2), .B(b3), .CIN(b4), .SUM(m1), .COUT(carryout1)); 
endmodule
