`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/03/2022 08:14:59 PM
// Design Name: 
// Module Name: MBRU
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module MBRU(

input clk,
input fetch, //Connects to MIR Fetch Signal
input [7:0] ins_in, //This connects to IRAM dout
output reg [7:0] ins_out //This connects to control store MBRU

);

always@(posedge clk)
	begin
	   if (fetch) ins_out <= ins_in;
	end

endmodule