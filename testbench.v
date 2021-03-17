`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:57:17 03/17/2021
// Design Name:   combinationalcircuit
// Module Name:   testbench.v
// Project Name:  external
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: combinationalcircuit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module combcircuit_v; 
// Inputs 
reg [1:0] userinput; 
reg d0, d1, d2, d3; 
reg a0,a1, a, b,c,I; 
// Outputs 
wire y0, y1,y2,y3, s0,s1, x, y4, y5, y6, y7,y8,y9,y10,y11, sum, carry; 
// Instantiate the Unit Under Test (UUT) 
combinationalcircuit uut (.userinput(userinput), .d0(d0), .d1(d1), .d2(d2), .d3(d3), .y0(y0), .y1(y1), .y2(y2), .y3(y3), .s0(s0), .s1(s1), .a0(a0), .a1(a1), .x(x), .a(a),  .b(b), .c(c), .y4(y4), .y5(y5), .y6(y6), .y7(y7), .y8(y8), .y9(y9), .y10(y10), .y11(y11),  .sum(sum), .I(I),.carry(carry)); 
initial begin 
userinput=0; 
$display("user input=%b",userinput); 
$display("encoder and demux"); 
// Initialize Inputs 
d0 = 1;d1 = 0;d2 = 0;d3= 0;I=1;#50; 
$display("d0=%d|d1=%d|d2=%d|d3=%d|I=%d|encoder output--- S1=%d|s0=%d| demux  output--- y3=%d|y2=%d|y1=%d|y0=%d|",d0,d1,d2,d3,I,s1,s0,y3,y2,y1,y0,$time); d0 = 0;d1 = 1;d2 = 0;d3 = 0;I=1;#50;
$display("d0=%d|d1=%d|d2=%d|d3=%d|I=%d|encoder output--- S1=%d|s0=%d| demux  output--- y3=%d|y2=%d|y1=%d|y0=%d|",d0,d1,d2,d3,I,s1,s0,y3,y2,y1,y0,$time); d0 = 0;d1 = 0;d2 = 1;d3 = 0;I=1;#50; 
$display("d0=%d|d1=%d|d2=%d|d3=%d|I=%d|encoder output--- S1=%d|s0=%d| demux  output--- y3=%d|y2=%d|y1=%d|y0=%d|",d0,d1,d2,d3,I,s1,s0,y3,y2,y1,y0,$time); d0 = 0;d1 = 0;d2 = 0;d3 = 1;I=1;#50; 
$display("d0=%d|d1=%d|d2=%d|d3=%d|I=%d|encoder output--- S1=%d|s0=%d| demux  output--- y3=%d|y2=%d|y1=%d|y0=%d|",d0,d1,d2,d3,I,s1,s0,y3,y2,y1,y0,$time);   
userinput=1; 
$display("user input=%b",userinput); 
$display("decoder and mux"); 
// Initialize Inputs 
a0 = 0;a1 = 0;#10; 
$display("a0=%d|a1=%d|decoder op ---y8=%d|y9=%d|y10=%d|y11=%d|mux--- x=%d|",a0,a1,y8,y9,y10,y11,x,$time); 
a0 = 0;a1 = 1;#10; 
$display("a0=%d|a1=%d|decoder op ---y8=%d|y9=%d|y10=%d|y11=%d|mux--- x=%d|",a0,a1,y8,y9,y10,y11,x,$time); 
a0 = 1;a1 = 0;#10; 
$display("a0=%d|a1=%d|decoder op ---y8=%d|y9=%d|y10=%d|y11=%d|mux--- x=%d|",a0,a1,y8,y9,y10,y11,x,$time); 
a0 = 1;a1 = 1;#10; 
$display("a0=%d|a1=%d|decoder op ---y8=%d|y9=%d|y10=%d|y11=%d|mux--- x=%d|",a0,a1,y8,y9,y10,y11,x,$time); 
  
userinput=2; 
$display("user input=%b",userinput); 
$display(" decoder and fulladder"); 
a = 0;b = 0;c = 0;#50; 
$display("|a=%d||b=%d|c=%d|decoder op---- 
|y0=%d||y1=%d||y2=%d|y3=%d||y4=%d|y5=%d|y6=%d||y7=%d|full adder---- |sum=%d|carry=%d|",a,b,c,y0,y1,y2,y3,y4,y5,y6,y7,sum,carry,$time); 
a = 0;b = 0;c = 1;#50; 
$display("|a=%d||b=%d|c=%d|decoder op---- 
|y0=%d||y1=%d||y2=%d|y3=%d||y4=%d|y5=%d|y6=%d||y7=%d|full adder---- |sum=%d|carry=%d|",a,b,c,y0,y1,y2,y3,y4,y5,y6,y7,sum,carry,$time); 
a = 0;b = 1;c = 0;#50; 
$display("|a=%d||b=%d|c=%d|decoder op---- 
|y0=%d||y1=%d||y2=%d|y3=%d||y4=%d|y5=%d|y6=%d||y7=%d|full adder---- |sum=%d|carry=%d|",a,b,c,y0,y1,y2,y3,y4,y5,y6,y7,sum,carry,$time);
a = 0;b = 1;c = 1;#50; 
$display("|a=%d||b=%d|c=%d|decoder op---- 
|y0=%d||y1=%d||y2=%d|y3=%d||y4=%d|y5=%d|y6=%d||y7=%d|full adder---- |sum=%d|carry=%d|",a,b,c,y0,y1,y2,y3,y4,y5,y6,y7,sum,carry,$time); 
a = 1;b = 0;c = 0;#50; 
$display("|a=%d||b=%d|c=%d|decoder op---- 
|y0=%d||y1=%d||y2=%d|y3=%d||y4=%d|y5=%d|y6=%d||y7=%d|full adder---- |sum=%d|carry=%d|",a,b,c,y0,y1,y2,y3,y4,y5,y6,y7,sum,carry,$time); 
a = 1;b = 0;c = 1;#50; 
$display("|a=%d||b=%d|c=%d|decoder op---- 
|y0=%d||y1=%d||y2=%d|y3=%d||y4=%d|y5=%d|y6=%d||y7=%d|full adder---- |sum=%d|carry=%d|",a,b,c,y0,y1,y2,y3,y4,y5,y6,y7,sum,carry,$time); 
a = 1;b = 1;c = 0;#50; 
$display("|a=%d||b=%d|c=%d|decoder op---- 
|y0=%d||y1=%d||y2=%d|y3=%d||y4=%d|y5=%d|y6=%d||y7=%d|full adder---- |sum=%d|carry=%d|",a,b,c,y0,y1,y2,y3,y4,y5,y6,y7,sum,carry,$time); 
a = 1;b = 1;c = 1;#50; 
$display("|a=%d||b=%d|c=%d|decoder op---- 
|y0=%d||y1=%d||y2=%d|y3=%d||y4=%d|y5=%d|y6=%d||y7=%d|full adder---- |sum=%d|carry=%d|",a,b,c,y0,y1,y2,y3,y4,y5,y6,y7,sum,carry,$time); 
end 
endmodule
