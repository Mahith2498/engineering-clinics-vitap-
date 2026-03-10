`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/06/2026 04:20:01 PM
// Design Name: 
// Module Name: nine_four_compre
// Project Name: 
//////////////////////////////////////////////////////////////////////////////////
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


module nine_four_compre(
input [8:0]I,
output [4:1]X

    );
    wire P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11;
    
    // stage 1
    des_low_pl_fadd f1(.A(I[8]), .B(I[7]), .CIN(I[6]), .SUM(P2), .COUT(P1));
    des_low_pl_fadd f2(.A(I[5]), .B(I[4]), .CIN(I[3]), .SUM(P4), .COUT(P3));
    des_low_pl_fadd f3(.A(I[2]), .B(I[1]), .CIN(I[0]), .SUM(P6), .COUT(P5));
    
    //stage 2
    des_low_pl_fadd f4(.A(P1), .B(P3), .CIN(P5), .COUT(P7), .SUM(P8));
    des_low_pl_fadd f5(.A(P2), .B(P4), .CIN(P6), .COUT(P9), .SUM(P10)); 
    
    // stage 3
    hadd h1(.a(P9), .b(P8), .sum(X[2]), .cout(P11));
    hadd h2(.a(P11), .b(P7), .cout(X[4]), .sum(X[3])); 
    
    assign X[1] = P10; 
    
endmodule
