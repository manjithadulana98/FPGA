`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/03/2022 03:01:16 PM
// Design Name: 
// Module Name: PC
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


module PC(

input enable, //connects to enable 
//input reset,
input clk,
input finish,	
input load, //connects to PC Write signal (for tb 0)
input inc, //connects to inc signal 
input [7:0] C_bus, //connects to C_bus (?)
output reg [7:0] ins_address //connects to MBRU ins_in

);

//parameter IRAM_size = 8'd12;

reg start = 1'b0;
reg [1:0] state = 2'b0;

initial begin 
	ins_address <= 8'b0;
end

always@(posedge enable)
	start <= 1'b1;
	//make ins_address zero 
	
always@(negedge clk)
	begin
		if (start) begin
			case(state)
				2'b00 : state = 2'b01;
				2'b01 : state = 2'b10;
				2'b10 : state = 2'b11;
				2'b11 : state = 2'b00;
				default : state = state;
			endcase
		end
	end

always@(posedge clk)
	begin
		//if (reset) ins_address <= 8'b0;
		if (finish) ins_address <= ins_address;
		else if (start) begin
			//if (ins_address ==  IRAM_size) state <= 0; //freeze the PC when NOP is sent
			if (load && state == 2'b11) begin 
				ins_address <= C_bus; //or 8
				//check_load <= 1'b0;
			end else if (inc && state == 2'b11) begin
				ins_address <= ins_address + 8'b00000001;
				//check_inc <= 1'b0;
			end
			else begin
				ins_address <= ins_address;
			end
		end
	end

endmodule