# Digital Stopwatch

## Description

This project implements a simple Digital Stopwatch using Verilog HDL.

The stopwatch counts time in seconds and displays the count using a 4-bit output.

## Features

- Start and stop operation
- Reset operation
- Counts from 0 to 9
- Simple clock-based design
- Easy to understand

## Inputs

| Input | Description |
|------|-------------|
| `clk` | Clock signal |
| `reset` | Resets the stopwatch |
| `start_stop` | Starts or stops the stopwatch |

## Output

| Output | Description |
|------|-------------|
| `count` | Current stopwatch count |

## Working

When `start_stop` is `1`, the stopwatch starts counting.

When `start_stop` is `0`, the stopwatch stops counting.

When `reset` is `1`, the count becomes 0.

The counter counts:

    0 → 1 → 2 → 3 → ... → 9 → 0

## Files

- `digital_stopwatch.v` - Main Verilog code
- `digital_stopwatch_tb.v` - Testbench
- `output.vcd` - Simulation waveform
- `README.md` - Project documentation

## How to Run

Compile:

    iverilog -o stopwatch_sim digital_stopwatch.v digital_stopwatch_tb.v

Run:

    vvp stopwatch_sim

Open waveform:

    gtkwave output.vcd

## Expected Result

The stopwatch count increases when `start_stop` is 1.

The count stops when `start_stop` is 0.

The reset signal returns the count to 0.

## Conclusion

The Digital Stopwatch successfully counts time using a clock signal and provides start, stop, and reset functions.