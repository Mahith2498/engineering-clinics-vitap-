`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/08/2026 05:00:03 PM
// Design Name: 
// Module Name: four_three_compr
// Project Name: 
//////////////////////////////////////////////////////////////////////////////////
`include "fulladder.v"
`include "halfadder.v"

module four_three_compr(
input y1,y2,y3,y4,
output sum1, sum2,carryout1
    );
    wire z1,z2,z3,z4,z5; 
    
    halfadder ha1(.a(y1), .b(y2), .sum(z4), .cout(z3)); 
    halfadder ha2(.a(y3), .b(y4), .sum(z2), .cout(z1)); 
    halfadder ha3(.a(z4), .b(z2), .sum(sum1), .cout(z5)); 
    fulladder fa1(.A(z1), .B(z5), .CIN(z3), .SUM(sum2), .COUT(carryout1)); 
    
endmodule
