`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 02/20/2026 04:09:54 PM
// Designer Name: KOTHAPALLI MAHITH VATHSAV 
// Module Name: fourwalmul
// Project Name: 4*4 Wallace tree Multiplier 

// half adder module 
module hadd(
input a,
input b,
output sum,
output cout
);
assign sum = a^b; // sum will be the bitwise xor gate 
assign cout = a&b; // carry out (cout) will be bitwise AND gate 
endmodule 

// full adder module 
module fadd(
input p,
input q,
input cin,
output SUM,
output COUT
);
assign SUM = p^q^cin;
assign COUT = (p&q)|(q&cin)|(cin&p);
endmodule 


// 4*4 Wallace tree multiplier 

module fourwalmul(
input [3:0]mp,
input [3:0]ml,
output [7:0] prod

    );
    genvar i;
    wire [3:0] w1;
    wire [3:0]w2;
    wire [3:0]w3;
    wire [3:0]w4;
    wire [12:1] carrying;
    wire [12:1] summing; 
    
    //  Layer 1
    
    for(i=0;i<=3;i=i+1)begin
    assign w1[i] = mp[0] & ml[i] ;
    end 
    
    // layer 2
    
    for(i=0;i<=3;i=i+1)begin
    assign w2[i] = mp[1]& ml[i];
    end 
    
    //layer 3
    for(i=0;i<=3;i=i+1)begin
    assign w3[i] = mp[2] & ml[i];
    end 
    
    //layer 4
    for(i=0;i<=3;i=i+1)begin
    assign w4[i] = mp[3] & ml[i];
    end 
    
    hadd h1(.a(w3[2]), .b(w4[1]), .cout(carrying[1]), .sum(summing[1]));
    hadd h2(.a(w3[1]), .b(w4[0]), .cout(carrying[2]), .sum(summing[2])); 
    hadd h3(.a(w2[1]),.b(w3[0]), .cout(carrying[3]), .sum(summing[3]));
    fadd f4(.p(w1[3]), .q(w2[2]), .cin(summing[1]), .SUM(summing[4]), .COUT(carrying[4]));
    fadd f5(.p(w2[3]), .q(summing[2]), .cin(carrying[1]), .SUM(summing[5]), .COUT(carrying[5]));
    fadd f6(.p(w3[3]), .q(w4[2]), .cin(carrying[2]), .SUM(summing[6]), .COUT(carrying[6]));
    hadd h7(.a(w1[1]), .b(w2[0]) , .cout(carrying[7]), .sum(summing[7]));
    fadd f8(.p(w1[2]), .q(summing[3]), .cin(carrying[7]), .SUM(summing[8]),.COUT(carrying[8]));
    fadd f9(.p(carrying[3]), .q(summing[4]), .cin(carrying[8]), .SUM(summing[9]), .COUT(carrying[9]));
    fadd f10(.p(carrying[4]), .q(summing[5]), .cin(carrying[9]), .SUM(summing[10]), .COUT(carrying[10]));
    fadd f11(.p(carrying[5]), .q(summing[6]), .cin(carrying[10]), .SUM(summing[11]), .COUT(carrying[11]));
    fadd f12(.p(carrying[6]), .q(w4[3]), .cin(carrying[11]), .SUM(summing[12]), .COUT(carrying[12]));
    
    
    // final product values using assign keyword (indireclty using dataflow modelling)
    assign prod[0] = mp[0]&ml[0];
    assign prod[1] = summing[7];
    assign prod[2] = summing[8];
    assign prod[3] = summing[9];
    assign prod[4] = summing[10];
    assign prod[5] = summing[11];
    assign prod[6] = summing[12];
    assign prod[7] = carrying[12];
    
    
    
    
    
    
    
    
    
    
    
endmodule
