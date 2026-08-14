module decoder (
    input  A,
    input  B,
    output reg Y0,
    output reg Y1,
    output reg Y2,
    output reg Y3
);

always @(*) begin
    Y0 = 0;
    Y1 = 0;
    Y2 = 0;
    Y3 = 0;

    case ({A, B})
        2'b00: Y0 = 1;
        2'b01: Y1 = 1;
        2'b10: Y2 = 1;
        2'b11: Y3 = 1;
    endcase
end

endmodule