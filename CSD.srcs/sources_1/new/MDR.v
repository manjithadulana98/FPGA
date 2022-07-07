`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/03/2022 02:20:14 PM
// Design Name: 
// Module Name: MDR
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

module MDR(

input clk,
input load,
input read,
input write,
input [7:0] C_bus,
input [7:0] data_in_DRAM,
output reg [7:0] data_out_Bbus,
output reg [7:0] data_out_DRAM

);

always@(posedge clk)
	begin 
		if (load) data_out_Bbus <= C_bus;
		
		if (read) data_out_Bbus <= data_in_DRAM;
		
		if (write) data_out_DRAM <= C_bus;
		
	end

endmodule