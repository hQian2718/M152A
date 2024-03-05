`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/13/2024 12:53:22 PM
// Design Name: 
// Module Name: clock
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


module clock(
input clk,
input rst,
output clk_1hz,
output clk_2hz,
output clk_500hz,
output clk_8hz 
    );
    
    reg [26:0] counter = 1;
    reg reg_1= 0;
    reg reg_2 = 0;
    reg reg_8 = 0;
    reg reg_500 = 0;
    
    parameter CLOCK_RATE = 100000; //base freq is 100MHz
    always @ (posedge clk)begin 
        if (rst) begin
            counter = 0;
            reg_1 = 0;
            reg_2 = 0;
            reg_8 = 0;
        end else begin
            counter = counter + 1;
            if (counter % (CLOCK_RATE / 1) == 0) reg_1 = 1;
            else reg_1 = 0; 
            if (counter % (CLOCK_RATE / 2) == 0)
                reg_2 = 1;
            else reg_2 = 0; 
            if (counter % (CLOCK_RATE / 5) == 0)
                reg_8 = 1;
            else reg_8 = 0; 
            if (counter % (CLOCK_RATE / 200) == 0)
                reg_500 = 1;
            else reg_500 = 0;
            if (counter % (CLOCK_RATE / 1) == 0)
                counter = 0;
        end
    end
    
    assign clk_1hz = reg_1;
    assign clk_2hz = reg_2;
    assign clk_8hz = reg_8;
    assign clk_500hz = reg_500;
endmodule
