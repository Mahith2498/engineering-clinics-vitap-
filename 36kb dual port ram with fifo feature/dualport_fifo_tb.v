`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/05/2026 11:38:54 AM
// Design Name: KOTHAPALLI MAHITH VATHSAV 
// Module Name: dualport_fifo_tb
// Project Name: 

//////////////////////////////////////////////////////////////////////////////////

module dualport_fifo_tb;
reg  [7:0]lenghtin;
reg clk;
reg rst;
reg rd_1; 
reg wr_1;
reg rd_2;
reg wr_2;
reg [7:0]widthin;
wire empty_1;
wire empty_2;
wire  full_1;
wire full_2;
wire  [7:0]lenghtout;
wire [7:0]widthout;
dual_port_fifo dut(
.lenghtin(lenghtin), 
.clk(clk),
.rst(rst),
.rd_1(rd_1), 
.wr_1(wr_1),
.rd_2(rd_2),
.wr_2(wr_2),
.widthin(widthin),
.empty_1(empty_1),
.empty_2(empty_2),
.full_1(full_1),
.full_2(full_2),
.lenghtout(lenghtout), 
.widthout(widthout)
); 
initial begin 
$monitor("lenghtin=%b,clk=%b,rst=%b,rd_1=%b,wr_1=%b,rd_2=%b,wr_2=%b,widthin=%b,empty_1=%b,empty_2=%b,full_1=%b,full_2=%b,lenghtout=%b,widthout=%b",lenghtin,clk,rst,rd_1,wr_1,rd_2,wr_2,widthin,empty_1,empty_2,full_1,full_2,lenghtout,widthout);
end 

initial begin 
clk = 1'b0;
rst = 1'b1;
end 

always begin 
#10; clk = ~clk;
end 

initial begin 
#12; rst = 1'b0;
end 

initial begin 
#14; wr_1 = 1'b1;
end 

initial begin 
#15; rd_1 = 1'b1;  
end 

initial begin 
#14; wr_2 = 1'b1;
end 

initial begin 
#15; rd_2 = 1'b1;  
end 

initial begin 
#13; lenghtin = 8'b10101010; 
end 

initial begin 
#13; widthin = 8'b01010101;
end 
endmodule

