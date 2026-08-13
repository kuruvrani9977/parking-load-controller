`timescale 1ns/1ps

module digital_stopwatch_tb;

    reg clk;
    reg reset;
    reg start_stop;

    wire [3:0] count;

    // Connect stopwatch
    digital_stopwatch uut (
        .clk(clk),
        .reset(reset),
        .start_stop(start_stop),
        .count(count)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin

        // Create waveform
        $dumpfile("output.vcd");
        $dumpvars(0, digital_stopwatch_tb);

        // Initial values
        clk = 0;
        reset = 1;
        start_stop = 0;

        #10;

        // Release reset
        reset = 0;

        // Start stopwatch
        start_stop = 1;
        #100;

        // Stop stopwatch
        start_stop = 0;
        #30;

        // Start again
        start_stop = 1;
        #50;

        // Reset stopwatch
        reset = 1;
        #10;

        $finish;

    end

endmodule