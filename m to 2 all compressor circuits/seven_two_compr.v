`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 04/08/2026 12:16:45 AM
// Designer Name: KOTHAPALLI MAHITH VATHSAV 
// Module Name: seven_two_compr
// Project Name: 
//////////////////////////////////////////////////////////////////////////////////
`include "fulladder.v"
module seven_two_compr(
input e1,e2,e3,e4,e5,e6,e7,
input carryin7, carryin8, carryin9 , carryin10,
output cout04,
output sum4,
output carryout7, carryout8, carryout9, carryout10
    );
    wire m7, m8, m9, m10;
    
    fulladder f10(.A(m7), .B(m10), .CIN(carryin7), .SUM(sum4), .COUT(cout04));
    fulladder f11(.A(e1), .B(m9), .CIN(carryin8), .SUM(m10), .COUT(carryout7));
    fulladder f12(.A(m8), .B(carryin9), .CIN(carryin10), .SUM(m9), .COUT(carryout8));
    fulladder f13(.A(e2), .B(e3), .CIN(e4), .SUM(m8), .COUT(carryout9));
    fulladder f14(.A(e5), .B(e6), .CIN(e7), .SUM(m7), .COUT(carryout10));     
     
    
endmodule
