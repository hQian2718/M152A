`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/05/2024 01:15:26 PM
// Design Name: 
// Module Name: clk_divider
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


module clk_divider(
    input clk,
    output reg update_clk
    );
    
    reg [24:0] acc = 0;
    
    always @ (posedge clk) begin 
        if(acc[6]) begin        //24
            update_clk <= 1;
            acc <= 0;
        end else begin 
            update_clk <= 0;
            acc <= acc + 1;
        end
    end
endmodule
