`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/05/2026 11:35:14 AM
// Designer Name: KOTHAPALLI MAHITH VATHSAV 
// Module Name: dual_port_fifo
// Project Name: 36 KB Dual Port RAM with fifo feature 
///////////////////////////////////////////////////////////////////////////////////
module dual_port_fifo(
input [7:0]lenghtin,
input clk,
input rst,
input rd_1, 
input wr_1,
input rd_2,
input wr_2,
input [7:0]widthin,
output reg empty_1,
output reg empty_2,
output reg full_1,
output reg full_2,
output reg [7:0]lenghtout,
output reg [7:0]widthout
);
reg [7:0]memloc1[0:18431];
reg [7:0]memloc2[18432:36863]; 
reg [14:0]writecounter_1; 
reg [14:0]writecounter_2;
reg [14:0]readcounter_1;
reg [14:0]readcounter_2;

// writing inside to the first slice location memloc1 (lenght of the frames data )

always@(posedge clk)begin 
if(rst)begin 
writecounter_1 <= 15'b000000000000000;
end else begin 
if(wr_1)begin 
if(!full_1)begin 
memloc1[writecounter_1]<= lenghtin; 
writecounter_1 <= writecounter_1 + 1'b1; 
end 
end 
end 
end 

// Reading out the data from the first slice location memloc1 (lenght of the frames data) 
always@(posedge clk) begin 
if(rst)begin 
readcounter_1 <= 15'b000000000000000; 
end else begin 
if(rd_1)begin 
if(!empty_1)begin 
lenghtout <= memloc1[readcounter_1];
readcounter_1 <= readcounter_1 + 1'b1; 
end 
end 
end 
end 

//writng inside to the second slice location memloc2(width of the frame data) 
always@(posedge clk)begin 
if(rst)begin 
writecounter_2 <= 15'b100100000000000;
end else begin 
if(wr_2)begin 
if(!full_2)begin 
memloc2[writecounter_2]<= widthin; 
writecounter_2 <= writecounter_2 + 1'b1; 
end 
end 
end 
end 

// Reading out the data from the first slice location memloc1 (width of the frames data) 
always@(posedge clk) begin 
if(rst)begin 
readcounter_2 <= 15'b100100000000000; 
end else begin 
if(rd_2)begin 
if(!empty_2)begin 
widthout <= memloc2[readcounter_2];
readcounter_2 <= readcounter_2 + 1'b1; 
end 
end 
end 
end 

// for showcasing the empty_1 and full_1
always@(*)begin 
empty_1 = (writecounter_1) == (readcounter_1); 
full_1 = ((writecounter_1 + 1)== (readcounter_1)); 
end 

// for showcasing the empty_2 and full_2
always@(*)begin 
empty_2 = ((writecounter_2) == (readcounter_2)); 
full_2 = ((writecounter_2 + 1) == (readcounter_2)); 
end 

endmodule 
