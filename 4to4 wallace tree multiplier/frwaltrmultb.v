`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
 // Create Date: 02/20/2026 10:58:11 PM
// Designer Name: KOTHAPALLI MAHITH VATHSAV
// Module Name: frwaltrmultb
// Project Name: 

module frwaltrmultb;
reg [3:0]mp;
reg [3:0]ml;
wire [7:0] prod;
fourwalmul dut(.mp(mp), .ml(ml), .prod(prod));
initial begin 
$monitor("mp=%b, ml=%b,prod =%b",mp,ml,prod);
end 
initial begin
mp = 4'b0000; ml = 4'b0000; #100; // mp = 0 and ml =0
mp = 4'b0001; ml = 4'b0010; #100; // mp = 1 and ml = 2
mp = 4'b0100; ml = 4'b0100; #100; // mp = 4 and ml = 4
mp = 4'b0101; ml = 4'b0101; #100; //mp = 5 and ml =5
mp = 4'b0110; ml = 4'b0110; #100; //mp =6 and ml = 6
mp = 4'b0111; ml = 4'b0111; #100; //mp =7 and ml =7
mp = 4'b1000; ml = 4'b1000; #100; //mp = 8 and ml = 8
mp = 4'b1001; ml = 4'b1001; #100;  // mp = 9 and  ml = 9
mp = 4'b1010; ml = 4'b1010; #100;  //mp = 10 and ml = 10
mp = 4'b1011; ml = 4'b1011; #100; //mp = 11 and ml = 11
end 


    
endmodule
