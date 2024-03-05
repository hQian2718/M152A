module blinker(
	input [3:0] an,
	input adj,
	input sel,
	input clk_blink,
	output [3:0] blink_an
);

	reg on = 1;
	reg [3:0] mask = 4'b0000;
	
	always @ (posedge clk_blink) begin
	   	on = ~on;
		if (adj) begin
			if(!on) begin
				if(sel) mask = 4'b0011;
				else	mask = 4'b1100;
			end
			else mask = 4'b0000;
		end
		else mask = 4'b0000;
	end
	
	assign blink_an = an | mask;
endmodule
