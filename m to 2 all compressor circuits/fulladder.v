`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 04/07/2026 09:40:02 PM
// Designer Name: KOTHAPALLI MAHITH VATHSAV 
// Module Name: fulladder
// Project Name: FULL ADDER  
//////////////////////////////////////////////////////////////////////////////////
module fulladder(
input A,
input B,
input CIN,
output COUT,
output SUM 
    );
     assign {COUT,SUM} = A+B+CIN;
endmodule
