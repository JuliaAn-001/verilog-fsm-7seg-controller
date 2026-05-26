# FSM-Based Seven-Segment Display Controller in Verilog

## Overview

This project implements a Moore finite state machine (FSM) and a seven-segment display decoder using Verilog HDL.

The FSM generates a 4-bit display code based on its current state. The seven-segment decoder converts this code into segment control signals. A top-level module integrates both blocks into a complete display controller.

This repository is based on a Hardware Description Languages laboratory project. With the consent of the team members, the RTL code, testbench, simulation results, and documentation are reorganized into a portfolio-style project.

## Features

- Moore finite state machine
- Five-state FSM design
- Asynchronous active-low reset
- State-dependent output code
- Seven-segment display decoder
- Top-level RTL integration
- Verilog testbench
- Waveform-based functional verification

## Project Structure

```text
rtl/
  moore_fsm.v
  seven_segment_decoder.v
  display_controller_top.v

tb/
  tb_display_controller_top.v
