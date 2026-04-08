`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 04/08/2026 06:16:11 PM
// Design Name: 
// Module Name: six_three_compre
// Project Name: 
//////////////////////////////////////////////////////////////////////////////////

module six_three_compre(
input y10,y11,y12,y13,y14,y15,
output sum5,sum6,carryout3

    );
    wire z9,z10,z11,z12,z13; 
    
    fulladder fa4(.A(y10), .B(y11), .CIN(y12), .COUT(z11), .SUM(z12)); 
    fulladder fa5(.A(y13), .B(y14), .CIN(y15), .COUT(z9), .SUM(z10));
    fulladder fa6(.A(z9), .B(z11), .CIN(z13), .COUT(carryout3), .SUM(sum6));
    halfadder ha5(.a(z10), .b(z12), .cout(z13), .sum(sum5)); 
endmodule
