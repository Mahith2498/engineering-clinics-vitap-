`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/05/2026 12:39:19 PM
// Design Name: 
// Module Name: tbf
// Project Name: 
//////////////////////////////////////////////////////////////////////////////////

module tbf;
reg A;
reg B;
reg CIN;
wire COUT;
wire SUM;
des_low_pl_fadd dut(.A(A), .B(B), .CIN(CIN), .COUT(COUT), .SUM(SUM));
initial begin 
$monitor("A=%b,B=%b,CIN=%b,COUT=%b,SUM=%b",A,B,CIN,COUT,SUM);
end 
initial begin 
A = 1'b0 ; B = 1'b0 ; CIN = 1'b0; #100;
A = 1'b0 ; B = 1'b0 ; CIN = 1'b1; #100;
A = 1'b0 ; B = 1'b1 ; CIN = 1'b0; #100;
A = 1'b0 ; B = 1'b1 ; CIN = 1'b1; #100;
A = 1'b1 ; B = 1'b0 ; CIN = 1'b0; #100;
A = 1'b1 ; B = 1'b0 ; CIN = 1'b1; #100;
A = 1'b1 ; B = 1'b1 ; CIN = 1'b1; #100;
end 

endmodule
