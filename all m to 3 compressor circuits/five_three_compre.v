`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/08/2026 05:48:43 PM
// Design Name: 
// Module Name: five_three_compre
// Project Name: 
//////////////////////////////////////////////////////////////////////////////////
`include "fulladder.v"
`include "halfadder.v"

module five_three_compre(
input y5,y6,y7,y8,y9,
output sum3, sum4, carryout2
    );
    wire z6,z7,z8;
    
    fulladder fa2(.A(y5), .B(y6), .CIN(z7), .SUM(sum3), .COUT(z8)); 
    fulladder fa3(.A(y7), .B(y8), .CIN(y9), .SUM(z7), .COUT(z6)); 
    halfadder ha4(.a(z8), .b(z6), .cout(carryout2), . sum(sum4));  
    
endmodule
