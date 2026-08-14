# Comparator

## Description

A 1-bit Comparator compares two binary inputs, A and B, and determines whether A is greater than, less than, or equal to B.

## Inputs

* `A` – 1-bit input
* `B` – 1-bit input

## Outputs

* `A_greater_B` – HIGH when A > B
* `A_less_B` – HIGH when A < B
* `A_equal_B` – HIGH when A = B

## Truth Table

| A | B | A > B | A < B | A = B |
| - | - | ----- | ----- | ----- |
| 0 | 0 | 0     | 0     | 1     |
| 0 | 1 | 0     | 1     | 0     |
| 1 | 0 | 1     | 0     | 0     |
| 1 | 1 | 0     | 0     | 1     |

## Files

* `comparator.v` – Verilog design code
* `comparator_tb.v` – Testbench
* `expected_output.txt` – Expected simulation output

## Tools

* Verilog HDL
* Icarus Verilog / ModelSim / Vivado

## Result

The comparator correctly compares two 1-bit binary inputs and produces the corresponding greater-than, less-than, and equal outputs.
