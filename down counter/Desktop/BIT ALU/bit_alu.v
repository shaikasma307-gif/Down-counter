module bit_alu (
    input  [3:0] A,
    input  [3:0] B,
    input  [2:0] opcode,
    output reg [3:0] result,
    output reg       carry
);

always @(*) begin
    carry = 1'b0;

    case (opcode)
        3'b000: begin
            {carry, result} = A + B;
        end

        3'b001: begin
            result = A - B;
        end

        3'b010: begin
            result = A & B;
        end

        3'b011: begin
            result = A | B;
        end

        3'b100: begin
            result = A ^ B;
        end

        3'b101: begin
            result = ~A;
        end

        3'b110: begin
            result = A << 1;
        end

        3'b111: begin
            result = A >> 1;
        end

        default: begin
            result = 4'b0000;
            carry = 1'b0;
        end
    endcase
end

endmodule