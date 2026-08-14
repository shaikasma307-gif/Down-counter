# 4-Bit Down Counter

## Description

A 4-bit synchronous down counter that decreases its count by 1 on every rising edge of the clock.

## Features

* 4-bit counter
* Synchronous reset
* Counts from 15 down to 0
* Written in Verilog HDL
* Includes a simulation testbench

## Files

* `down_counter.v` – Main down counter design
* `down_counter_tb.v` – Testbench for simulation
* `expected_output.txt` – Expected simulation output

## Working

When `reset` is high, the counter is initialized to `1111` (15).
On every positive edge of the clock, the counter decreases by 1.

After reaching `0000` (0), the counter wraps around to `1111` (15).

## Example Count Sequence

```text
15 → 14 → 13 → 12 → 11 → 10 → ... → 2 → 1 → 0 → 15
```

## Simulation

The design can be simulated using tools such as:

* Icarus Verilog
* ModelSim
* QuestaSim
* Vivado

## Author

Down Counter Verilog Project
