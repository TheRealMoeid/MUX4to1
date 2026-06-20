# 4-to-1 Multiplexer Circuit Design

A digital logic implementation of a 4-to-1 multiplexer designed using **Altera Quartus II** schematic entry. This project demonstrates data selection and routing using combinational logic, a fundamental building block in digital systems.

## Overview

A 4-to-1 multiplexer is a combinational logic circuit that selects one of four input signals and routes it to a single output based on two select lines. This project includes two design variants: one with an enable signal and one without, showcasing different complexity levels and control schemes.

## Project Variants

The repository contains two main design variants:

### Variant 1: With Enable Signal
- **Files**: `Azmayesh_Dovvom.bdf`
- **Features**: Includes an active-high or active-low enable control signal
- **Waveforms**: `Waveform.vwf`, `Waveform2.vwf`, `Waveform3.vwf`, `Waveform4.vwf`, `Waveform5.vwf`, `Waveform6.vwf`
- **Use Cases**: When circuit output control is needed

### Variant 2: Without Enable Signal (Primary)
- **Files**: `Azmayesh_Dovvom_Without_En.bdf`, `Azmayesh_Dovvom_Without_En.qpf`, `Azmayesh_Dovvom_Without_En.qsf`
- **Features**: Pure multiplexer without enable control
- **Waveforms**: `without_En_Waveform7.vwf` + simulation waveforms
- **Use Cases**: Basic data selection applications

## Project Structure

```
MUX4to1/
├── Azmayesh_Dovvom_Without_En.bdf        # Main schematic (without enable)
├── Azmayesh_Dovvom.bdf                   # Alternative variant (with enable)
├── Azmayesh_Dovvom_Without_En.qpf        # Quartus II project file
├── Azmayesh_Dovvom_Without_En.qsf        # Quartus II settings
├── Azmayesh_Dovvom_Without_En.csv        # Configuration/data file
│
├── Waveform*.vwf                         # Simulation waveform files (6 variants)
├── without_En_Waveform7.vwf              # Primary test vectors (no enable)
│
├── output_files/                         # Compiled bitstreams and reports
│   ├── Azmayesh_Dovvom_Without_En.sof    # SRAM Object File
│   ├── Azmayesh_Dovvom_Without_En.pof    # Programmer Object File
│   └── *.rpt                             # Timing, mapping, and resource reports
│
├── simulation/                           # Simulation data
│   ├── qsim/                             # Quartus simulation files
│   └── modelsim/                         # ModelSim simulation files
│
├── db/                                   # Quartus compilation database
├── incremental_db/                       # Incremental compilation cache
│
├── Screenshot*.png                       # Design screenshots
├── *.png                                 # Waveform simulation captures
│
└── گزارش کار.pdf                        # Lab report (in Persian)
```

## Circuit Specifications

### Inputs (Without Enable Variant)
- **D0, D1, D2, D3**: Four data input lines
- **S0, S1**: Two select control lines

### Output
- **Y**: Selected output (one of D0-D3 based on S0 and S1)

### Truth Table (Without Enable)

| S1 | S0 | Output (Y) |
|----|----|-----------|
| 0  | 0  | D0        |
| 0  | 1  | D1        |
| 1  | 0  | D2        |
| 1  | 1  | D3        |

### With Enable Variant
Adds:
- **En**: Enable control signal
- Output = 0 (or High-Z) when En is inactive; normal multiplexer operation when En is active

## Design Implementation

The design is implemented in **Quartus II Block Editor** (BDF format), using standard logic gates to create the multiplexer functionality:
- AND gates for input selection
- OR gate for output combination
- Inverters for select line decoding (if applicable)

The design has been synthesized and compiled for FPGA implementation on Altera devices.

### Compilation Results

Successfully compiled with:
- **Tool**: Altera Quartus II v13.0.1
- **Project**: Azmayesh_Dovvom_Without_En
- **Date Created**: June 2, 2026
- **Output Files**: SOF and POF files generated
- **Status**: Compilation completed with all timing constraints met

## Simulation

Multiple waveform files are provided to verify functionality:

### Standard Simulation Files
- `Waveform.vwf` through `Waveform6.vwf` - Various test scenarios
- `without_En_Waveform7.vwf` - Primary test vectors for the no-enable variant

### Simulation Environments
- **Quartus II Simulator**: Native RTL and gate-level simulation
- **ModelSim**: Advanced simulation with detailed timing analysis
- Pre-configured simulation files in `simulation/` directory

## How to Use

### Prerequisites
- Altera Quartus II v13.0 or compatible
- ModelSim (optional, for advanced timing analysis)

### Opening the Project
1. Launch Quartus II
2. Open `Azmayesh_Dovvom_Without_En.qpf` (Project > Open Project)
3. Design files and settings will load automatically

### Running Simulation
1. Open your preferred waveform file (`without_En_Waveform7.vwf` recommended)
2. Tools > RTL Simulation or Tools > Gate-Level Simulation
3. Observe output Y changing based on select lines S0 and S1
4. Verify all four data inputs are properly routed to output

### Compiling the Design
1. Click Compile Design (or Tools > Compile Design)
2. Compilation reports will be generated in `output_files/`
3. Use `.sof` file for SRAM-based programming or `.pof` for flash

### Testing on Hardware (if available)
1. Connect FPGA board via USB-Blaster
2. Tools > Programmer
3. Select the `.sof` file and program device
4. Apply test patterns to data inputs and observe output selection

## Pin Assignments

Pin configuration is detailed in `output_files/Azmayesh_Dovvom_Without_En.pin`. Default assignments target standard FPGA development board pins:
- Data inputs (D0-D3): Assigned to input pins
- Select lines (S0, S1): Assigned to input pins
- Output (Y): Assigned to LED or output pin

## Reports and Analysis

Detailed reports in `output_files/`:
- **Azmayesh_Dovvom_Without_En.map.rpt** - Logic mapping analysis
- **Azmayesh_Dovvom_Without_En.fit.rpt** - Device fitting and resource utilization
- **Azmayesh_Dovvom_Without_En.sta.rpt** - Static timing analysis
- **Azmayesh_Dovvom_Without_En.asm.rpt** - Assembly report

## Educational Use

This project is ideal for understanding:
- Multiplexer architecture and operation
- Data routing and selection logic
- Schematic design in Quartus II
- FPGA synthesis and place-and-route
- Boolean logic implementation
- Control signal integration
- Simulation and verification techniques
- Multiple design variants and tradeoffs

## Design Notes

- **Experiment**: This is the second experiment (آزمایش دوم) from Computer Architecture Lab
- **Variants**: Two implementations demonstrate different control schemes (with and without enable)
- **Optimization**: Design prioritizes educational clarity and functional understanding
- **Testing**: Multiple waveforms show comprehensive test coverage
- **Documentation**: Persian lab report included with detailed analysis

## Related Files

- `Azmayesh_Dovvom.csv` - Configuration data for variant comparison
- Screenshot files - Visual documentation of schematic and simulation
- Lab report (`گزارش کار.pdf`) - Detailed analysis and observations in Persian

## Potential Extensions

For advanced learning, consider:
1. Implementing an 8-to-1 multiplexer (requires 3 select lines)
2. Cascading two 4-to-1 multiplexers to create a larger MUX
3. Adding enable signal to the no-enable variant
4. Implementing a 1-to-4 demultiplexer (inverse function)
5. Creating tri-state output version
6. Optimizing for minimum gate count

## License

This project follows Altera Corporation's design tool licensing terms as outlined in the Quartus II Software License Agreement.

---

**Created**: June 2, 2026  
**Tool**: Altera Quartus II v13.0.1 Build 232  
**Project**: Computer Architecture Lab - Experiment 2
