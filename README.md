Adaptive Clock-Based Programmable Counter

An FPGA-based Adaptive Clock-Based Programmable Counter designed using Verilog HDL and implemented in Xilinx Vivado. This project demonstrates adaptive clock frequency selection using a Clock Divider and Multiplexer (MUX) along with a Programmable MOD-N Counter for efficient and flexible digital system design.



📌 Project Overview

The Adaptive Clock-Based Programmable Counter is a digital VLSI project that enables dynamic clock frequency selection for programmable counting operations. A clock divider generates multiple clock frequencies, while a multiplexer selects the desired clock based on user input. The selected clock drives a programmable MOD-N counter, making the system flexible, scalable, and suitable for low-power digital applications.



✨ Features

- Adaptive clock frequency selection
- Clock Divider (Divide-by-2 and Divide-by-4)
- 3:1 Clock Multiplexer
- Programmable MOD-N Counter
- Enable/Disable control
- Asynchronous reset
- Modular Verilog HDL design
- Simulated using Xilinx Vivado



🛠️ Technologies Used

- Verilog HDL
- Xilinx Vivado
- FPGA
- Digital Logic Design
- VLSI Design



📂 Repository Structure

Adaptive-Clock-Based-Programmable-Counter/
│── README.md
│
├── src/
│   ├── clock_divider.v
│   ├── clk_mux.v
│   ├── mod_n_counter.v
│   └── top_module.v
│
├── testbench/
│   └── tb_top.v
│
├── images/
│   ├── block_diagram.png
│   ├── waveform.png
│   ├── rtl_schematic.png
│
└── report/
    └── Project_Report.pdf



⚙️ Modules

Clock Divider

Generates Divide-by-2 and Divide-by-4 clock signals from the input clock.

Clock Multiplexer

Selects the required clock frequency (Fast, Medium, or Slow) based on the selection input.

MOD-N Counter

Counts from 0 to N−1 and automatically resets after reaching the programmed count value.

Top Module

Integrates the Clock Divider, Clock Multiplexer, and MOD-N Counter into a single design.

Testbench

Validates the functionality of the complete system through simulation.



▶️ Simulation

The design was simulated in Xilinx Vivado to verify:

- Clock division
- Clock frequency selection
- Programmable MOD-N counting
- Reset operation
- Enable/Disable functionality



📸 Results

The project successfully demonstrates:

- Correct clock division
- Dynamic clock switching
- Accurate programmable counting
- Reliable simulation results in Xilinx Vivado

---

🚀 Future Enhancements

- Higher clock division ratios
- Seven-segment display interface
- UART communication
- FSM-based controller
- Low-power optimization
- Multi-counter architecture



📚 Applications

- Digital Counters
- Event Counters
- Frequency Dividers
- Embedded Systems
- FPGA Prototyping
- Digital Signal Processing
- Low-Power VLSI Systems



👩‍💻 Author

P. Divya Dharshini

