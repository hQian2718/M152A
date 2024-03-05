`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/13/2024 12:53:22 PM
// Design Name: 
// Module Name: stopwatch
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


module stopwatch(
    input clk,
    input rst,
    input pause,
    input adj,
    input sel,
    output [3:0] an,
    output [6:0] seg
    );
    
    wire clk_time;
    wire clk_adj;
    wire clk_blink;
    wire clk_deb;
    
    wire pause_state;
    
    wire [5:0] seconds;
    wire [5:0] minutes;
    
    wire [3:0] raw_an;
    
    debouncer pause_debounce(
    	.button(pause),
    	.deb_clock(clk_deb),
    	.button_state(pause_state)
    );
    
    clock clk_( .clk(clk),
                .rst(rst),
                .clk_1hz(clk_time),
                .clk_2hz(clk_adj),
                .clk_8hz(clk_blink),
                .clk_500hz(clk_deb)
                );
                
    counter count_(
                .adj(adj),
                .sel(sel),
                .pause(pause_state),
                .reset(rst),
                .secs(seconds),
                .mins(minutes),
                .clk_1hz(clk_time),
                .clk_2hz(clk_adj),
                .clk_master(clk)
    );
    
    display dis_( .clk1(clk_time),
                  .clk_refresh(clk_deb),
                  .rst(rst),
                  .an(raw_an),
                  .segment(seg),
                  .minutes(minutes),
                  .seconds(seconds)
                 );        
    blinker blink_(
                    .an(raw_an),
                    .adj(adj),
                    .sel(sel),
                    .clk_blink(clk_blink),
                    .blink_an(an)
                 );        
endmodule