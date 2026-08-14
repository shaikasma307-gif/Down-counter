`timescale 1ns/1ps

module d_flip_flop_tb;

    reg clk;
    reg reset;
    reg d;
    wire q;

    d_flip_flop uut (
        .clk(clk),
        .reset(reset),
        .d(d),
        .q(q)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin
        $monitor("Time = %0t | Reset = %b | D = %b | Q = %b",
                 $time, reset, d, q);

        clk = 0;
        reset = 1;
        d = 0;

        #10;
        reset = 0;

        d = 1;
        #10;

        d = 0;
        #10;

        d = 1;
        #10;

        d = 0;
        #10;

        $finish;
    end

endmodule