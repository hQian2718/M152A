`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/05/2024 12:43:41 PM
// Design Name: 
// Module Name: pixel_color
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


module pixel_color(
    input [9:0] h_count,
    input [9:0] v_count,
    input [9:0] apple_x,
    input [9:0] apple_y,
    
    input [1:0] dir,
    input update_clk,
    
    output reg [3:0] r,
    output reg [3:0] g,
    output reg [3:0] b,
    output new_apple
    );
    
    localparam SNAKE_LEFT = 160;
    localparam SNAKE_RIGHT = 640;
    localparam APPLE_X = 300;
    localparam APPLE_Y = 300;
    localparam BLOCK_L = 30;
    
    localparam UP = 2'b10,
                DOWN = 2'b01,
                LEFT = 2'b11,
                RIGHT = 2'b00;
                
    localparam H_DISPLAY       = 640; // horizontal display area
    localparam V_DISPLAY       = 480; // vertical display area
    
    reg [7:0] snake_length;
    reg [9:0] snake_x[0:127];
    reg [9:0] snake_y[0:127];
    reg [9:0] head_x;
    reg [9:0] head_y;
    
    initial begin
        head_x <= 10 * BLOCK_L;
        head_y <= 10 * BLOCK_L;
        snake_length <= 1;
    end
    //moving snake
    
    /*
        the game is over if head_x or head_y out of bounds
        write a switch statement to move snake head
        update each body block in snake_x and snake_y
        detect apple collision
        
    */
    //testing setting aples
    reg [3:0] acc = 0;
    reg need_apple = 0;
    always @(posedge update_clk) begin
        acc = acc + 1;
        if(acc[3] == 1) begin
            need_apple <= 1;
            acc = 0;
        end else
            need_apple <= 0;
    end
    
    assign new_apple = need_apple;
    
    
    //displaying
    always @(*)
    begin
        // first check if we're within vertical active video range
        if (h_count >= 0 && v_count < V_DISPLAY)
        begin
            // now display different colors every 80 pixels
            // while we're within the active horizontal range
            // -----------------
            if (h_count >= SNAKE_LEFT && h_count < SNAKE_RIGHT) begin
                if((h_count - APPLE_X) <= BLOCK_L && (v_count - APPLE_Y) <= BLOCK_L)
                begin 
                    r = 4'b1110;
                    g = 4'b0011;
                    b = 4'b0000;
                end
                else begin
                    r = 4'b1100;
                    g = 4'b1100;
                    b = 4'b1100;
                end
            end
        end
    end
endmodule
