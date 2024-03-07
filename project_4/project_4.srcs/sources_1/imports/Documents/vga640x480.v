`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:30:38 03/19/2013 
// Design Name: 
// Module Name:    vga640x480 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module vga_sync

	(
		input wire clk, reset,
		output wire Hsync, Vsync,
		output reg [3:0] vgaRed,
		output reg [3:0] vgaGreen,
		output reg [3:0] vgaBlue
	);
	
	// constant declarations for VGA sync parameters
	localparam H_DISPLAY       = 640; // horizontal display area
	localparam H_L_BORDER      =  48; // horizontal left border
	localparam H_R_BORDER      =  16; // horizontal right border
	localparam H_RETRACE       =  96; // horizontal retrace
	localparam H_MAX           = H_DISPLAY + H_L_BORDER + H_R_BORDER + H_RETRACE - 1;
	localparam START_H_RETRACE = H_DISPLAY + H_R_BORDER;
	localparam END_H_RETRACE   = H_DISPLAY + H_R_BORDER + H_RETRACE - 1;
	
	localparam V_DISPLAY       = 480; // vertical display area
	localparam V_T_BORDER      =  10; // vertical top border
	localparam V_B_BORDER      =  33; // vertical bottom border
	localparam V_RETRACE       =   2; // vertical retrace
	localparam V_MAX           = V_DISPLAY + V_T_BORDER + V_B_BORDER + V_RETRACE - 1;
        localparam START_V_RETRACE = V_DISPLAY + V_B_BORDER;
	localparam END_V_RETRACE   = V_DISPLAY + V_B_BORDER + V_RETRACE - 1;
	
	// mod-4 counter to generate 25 MHz pixel tick
	reg [1:0] pixel_reg;
	wire [1:0] pixel_next;
	wire pixel_tick;
	
	wire [3:0] pixelR;
	wire [3:0] pixelG;
	wire [3:0] pixelB;
	
	wire update_ticks;
	
	clk_divider update_clk(
        .clk(clk),
        .update_clk(update_ticks)
    );
    

	
	always @(posedge clk, posedge reset)
		if(reset)
		  pixel_reg <= 0;
		else
		  pixel_reg <= pixel_next;
	
	assign pixel_next = pixel_reg + 1; // increment pixel_reg 
	
	assign pixel_tick = (pixel_reg == 0); // assert tick 1/4 of the time
	
	// registers to keep track of current pixel location
	reg [9:0] h_count_reg, h_count_next, v_count_reg, v_count_next;
	
	// register to keep track of vsync and hsync signal states
	reg vsync_reg, hsync_reg;
	wire vsync_next, hsync_next;
    
    //game lofic
    wire need_apple;
    wire [9:0] apple_x;
    wire [9:0] apple_y;
    
    pixel_color color_getter(
        .h_count(h_count_reg),
        .v_count(v_count_reg),
        .r(pixelR),
        .g(pixelG),
        .b(pixelB),
        .update_clk(update_ticks),
        .new_apple(need_apple)
    );
    
    rand_grid(
        .x(apple_x),
        .y(apple_y),
        .update(need_apple),
        .clk(clk)
    );
    
	// infer registers
	always @(posedge clk, posedge reset)
		if(reset)
		    begin
                    v_count_reg <= 0;
                    h_count_reg <= 0;
                    vsync_reg   <= 0;
                    hsync_reg   <= 0;
		    end
		else
		    begin
                    v_count_reg <= v_count_next;
                    h_count_reg <= h_count_next;
                    vsync_reg   <= vsync_next;
                    hsync_reg   <= hsync_next;
		    end
			
	// next-state logic of horizontal vertical sync counters
	always @*
		begin
		h_count_next = pixel_tick ? 
		               h_count_reg == H_MAX ? 0 : h_count_reg + 1
			       : h_count_reg;
		
		v_count_next = pixel_tick && h_count_reg == H_MAX ? 
		               (v_count_reg == V_MAX ? 0 : v_count_reg + 1) 
			       : v_count_reg;
		end
		
        // hsync and vsync are active low signals
        // hsync signal asserted during horizontal retrace
        assign hsync_next = h_count_reg >= START_H_RETRACE
                            && h_count_reg <= END_H_RETRACE;
   
        // vsync signal asserted during vertical retrace
        assign vsync_next = v_count_reg >= START_V_RETRACE 
                            && v_count_reg <= END_V_RETRACE;

        // video only on when pixels are in both horizontal and vertical display region
        assign video_on = (h_count_reg < H_DISPLAY) 
                          && (v_count_reg < V_DISPLAY);
		localparam SNAKE_LEFT = 160;
		localparam SNAKE_RIGHT = 640;
		localparam APPLE_X = 300;
		localparam APPLE_Y = 300;
		localparam BLOCK_L = 30;
		
		always @(*)
		begin
			// first check if we're within vertical active video range
			if (v_count_reg >= 0 && v_count_reg < V_DISPLAY)
			begin				
				if (h_count_reg >= SNAKE_LEFT && h_count_reg < SNAKE_RIGHT) begin
				    vgaRed = pixelR;
				    vgaGreen = pixelG;
				    vgaBlue = pixelB;
				end
				// we're outside active horizontal range so display black
				else
				begin
					vgaRed = 0;
					vgaGreen = 0;
					vgaBlue = 0;
				end
			end
			// we're outside active vertical range so display black
			else
			begin
				vgaRed = 0;
				vgaGreen = 0;
				vgaBlue = 0;
			end
		end
        // output signals
        assign Hsync  = hsync_reg;
        assign Vsync  = vsync_reg;
        
endmodule