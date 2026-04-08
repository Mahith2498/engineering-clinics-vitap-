`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 04/07/2026 11:22:49 PM
// Designer Name: KOTHAPALLI MAHITH VATHSAV 
// Module Name: five_two_compre
// Project Name: 
//////////////////////////////////////////////////////////////////////////////////
`include "fulladder.v"

module five_two_compre(
input c1,c2,c3,c4,c5,
input carryin2, carryin3,
output cout02,
output sum2,
output carryout2, carryout3

    );
    wire m2,m3; 
    
    fulladder f3(.A(c1), .B(m2), .CIN(carryin2), .SUM(sum2), .COUT(cout02)); 
    fulladder f4(.A(c2), .B(m3), .CIN(carryin3), .SUM(m2), .COUT(carryout2));
    fulladder f5(.A(c3), .B(c4), .CIN(c5), .SUM(m3), .COUT(carryout3));
endmodule
