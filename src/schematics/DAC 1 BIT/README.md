\# 1-Bit DAC Progress Log



The 1-bit DAC is implemented as the feedback DAC block in the first-order sigma-delta ADC. Its main function is to convert the digital output bitstream from the comparator into an analog feedback signal that is returned to the input summing/integrator path. Since the sigma-delta modulator uses a single-bit quantizer, the DAC only needs to select between two reference levels, V<sub>REF+</sub> and V<sub>REF-</sub>.  



In the sigma-delta loop, this feedback signal is subtracted from the analog input signal so that the integrator processes the error between the input and the quantized feedback value. A simple 1-bit DAC is suitable for this architecture because it is inherently linear compared to multi-bit DACs, as its output only switches between two reference voltages. The main design concerns are switch resistance, settling behavior, reference accuracy, output swing, leakage current, and compatibility with the sampling clock used by the modulator.



\## Target Specification



<div align="center">



| \*\*Parameter\*\* | \*\*Value / Target\*\* | \*\*Unit\*\* |

|--------------|--------------------|----------|

| Supply Voltage | 3.3 | V |

| DAC Resolution | 1 | bit |

| Output Levels | V<sub>REF+</sub> / V<sub>REF-</sub> | V |

| Common-Mode Reference | 1.65 | V |

| Input Control Signal | Comparator Bitstream | - |

| Target Input Bandwidth | 2 | MHz |

| OSR | 20 | - |

| Target Sampling Frequency | 80 | MHz |

| Target SNDR | >65 | dB |

| Target ENOB | >10 | bits |

| DAC Function | Analog Feedback Generation | - |

| Power Budget Contribution | Part of <3 mW ADC budget | - |



</div>



\## Schematic Design



<p align="center">

&#x20; <img src="../../../docs/images/dac1bit\_schematics.jpeg" alt="1-Bit DAC Schematic" width="800"/>

</p>

<h4 align="center" style="font-size:16px;">Figure 1. 1-Bit DAC Schematic</h4>



The designed 1-bit DAC uses the comparator output as a digital control signal to select between the positive and negative reference levels. When the comparator output is high, the DAC connects the feedback node to V<sub>REF+</sub>. When the comparator output is low, the DAC connects the feedback node to V<sub>REF-</sub>. This feedback voltage is then applied back to the sigma-delta modulator loop.



The DAC is designed to operate together with the switched-capacitor integrator and comparator. Therefore, the DAC output must settle sufficiently within the available clock phase so that the feedback value is valid before the next integration or comparison event.



\## Design Considerations



<div align="center">



| \*\*Design Aspect\*\* | \*\*Consideration\*\* |

|------------------|-------------------|

| Linearity | Inherently good due to 1-bit operation |

| Output Settling | Must settle within the sampling phase |

| Switch Resistance | Should be low enough to avoid incomplete settling |

| Leakage Current | Should be minimized to avoid feedback error |

| Clock Compatibility | Must follow the modulator sampling clock |

| Reference Accuracy | V<sub>REF+</sub> and V<sub>REF-</sub> directly affect DAC feedback level |

| Common-Mode Behavior | Differential feedback should preserve the ADC common-mode level |

| Power Consumption | Should remain small compared to OTA and comparator blocks |



</div>



\## Simulation



The 1-bit DAC should be verified using transient simulation by applying a digital control signal that alternates between logic low and logic high. The expected output behavior is that the DAC output switches cleanly between V<sub>REF+</sub> and V<sub>REF-</sub> according to the comparator bitstream.



Recommended simulations include:



<div align="center">



| \*\*Simulation\*\* | \*\*Purpose\*\* |

|---------------|-------------|

| DC Operating Point | Verify supply, references, and switch biasing |

| Transient Switching | Verify output toggling between V<sub>REF+</sub> and V<sub>REF-</sub> |

| Settling Time | Check whether DAC output settles within the clock phase |

| Output Swing | Confirm feedback output reaches the required reference levels |

| Leakage Test | Check off-state leakage current |

| Power Measurement | Estimate DAC power contribution |

| Corner Simulation | Verify behavior across process, voltage, and temperature corners |



</div>



\## Expected DAC Operation



<div align="center">



| \*\*Comparator Output\*\* | \*\*Selected DAC Output\*\* | \*\*Feedback Meaning\*\* |

|----------------------|--------------------------|----------------------|

| Logic High | V<sub>REF+</sub> | Positive feedback level |

| Logic Low | V<sub>REF-</sub> | Negative feedback level |



</div>



For a fully differential implementation, the DAC should generate complementary feedback levels so that the differential feedback signal is applied correctly while maintaining the desired output common-mode level.



\## Verification Status



<div align="center">



| \*\*Parameter\*\* | \*\*Target\*\* | \*\*Status\*\* |

|--------------|------------|------------|

| Output switches between V<sub>REF+</sub> and V<sub>REF-</sub> | Required | To be verified |

| Output settling within clock phase | Required | To be verified |

| Reference level accuracy | Required | To be verified |

| Off leakage current | Low leakage | To be verified |

| Power consumption | Within ADC budget | To be verified |

| PVT corner robustness | TT / FF / SS | To be verified |



</div>



\## Performance of Designed 1-Bit DAC



<div align="center">



| \*\*Parameter\*\* | \*\*Value / Target\*\* | \*\*Unit\*\* |

|--------------|--------------------|----------|

| Supply Voltage | 3.3 | V |

| DAC Resolution | 1 | bit |

| V<sub>REF+</sub> | To be defined / simulated | V |

| V<sub>REF-</sub> | To be defined / simulated | V |

| Output Common-Mode | 1.65 | V |

| Sampling Frequency | 80 | MHz |

| Settling Time | To be simulated | ns |

| Off Leakage Current | To be simulated | A |

| Power Consumption | To be simulated | W |

| Corner Verification | Pending | - |



</div>



\## Notes



The 1-bit DAC is a critical feedback block in the sigma-delta ADC loop. Although the topology is simpler than a multi-bit DAC, its settling behavior and reference switching accuracy strongly affect the modulator performance. The DAC output must be verified together with the switched-capacitor integrator and comparator to ensure that the complete sigma-delta loop operates correctly.



\*\*Last Updated: 4th July 2026\*\*

