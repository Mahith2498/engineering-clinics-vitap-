`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 03/08/2026 10:54:27 AM
// Designer Name: KOTHAPALLI MAHITH VATHSAV 
// Module Name: five_three_compre
// Project Name: 5 to 3 compressor circuit 
//////////////////////////////////////////////////////////////////////////////////
module five_three_compre(
input [4:0]N,
output [2:0]G
    );
    wire n1,n2,n3,n4,n5; 
    
    assign G[0] = ^N; // Automatically it applies bitwise XOR gate operation among all the bits 
    
    assign n1 = (N[0]^N[1]);
    assign n2 = ~n1;
    
    assign n3 = (N[0] & n2);
    assign n4 = (N[2] & n1);
    
    assign n5 = (n3)|(n4);
    
    assign G[1] = (N[4])^(n5); // Output G[1]
    assign G[2] = (N[4])&(n5); // Output G[2]
    
    
  
endmodule
