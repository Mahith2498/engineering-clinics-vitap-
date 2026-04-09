`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/09/2026 03:18:10 PM
// Design Name: 
// Module Name: six_six_mul_tb
// Project Name: 
// Target Devices: 
//////////////////////////////////////////////////////////////////////////////////
module six_six_mul_tb;
reg [5:0]N;
reg [5:0]M;
wire [11:0]PROD;
six_six_mul dut(.N(N), .M(M), .PROD(PROD)); 
initial begin 
$monitor("N=%d,M=%d,PROD=%d",N,M,PROD);
end 
initial begin 
N = 6'd5; M = 6'd5; #50; 
N = 6'd10; M = 6'd5; #50; 
N = 6'd5; M = 6'd12; #50; 
N = 6'd5; M = 6'd25; #50; 
N = 6'd35; M = 6'd5; #50;
end  

endmodule
