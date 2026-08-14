`timescale 1ns/1ps

module count_digits_tb;

reg  [31:0] number;
wire [5:0] digit_count;

count_digits uut (
    .number(number),
    .digit_count(digit_count)
);

initial begin
    $display("Count Digits Testbench");
    $display("----------------------");

    number = 0;
    #10;
    $display("Number = %0d, Digit Count = %0d", number, digit_count);

    number = 7;
    #10;
    $display("Number = %0d, Digit Count = %0d", number, digit_count);

    number = 123;
    #10;
    $display("Number = %0d, Digit Count = %0d", number, digit_count);

    number = 12345;
    #10;
    $display("Number = %0d, Digit Count = %0d", number, digit_count);

    number = 987654321;
    #10;
    $display("Number = %0d, Digit Count = %0d", number, digit_count);

    $finish;
end

endmodule