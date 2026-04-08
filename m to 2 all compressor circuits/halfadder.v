`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 04/07/2026 09:50:09 PM
// Design Name: KOTHAPALLI MAHITH VATHSAV 
// Module Name: halfadder
// Project Name: HALF ADDER 
//////////////////////////////////////////////////////////////////////////////////
module halfadder(
input a,
input b,
output sum,
output cout
    );
    assign sum = a^b;
    assign cout = a&b;
endmodule
