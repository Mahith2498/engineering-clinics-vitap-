`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/06/2026 10:11:31 AM
// Design Name: 
// Module Name: eight_four_compre
// Project Name: 8 to 4 compressor circuit design 

module hadd(
input a,
input b,
output sum,
output cout
); 
assign sum = a^b;
assign cout = a&b;
endmodule

module des_low_pl_fadd(
input A,
input B,
input CIN,
output SUM,
output COUT
);
assign {COUT,SUM} = A+B+CIN;
endmodule 

// top  module 
module eight_four_compre(
input [7:0]I,
output [4:1]X
    );
    
    wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11; 
    // Stage 1
    hadd h1(.a(I[0]), .b(I[1]), .sum(w6), .cout(w5));
    des_low_pl_fadd f0(.A(I[2]), .B(I[3]), .CIN(I[4]), .SUM(w4), .COUT(w3));
    des_low_pl_fadd f1(.A(I[5]), .B(I[6]), .CIN(I[7]), .SUM(w2), .COUT(w1)); 
    
    // stage 2
    des_low_pl_fadd f2(.A(w1), .B(w3), .CIN(w5), .SUM(w8), .COUT(w7)); 
   
   des_low_pl_fadd f3(.A(w2), .B(w4), .CIN(w6), .SUM(w10), .COUT(w9)); 
   
   // stage 3
   hadd h2(.a(w8), .b(w9), .sum(X[2]), .cout(w11)); 
   hadd h3(.a(w7), .b(w11), .sum(X[4]), .cout(X[3])); 
   
   assign X[1] = w10; 
    
    
endmodule
