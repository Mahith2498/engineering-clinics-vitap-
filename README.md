# ⚡️ Engineering Clinics VIT-AP: Digital Design Modules

Welcome to the **Engineering Clinics VIT-AP** project repository! 

<p align="center">
	<img src="https://img.shields.io/badge/Verilog-%23F7DF1E.svg?style=for-the-badge&logo=verilog&logoColor=black" alt="Verilog" height="28"> 
	<img src="https://img.shields.io/badge/VLSI-Design-blueviolet?style=for-the-badge" alt="VLSI" height="28">
</p>

This collection features a set of Verilog modules and testbenches for various digital arithmetic circuits, including Wallace tree multipliers, compressors, and low-power full adders. The designs are suitable for learning, simulation, and further research in digital logic and VLSI design.

---

## 📚 Table of Contents
- [🗂️ Project Structure](#project-structure)
- [🔎 Modules Overview](#modules-overview)
	- [✴️ 4x4 Wallace Tree Multiplier](#4x4-wallace-tree-multiplier)
	- [🟢 5-to-3 Compressor](#5-to-3-compressor)
	- [🟣 8-to-4 Compressor](#8-to-4-compressor)
	- [🔵 9-to-4 Compressor](#9-to-4-compressor)
	- [🟡 Low Power Full Adder](#low-power-full-adder)
- [🛠️ How to Simulate](#how-to-simulate)
- [👨‍💻 Authors](#authors)
- [📝 License](#license)

---

## 🗂️ Project Structure

```text
engineering-clinics-vitap--main/
│
├── 4to4 wallace tree multiplier/
│   ├── fourwalmul.v         # ✴️ 4x4 Wallace tree multiplier module
│   ├── frwaltrmultb.v       # 🧪 Testbench for 4x4 Wallace tree multiplier
│   └── mahith               # 👤 Author/notes
│
├── 5 to 3 compressor/
│   ├── five_three_compre.v  # 🟢 5-to-3 compressor module
│   ├── five_three_compre_tb.v # 🧪 Testbench for 5-to-3 compressor
│   ├── five_three_compre_tb_behav.wcfg # 📈 Waveform config
│   └── mahith               # 👤 Author/notes
│
├── 8 to 4 compressor/
│   ├── eight_four_compre.v  # 🟣 8-to-4 compressor module
│   ├── eight_four_compr_tb.v # 🧪 Testbench for 8-to-4 compressor
│   └── mahith               # 👤 Author/notes
│
├── 9 to 4 compressor/
│   ├── nine_four_compre.v   # 🔵 9-to-4 compressor module
│   ├── nine_four_compr_tb.v # 🧪 Testbench for 9-to-4 compressor
│   └── mahith               # 👤 Author/notes
│
├── low power full adder/
│   ├── des_low_pl_fadd.v    # 🟡 Low power full adder module
│   ├── tbf.v                # 🧪 Testbench for low power full adder
│   └── mahith               # 👤 Author/notes
│
└── README.md                # 📄 Project documentation
```

---

## 🔎 Modules Overview

### ✴️ 4x4 Wallace Tree Multiplier
- **File:** `4to4 wallace tree multiplier/fourwalmul.v`
- **Description:** Efficient 4x4 multiplier using Wallace tree reduction for fast multiplication. Includes half (⊕) and full (Σ) adder submodules.
- **Testbench:** `frwaltrmultb.v`

### 🟢 5-to-3 Compressor
- **File:** `5 to 3 compressor/five_three_compre.v`
- **Description:** Compresses 5 input bits into 3 output bits, useful in multi-operand addition and multiplication circuits.
- **Testbench:** `five_three_compre_tb.v`

### 🟣 8-to-4 Compressor
- **File:** `8 to 4 compressor/eight_four_compre.v`
- **Description:** Reduces 8 input bits to 4 output bits using a combination of half (⊕) and full (Σ) adders.
- **Testbench:** `eight_four_compr_tb.v`

### 🔵 9-to-4 Compressor
- **File:** `9 to 4 compressor/nine_four_compre.v`
- **Description:** Compresses 9 input bits into 4 output bits, suitable for advanced arithmetic circuits.
- **Testbench:** `nine_four_compr_tb.v`

### 🟡 Low Power Full Adder
- **File:** `low power full adder/des_low_pl_fadd.v`
- **Description:** Optimized full adder design for low power consumption.
- **Testbench:** `tbf.v`

---

## 🛠️ How to Simulate

1. **Open your preferred Verilog simulator** (e.g., ModelSim, Vivado, Icarus Verilog).
2. **Compile the module and its testbench.** Example for Icarus Verilog:
	 ```sh
	 iverilog -o fourwalmul_tb 4to4\ wallace\ tree\ multiplier/fourwalmul.v 4to4\ wallace\ tree\ multiplier/frwaltrmultb.v
	 vvp fourwalmul_tb
	 ```
3. **View the output** in the terminal or use a waveform viewer (e.g., GTKWave) for `.vcd` files.
4. **Repeat** for other modules by changing the file names accordingly.

---

## 👨‍💻 Authors
- **Kothapalli Mahith Vathsav** (Lead Designer)
- Contributors: See individual module folders for notes.

---

## 📝 License
This project is for educational and research purposes. Please credit the authors if you use or modify these designs.

---

## 🖼️ Screenshots & Diagrams
> *Add simulation waveforms or block diagrams here for better visualization.*

---

## 📬 Contact
For questions or collaboration, please contact the lead designer or open an issue in this repository.
