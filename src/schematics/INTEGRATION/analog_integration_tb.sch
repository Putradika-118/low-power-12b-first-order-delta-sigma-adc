v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -900 -520 -900 -480 {lab=VDD}
N -900 -420 -900 -400 {lab=0}
N -700 -520 -700 -480 {lab=VSS}
N -700 -420 -700 -400 {lab=0}
N -490 -520 -490 -480 {lab=Vbiasn}
N -490 -420 -490 -400 {lab=0}
N -280 -520 -280 -480 {lab=Vbiasp}
N -280 -420 -280 -400 {lab=0}
N -900 -240 -900 -200 {lab=Vin+}
N -900 -140 -900 -120 {lab=0}
N -700 -240 -700 -200 {lab=Vin-}
N -700 -140 -700 -120 {lab=0}
N -490 -240 -490 -200 {lab=clk1}
N -490 -140 -490 -120 {lab=0}
N -280 -240 -280 -200 {lab=clk2}
N -280 -140 -280 -120 {lab=0}
N -900 40 -900 80 {lab=clk2B}
N -900 140 -900 160 {lab=0}
N -700 40 -700 80 {lab=Vref+}
N -700 140 -700 160 {lab=0}
N -490 40 -490 80 {lab=Vref-}
N -490 140 -490 160 {lab=0}
C {/foss/designs/low-power-12b-first-order-delta-sigma-adc/src/schematics/INTEGRATION/analog_integration.sym} 0 0 0 0 {name=x1}
C {vsource.sym} -900 -450 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} -900 -400 0 0 {name=l5 lab=0}
C {vsource.sym} -700 -450 0 0 {name=V2 value=0 savecurrent=false}
C {gnd.sym} -700 -400 0 0 {name=l6 lab=0}
C {vsource.sym} -490 -450 0 0 {name=V3 value=0.65 savecurrent=false}
C {gnd.sym} -490 -400 0 0 {name=l7 lab=0}
C {vsource.sym} -280 -450 0 0 {name=V4 value=2.5 savecurrent=false}
C {gnd.sym} -280 -400 0 0 {name=l8 lab=0}
C {vsource.sym} -900 -170 0 0 {name=V5 value="PULSE(-1 1 0 50u 50u 0 100u)" savecurrent=false}
C {gnd.sym} -900 -120 0 0 {name=l9 lab=0}
C {vsource.sym} -700 -170 0 0 {name=V6 value="PULSE(-1 1 0 50u 50u 0 100u)" savecurrent=false}
C {gnd.sym} -700 -120 0 0 {name=l10 lab=0}
C {vsource.sym} -490 -170 0 0 {name=V7 value="PULSE(0 3.3 0 1n 1n 0.5u 1u)" savecurrent=false}
C {gnd.sym} -490 -120 0 0 {name=l11 lab=0}
C {vsource.sym} -280 -170 0 0 {name=V8 value="PULSE(0 3.3 0 1n 1n 0.5u 1u)" savecurrent=false}
C {gnd.sym} -280 -120 0 0 {name=l12 lab=0}
C {lab_pin.sym} -900 -520 1 0 {name=p21 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -700 -520 1 0 {name=p22 sig_type=std_logic lab=VSS
}
C {lab_pin.sym} -490 -520 1 0 {name=p23 sig_type=std_logic lab=Vbiasn
}
C {lab_pin.sym} -280 -520 1 0 {name=p24 sig_type=std_logic lab=Vbiasp
}
C {lab_pin.sym} -900 -240 1 0 {name=p25 sig_type=std_logic lab=Vin+}
C {lab_pin.sym} -700 -240 1 0 {name=p26 sig_type=std_logic lab=Vin-}
C {lab_pin.sym} -490 -240 1 0 {name=p27 sig_type=std_logic lab=clk1}
C {lab_pin.sym} -280 -240 1 0 {name=p28 sig_type=std_logic lab=clk2}
C {vsource.sym} -900 110 0 0 {name=V9 value="PULSE(3.3 0 0 1n 1n 0.5u 1u)" savecurrent=false}
C {gnd.sym} -900 160 0 0 {name=l1 lab=0}
C {lab_pin.sym} -900 40 1 0 {name=p1 sig_type=std_logic lab=clk2B}
C {vsource.sym} -700 110 0 0 {name=V10 value=0.65 savecurrent=false}
C {gnd.sym} -700 160 0 0 {name=l2 lab=0}
C {vsource.sym} -490 110 0 0 {name=V11 value=2.5 savecurrent=false}
C {gnd.sym} -490 160 0 0 {name=l3 lab=0}
C {lab_pin.sym} -700 40 1 0 {name=p2 sig_type=std_logic lab=Vref+
}
C {lab_pin.sym} -490 40 1 0 {name=p3 sig_type=std_logic lab=Vref-
}
C {lab_pin.sym} -20 -170 0 0 {name=p4 sig_type=std_logic lab=clk2}
C {lab_pin.sym} -20 -150 0 0 {name=p5 sig_type=std_logic lab=clk1}
C {lab_pin.sym} -20 -130 0 0 {name=p6 sig_type=std_logic lab=Vin+}
C {lab_pin.sym} -20 -110 0 0 {name=p7 sig_type=std_logic lab=clk2B}
C {lab_pin.sym} -20 -90 0 0 {name=p8 sig_type=std_logic lab=Vbiasn}
C {lab_pin.sym} -20 -70 0 0 {name=p9 sig_type=std_logic lab=Vbiasp}
C {lab_pin.sym} -20 -50 0 0 {name=p10 sig_type=std_logic lab=Vref+}
C {lab_pin.sym} -20 -30 0 0 {name=p11 sig_type=std_logic lab=Vin-}
C {lab_pin.sym} -20 -10 0 0 {name=p12 sig_type=std_logic lab=Vref-}
C {lab_pin.sym} 280 -110 2 0 {name=p13 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 280 -90 2 0 {name=p14 sig_type=std_logic lab=VSS}
