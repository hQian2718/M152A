`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/30/2024 12:37:51 PM
// Design Name: 
// Module Name: SIGNCVT
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


module SIGNCVT(
    D, sign, mag
    );
    input [11:0] D;
    output reg sign;
    output reg [11:0] mag;
    
    always @(D) begin
        sign = D[11];
        if(D == 12'b100000000000)
            mag = 12'b011111111111;
        else if(sign == 1)
            mag = ~D + 1;
        else
            mag = D;
     end
endmodule
