module count_digits (
    input  [31:0] number,
    output reg [5:0] digit_count
);

integer temp;

always @(*) begin
    temp = number;
    digit_count = 0;

    if (temp == 0) begin
        digit_count = 1;
    end
    else begin
        while (temp > 0) begin
            temp = temp / 10;
            digit_count = digit_count + 1;
        end
    end
end

endmodule