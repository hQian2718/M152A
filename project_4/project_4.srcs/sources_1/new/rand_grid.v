`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/05/2024 01:15:26 PM
// Design Name: 
// Module Name: rand_grid
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


module rand_grid(
    input update, clk,
    output [9:0] x,
    output [9:0] y
    );
    
    localparam BLOCKS = 30;
    localparam NPIXEL_W = 16;
    localparam NPIXEL_H = 16;
    
    reg [31:0] count = 0;
    reg [9:0] apple_x = 3 * BLOCKS + BLOCKS / 2;
    reg [9:0] apple_y = 2 * BLOCKS + BLOCKS / 2;
    
    reg [20:0] z1 = 0;
    reg [20:0] z2 = 0;
    
    always @ (posedge clk) begin
        count = count + 1;
        if(count[31]==1) count = 0;
    end
    always @ (posedge update) begin
        //z1 = count % 530209;
        //z2 = count % 979189;
        
        z1 = count % 17;
        z2 = count % 31;
        
        apple_x = (z2 % (z1+1)) % NPIXEL_W * BLOCKS + BLOCKS / 2;
        apple_y = (z1 % (z2+1)) % NPIXEL_H * BLOCKS + BLOCKS / 2;
    end
    
    assign x = apple_x;
    assign y = apple_y;
    
endmodule
