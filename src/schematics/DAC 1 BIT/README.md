# 1-Bit DAC Progress Log

The 1-bit DAC is implemented as the feedback DAC block in the first-order Continuous-Time Sigma-Delta ADC. Its main function is to convert the digital output bitstream from the Latched Comparator into an analog feedback signal that is returned to the Difference Amplifier/Integrator path. 

Since the sigma-delta modulator uses a single-bit quantizer, the DAC only needs to select between two reference levels, V~REF+~ and V~REF-~. A simple 1-bit DAC is suitable for this architecture because it is inherently linear compared to multi-bit DACs.

<p align="center">
  <img src="../../../docs/images/DAC_Position.jpeg" alt="Sigma-Delta Loop Overview" width="700"/>
</p>
<h4 align="center" style="font-size:16px;">Figure 1. Position of the 1-Bit DAC within the Sigma-Delta ADC Loop</h4>

## 1. Target Specification

The main design concerns for this block are switch resistance (to ensure proper time constant $\tau$), settling behavior to prevent excess loop delay, leakage current, and output swing.

<div align="center">

| **Parameter** | **Value / Target** | **Unit** |
|--------------|--------------------|----------|
| Supply Voltage (VDD) | 3.3 | V |
| DAC Resolution | 1 | bit |
| Output Levels | V~REF+~ (3.3) / V~REF-~ (0) | V |
| Rds Transmission Gate | < 1000 | Ω |
| I~Leakage~ | < 10 | pA |
| Delay~I-O~ | < 100 | ns | 
| Power | << 3 | mW |

</div>

## 2. Schematic Design & Implementation

Instead of a standard digital inverter, this design utilizes a **CMOS Transmission Gate (TG)** architecture. When the comparator output (VIN) is high, the top TG connects the feedback node to V~REF+~. When VIN is low, the bottom TG connects the feedback node to V~REF-~. 

<p align="center">
  <img src="../../../docs/images/dac1bit_schematics.jpeg" alt="1-Bit DAC Schematic" width="600"/>
</p>
<h4 align="center" style="font-size:16px;">Figure 2. 1-Bit DAC Schematic (Transmission Gate Implementation)</h4>

<p align="center">
  <img src="../../../docs/images/dac1bit_symbol.jpeg" alt="Block Symbol of DAC 1 bit" width="600"/>
</p>
<h4 align="center" style="font-size:16px;">Figure 3. Block Symbol of DAC 1 bit</h4>

The Transmission Gate structure is chosen because it provides a highly accurate rail-to-rail voltage swing without threshold voltage drops, ensuring better isolation between the digital control signals and the sensitive analog feedback path.

## 3. Interfaces & Signal Flow

The DAC serves as the critical bridge between the digital and analog domains of the modulator.
*   **Input Interface:** Connected to the Latched Comparator to receive the 1-bit digital bitstream (pulse/rectangular wave).
*   **Output Interface:** Connected to the Difference Amplifier to deliver the converted analog feedback signal.

<p align="center">
  <img src="../../../docs/images/dac1bit_signalflow.jpeg" alt="Signal Flow and Interfaces" width="700"/>
</p>
<h4 align="center" style="font-size:16px;">Figure 4. Signal Flow (Feedback DAC Path Only)</h4>

## 4. Important Design Decisions & Sizing

To prevent excess loop delay which can degrade the stability and SNR of the Sigma-Delta system, the input-to-output latency is strictly limited to < 100 ns. 

<div align="center">
  <table>
    <tr>
      <td align="center">
        <img src="../../../docs/images/ILEAK.jpeg" alt="I Leakage Schematic" width="400"/><br>
        <i>(a) Schematic</i>
      </td>
      <td align="center">
        <img src="../../../docs/images/ILEAK_PLOT.jpeg" alt="I Leakage Evaluation" width="400"/><br>
        <i>(b) Evaluation Plot</i>
      </td>
    </tr>
  </table>
</div>
<h4 align="center" style="font-size:16px;">Figure 5. Design Evaluation: Off-State Leakage Current</h4>

<div align="center">
  <table>
    <tr>
      <td align="center">
        <img src="../../../docs/images/RDS_CALC.jpeg" alt="Rds Schematic" width="400"/><br>
        <i>(a) Schematic</i>
      </td>
      <td align="center">
        <img src="../../../docs/images/RDS_PLOT.jpeg" alt="Rds Evaluation Plot" width="400"/><br>
        <i>(b) Transient Response Plot</i>
      </td>
    </tr>
  </table>
</div>
<h4 align="center" style="font-size:16px;">Figure 6. Design Evaluation: Switch Resistance (Rds)</h4>

To validate the performance against the target specifications, the Transmission Gate (TG) sizing was characterized using NGSPICE:

* **Sizing Trade-offs:** Using a minimum channel length (L = 180nm) reduces the transient delay of switching. However, keeping the width (W) at minimum yields a large Rds, which drastically slows down the RC settling time.
* **Final Decision:** The transistor width (W) is selectively increased to drop Rds below 1 kΩ to ensure fast settling, carefully balanced to keep the leakage current within the low pA range (Target: < 10 pA).

**Measurement Methodology & Results:**

1.  **Off-State Leakage Current (Figure 5):** To measure how much current leaks when the switch is fully OFF, the TG is disabled (PMOS gate tied to 3.3V, NMOS gate to GND). The input node is swept from 0V to 3.3V while the output is grounded. The NGSPICE evaluation shows that at the maximum 3.3V supply, the leakage is only **5.22 pA**, well below the 10 pA limit. This guarantees excellent isolation without discharging the feedback capacitors in the Sigma-Delta loop.
    
2.  **Switch On-Resistance (Figure 6):** To evaluate Rds when the switch is fully ON, the TG is enabled (PMOS gate to GND, NMOS gate to 3.3V). A constant ideal current source of **1 µA** is applied to the output node to draw current through the switch, and the input voltage is swept from 0V to 3.3V. Using Ohm's law directly in the simulation script (`let ron = (v(a) - v(b))/1u`), the measured peak resistance is **800 Ω**. This successfully meets the < 1000 Ω constraint, ensuring the DAC latency remains well within the required limit.

## 5. Verification Status & Simulation Review

The DAC has been verified through transient (.tran) and DC operating point simulations. The testbench confirms that the output switches cleanly between the reference levels with latency and power metrics meeting the design constraints.

<p align="center">
  <img src="../../../docs/images/dac1bit_tb.jpeg" alt="Testbench Schematic for DAC" width="700"/>
</p>
<h4 align="center" style="font-size:16px;">Figure 7. Position of the 1-Bit DAC within the Sigma-Delta ADC Loop</h4>

<div align="center">
  <table>
    <tr>
      <td align="center">
        <img src="../../../docs/images/dac1bit_sim2.jpeg" alt="Simulation Result Input-Output" width="400"/><br>
        <i>(a) Input-Output</i>
      </td>
      <td align="center">
        <img src="../../../docs/images/dac1bit_sim1.jpeg" alt="I-O Latency" width="400"/><br>
        <i>(b) Latency</i>
      </td>
    </tr>
  </table>
</div>
<h4 align="center" style="font-size:16px;">Figure 8. Simulation Result I-O</h4>

<div align="center">
  <table>
    <tr>
      <td align="center">
        <img src="../../../docs/images/dac1bit_input.jpeg" alt="Input Signal DAC 1 Bit" width="400"/><br>
        <i>(a) Input Testbench Signal</i>
      </td>
      <td align="center">
        <img src="../../../docs/images/dac1bit_output.jpeg" alt="Output Signal DAC 1 Bit" width="400"/><br>
        <i>(b) Output Signal</i>
      </td>
    </tr>
  </table>
</div>
<h4 align="center" style="font-size:16px;">Figure 9. Simulation Result I-O (2)</h4>

<div align="center">

| **Design Parameter** | **Target** | **Evaluated TB Result** | **Status** |
|----------------------|------------|-------------------------|------------|
| Output Swing | Rail-to-Rail (0 to 3.3V) | Achieved (Switches between V~REF+~ and V~REF-~) | ✅ Pass |
| Delay~I-O~ (Latency) | < 100 ns | **6.07 ns** | ✅ Pass |
| Rds Transmission Gate | < 1000 Ω | **800 Ω** | ✅ Pass |
| Off Leakage Current | < 10 pA | **5.22 pA** | ✅ Pass |
| Power Consumption (Avg) | << 3 mW | 0.4552 uW | ✅ Pass |

</div>

## Notes

The 1-bit DAC topology is simple, but its transient behavior directly dictates the overall ADC performance. The verification confirms that the transmission gate sizing successfully balances on-resistance and leakage, ensuring the feedback voltage settles perfectly within the required clock phase.

**Last Updated: 4th July 2026**