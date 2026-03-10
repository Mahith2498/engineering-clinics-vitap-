`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/06/2026 03:24:13 PM
// Design Name: 
// Module Name: eight_four_compr_tb
// Project Name: 
 //////////////////////////////////////////////////////////////////////////////////


module eight_four_compr_tb;
reg [7:0]I;
wire [4:1]X;
eight_four_compre dut(.I(I), .X(X));
initial begin 
$monitor("I=%b,X=%b",I,X);
end 
initial begin 
I = 8'b00000000; #100; 
I = 8'b00000001; #100; 
I = 8'b00000010; #100; 
I = 8'b00000011; #100; 
I = 8'b00000100; #100; 
I = 8'b00000101; #100; 
I = 8'b00000110; #100; 
I = 8'b00001001; #100; 
I = 8'b00001100; #100; 
I = 8'b00010000; #100;
end  

endmodule
