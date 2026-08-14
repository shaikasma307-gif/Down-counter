`timescale 1ns/1ps

module elevator_controller_tb;

reg clk;
reg reset;
reg [1:0] floor_request;

wire [1:0] current_floor;
wire moving_up;
wire moving_down;
wire door_open;

elevator_controller uut (
    .clk(clk),
    .reset(reset),
    .floor_request(floor_request),
    .current_floor(current_floor),
    .moving_up(moving_up),
    .moving_down(moving_down),
    .door_open(door_open)
);

always #5 clk = ~clk;

initial begin

    $monitor(
        "Time=%0t | Request=%0d | Floor=%0d | UP=%b | DOWN=%b | Door=%b",
        $time,
        floor_request,
        current_floor,
        moving_up,
        moving_down,
        door_open
    );

    clk = 0;
    reset = 1;
    floor_request = 2'b00;

    #10;

    reset = 0;

    // Request Floor 3
    floor_request = 2'b11;

    #40;

    // Request Floor 1
    floor_request = 2'b01;

    #30;

    // Request Ground Floor
    floor_request = 2'b00;

    #30;

    $display("Simulation completed successfully.");
    $finish;

end

endmodule