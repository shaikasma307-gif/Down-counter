# 2-to-4 Decoder

## Description

A 2-to-4 Decoder converts 2 binary input signals into 4 output signals.
For each input combination, only one output is HIGH.

## Inputs

* A
* B

## Outputs

* Y0
* Y1
* Y2
* Y3

## Truth Table

| A | B | Y0 | Y1 | Y2 | Y3 |
| - | - | -- | -- | -- | -- |
| 0 | 0 | 1  | 0  | 0  | 0  |
| 0 | 1 | 0  | 1  | 0  | 0  |
| 1 | 0 | 0  | 0  | 1  | 0  |
| 1 | 1 | 0  | 0  | 0  | 1  |

## Files

* `decoder.v` – Verilog code for the decoder.
* `decoder_tb.v` – Testbench to verify the decoder.
* `expected_output.txt` – Expected simulation output.

## Tools

* Verilog
* Icarus Verilog / ModelSim / Vivado
