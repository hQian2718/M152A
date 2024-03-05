`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Harry Q
// 
// Create Date: 02/15/2024 01:29:17 PM
// Design Name: 
// Module Name: basys3
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


module basys3(
    input wire clk,
    input wire [7:0] sw,
    input wire btnC,
    input wire btnU,
    output [3:0] an,
    output [6:0] seg
    );
    
    wire adj, sel;
    
    assign {adj, sel} = sw[7:6];
    
    stopwatch inst(
        .clk(clk),
        .rst(btnU),
        .pause(btnC),
        .adj(adj),
        .sel(sel),
        .an(an),
        .seg(seg)
    );
endmodule
