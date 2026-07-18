# Fully Differential Amplifier Progress Log

The fully differential amplifier is implemented as the main analog gain block used in the switched-capacitor integrator of the first-order sigma-delta ADC. Its function is to amplify the differential input signal while rejecting common-mode noise and maintaining a stable output common-mode level. In the sigma-delta modulator, this amplifier is critical because the integrator accuracy, settling behavior, noise performance, and linearity strongly depend on the OTA performance.

The amplifier is designed using a fully differential topology to improve noise immunity, common-mode rejection, and signal swing. Since the ADC uses a switched-capacitor integrator, the amplifier must provide sufficient DC gain, unity-gain frequency, phase margin, and slew rate so that the output can settle within the available clock phase. The sizing process is initially performed using the gm/ID methodology and then verified through ngspice simulations in Xschem.

## Target Specification

<div align="center">

| **Parameter** | **Value / Target** | **Unit** |
|--------------|--------------------|----------|
| Supply Voltage | 3.3 | V |
| Input Type | Fully Differential | - |
| Output Type | Fully Differential | - |
| Input Common-Mode | 1.65 | V |
| Output Common-Mode | 1.65 | V |
| Target Input Bandwidth | 2 | MHz |
| OSR | 20 | - |
| Target Sampling Frequency | 80 | MHz |
| Target SNDR | >65 | dB |
| Target ENOB | >10 | bits |
| DC Gain | >60 | dB |
| Unity-Gain Frequency | >400 | MHz |
| Phase Margin | >55 | degree |
| Load Capacitance | 0.5 | pF |
| Power Budget Contribution | Part of <3 mW ADC budget | - |

</div>

## Schematic Design

<p align="center">
  <img src="../../../docs/images/fullydiffamp_schematics.jpeg" alt="Fully Differential Amplifier Schematic" width="800"/>
</p>
<h4 align="center" style="font-size:16px;">Figure 1. Fully Differential Amplifier Schematic</h4>

The amplifier is designed as a fully differential analog block with differential inputs V<sub>p</sub> and V<sub>m</sub>, and differential outputs V<sub>op</sub> and V<sub>om</sub>. The circuit is biased using V<sub>biasn</sub> and V<sub>biasp</sub> to set the operating currents of the NMOS and PMOS branches.

The topology is intended to provide high gain while maintaining sufficient speed for switched-capacitor operation. The amplifier output is used by the sigma-delta integrator, so the output must settle accurately before the next comparator decision and DAC feedback phase.

## Design Considerations

<div align="center">

| **Design Aspect** | **Consideration** |
|------------------|-------------------|
| DC Gain | Must be high enough to reduce integrator error |
| Unity-Gain Frequency | Must support fast switched-capacitor settling |
| Phase Margin | Required for stable closed-loop operation |
| Slew Rate | Must support large signal transitions within the clock phase |
| Output Common-Mode | Should remain close to 1.65 V |
| Input Common-Mode Range | Must support integrator and sampling network levels |
| Noise | Thermal noise and flicker noise must be considered |
| Power Consumption | Must fit within the ADC power budget |
| Device Matching | Important for differential symmetry and offset reduction |
| Saturation Margin | All analog MOSFETs should remain in saturation |

</div>

## gm/ID-Based Initial Sizing

The initial sizing is performed using the gm/ID methodology with GF180MCU 3.3 V transistor lookup tables. The target transconductance is derived from the settling requirement of the switched-capacitor integrator.

For the initial design, the input pair is targeted around moderate inversion to balance power efficiency and speed. Cascode, current source, and load devices are sized with longer channel lengths to improve output resistance and DC gain.

<div align="center">

| **Transistor** | **Type** | **Function** | **L** | **Target gm/ID** | **Target gm** |
|---------------|----------|--------------|------:|-----------------:|--------------:|
| XM7 | NMOS | Input pair, V<sub>p</sub> | 0.56 µm | 12 V<sup>-1</sup> | 1.60 mS |
| XM8 | NMOS | Input pair, V<sub>m</sub> | 0.56 µm | 12 V<sup>-1</sup> | 1.60 mS |
| XM5 | PMOS | Folding / common-gate branch | 0.56 µm | 10 V<sup>-1</sup> | 1.33 mS |
| XM6 | PMOS | Folding / common-gate branch | 0.56 µm | 10 V<sup>-1</sup> | 1.33 mS |
| XM1 | PMOS | Current source / upper bias branch | 1.00 µm | 8 V<sup>-1</sup> | 1.06 mS |
| XM2 | PMOS | Current source / upper bias branch | 1.00 µm | 8 V<sup>-1</sup> | 1.06 mS |
| XM9 | NMOS | Current sink / lower bias branch | 1.00 µm | 8 V<sup>-1</sup> | 1.06 mS |
| XM10 | NMOS | Current sink / lower bias branch | 1.00 µm | 8 V<sup>-1</sup> | 1.06 mS |
| XM3 | PMOS | Output load, V<sub>op</sub> side | 1.00 µm | 8 V<sup>-1</sup> | 1.06 mS |
| XM4 | PMOS | Output load, V<sub>om</sub> side | 1.00 µm | 8 V<sup>-1</sup> | 1.06 mS |
| XM11 | NMOS | Output sink, V<sub>op</sub> side | 1.00 µm | 8 V<sup>-1</sup> | 1.06 mS |
| XM14 | NMOS | Output sink, V<sub>om</sub> side | 1.00 µm | 8 V<sup>-1</sup> | 1.06 mS |
| XM12 | NMOS | Bias / cascode / mirror branch | 1.00 µm | 8 V<sup>-1</sup> | 1.06 mS |
| XM13 | NMOS | Bias / cascode / mirror branch | 1.00 µm | 8 V<sup>-1</sup> | 1.06 mS |

</div>

## Initial Transistor Sizing

The first-pass transistor widths are generated from GF180MCU gm/ID lookup tables. The width values are used as a starting point and must be verified using ngspice operating point simulation.

<div align="center">

| **Transistor** | **Type** | **W<sub>total</sub>** | **L** | **nf** | **W per Finger** |
|---------------|----------|----------------------:|------:|------:|-----------------:|
| XM7 | NMOS | 54.020 µm | 0.56 µm | 11 | 4.911 µm |
| XM8 | NMOS | 54.020 µm | 0.56 µm | 11 | 4.911 µm |
| XM5 | PMOS | 120.939 µm | 0.56 µm | 25 | 4.838 µm |
| XM6 | PMOS | 120.939 µm | 0.56 µm | 25 | 4.838 µm |
| XM1 | PMOS | 152.914 µm | 1.00 µm | 31 | 4.933 µm |
| XM2 | PMOS | 152.914 µm | 1.00 µm | 31 | 4.933 µm |
| XM9 | NMOS | 35.738 µm | 1.00 µm | 8 | 4.467 µm |
| XM10 | NMOS | 35.738 µm | 1.00 µm | 8 | 4.467 µm |
| XM3 | PMOS | 152.914 µm | 1.00 µm | 31 | 4.933 µm |
| XM4 | PMOS | 152.914 µm | 1.00 µm | 31 | 4.933 µm |
| XM11 | NMOS | 35.738 µm | 1.00 µm | 8 | 4.467 µm |
| XM14 | NMOS | 35.738 µm | 1.00 µm | 8 | 4.467 µm |
| XM12 | NMOS | 35.738 µm | 1.00 µm | 8 | 4.467 µm |
| XM13 | NMOS | 35.738 µm | 1.00 µm | 8 | 4.467 µm |

</div>

The sizing values above assume that the Xschem MOS symbol uses `w` as the width per finger and `nf` as the number of fingers. Therefore, the effective total width is approximately:

<div align="center">

W<sub>total</sub> = W<sub>finger</sub> × nf

</div>

## Simulation

The fully differential amplifier is simulated using Xschem and ngspice. The simulations are performed on the amplifier symbol in a separate testbench schematic. The testbench includes DC bias sources, differential input sources, output load capacitors, and common-mode control for initial verification.

Recommended simulations include:

<div align="center">

| **Simulation** | **Purpose** |
|---------------|-------------|
| DC Operating Point | Verify bias currents, output common-mode, and device operating regions |
| AC Differential Gain | Measure DC gain, unity-gain frequency, and phase behavior |
| Transient Settling | Verify output settling within the available clock phase |
| Slew Rate Test | Check large-signal output transition capability |
| Noise Simulation | Estimate input-referred and output noise |
| Common-Mode Gain | Estimate CMRR |
| Power Measurement | Calculate amplifier power consumption |
| Corner Simulation | Verify robustness across process, voltage, and temperature |

</div>

## DC Operating Point Result

The initial operating point simulation shows that the amplifier output common-mode is centered around mid-supply.

<div align="center">

| **Parameter** | **Simulation Result** | **Unit** |
|--------------|----------------------:|----------|
| VDD | 3.300 | V |
| V<sub>op</sub> | 1.650 | V |
| V<sub>om</sub> | 1.650 | V |
| Output Common-Mode, V<sub>OCM</sub> | 1.650 | V |
| Differential Output, V<sub>OD</sub> | ≈0 | V |
| Supply Current | 476.108 | µA |
| Power Consumption | 1.572 | mW |

</div>

The output differential voltage is approximately zero under balanced DC input conditions, which is expected for a symmetrical fully differential amplifier. The current sign in ngspice depends on the voltage source current convention; therefore, the power is calculated as:

<div align="center">

P = -VDD × I(VDD)

</div>

## Testbench Setup

<p align="center">
  <img src="docs/images/fully_differential_amplifier_testbench.jpeg" alt="Fully Differential Amplifier Testbench" width="800"/>
</p>
<h4 align="center" style="font-size:16px;">Figure 2. Fully Differential Amplifier Testbench</h4>

The testbench uses a 3.3 V supply and a 1.65 V input common-mode voltage. The initial bias values are selected from the gm/ID lookup result.

<div align="center">

| **Node / Source** | **Value** | **Unit** |
|------------------|----------:|----------|
| VDD | 3.3 | V |
| VSS | 0 | V |
| VCM | 1.65 | V |
| Vbiasn | 0.89 | V |
| Vbiasp | 2.30 | V |
| Differential AC Input | 1 | V |
| Load Capacitance per Output | 0.5 | pF |

</div>

## Verification Checklist

<div align="center">

| **Checklist Item** | **Target / Requirement** | **Status** |
|-------------------|--------------------------|------------|
| Bias currents checked | Required | In progress |
| Device operating regions verified | All MOS in saturation | To be verified |
| gm values checked | Match gm/ID target | To be verified |
| Output common-mode verified | Around 1.65 V | Verified in initial OP |
| DC gain measured | >60 dB | To be verified |
| UGF measured | >400 MHz | To be verified |
| Phase margin analyzed | >55° | To be verified |
| Transient settling checked | Within clock phase | To be verified |
| Noise considered | Required | To be verified |
| Power consumption checked | Within ADC budget | Verified in initial OP |
| PVT corners simulated | TT / FF / SS | Pending |
| CMFB strategy documented | Required for final FDA | In progress |

</div>

## Performance of Designed Fully Differential Amplifier

<div align="center">

| **Parameter** | **Value / Target** | **Unit** |
|--------------|--------------------|----------|
| Supply Voltage | 3.3 | V |
| Input Common-Mode | 1.65 | V |
| Output Common-Mode | 1.65 | V |
| DC Gain | To be simulated | dB |
| Unity-Gain Frequency | To be simulated | Hz |
| Phase Margin | To be simulated | degree |
| Load Capacitance | 0.5 | pF |
| Power Consumption | 1.572 | mW |
| Input-Referred Noise | To be simulated | V/√Hz |
| Settling Time | To be simulated | s |
| Slew Rate | To be simulated | V/s |
| Corner Verification | Pending | - |

</div>

## Notes

The fully differential amplifier is one of the most important analog blocks in the sigma-delta ADC because it directly determines the accuracy and speed of the switched-capacitor integrator. The initial gm/ID sizing provides a reasonable starting point, but the design must be iterated using operating point, AC, transient, and noise simulations.

For early simulations, an ideal common-mode feedback helper may be used to stabilize the output common-mode. However, the final fully differential amplifier should include a proper CMFB circuit or clearly document the common-mode control strategy.

**Last Updated: 4th July 2026**