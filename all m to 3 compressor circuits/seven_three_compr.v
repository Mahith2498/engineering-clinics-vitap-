`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
 // Create Date: 04/08/2026 06:48:56 PM
// Design Name: 
// Module Name: seven_three_compr
//////////////////////////////////////////////////////////////////////////////////
`include "fulladder.v"
`include "halfadder.v"

module seven_three_compr(
input y16,y17,y18,y19,y20,y21,y22,
output sum7,sum8,carryout9

    );
    wire z14,z15,z16,z17,z18;
    
    fulladder fa7(.A(y16), .B(z17), .CIN(z15), .SUM(sum7), .COUT(z18)); 
    fulladder fa8(.A(y17), .B(y18), .CIN(y19), .SUM(z17), .COUT(z16));
    fulladder fa9(.A(y20), .B(y21), .CIN(y22), .SUM(z15), .COUT(z14));
    fulladder fa10(.A(z14), .B(z16), .CIN(z18), .SUM(sum8), .COUT(carryout4));   
    
endmodule
