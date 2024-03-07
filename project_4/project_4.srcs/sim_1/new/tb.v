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
    wire apple_gen;
    
    reg [9:0] test_x;
    reg [9:0] test_y;
    
    wire Hsync;
    wire Vsync;
    
    wire [3:0] r;
    wire [3:0] g;
    wire [3:0] b;
    
    pixel_color color(
        .h_count(test_x),
        .v_count(test_y),
        .update_clk(update),
        .new_apple(apple_gen),
        .apple_x(apple_x),
        .apple_y(apple_y)
    );
    
    rand_grid rng(
    .clk(clk),
    .update(apple_gen),
    .x(apple_x),
    .y(apple_y)
    );

    vga_sync sync(
        .Hsync(Hsync),
        .Vsync(Vsync),
        .clk(clk),
        .vgaRed(r),
        .vgaGreen(g),
        .vgaBlue(b)
    );
    
    initial begin
        #1;
        clk = 0;
        update = 0;
        
        #2000000;
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
    
    always begin
        for(test_x = 160; test_x < 640; test_x = test_x + 1) begin
            for(test_y = 160; test_y < 640; test_y = test_y + 1) begin
                #10;
            end
        end
    end
    
    
endmodule
