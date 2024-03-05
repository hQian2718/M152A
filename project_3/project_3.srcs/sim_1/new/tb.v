`timescale 1ns / 1ps

module tb;
    reg clk_100M;
    reg clk_50M;
    reg clk_25000M;
    
    reg rst;
    reg pause;
    reg adj;
    reg sel;
    
    wire [6:0] segment;
    wire [3:0] an;
    
    wire clk_1Hz;
    wire clk_2Hz;
    wire clk_8Hz;
    wire clk_500Hz;
    
    wire [5:0] seconds;
    wire [5:0] minutes;
    
    stopwatch uut (
        .clk(clk_100M),
        .rst(rst),
        .pause(pause),
        .adj(adj),
        .sel(sel),
        .an(an),
        .seg(segment)
    );
    
    
    // Clock generation
    always begin
        #1 clk_100M = ~clk_100M; // Generates a 100MHz clock with a period of 10ns
    end
    
    always begin
        #500 clk_50M = ~clk_50M;
    end
    
    always begin
        #2 clk_25000M = ~clk_25000M;
    end

    
    // Test procedure
    initial begin
        // Initialize signals
        clk_100M = 0;
        clk_50M = 0;
        clk_25000M = 0;
        
        rst = 0;
        pause = 0;
        adj = 0;
        sel = 0;
        
        // Apply reset
        //#10 rst = 0;
        //#10 rst = 1;

        // Let the simulation run for some time
        //#300000000; // Run simulation for 1 second of simulated time.
        #50000;
        
        adj = 1;
        pause = 0;
        sel = 0;
        
        //#100000000;
        #20000;
        
        pause = 1;
        //#10000000;
        #50000;
        pause = 0;
        sel = 0;
        //#10000000;
        #20000;
        adj = 0;
        #4050;
        rst = 1;
        #1000;
        rst = 0;
        
        // Finish the simulation
        $finish;
    end

    // Monitor output
    initial begin
        //$monitor("At time %t, clk_1Hz = %b, seg = %b, an = %b", $time, clk_1Hz, segment, an);
    end
endmodule
