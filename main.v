`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:56:16 03/17/2021 
// Design Name: 
// Module Name:    main 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module combinationalcircuit(userinput,d0,d1,d2,d3,y0,y1,y2,y3,s0,s1,a0,a1,x,a,b,c,I,  y4,y5,y6,y7,y8,y9,y10,y11,sum,carry); 
input [1:0] userinput; 
input d0,d1,d2,d3, a0,a1, a,b,c,I; 
output y0,y1,y2,y3,s0,s1,y8,y9,y10,y11,y4,y5,y6,y7,sum,carry,x; reg y0,y1,y2,y3,s0,s1,x,y4,y5,y6,y7,y8,y9,y10,y11,sum,carry; 
always@(userinput) 
begin 
case(userinput) 
2'b00: begin //encoder and demux 
assign s0=d1|d3; 
assign s1=d2|d3; 
assign y0=(~s1)&(~s0)&I; 
assign y1=(~s1)&(s0)&I; 
assign y2=(s1)&(~s0)&I; 
assign y3=(s1)&(s0)&I; 
 end 
2'b01:begin //decoder and mux 
 assign y8=(~a0)& (~a1); 
 assign y9=(~a0)& a1; 
 assign y10=a0 &( ~a1); 
assign y11=a0 & a1; 
 assign x=(y9)|(y8)|(y10)|(y11); 
 end 
 
2'b10:begin //decoder and full adder 
 assign y0=(~a)&(~b)&(~c); 
 assign y1=(~a)&(~b)&(c); 
 assign y2=(~a)&(b)&(~c); 
 assign y3=(~a)&(b)&(c); 
 assign y4=(a)&(~b)&(~c); 
 assign y5=(a)&(~b)&(c); 
 assign y6=(a)&(b)&(~c); 
 assign y7=(a)&(b)&(c); 
 assign sum=y1|y2|y4|y7; 
 assign carry=y3|y5|y6|y7; 
 end 
endcase 
end 
endmodule 

