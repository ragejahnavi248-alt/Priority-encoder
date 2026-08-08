# 4:2 Priority Encoder using Verilog

## Overview

A Priority Encoder is a combinational circuit that encodes multiple inputs into binary output according to the highest-priority active input.

This project implements a 4-input Priority Encoder in Verilog HDL.

## Truth Table

| D3 | D2 | D1 | D0 | Y1 | Y0 | Valid |
|----|----|----|----|----|----|-------|
|1|X|X|X|1|1|1|
|0|1|X|X|1|0|1|
|0|0|1|X|0|1|1|
|0|0|0|1|0|0|1|
|0|0|0|0|0|0|0|

## Files

- priority_encoder.v
- priority_encoder_tb.v
- simulation_results.txt
- waveform.png

## Software Required

- Xilinx Vivado
- ModelSim
- Icarus Verilog
- GTKWave

## How to Run

1. Compile

```
iverilog priority_encoder.v priority_encoder_tb.v
```

2. Run

```
vvp a.out
```

3. View waveform

```
gtkwave priority_encoder.vcd
```

## Applications

- Interrupt Controllers
- CPU Scheduling
- Keyboard Encoder
- Digital Systems

## Author

Your Name