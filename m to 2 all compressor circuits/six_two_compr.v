`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 04/07/2026 11:47:48 PM
// Designer Name: KOTHAPALLI MAHITH VATHSAV 
// Module Name: six_two_compr
// Project Name: 
//////////////////////////////////////////////////////////////////////////////////
`include "fulladder.v"
module six_two_compr(
input d1,d2,d3,d4,d5,d6,
input carryin4, carryin5, carryin6,
output cout03,
output sum3,
output carryout4, carryout5, carryout6
    );
    wire m4,m5,m6; 
    
    fulladder f6(.A(m5), .B(m4), .CIN(carryin4), .SUM(sum3), .COUT(cout3)); 
    fulladder f7(.A(m6), .B(carryin5), .CIN(carryin6), .SUM(m5), .COUT(carryout4));
    fulladder f8(.A(d1), .B(d2), .CIN(d3), .SUM(m6), .COUT(carryout5));
    fulladder f9(.A(d4), .B(d5), .CIN(d6), .SUM(m4), .COUT(carryout6));
    
endmodule
