`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/05/2024 01:25:17 PM
// Design Name: 
// Module Name: tb
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


module tb(
    
    );
    wire [9:0] apple_x;
    wire [9:0] apple_y;
    
    reg clk;
    reg update;
    
    rand_grid rng(
    .clk(clk),
    .update(update),
    .x(apple_x),
    .y(apple_y)
    );
    
    initial begin
        #1;
        clk = 0;
        update = 0;
        
        #200000;
        $finish;
    end
    
    always begin
        #100;
        clk = ~clk;    
    end
    
    always begin
        #5010;
        update = ~update;
    end
    
    
endmodule
