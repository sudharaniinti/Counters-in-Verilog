# Counters-in-Verilog
Counters are a crucial component in electronics for tracking events, measuring time, and controlling digital systems. For example, When writing code for an Upcounter, using the expression Count <= Count + 1 will generate a Synchronous Counter, where the flip flops share a common clock. Creating an Asynchronous Counter, where each flip flop has its own clock, requires a distinct coding approach that differs from that used for a Synchronous Counter. Structural coding is a popular method for implementing this technique, as it allows for the modular construction of the counter by breaking down the larger system into smaller functional units that are interconnected with specific signals. 

This repository includes:
1. Verilog Code for 4-bit Synchronous Counter (testbench included)
2. Verilog Code for 4-bit Asynchronous Counter (testbench included)
3. Simulation Output
4. Schematic diagrams of both counters
