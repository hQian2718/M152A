`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/30/2024 12:37:51 PM
// Design Name: 
// Module Name: EXP_SIG
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


module EXP_SIG(
    mag, exp, mant5
    );
    input [11:0] mag;
    output reg [2:0] exp;
    output reg [4:0] mant5;
    
    reg [2:0] expo;
    reg [11:0] work;
    
    always @(mag) begin
        if(mag==12'b011111111111) begin
            $display("edge case reached");
            exp = 3'b111;
            mant5 = 5'b11111;
        end else begin
            expo = 7;
            work = mag;
            while(work[11]==0 && expo > 0) begin
                expo = expo - 1;
                work = work << 1;
            end
            exp = expo;
            mant5 = work[11:7];
        end
    end
endmodule
