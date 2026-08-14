# Elevator Controller

## Description

A Verilog HDL-based elevator controller that manages elevator movement between multiple floors based on floor requests. It controls the elevator direction and floor position according to the requested destination.

## Features

* 4-floor elevator control
* Floor request detection
* Up and down movement
* Current floor tracking
* Door open control
* Reset functionality
* Verilog HDL simulation

## Inputs

| Input           | Description                             |
| --------------- | --------------------------------------- |
| `clk`           | Clock signal                            |
| `reset`         | Resets the elevator to the ground floor |
| `floor_request` | Requested destination floor             |

## Outputs

| Output          | Description              |
| --------------- | ------------------------ |
| `current_floor` | Current elevator floor   |
| `moving_up`     | Elevator moving upward   |
| `moving_down`   | Elevator moving downward |
| `door_open`     | Elevator door status     |

## Working Principle

The controller compares the current floor with the requested floor. If the requested floor is higher, the elevator moves upward. If it is lower, the elevator moves downward. When the elevator reaches the requested floor, it stops and opens the door.

## Project Files

* `elevator_controller.v` - Main Verilog design
* `elevator_controller_tb.v` - Testbench
* `expected_output.txt` - Expected simulation output

## Simulation

Using Icarus Verilog:

```bash
iverilog -o elevator_sim elevator_controller.v elevator_controller_tb.v
vvp elevator_sim
```

## Applications

* Building elevators
* Lift control systems
* FPGA-based elevator projects
* Digital control systems
