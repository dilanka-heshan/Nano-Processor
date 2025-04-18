# 🔧 Nano Processor Design – 4-bit CPU on BASYS 3 FPGA

This project implements a simplified 4-bit Nano Processor using **VHDL** on the **BASYS 3 FPGA** board. Developed as part of the **CS1050 - Computer Organization and Digital Design** course at the **University of Moratuwa**, it demonstrates a minimal yet functional CPU pipeline with a custom instruction set and basic ALU operations.

---

## 🧠 Architecture Overview

- **Data Width:** 4-bit  
- **Instruction Width:** 12-bit   
- **Clock:** Manual (push button) or board oscillator  
- **Display:** 7-segment & LEDs (for result visualization)

---

## 📦 Main Components

### ✅ 1. Arithmetic Logic Unit (ALU)
Supports:
- `ADD`, `SUB`, `MUL`
- `AND`, `OR`, `ANDN`, `ORN`
- `NEG` (Two's Complement)
- Outputs results and status flags via LEDs

### ✅ 2. Register Bank
- 8 Registers (`R0` to `R7`)
- `R0` is hardwired to 0
- Supports simultaneous read (2) and write (1)
- Decoder-based enable control

### ✅ 3. Program Counter (PC)
- 3-bit counter with reset
- Supports conditional jump using `JZR`

### ✅ 4. Instruction Decoder
- Splits 12-bit instruction into:

### ✅ 5. ROM (Program Memory)
- 16 pre-defined instructions
- Assembled using custom ISA
- Executed sequentially with jump support

---


##👨‍💻 Team
Dilanka 
Nimesh
Anuja Kalhara
Pulindu Vilhan
