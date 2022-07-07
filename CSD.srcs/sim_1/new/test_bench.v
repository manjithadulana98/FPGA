`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/03/2022 01:45:55 PM
// Design Name: 
// Module Name: test_bench
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

`timescale 1 ns/ 1 ps
module test_bench();
    localparam period = 40;
    reg clk;
    initial 
    begin
        clk =0;
        forever #(40/2) clk <= ~clk;
    end
    
    //input
    reg reset;
    reg enable;
    
    //output
    wire finish;
    wire check;

    
    
    CPU test(clk,reset,enable,finish);
    
    initial 
    begin
    reset = 1;
    #160;
    
    reset = 0;
    enable = 1;
     
    
     
    end  
endmodule
