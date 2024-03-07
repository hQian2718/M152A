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
    input clk,
    
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
    
    reg game_over = 0;
    
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
    
    // logic moving snake
    integer i;
    always @(posedge update_clk) 
    begin
        // Step 1: Check for Game Over due to going out of horizontal or vertical bounds or hitting the snake's body
        if (head_x < SNAKE_LEFT || head_x >= SNAKE_RIGHT || head_y < 0 || head_y >= V_DISPLAY) begin
            $display("Game over! Out of Bounds!");
            game_over = 1;
        end else begin
            for (i = 0; i < snake_length; i = i + 1) begin
                if (head_x == snake_x[i] && head_y == snake_y[i]) begin
                    $display("Game Over! You hit your body!");
                    game_over = 1;
                end
            end
        end

        // Update the position of the snake's body segments
        for (i = snake_length - 1; i > 0; i = i - 1) begin
            snake_x[i] = snake_x[i-1];
            snake_y[i] = snake_y[i-1];
        end
        // handle first segment 
        if(snake_length > 1) begin
            snake_x[0] = head_x;
            snake_y[0] = head_y;
        end

        // Step 2: Handle the snake movement based on input direction
        case (dir)
            UP: head_y = head_y - BLOCK_L;
            DOWN: head_y = head_y + BLOCK_L;
            LEFT: head_x = head_x - BLOCK_L;
            RIGHT: head_x = head_x + BLOCK_L;
        endcase

        // Check if the snake eats the apple
        if (head_x == apple_x && head_y == apple_y) begin
            if (snake_length < 128) begin
                snake_length = snake_length + 1;
                // Trigger new apple position generation
                need_apple <= !need_apple; // Toggle to ensure new position is generated
            end

            // Check for Game Won condition when snake reaches its maximum length
            if (snake_length >= 128) begin
                $display("Game Won");
                game_over = 1;
            end
        end
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
                if((h_count - apple_x) <= BLOCK_L && (v_count - apple_x) <= BLOCK_L)
                begin 
                    $display("showing apple %d %d", h_count, v_count);
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
