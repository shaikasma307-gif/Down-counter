# Count Digits

## Description

This project counts the number of decimal digits present in a given integer using Verilog HDL.

## Files

* `count_digits.v` – Main Verilog design
* `count_digits_tb.v` – Testbench for simulation
* `expected_output.txt` – Expected simulation results

## Working

The input number is repeatedly divided by 10. Each division removes one digit, and a counter keeps track of the number of divisions until the number becomes zero.

## Example

For an input number:

`12345`

The number of digits is:

`5`

## Simulation

The design can be simulated using tools such as:

* ModelSim
* QuestaSim
* Vivado
* Icarus Verilog

## Expected Result

The output should correctly display the number of digits for each input number.
