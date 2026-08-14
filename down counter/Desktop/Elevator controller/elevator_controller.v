module elevator_controller (
    input wire       clk,
    input wire       reset,
    input wire [1:0] floor_request,

    output reg [1:0] current_floor,
    output reg       moving_up,
    output reg       moving_down,
    output reg       door_open
);

always @(posedge clk) begin

    if (reset) begin
        current_floor <= 2'b00;
        moving_up     <= 1'b0;
        moving_down   <= 1'b0;
        door_open     <= 1'b1;
    end

    else begin

        door_open   <= 1'b0;
        moving_up   <= 1'b0;
        moving_down <= 1'b0;

        if (current_floor < floor_request) begin

            moving_up <= 1'b1;

            if (current_floor < 2'b11)
                current_floor <= current_floor + 1'b1;

        end

        else if (current_floor > floor_request) begin

            moving_down <= 1'b1;

            if (current_floor > 2'b00)
                current_floor <= current_floor - 1'b1;

        end

        else begin

            door_open <= 1'b1;

        end
    end

end

endmodule