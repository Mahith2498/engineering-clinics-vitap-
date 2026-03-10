`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 03/08/2026 11:34:55 AM
// Design Name: 
// Module Name: five_three_compre_tb
// Project Name: 
//////////////////////////////////////////////////////////////////////////////////
module five_three_compre_tb;
reg  [4:0]N;
wire [2:0]G;
five_three_compre dut(.N(N), .G(G));
initial begin 
$monitor("N=%b,G=%b",N,G);
end 
initial begin 
N = 5'b00000; #50;
N = 5'b00001; #50;
N = 5'b00010; #50;
N = 5'b00011; #50;
N = 5'b00100; #50;
N = 5'b00101; #50;
N = 5'b00110; #50;
N = 5'b01000; #50;
N = 5'b01100; #50;
N = 5'b10000; #50;
end 


endmodule
