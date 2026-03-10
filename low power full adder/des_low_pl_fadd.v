`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/05/2026 12:37:45 PM
// Design Name: 
// Module Name: des_low_pl_fadd
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module des_low_pl_fadd(
input A,
input B,
input CIN,
output SUM,
output COUT

    );
    
    assign {COUT, SUM} = A + B + CIN;
    
endmodule
