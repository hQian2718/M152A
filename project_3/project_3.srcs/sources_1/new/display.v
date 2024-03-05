`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/13/2024 12:53:22 PM
// Design Name: 
// Module Name: display
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


module display(
    input clk1,
    input clk_refresh,
    input rst,
    input [5:0] seconds,
    input [5:0] minutes,
    output [3:0] an ,
    output [6:0] segment 
    );
    
    reg [6:0] segments = 7'b1000000;
    reg [3:0] activate = 4'b0111;
    
    reg [3:0] current_digit = 0;
        
              
    always @ (posedge clk_refresh) begin
        case(activate)
            4'b1110: current_digit = seconds % 10;
            4'b1101: current_digit = seconds / 10;
            4'b1011: current_digit = minutes % 10;
            4'b0111: current_digit = minutes / 10;  
            default: current_digit = 0;
        endcase
        
        case(current_digit)
            1: segments = 7'b1111001;
            2: segments = 7'b0100100;
            3: segments = 7'b0110000;
            4: segments = 7'b0011001;
            5: segments = 7'b0010010;
            6: segments = 7'b0000010;
            7: segments = 7'b1111000;
            8: segments = 7'b0000000;
            9: segments = 7'b0010000;
            0: segments = 7'b1000000;
            default: segments = 7'b0101010;
        endcase
        
        case(activate) 
            4'b1110: activate = 4'b1101;
            4'b1101: activate = 4'b1011;
            4'b1011: activate = 4'b0111;
            4'b0111: activate = 4'b1110;
        endcase

    end
    assign an = activate;
    assign segment = segments;
endmodule
