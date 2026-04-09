`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/09/2026 09:06:43 AM
// Design Name: 
// Module Name: six_six_mul
//////////////////////////////////////////////////////////////////////////////////
`include "fulladder.v"
`include "halfadder.v"
`include "six_three_compre.v"
`include "five_three_compre.v"
`include "four_three_compr.v"


module six_six_mul(
input [5:0]N,
input [5:0]M,
output [11:0]PROD

    );
    genvar w1,w2,w3,w4,w5,w6; 
    wire [5:0]G1;
    wire [5:0]G2; 
    wire [5:0]G3; 
    wire [5:0]G4; 
    wire [5:0]G5; 
    wire [5:0]G6;
    wire [3:0]s; // for halfadder and full adder sum
    wire [3:0]c; // for halfadder and full adder carryout 
    wire l1,l2,l3; // for 4 to 3 compressor sum1,sum2,carryout1 
    wire m1,m2,m3; // for 5 to 3 compressor sum3, sum4, carryout2
    wire n1,n2,n3; // for 6 to 3 compressor sum5, sum6, carryout3
    wire o1,o2,o3;// for 5 to 3 compressor sum3, sum4, carryout2
    wire p1,p2,p3; // for 4 to 3 compresor sum1, sum2, carryout1
    wire ts1,ts2,ts3,ts4,ts5,ts6,ts7,ts8,ts9; // Final stage sum's
    wire tc1,tc2,tc3,tc4,tc5,tc6,tc7,tc8,tc9; //Final stage carryout's 
    wire x1,x2,x3,x4,x5,x6,x7,x8,x9; // For the final ripple carry adder propagation carriers 
    
    for(w1=0;w1<6; w1=w1+1)begin 
    assign G1[w1] = M[0] & N[w1];
    end 
    
    for(w2=0;w2<6; w2=w2+1)begin 
    assign G2[w2] = M[1] & N[w2];
    end   
    
    for(w3=0;w3<6; w3=w3+1)begin 
    assign G3[w3] = M[2] & N[w3];
    end 
    
    for(w4=0;w4<6; w4=w4+1)begin 
    assign G4[w4] = M[3] & N[w4];
    end 
    
    for(w5=0;w5<6; w5=w5+1)begin 
    assign G5[w5] = M[4] & N[w5];
    end 
    
    for(w6=0;w6<6; w6=w6+1)begin 
    assign G6[w6] = M[5] & N[w6];
    end 
    
    assign PROD[0] = G1[0];
    
    halfadder hadd1(.a(G1[1]), .b(G2[0]), .sum(s[0]), .cout(c[0])); 
    
    fulladder fadd1(.A(G1[2]), .B(G2[1]), .CIN(G3[0]), .SUM(s[1]), .COUT(c[1])); 
    
    four_three_compr com1(.y1(G1[3]), .y2(G2[2]), .y3(G3[1]), .y4(G4[0]), .sum1(l1), .sum2(l2), .carryout1(l3)); 
    
    five_three_compre com2(.y5(G1[4]), .y6(G2[3]), .y7(G3[2]), .y8(G4[1]), .y9(G5[0]), .sum3(m1), .sum4(m2), .carryout2(m3)); 
    
    six_three_compre com3(.y10(G1[5]), .y11(G2[4]), .y12(G3[3]), .y13(G4[2]), .y14(G5[1]), .y15(G6[0]), .sum5(n1), .sum6(n2), .carryout3(n3)); 
    
    five_three_compre com4(.y5(G2[5]), .y6(G3[4]), .y7(G4[3]), .y8(G5[2]), .y9(G6[1]), .sum3(o1), .sum4(o2), .carryout2(o3));
    
    four_three_compr com5(.y1(G3[5]), .y2(G4[4]), .y3(G5[3]), .y4(G6[2]), .sum1(p1), .sum2(p2), .carryout1(p3));
    
    
    fulladder fadd2(.A(G4[5]), .B(G5[4]), .CIN(G6[3]), .SUM(s[2]), .COUT(c[2]));
    
    halfadder hadd2(.a(G5[5]), .b(G6[4]), .sum(s[3]), .cout(c[3]));
    
    assign PROD[1] = s[0]; 
    
    halfadder hadd3(.a(c[0]), .b(s[1]), .sum(ts1), .cout(tc1));
    halfadder hadd4(.a(c[1]), .b(l1), .sum(ts2), .cout(tc2));
    halfadder hadd5(.a(l2), .b(m1), .sum(ts3), .cout(tc3));
    
    fulladder fadd3(.A(l3), .B(m2), .CIN(n1), .SUM(ts4), .COUT(tc4));
    
    fulladder fadd4(.A(o1), .B(m3), .CIN(n2), .SUM(ts5), .COUT(tc5));
    
    fulladder fadd5(.A(p1), .B(o2), .CIN(n3), .SUM(ts6), .COUT(tc6));
    
    fulladder fadd6(.A(s[2]), .B(p3), .CIN(o3), .SUM(ts7), .COUT(tc7));
    
    fulladder fadd7(.A(c[2]), .B(p3), .CIN(s[3]), .SUM(ts8), .COUT(tc8));
    
    halfadder hadd6(.a(c[3]), .b(G6[5]), .sum(ts9), .cout(tc9));
    
    assign PROD[2] = ts1; 
    
    
    fulladder fadd8(.A(tc1), .B(ts2), .CIN(0), .SUM(PROD[3]), .COUT(x1));
    fulladder fadd9(.A(tc2), .B(ts3), .CIN(x1), .SUM(PROD[4]), .COUT(x2));
    fulladder fadd10(.A(tc3), .B(ts4), .CIN(x2), .SUM(PROD[5]), .COUT(x3));
    fulladder fadd11(.A(tc4), .B(ts5), .CIN(x3), .SUM(PROD[6]), .COUT(x4));
    fulladder fadd12(.A(tc5), .B(ts6), .CIN(x4), .SUM(PROD[7]), .COUT(x5));
    fulladder fadd13(.A(tc6), .B(ts7), .CIN(x5), .SUM(PROD[8]), .COUT(x6));
    fulladder fadd14(.A(tc7), .B(ts8), .CIN(x6), .SUM(PROD[9]), .COUT(x7));
    fulladder fadd15(.A(tc8), .B(ts9), .CIN(x7), .SUM(PROD[10]), .COUT(x8));
    fulladder fadd16(.A(tc9), .B(0), .CIN(x8), .SUM(PROD[11]), .COUT(x9));
    
    
    
    
    

     
     
    
    
    
endmodule
