`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/03/2022 02:15:30 PM
// Design Name: 
// Module Name: MAR
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
module MAR(

input clk,
input load,
input [15:0] C_bus,
output reg [15:0] data_address

);

always@(posedge clk)
	begin 
		if (load) data_address <= C_bus;
	end

endmodule
