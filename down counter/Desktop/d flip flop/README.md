# D Flip-Flop

## Description

A D Flip-Flop is a basic sequential digital circuit used to store one bit of data. The output `Q` captures the input `D` on the rising edge of the clock.

## Files

* `d_flip_flop.v` – Verilog design code.
* `d_flip_flop_tb.v` – Testbench for simulation.
* `expected_output.txt` – Expected simulation output.

## Features

* Positive-edge triggered
* 1-bit data storage
* Asynchronous active-high reset
* Simple RTL implementation

## Working

When `reset` is HIGH, the output `Q` becomes `0`.

When `reset` is LOW, the output `Q` captures the value of `D` at every rising edge of `clk`.

### Truth Table

| Reset | Clock | D | Q |
| ----- | ----- | - | - |
| 1     | X     | X | 0 |
| 0     | ↑     | 0 | 0 |
| 0     | ↑     | 1 | 1 |

## Simulation

The testbench generates a clock and applies different values to `D`. The output `Q` is checked after each rising clock edge.

## Tools

* Verilog HDL
* Icarus Verilog / ModelSim / Vivado
* GTKWave (optional)

## Expected Result

The output `Q` follows the input `D` on each rising edge of the clock, while reset forces `Q` to `0`.

## Conclusion

This project demonstrates the basic operation of a D Flip-Flop using Verilog HDL.
