`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/15/2024 01:32:21 PM
// Design Name: 
// Module Name: counter
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


module counter(
    input adj,
    input sel,
    input pause,
    input reset,
    output [5:0] secs,
    output [5:0] mins,
    input clk_1hz,
    input clk_2hz,
    input clk_master
    );
    
    reg [5:0] seconds = 0;
    reg [5:0] minutes = 0;
    
/*    always @(posedge clk_master)begin
        if(reset) begin
            $monitor("Happened");
            seconds = 6'b000000;
            minutes = 6'b000000;
        end
    end*/
     
    always @(posedge clk_2hz) begin
        if(adj & !pause) begin
            if(sel) begin
            //seconds
                seconds = seconds + 1;
                if (seconds == 60) begin
                    seconds = 0;
                    minutes = minutes + 1;
                end
                if (minutes == 60) begin
                    minutes = 0;
                end
            end
            else begin
            //minutes
                minutes = minutes + 1;
                if (minutes == 60) minutes <= 0;
            end
        end
        else if(!adj & !pause & clk_1hz) begin
            seconds = seconds + 1;
            if (seconds == 60) begin
                seconds = 0;
                minutes = minutes + 1;
            end
            if (minutes == 60) begin
                seconds = 0;
                minutes = 0;
            end    
        end
     end
    assign secs = seconds;
    assign mins = minutes;
endmodule
