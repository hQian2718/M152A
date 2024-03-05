`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/30/2024 12:37:51 PM
// Design Name: 
// Module Name: ROUND
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


module ROUND(
    mant5, exp, E, F
    );
    input [4:0] mant5;
    input [2:0] exp;
    output reg [2:0] E;
    output reg [3:0] F;
    
    always @(*) begin
        if (mant5[0] == 1) begin
            if(mant5 == 5'b11111) begin
                $display("overflow");
                $display(exp);
                //overflow
                //case 1: exponent maxed
                if(exp == 3'b111) begin
                    $display("Max detected");
                    F = 4'b1111;
                    E = 3'b111;
                end
                else begin
                F = (mant5 >> 1) + 1;
                E = exp + 1;
                end
            end
            //round, no overflow
            else begin
                F = mant5[4:1] + 1;
                E = exp;
            end
        end
        else begin
        //no rounding
            E = exp;
            F = mant5[4:1];
        end
    end
endmodule
