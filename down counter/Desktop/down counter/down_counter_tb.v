```verilog
`timescale 1ns/1ps

module down_counter_tb;

    reg clk;
    reg reset;
    wire [3:0] count;

    // Instantiate the Down Counter
    down_counter uut (
        .clk(clk),
        .reset(reset),
        .count(count)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin
        // Initialize signals
        clk = 0;
        reset = 1;

        // Apply reset
        #10;
        reset = 0;

        // Run counter
        #170;

        $finish;
    end

    // Display output
    initial begin
        $monitor("Time = %0t | Reset = %b | Count = %d | Binary = %b",
                 $time, reset, count, count);
    end

endmodule
```
