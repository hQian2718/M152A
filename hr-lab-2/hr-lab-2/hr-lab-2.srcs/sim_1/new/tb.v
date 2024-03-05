`timescale 1ns / 1ps
module tb;

reg [11:0] D;

wire S;
wire [2:0] E;
wire [3:0] F;

FPCVT tested (
    .D(D),
    .S(S),
    .E(E),
    .F(F)
);

    initial begin
        $display("testing");
        D = 12'b 100100010001;
        //normal negative number
        $display(S);
        #200;
        D = 12'b 000000000001;
        //very small positive number
        $display(S);
        #100;
        D = 12'b 111111000000;
        #100;
        D = 12'b 011111111111;
        #100;
        D = 12'b 100000000000;
        #100;
        D = 0;
        #100;
        //test significand rounds
        D = 12'b 001011010111;
        #100;
        D = 12'b 001111110111;
        
        
    end
endmodule