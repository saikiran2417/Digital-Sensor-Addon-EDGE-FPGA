# 🔌 Digital Sensor Add-on for EDGE FPGA Kit

This repository contains Verilog implementations for **Ultrasonic Distance Measurement** and **Capacitive Touch Detection** on the **EDGE Artix-7 FPGA Kit**.  
Both projects are ready-to-run on hardware — simply generate the bitstream in Vivado and program the board.

---

## 🛠 Tools & Hardware
- **FPGA Board:** EDGE Artix-7 FPGA Development Board
- **Software:** Xilinx Vivado
- **Sensors:**
  - Ultrasonic Distance Sensor (HC-SR04)
  - Capacitive Touch Pad (TTP224 – 4-channel)
- **Outputs:** 7-segment display, LEDs

---

## 📂 Repository Structure
```plaintext
Digital-Sensor-Addon-EDGE-FPGA/
├── ultrasonic_sensor/
│   └── ultrasonic_sensor.v
├── touch_sensor/
│   └── touch_sensor.v
├── images/
│   ├── touch_sensor_breadboard.jpg
│   ├── ultrasonic_sensor_breadboard.jpg
├── FPGA_Digital_Sensor_Addon.zip
└── README.md

```


---

## 📌 Project 1 – Ultrasonic Distance Sensor
**Description:** Measures object distance using ultrasonic echo timing and displays the result on FPGA’s 7-segment display.

**Key Features:**
- Real-time distance measurement (meters, decimeters, centimeters)
- Hardware-tested with HC-SR04 sensor
- Outputs on 3-digit 7-segment display

**Code File:** `ultrasonic_sensor/ultrasonic_sensor.v`

---

## 📌 Project 2 – Capacitive Touch Pad (TTP224)
**Description:** Detects touch across 4 channels to trigger LED outputs or display activity.

**Key Features:**
- 4 touch channels mapped to binary output
- Real-time LED indicator output
- Hardware-tested with TTP224 module

**Code File:** `touch_sensor/touch_sensor.v`

---

## 📸 Screenshots

| Touch Sensor Final Breadboard | Ultrasonic Sensor Final Breadboard |
|--------------------------------|------------------------------------|
| ![Touch Sensor](images/touch_sensor_breadboard.jpg) | ![Ultrasonic Sensor](images/ultrasonic_sensor_breadboard.jpg) |

---

## 🎥 Demonstration
The demonstration video includes:
1. Verilog code explanation (screen recording)
2. Vivado synthesis & implementation steps
3. Real FPGA hardware running Ultrasonic Sensor & Touch Sensor

▶ [**Watch Demonstration Video on Google Drive**](https://drive.google.com/file/d/1iogIJczCeQzhIV_uA40R7EFN4Uv6it_O/view?usp=share_link)

---

## 🚀 How to Run
1. Open Vivado and create a new project.
2. Add the `.v` source file from either `ultrasonic_sensor/` or `touch_sensor/`.
3. **Run Synthesis**.
4. **Run Implementation**.
5. **Generate Bitstream**.
6. Open **Hardware Manager** and connect to the board.
7. Program the FPGA board with the generated bitstream.
8. Connect the respective sensor and observe outputs.

💡 **Tip:** You can extract and open the provided **FPGA_Digital_Sensor_Addon.zip** in Vivado, then follow steps 3–8.

---

## 📌 Applications
- Real-time object distance measurement
- Touch-based FPGA control interfaces
- FPGA-based IoT and automation systems

---

## 👨‍💻 Author
**G. Sai Kiran** – Indian Institute of Information Technology, Sri City (ECE ’26)

