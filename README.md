# DE10-Lite HDL Project Library

A library of Verilog and SystemVerilog projects for the **Intel DE10-Lite Development and Education Board**, compiled using **Intel Quartus Prime** and **ModelSim**.  
This repository includes synthesizable designs, simulation testbenches, and hardware-verified implementations that demonstrate core digital design concepts.

---

## 🧩 About the DE10-Lite Board

The **DE10-Lite** is an Intel (formerly Altera) FPGA development and education platform featuring the **MAX 10 FPGA (10M50DAF484C7G)**.  
It’s widely used in university and hobbyist settings for learning digital design, HDL coding, and FPGA development.

**Key features:**
- Intel MAX 10 FPGA (50K logic elements)
- 50 MHz onboard clock
- 7-segment displays (HEX0–HEX5)
- 10 user switches, 10 LEDs, 2 pushbuttons
- Arduino Uno–compatible headers
- Onboard USB-Blaster II for programming and debugging
- Powered via USB (no external supply required)

**Manufacturer:** [Terasic Technologies](https://www.terasic.com.tw/cgi-bin/page/archive.pl?Language=English&CategoryNo=165&No=1081)

**Purchase:**  
You can buy the DE10-Lite directly from:
- [Terasic Online Store](http://de10-lite.terasic.com/)
- [Digi-Key](https://www.digikey.com/en/products/detail/terasic-inc/P0466/6230089)
- [Mouser Electronics](https://www.mouser.com/new/terasic-technologies/terasic-de10-lite-board/)
---

## 🛠️ Software Setup (Windows)

To develop and test HDL projects for the DE10-Lite, you’ll need:

### 1. **Intel Quartus Prime Lite Edition**
- **Download:** [Quartus Prime Lite (Free)](https://www.intel.com/content/www/us/en/software/programmable/quartus-prime/download.html)
- **Recommended version:** Quartus Prime Lite **20.1.1**
- During installation, ensure you select:
  - **Quartus Prime Software**
  - **MAX 10 Device Support**
  - **ModelSim - Intel FPGA Edition**

### 2. **ModelSim (Intel FPGA Edition)**
- Used for simulating Verilog/SystemVerilog designs.
- Installed as part of the Quartus setup, or you can download it separately from Intel’s site.

### 3. **USB-Blaster II Driver**
- Required for programming the FPGA via USB.
- After installing Quartus, connect your DE10-Lite via USB.
- Open **Device Manager → Other Devices → USB-Blaster**  
  Right-click → *Update driver* →  
  Browse to:  
  `C:\intelFPGA_lite\<version>\drivers\usb-blaster`

---

## 🧰 Recommended Folder Structure

