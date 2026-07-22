v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 200 -930 200 -790 {lab=#net1}
N 160 -790 200 -790 {lab=#net1}
N 200 -790 280 -790 {lab=#net1}
N 340 -790 380 -790 {lab=#net2}
N 380 -930 380 -790 {lab=#net2}
N 380 -790 420 -790 {lab=#net2}
N 480 -790 520 -790 {lab=#net3}
N 500 -790 500 -670 {lab=#net3}
N 340 -670 500 -670 {lab=#net3}
N 80 -670 280 -670 {lab=Vin+}
N 80 -790 80 -670 {lab=Vin+}
N 80 -790 100 -790 {lab=Vin+}
N 50 -790 80 -790 {lab=Vin+}
N 450 -850 450 -830 {lab=clk2}
N 450 -850 480 -850 {lab=clk2}
N 420 -960 480 -960 {lab=clk1}
N 380 -1020 380 -990 {lab=VSS}
N 200 -1020 200 -990 {lab=VSS}
N 200 -410 200 -270 {lab=#net4}
N 160 -410 200 -410 {lab=#net4}
N 200 -410 280 -410 {lab=#net4}
N 340 -410 380 -410 {lab=#net5}
N 380 -410 380 -270 {lab=#net5}
N 380 -410 420 -410 {lab=#net5}
N 480 -410 520 -410 {lab=#net6}
N 500 -530 500 -410 {lab=#net6}
N 340 -530 500 -530 {lab=#net6}
N 80 -530 280 -530 {lab=Vin-}
N 80 -530 80 -410 {lab=Vin-}
N 80 -410 100 -410 {lab=Vin-}
N 50 -410 80 -410 {lab=Vin-}
N 130 -370 130 -350 {lab=clk1}
N 100 -350 130 -350 {lab=clk1}
N 100 -240 160 -240 {lab=clk2}
N 450 -370 450 -350 {lab=clk2}
N 450 -350 480 -350 {lab=clk2}
N 420 -240 480 -240 {lab=clk1}
N 380 -210 380 -180 {lab=VSS}
N 200 -210 200 -180 {lab=VSS}
N 200 -960 210 -960 {lab=VSS}
N 370 -960 380 -960 {lab=VSS}
N 130 -790 130 -780 {lab=VSS}
N 450 -790 450 -780 {lab=VSS}
N 130 -420 130 -410 {lab=VSS}
N 450 -420 450 -410 {lab=VSS}
N 200 -240 210 -240 {lab=VSS}
N 370 -240 380 -240 {lab=VSS}
N 520 -790 720 -790 {lab=#net3}
N 520 -410 740 -410 {lab=#net6}
N 530 -790 530 -620 {lab=#net3}
N 530 -620 690 -620 {lab=#net3}
N 530 -580 530 -410 {lab=#net6}
N 530 -580 690 -580 {lab=#net6}
N 690 -585 690 -580 {lab=#net6}
N 780 -790 850 -790 {lab=Vop}
N 800 -410 860 -410 {lab=Vom}
N 792.5 -593.75 860 -593.75 {lab=Vom}
N 791.25 -617.5 858.75 -617.5 {lab=Vop}
N 850 -790 860 -790 {lab=Vop}
N 858.75 -617.5 860 -617.5 {lab=Vop}
N 860 -617.5 1010 -617.5 {lab=Vop}
N 860 -593.75 1010 -593.75 {lab=Vom}
N 860 -790 860 -617.5 {lab=Vop}
N 860 -593.75 860 -410 {lab=Vom}
N 762.5 -587.5 770 -587.5 {lab=Vbiasp}
N 770 -587.5 770 -540 {lab=Vbiasp}
N 730 -567.5 730 -540 {lab=Vbiasn}
N -880 -930 -880 -890 {lab=VDD}
N -880 -830 -880 -810 {lab=0}
N -680 -930 -680 -890 {lab=VSS}
N -680 -830 -680 -810 {lab=0}
N -470 -930 -470 -890 {lab=Vbiasn}
N -470 -830 -470 -810 {lab=0}
N -260 -930 -260 -890 {lab=Vbiasp}
N -260 -830 -260 -810 {lab=0}
N -880 -650 -880 -610 {lab=Vin+}
N -880 -550 -880 -530 {lab=0}
N -680 -650 -680 -610 {lab=Vin-}
N -680 -550 -680 -530 {lab=0}
N -470 -650 -470 -610 {lab=clk1}
N -470 -550 -470 -530 {lab=0}
N -260 -650 -260 -610 {lab=clk2}
N -260 -550 -260 -530 {lab=0}
C {symbols/nfet_03v3.sym} 180 -960 2 1 {name=M1
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
C {symbols/nfet_03v3.sym} 400 -960 2 0 {name=M2
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
C {symbols/nfet_03v3.sym} 130 -810 3 1 {name=M3
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
C {symbols/nfet_03v3.sym} 450 -810 3 1 {name=M4
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
C {capa.sym} 310 -790 1 1 {name=C1
m=1
value=50p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 310 -670 1 1 {name=C2
m=1
value=150p
footprint=1206
device="ceramic capacitor"}
C {ipin.sym} 50 -790 0 0 {name=p3 lab=Vin+}
C {lab_pin.sym} 480 -960 2 0 {name=p1 sig_type=std_logic lab=clk1}
C {lab_pin.sym} 480 -850 2 0 {name=p5 sig_type=std_logic lab=clk2}
C {symbols/nfet_03v3.sym} 180 -240 0 0 {name=M5
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
C {symbols/nfet_03v3.sym} 400 -240 0 1 {name=M6
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
C {symbols/nfet_03v3.sym} 130 -390 3 0 {name=M7
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
C {symbols/nfet_03v3.sym} 450 -390 3 0 {name=M8
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
C {capa.sym} 310 -410 1 0 {name=C3
m=1
value=50p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 310 -530 1 0 {name=C4
m=1
value=150p
footprint=1206
device="ceramic capacitor"}
C {ipin.sym} 50 -410 2 1 {name=p6 lab=Vin-}
C {lab_pin.sym} 480 -240 0 1 {name=p7 sig_type=std_logic lab=clk1}
C {lab_pin.sym} 100 -350 2 1 {name=p8 sig_type=std_logic lab=clk1}
C {lab_pin.sym} 100 -240 2 1 {name=p9 sig_type=std_logic lab=clk2}
C {lab_pin.sym} 480 -350 0 1 {name=p10 sig_type=std_logic lab=clk2}
C {lab_pin.sym} 210 -960 2 0 {name=p13 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 370 -960 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 130 -780 3 0 {name=p15 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 450 -780 3 0 {name=p16 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 130 -420 1 0 {name=p17 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 450 -420 1 0 {name=p18 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 210 -240 2 0 {name=p19 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 370 -240 0 0 {name=p20 sig_type=std_logic lab=VSS}
C {capa.sym} 750 -790 3 0 {name=C5
m=1
value=150p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 770 -410 3 0 {name=C6
m=1
value=150p
footprint=1206
device="ceramic capacitor"}
C {opin.sym} 1010 -617.5 0 0 {name=p11 lab=Vop}
C {opin.sym} 1010 -593.75 2 1 {name=p12 lab=Vom}
C {lab_pin.sym} 690 -565 0 0 {name=p23 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 690 -640 0 0 {name=p24 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 380 -180 3 0 {name=p38 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 380 -1020 1 0 {name=p39 sig_type=std_logic lab=VSS}
C {ipin.sym} 130 -830 3 1 {name=p41 lab=clk1}
C {ipin.sym} 160 -960 2 1 {name=p2 lab=clk2}
C {ipin.sym} 730 -540 1 1 {name=p4 lab=Vbiasn}
C {ipin.sym} 770 -540 1 1 {name=p42 lab=Vbiasp}
C {/foss/designs/low-power-12b-first-order-delta-sigma-adc/src/schematics/FULLY DIFFERENTIAL AMPLIFIER/fullydiffamp.sym} 750 -515 0 0 {name=x1}
C {lab_pin.sym} 200 -1020 1 0 {name=p21 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 200 -180 3 0 {name=p22 sig_type=std_logic lab=VSS}
C {vsource.sym} -880 -860 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} -880 -810 0 0 {name=l5 lab=0}
C {vsource.sym} -680 -860 0 0 {name=V2 value=0 savecurrent=false}
C {gnd.sym} -680 -810 0 0 {name=l6 lab=0}
C {vsource.sym} -470 -860 0 0 {name=V3 value=0.65 savecurrent=false}
C {gnd.sym} -470 -810 0 0 {name=l7 lab=0}
C {vsource.sym} -260 -860 0 0 {name=V4 value=2.5 savecurrent=false}
C {gnd.sym} -260 -810 0 0 {name=l8 lab=0}
C {vsource.sym} -880 -580 0 0 {name=V5 value="PULSE(1.625 1.675 0 1n 1n 5u 10u)" savecurrent=false}
C {gnd.sym} -880 -530 0 0 {name=l9 lab=0}
C {vsource.sym} -680 -580 0 0 {name=V6 value="PULSE(1.675 1.625 0 1n 1n 5u 10u)" savecurrent=false}
C {gnd.sym} -680 -530 0 0 {name=l10 lab=0}
C {vsource.sym} -470 -580 0 0 {name=V7 value="PULSE(0 3.3 0 1n 1n 36.69n 81.38n)" savecurrent=false}
C {gnd.sym} -470 -530 0 0 {name=l11 lab=0}
C {vsource.sym} -260 -580 0 0 {name=V8 value="PULSE(0 3.3 40.69n 1n 1n 36.69n 81.38n)" savecurrent=false}
C {gnd.sym} -260 -530 0 0 {name=l12 lab=0}
C {lab_pin.sym} -880 -930 1 0 {name=p25 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -680 -930 1 0 {name=p26 sig_type=std_logic lab=VSS
}
C {lab_pin.sym} -470 -930 1 0 {name=p27 sig_type=std_logic lab=Vbiasn
}
C {lab_pin.sym} -260 -930 1 0 {name=p28 sig_type=std_logic lab=Vbiasp
}
C {lab_pin.sym} -880 -650 1 0 {name=p29 sig_type=std_logic lab=Vin+}
C {lab_pin.sym} -680 -650 1 0 {name=p30 sig_type=std_logic lab=Vin-}
C {lab_pin.sym} -470 -650 1 0 {name=p31 sig_type=std_logic lab=clk1}
C {lab_pin.sym} -260 -650 1 0 {name=p32 sig_type=std_logic lab=clk2}
C {devices/code_shown.sym} 1471.25 -1043.75 0 0 {name=NGSPICE only_toplevel=true
value="
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical
.inc /foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice

.param CL=0.5p
.param Wp=12u
.param Wn=6u
.param Kall=1.28u
CLP Vop 0 \{CL\}
CLM Vom 0 \{CL\}
RLEAKP Vop 0 1T
RLEAKM Vom 0 1T

* dummy load supaya tiap node punya DC path ke ground
Rd1 clk1  0 1meg
Rd2 clk2  0 1meg

.control
set color0=white
set color1=black
tran 0.05n 250n
plot v(clk1) v(clk2)
.endc
.end
"}
