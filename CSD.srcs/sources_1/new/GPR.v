`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/03/2022 01:43:50 PM
// Design Name: 
// Module Name: GPR
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


module GPR(

input clk,
input load,
input [23:0] C_bus, //connects to the MIR load signal
output reg [23:0] data_out //connects to the B_bus (MUX)

);

always@(posedge clk)
	begin 
		if (load) data_out <= C_bus;
	end

endmodule 

