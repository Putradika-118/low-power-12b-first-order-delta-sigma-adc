# Integrator Progress Log

The integrator is implemented as the loop filter in the first-order sigma-delta ADC. Its main function is to accumulate the error signal between the analog input and the 1-bit DAC feedback output. This accumulated error is then sent to the comparator, which generates the 1-bit digital bitstream for the sigma-delta modulator.

In a first-order sigma-delta ADC, the integrator is the key block that shapes the quantization noise. By integrating the input error over time, the circuit pushes a significant portion of the quantization noise toward higher frequencies. The high-frequency noise can then be attenuated by the digital decimation filter, allowing the ADC to achieve higher effective resolution than a conventional 1-bit quantizer.

The integrator is implemented using a fully differential switched-capacitor topology. The switched-capacitor network samples the input and feedback signals using non-overlapping clock phases, while the fully differential amplifier provides the required gain and settling performance.

## Target Specification

<div align="center">

| **Parameter** | **Value / Target** | **Unit** |
|--------------|--------------------|----------|
| Supply Voltage | 3.3 | V |
| Integrator Type | Fully Differential Switched-Capacitor | - |
| Ron Switch | < 1 | kΩ |
| Settling Time | < 50 | ns |
| Charge TF Acc | > 99.9 | % |
| Power Budget Contribution | Part of <3 mW ADC budget | - |

</div>

## Schematic Design

<p align="center">
  <img src="../../../docs/images/integrator_schematics.jpeg" alt="Switched-Capacitor Integrator Schematic" width="800"/>
</p>
<h4 align="center" style="font-size:16px;">Figure 1. Switched-Capacitor Integrator Schematic</h4>

The integrator consists of a switched-capacitor input network, feedback capacitors, non-overlapping clock phases, and a fully differential amplifier. During the sampling phase, the input and DAC feedback voltages are sampled onto the capacitors. During the integration phase, the stored charge is transferred to the feedback capacitor, producing an output voltage proportional to the accumulated error.

The fully differential amplifier is used to maintain differential signal operation, improve common-mode noise rejection, and provide sufficient gain for accurate charge transfer. The output of the integrator is connected to the comparator input, while the comparator output controls the 1-bit DAC feedback path.

## Integrator Operation

<div align="center">

| **Clock Phase** | **Operation** | **Description** |
|----------------|---------------|-----------------|
| Φ1 | Sampling Phase | Input and DAC feedback signals are sampled onto the sampling capacitors |
| Φ2 | Integration Phase | Stored charge is transferred to the feedback capacitors through the OTA |
| Non-overlap time | Clock Isolation | Prevents direct charge sharing or short-circuit paths between phases |

</div>

The discrete-time integrator behavior can be approximated as:

<div align="center">

V<sub>out</sub>[n] = V<sub>out</sub>[n-1] + (C<sub>s</sub>/C<sub>f</sub>) × V<sub>error</sub>[n]

</div>

where C<sub>s</sub> is the sampling capacitor, C<sub>f</sub> is the feedback capacitor, and V<sub>error</sub> is the difference between the input signal and the DAC feedback signal. When C<sub>s</sub> = C<sub>f</sub>, the integrator coefficient is approximately 1.

## Design Considerations

<div align="center">

| **Design Aspect** | **Consideration** |
|------------------|-------------------|
| Capacitor Ratio | Determines the integrator coefficient C<sub>s</sub>/C<sub>f</sub> |
| OTA DC Gain | Affects integration accuracy and finite-gain error |
| OTA Settling | Must settle within the available clock phase |
| Clock Non-Overlap | Required to avoid charge sharing and short-circuit paths |
| kT/C Noise | Sampling capacitors must be large enough to limit thermal noise |
| Charge Injection | Switch sizing and clocking affect sampling accuracy |
| Clock Feedthrough | Can introduce error into the sampled signal |
| Output Swing | Must remain within the linear range of the OTA |
| Common-Mode Stability | Fully differential operation requires common-mode control |
| Power Consumption | Must fit within the ADC power budget |

</div>

## Switched-Capacitor Parameters

<div align="center">

| **Parameter** | **Value / Target** | **Unit** |
|--------------|--------------------|----------|
| Sampling Capacitor, C<sub>s</sub> | To be defined / simulated | F |
| Feedback Capacitor, C<sub>f</sub> | To be defined / simulated | F |
| Capacitor Ratio, C<sub>s</sub>/C<sub>f</sub> | 1 | - |
| Effective Integrator Gain | 1 | - |
| Clock Phase 1, Φ1 | Non-overlapping | - |
| Clock Phase 2, Φ2 | Non-overlapping | - |
| Sampling Frequency | 12.288 | MHz |
| Effective Settling Time | To be simulated | s |

</div>

## OTA Requirement for Integrator

The integrator performance strongly depends on the fully differential amplifier. The OTA must provide enough gain, speed, and output swing to ensure accurate charge transfer during the integration phase.

<div align="center">

| **OTA Parameter** | **Target** | **Unit** |
|------------------|-----------:|----------|
| DC Gain | >60 | dB |
| Unity-Gain Frequency | >100 | MHz |
| Phase Margin | >55 | degree |
| Output Common-Mode | 1.65 | V |
| Power Consumption | Part of <3 mW ADC budget | - |
| Input Pair gm | ~1.6 | mS |
| Load Capacitance | 0.5 | pF |

</div>

The settling requirement is estimated from the target ADC resolution. For a target SNDR above 65 dB, the equivalent resolution is approximately 10.5 bits, so the integrator settling error should be significantly smaller than one LSB-equivalent error. This makes OTA settling one of the most important design constraints for the switched-capacitor integrator.

## Simulation

The integrator should be verified using transient simulation with proper non-overlapping clocks. The input signal can be tested using DC, sine wave, square wave, and differential step inputs. The expected behavior is that the integrator output accumulates the input error over time and remains stable within the allowed output swing.

Recommended simulations include:

<div align="center">

| **Simulation** | **Purpose** |
|---------------|-------------|
| DC Operating Point | Verify OTA biasing, output common-mode, and device operating regions |
| Clock Verification | Check Φ1 and Φ2 non-overlap timing |
| Transient Integration Test | Verify integration behavior for step, sine, and square inputs |
| Settling Test | Check whether the output settles within the clock phase |
| Output Swing Test | Ensure integrator output does not saturate during normal operation |
| kT/C Noise Estimation | Estimate sampling noise contribution |
| Charge Injection Check | Observe switching-related output error |
| Power Measurement | Estimate integrator power contribution |
| Corner Simulation | Verify operation across process, voltage, and temperature |

</div>

## Testbench Plan

<p align="center">
  <img src="docs/images/integrator_testbench.jpeg" alt="Switched-Capacitor Integrator Testbench" width="800"/>
</p>
<h4 align="center" style="font-size:16px;">Figure 2. Switched-Capacitor Integrator Testbench</h4>

<div align="center">

| **Testbench Condition** | **Expected Result** |
|-------------------------|---------------------|
| DC input error | Output ramps according to accumulated error |
| Square wave input | Output shows triangular integration behavior |
| Sine wave input | Output approximates phase-shifted integrated waveform |
| Zero differential input | Output remains near common-mode |
| DAC feedback connected | Integrator processes input-feedback error |
| Full modulator loop | Stable 1-bit sigma-delta bitstream |

</div>

## Verification Status

<div align="center">

| **Parameter** | **Target / Requirement** | **Status** |
|--------------|--------------------------|------------|
| OTA operating point | Stable bias and output common-mode | In progress |
| Non-overlap clock operation | Required | To be verified |
| Correct integration behavior | Required | To be verified |
| Settling within clock phase | Required | To be verified |
| Output common-mode stability | Around 1.65 V | To be verified |
| Output swing | No saturation in normal operation | To be verified |
| kT/C noise considered | Required | To be verified |
| Charge injection considered | Required | To be verified |
| Power consumption | Within ADC budget | To be verified |
| PVT corner robustness | TT / FF / SS | Pending |

</div>

## Performance of Designed Integrator

<div align="center">

| **Parameter** | **Value / Target** | **Unit** |
|--------------|--------------------|----------|
| Supply Voltage | 3.3 | V |
| Integrator Type | Fully Differential Switched-Capacitor | - |
| Input Common-Mode | 1.65 | V |
| Output Common-Mode | 1.65 | V |
| Sampling Frequency | 12.288 | MHz |
| C<sub>s</sub>/C<sub>f</sub> Ratio | 1 | - |
| OTA DC Gain | To be simulated | dB |
| OTA UGF | To be simulated | Hz |
| Settling Time | To be simulated | s |
| Output Swing | To be simulated | V |
| Power Consumption | To be simulated | W |
| Integrated Noise | To be simulated | V<sub>rms</sub> |
| Corner Verification | Pending | - |

</div>

## Notes

The integrator is the central analog block of the first-order sigma-delta ADC. Its accuracy depends on capacitor matching, OTA gain, OTA settling, switch behavior, clock timing, and common-mode control. Even though the comparator and DAC form the quantizer and feedback path, the integrator determines how the quantization error is accumulated and shaped before being converted into the 1-bit output stream.

For early simulations, the OTA and switched-capacitor network can be tested separately before being connected to the full sigma-delta loop. After individual block verification, the integrator should be simulated together with the comparator and 1-bit DAC to confirm stable modulator operation.

**Last Updated: 4th July 2026**