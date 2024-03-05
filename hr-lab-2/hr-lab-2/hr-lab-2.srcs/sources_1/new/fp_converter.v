`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/30/2024 12:25:04 PM
// Design Name: 
// Module Name: FPCVT
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


module FPCVT(D, S, E, F
    );
    input [11:0] D;
    output S;
    output [2:0] E;
    output [3:0] F;
    
    wire [11:0] magnitude;
    wire [4:0] mant5;
    wire [2:0] exp;
    
    SIGNCVT sign_mag_converter(
        .D(D),
        .sign(S),
        .mag(magnitude)
    );
    
    EXP_SIG extractor(
        .mag(magnitude),
        .exp(exp),
        .mant5(mant5)
    );
    
    ROUND rounder(
        .mant5(mant5),
        .exp(exp),
        .E(E),
        .F(F)
    );
    
endmodule
