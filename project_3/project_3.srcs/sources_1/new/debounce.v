`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/13/2024 12:53:22 PM
// Design Name: 
// Module Name: debounce
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
module debouncer(
    input button,
    input deb_clock,
    output button_state
);

reg button_reg = 0;

always @ (posedge deb_clock)
begin
    if(button == 0) begin
        button_reg <= 0;
    end 
    else begin
        button_reg <= 1;
    end
end

assign button_state = button_reg;

endmodule
