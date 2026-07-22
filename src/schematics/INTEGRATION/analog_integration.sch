v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 610 -1030 610 -890 {lab=#net1}
N 570 -890 610 -890 {lab=#net1}
N 610 -890 690 -890 {lab=#net1}
N 750 -890 790 -890 {lab=#net2}
N 790 -1030 790 -890 {lab=#net2}
N 790 -890 830 -890 {lab=#net2}
N 890 -890 930 -890 {lab=#net3}
N 910 -890 910 -770 {lab=#net3}
N 750 -770 910 -770 {lab=#net3}
N 490 -770 690 -770 {lab=Vin+}
N 490 -890 490 -770 {lab=Vin+}
N 490 -890 510 -890 {lab=Vin+}
N 460 -890 490 -890 {lab=Vin+}
N 860 -950 860 -930 {lab=clk2}
N 860 -950 890 -950 {lab=clk2}
N 830 -1060 890 -1060 {lab=clk1}
N 790 -1120 790 -1090 {lab=VSS}
N 610 -1120 610 -1090 {lab=DAC-}
N 610 -510 610 -370 {lab=#net4}
N 570 -510 610 -510 {lab=#net4}
N 610 -510 690 -510 {lab=#net4}
N 750 -510 790 -510 {lab=#net5}
N 790 -510 790 -370 {lab=#net5}
N 790 -510 830 -510 {lab=#net5}
N 890 -510 930 -510 {lab=#net6}
N 910 -630 910 -510 {lab=#net6}
N 750 -630 910 -630 {lab=#net6}
N 490 -630 690 -630 {lab=Vin-}
N 490 -630 490 -510 {lab=Vin-}
N 490 -510 510 -510 {lab=Vin-}
N 460 -510 490 -510 {lab=Vin-}
N 540 -470 540 -450 {lab=clk1}
N 510 -450 540 -450 {lab=clk1}
N 510 -340 570 -340 {lab=clk2}
N 860 -470 860 -450 {lab=clk2}
N 860 -450 890 -450 {lab=clk2}
N 830 -340 890 -340 {lab=clk1}
N 790 -310 790 -280 {lab=VSS}
N 610 -310 610 -280 {lab=DAC+}
N 610 -1060 620 -1060 {lab=VSS}
N 780 -1060 790 -1060 {lab=VSS}
N 540 -890 540 -880 {lab=VSS}
N 860 -890 860 -880 {lab=VSS}
N 540 -520 540 -510 {lab=VSS}
N 860 -520 860 -510 {lab=VSS}
N 610 -340 620 -340 {lab=VSS}
N 780 -340 790 -340 {lab=VSS}
N 930 -890 1130 -890 {lab=#net3}
N 930 -510 1150 -510 {lab=#net6}
N 940 -890 940 -720 {lab=#net3}
N 940 -720 1100 -720 {lab=#net3}
N 940 -680 940 -510 {lab=#net6}
N 940 -680 1100 -680 {lab=#net6}
N 1100 -685 1100 -680 {lab=#net6}
N 1190 -890 1260 -890 {lab=Vop}
N 1210 -510 1270 -510 {lab=Vom}
N 1202.5 -693.75 1270 -693.75 {lab=Vom}
N 1201.25 -717.5 1268.75 -717.5 {lab=Vop}
N 1260 -890 1270 -890 {lab=Vop}
N 1268.75 -717.5 1270 -717.5 {lab=Vop}
N 1270 -717.5 1420 -717.5 {lab=Vop}
N 1420 -720 1420 -717.5 {lab=Vop}
N 1270 -693.75 1420 -693.75 {lab=Vom}
N 1420 -700 1420 -693.75 {lab=Vom}
N 1590 -700 1760 -700 {lab=Vout}
N 1760 -890 1760 -700 {lab=Vout}
N 1680 -890 1760 -890 {lab=Vout}
N 1760 -700 1760 -510 {lab=Vout}
N 1680 -510 1760 -510 {lab=Vout}
N 1760 -700 1780 -700 {lab=Vout}
N 1340 -740 1340 -717.5 {lab=Vop}
N 1420 -890 1440 -890 {lab=DAC-}
N 1420 -510 1440 -510 {lab=DAC+}
N 1340 -693.75 1340 -680 {lab=Vom}
N 1270 -890 1270 -717.5 {lab=Vop}
N 1270 -693.75 1270 -510 {lab=Vom}
N 1172.5 -687.5 1180 -687.5 {lab=Vbiasp}
N 1180 -687.5 1180 -640 {lab=Vbiasp}
N 1140 -667.5 1140 -640 {lab=Vbiasn}
C {symbols/nfet_03v3.sym} 590 -1060 2 1 {name=M1
L=0.3u
W=7.5u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 810 -1060 2 0 {name=M2
L=0.3u
W=7.5u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 540 -910 3 1 {name=M3
L=0.3u
W=7.5u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 860 -910 3 1 {name=M4
L=0.3u
W=7.5u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {capa.sym} 720 -890 1 1 {name=C1
m=1
value=50p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 720 -770 1 1 {name=C2
m=1
value=150p
footprint=1206
device="ceramic capacitor"}
C {ipin.sym} 460 -890 0 0 {name=p3 lab=Vin+}
C {lab_pin.sym} 890 -1060 2 0 {name=p1 sig_type=std_logic lab=clk1}
C {lab_pin.sym} 890 -950 2 0 {name=p5 sig_type=std_logic lab=clk2}
C {symbols/nfet_03v3.sym} 590 -340 0 0 {name=M5
L=0.3u
W=7.5u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 810 -340 0 1 {name=M6
L=0.3u
W=7.5u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 540 -490 3 0 {name=M7
L=0.3u
W=7.5u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 860 -490 3 0 {name=M8
L=0.3u
W=7.5u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {capa.sym} 720 -510 1 0 {name=C3
m=1
value=50p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 720 -630 1 0 {name=C4
m=1
value=150p
footprint=1206
device="ceramic capacitor"}
C {ipin.sym} 460 -510 2 1 {name=p6 lab=Vin-}
C {lab_pin.sym} 890 -340 0 1 {name=p7 sig_type=std_logic lab=clk1}
C {lab_pin.sym} 510 -450 2 1 {name=p8 sig_type=std_logic lab=clk1}
C {lab_pin.sym} 510 -340 2 1 {name=p9 sig_type=std_logic lab=clk2}
C {lab_pin.sym} 890 -450 0 1 {name=p10 sig_type=std_logic lab=clk2}
C {lab_pin.sym} 620 -1060 2 0 {name=p13 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 780 -1060 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 540 -880 3 0 {name=p15 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 860 -880 3 0 {name=p16 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 540 -520 1 0 {name=p17 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 860 -520 1 0 {name=p18 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 620 -340 2 0 {name=p19 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 780 -340 0 0 {name=p20 sig_type=std_logic lab=VSS}
C {/foss/designs/low-power-12b-first-order-delta-sigma-adc/src/schematics/FULLY DIFFERENTIAL AMPLIFIER/fullydiffamp.sym} 1160 -615 0 0 {name=x1}
C {capa.sym} 1160 -890 3 0 {name=C5
m=1
value=150p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 1180 -510 3 0 {name=C6
m=1
value=150p
footprint=1206
device="ceramic capacitor"}
C {/foss/designs/low-power-12b-first-order-delta-sigma-adc/src/schematics/latched comparator/COMPARATOR_SD.sym} 1400 -540 0 0 {name=x2}
C {DAC_1_BIT.sym} 1690 -830 0 1 {name=x3}
C {DAC_1_BIT.sym} 1690 -450 0 1 {name=x4}
C {opin.sym} 1340 -740 3 0 {name=p11 lab=Vop}
C {opin.sym} 1340 -680 3 1 {name=p12 lab=Vom}
C {iopin.sym} 1680 -550 0 0 {name=p21 lab=VDD}
C {iopin.sym} 1680 -470 0 0 {name=p22 lab=VSS}
C {lab_pin.sym} 1100 -665 0 0 {name=p23 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1100 -740 0 0 {name=p24 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1420 -740 0 0 {name=p25 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1420 -660 0 0 {name=p26 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1680 -930 2 0 {name=p27 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1680 -850 2 0 {name=p28 sig_type=std_logic lab=VSS}
C {ipin.sym} 1680 -530 2 0 {name=p29 lab=Vref+}
C {ipin.sym} 1680 -490 2 0 {name=p30 lab=Vref-}
C {opin.sym} 1780 -700 0 0 {name=p31 lab=Vout}
C {lab_pin.sym} 1680 -910 2 0 {name=p32 sig_type=std_logic lab=Vref+}
C {lab_pin.sym} 1680 -870 2 0 {name=p33 sig_type=std_logic lab=Vref-}
C {lab_pin.sym} 1420 -890 0 0 {name=p34 sig_type=std_logic lab=DAC-}
C {lab_pin.sym} 1420 -510 0 0 {name=p35 sig_type=std_logic lab=DAC+}
C {lab_pin.sym} 610 -1120 1 0 {name=p36 sig_type=std_logic lab=DAC-}
C {lab_pin.sym} 610 -280 3 0 {name=p37 sig_type=std_logic lab=DAC+}
C {lab_pin.sym} 790 -280 3 0 {name=p38 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 790 -1120 1 0 {name=p39 sig_type=std_logic lab=VSS}
C {ipin.sym} 1420 -680 2 1 {name=p40 lab=clk2B}
C {ipin.sym} 540 -930 3 1 {name=p41 lab=clk1}
C {ipin.sym} 570 -1060 2 1 {name=p2 lab=clk2}
C {ipin.sym} 1140 -640 1 1 {name=p4 lab=Vbiasn}
C {ipin.sym} 1180 -640 1 1 {name=p42 lab=Vbiasp}
